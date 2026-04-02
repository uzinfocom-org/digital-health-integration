# DHP Integrations Implementation Guide

## Overview

This Implementation Guide defines FHIR R5-based integration specifications for third-party systems that integrate with the [Digital Health Platform (DHP)](https://dhp.uz/fhir/core/en/index.html). It is designed to enable external healthcare systems to exchange data with DHP while maintaining their own data sovereignty.

## Purpose

DHP Integrations IG provides:

- **Standard data structures** - FHIR profiles and extensions for external systems integrating with DHP
- **Terminology** - CodeSystems and ValueSets for standardized coding
- **API specifications** - data exchange patterns between external systems and DHP
- **Integration patterns** - support for DHP's hybrid architecture
- **Conformance requirements** - requirements for third-party system integrations

This IG is intended for implementers developing or configuring systems that need to integrate with DHP. Example systems include Medical Information Systems (MIS), Picture Archiving and Communication Systems (PACS), Laboratory Information Systems (LIS), as well as any other third-party healthcare applications that need to exchange data with DHP.

While external systems may develop their own FHIR Implementation Guides, this IG may include profiles developed collaboratively with external system vendors to streamline the integration process and reduce implementation overhead.

## Integration approach - hybrid model

DHP uses a hybrid integration approach where not all data is centralized. Instead, the platform combines centralized storage of core healthcare data with distributed, specialized data maintained by external systems.

```mermaid
graph LR
    CoreData["DHP Core Data<br/>Demographics<br/>Clinical Records<br/>Referrals<br/>Lab Results<br/>Registries"]

    MIS["MIS<br/>Patient Records<br/>Appointments<br/>Billing"]
    PACS["PACS<br/>Medical Images<br/>Imaging Studies"]
    LIS["LIS<br/>Lab Workflows<br/>Specimen Tracking"]
    Other["Other 3rd-Party Systems<br/>Specialized Data<br/>& Services"]

    LIS -->|"transmits<br/>results"| CoreData
    CoreData -->|"lab orders"| LIS
    CoreData <-->|"query &<br/>update"| MIS
    CoreData <-->|"DICOM:<br/>references &<br/>retrieves images"| PACS
    CoreData <-->|"FHIR API<br/>integration"| Other

    style CoreData fill:#4A90E2,stroke:#2E5C8A,stroke-width:3px,color:#fff
    style MIS fill:#F5A623,stroke:#D68910,stroke-width:2px,color:#000
    style PACS fill:#F5A623,stroke:#D68910,stroke-width:2px,color:#000
    style LIS fill:#F5A623,stroke:#D68910,stroke-width:2px,color:#000
    style Other fill:#9B59B6,stroke:#7D3C98,stroke-width:2px,color:#fff
```

### Data stored in DHP

DHP centrally stores and manages core healthcare data:

- **Patient demographics and master data** - master patient index and demographic information
- **Core clinical records (EHRs)** - essential electronic health record data
- **Referrals and prescriptions** - clinical orders and referral documentation
- **Laboratory results** - lab results and diagnostic reports transmitted from LIS systems
- **Master registries** - patient registry, provider directory, organization registry, and terminology services

### Data maintained by external systems

External systems maintain their own operational data while integrating via FHIR APIs. Examples include:

- **MIS systems** - patient records, appointments, billing data, and facility-specific workflows
- **PACS systems** - medical images and diagnostic imaging studies (DHP supports DICOM-based image exchange, storing references to images in PACS and retrieving images for authorized users)
- **LIS systems** - laboratory workflows, specimen tracking, and detailed test processing data
- **Other 3rd-party systems** - any healthcare application with specialized data or services that need to integrate with DHP

### Integration pattern

For most external system data, DHP can store references to data in external systems rather than duplicating everything. However, certain critical data like laboratory results are transmitted to and stored in DHP. This hybrid approach:

- Maintains data ownership with the originating system
- Enables real-time access to source data through API integration
- Preserves system-specific workflows and business logic
- Simplifies compliance with data governance requirements

DHP and external systems maintain complementary data sets and interact through FHIR and custom APIs: DHP provides authoritative master data and core clinical records, while external systems provide specialized operational data and domain-specific capabilities.

## Data exchange approaches

Integrations with DHP support two complementary methods for exchanging healthcare data:

```mermaid
graph LR
    External["3rd-Party Systems"]

    subgraph Approach1["Request Resources"]
        Resources["Workflow Resources:<br/>ServiceRequest<br/>MedicationRequest<br/>Appointment<br/>CarePlan<br/>etc."]
    end

    subgraph Approach2["Clinical Documents"]
        Forms["Clinical Forms<br/>Form 003 (inpatient)<br/>Form 096 (birth)<br/>etc."]
        Document["Document Bundle<br/>Composition header (metadata, attestation)<br/>Referenced Resources:<br/>Patient, Observation, Encounter, etc."]
        Forms -.->|"represented as"| Document
    end

    DHP["DHP"]

    External <-->|"CRUD<br/>operations"| Resources
    External <-->|"submit/<br/>retrieve"| Document

    Resources -->|"FHIR API"| DHP
    Document -->|"FHIR API"| DHP

    style External fill:#9B59B6,stroke:#7D3C98,stroke-width:2px,color:#fff
    style Resources fill:#E8F4F8,stroke:#4A90E2,stroke-width:2px
    style Forms fill:#F0E6FF,stroke:#9B59B6,stroke-width:2px
    style Document fill:#FFF4E6,stroke:#F5A623,stroke-width:2px
    style DHP fill:#4A90E2,stroke:#2E5C8A,stroke-width:3px,color:#fff
```

### Request resources

For operational workflows requiring status tracking, DHP prefers [request resources](https://hl7.org/fhir/R5/workflow.html). Common examples include [ServiceRequest](https://hl7.org/fhir/R5/servicerequest.html), [MedicationRequest](https://hl7.org/fhir/R5/medicationrequest.html), [Appointment](https://hl7.org/fhir/R5/appointment.html), [CarePlan](https://hl7.org/fhir/R5/careplan.html), and [Claim](https://hl7.org/fhir/R5/claim.html). These resources support workflow state tracking (requested → accepted → in-progress → completed), making them ideal for real-time coordination.

### Clinical Documents

For data requiring legal authentication and long-term persistence (e.g., Form 003 for inpatient stays, Form 096 for births), DHP uses **Clinical Documents** - a Bundle containing a Composition header with metadata and attestation, plus referenced clinical resources (Patient, Observation, Condition, etc.).

When a signature is required, 3rd party systems will display an iframe from the DHP platform where practitioners will log in to authenticate themselves using oneID. This will generate a cryptographic signature (either as JWS Digital Signature or based on the W3C Verifiable Credentials Data Model, to be decided) that will be returned to the 3rd party system to be attached as a [Provenance.signature](https://hl7.org/fhir/R5/provenance-definitions.html#Provenance.signature). Additionally, DHP also pre-adopts [R6 signing rules](https://build.fhir.org/signatures.html#Bundles) as they significantly differ from R5 and that is the future direction where FHIR is going.

#### Choosing the right approach

```mermaid
flowchart TD
    Start["Healthcare Data"]

    Q1{"Needs workflow<br/>status tracking?"}
    Q2{"Needs legal<br/>authentication &<br/>persistence?"}
    Q3{"Needs<br/>signature?"}

    Request["Request Resource<br/>(ServiceRequest, MedicationRequest,<br/>Appointment, etc.)"]
    Document["Clinical Document<br/>(Bundle + Composition)"]
    Iframe["DHP iframe<br/>(oneID authentication)"]
    Provenance["Provenance.signature"]

    Start --> Q1
    Q1 -->|"Yes"| Request
    Q1 -->|"No"| Q2
    Q2 -->|"Yes"| Document
    Q2 -->|"No"| Request

    Document --> Q3
    Q3 -->|"Yes"| Iframe
    Q3 -->|"No"| Done1["Done"]
    Iframe --> Provenance
    Provenance -->|"target = Bundle"| Document

    style Request fill:#E8F4F8,stroke:#4A90E2,stroke-width:2px
    style Document fill:#FFF4E6,stroke:#F5A623,stroke-width:2px
    style Provenance fill:#F0E6FF,stroke:#9B59B6,stroke-width:2px
    style Iframe fill:#FCE4EC,stroke:#E91E63,stroke-width:2px
```

---

{% lang-fragment dependency-table.xhtml %}

{% lang-fragment ip-statements.xhtml %}

{% lang-fragment globals-table.xhtml %}

