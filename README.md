# 🇺🇿 DHP Integrations Implementation Guide

Welcome to the official repository of the **Digital Health Platform (DHP) Integrations** Implementation Guide. This guide defines FHIR R5-based integration specifications for third-party systems that integrate with the [Digital Health Platform (DHP)](https://dhp.uz/fhir/core/en/index.html). It enables external healthcare systems to exchange data with DHP while maintaining their own data sovereignty.

> 📌 Published by **Uzinfocom** in collaboration with the **Ministry of Health of Uzbekistan** under the national healthcare digitalization program supported by **KfW Development Bank**.

---

## 🌐 About the Project

The **DHP Integrations IG** provides standard data structures, terminology, API specifications, and integration patterns for third-party systems integrating with DHP. It supports DHP's hybrid architecture where not all data is centralized, combining centralized storage of core healthcare data with distributed, specialized data maintained by external systems.

* 📅 Project duration: 2024–2027
* 🧭 Aligned with: *Digital Uzbekistan 2030*, *Presidential Decree PD-415*, *Concept for Health 2019–2025*
* 🔗 Interoperability standard: **HL7® FHIR® R5**
* 🔄 Depends on: [DHP Core Implementation Guide](https://dhp.uz/fhir/core/)

---

## 📘 Guide Contents

This Implementation Guide includes:

* ✅ **FHIR profiles and extensions** for external systems integrating with DHP
* 🔄 **Integration patterns** for DHP's hybrid architecture (centralized + distributed data)
* 🏥 **Data exchange approaches**: atomic FHIR resources and clinical documents
* 📝 **Clinical forms** (e.g., Form 003 inpatient, Form 096 birth) as Clinical Documents
* 🌍 **Terminology services**: CodeSystems and ValueSets for standardized coding
* 🧪 **Conformance requirements** for third-party system integrations

---

## 🎯 Target Audience

This IG is intended for implementers developing or configuring systems that need to integrate with DHP, including:

* 🏥 **Medical Information Systems (MIS)** - patient records, appointments, billing
* 🖼️ **Picture Archiving and Communication Systems (PACS)** - medical images
* 🧪 **Laboratory Information Systems (LIS)** - lab workflows and results
* 🔌 **Other third-party healthcare applications** needing data exchange with DHP

---

## 🔗 Links

* 🌐 **DHP Core IG**: [dhp.uz/fhir/core](https://dhp.uz/fhir/core)
* 🌐 **DHP Integrations IG**: [dhp.uz/fhir/integrations](https://dhp.uz/fhir/integrations)

---

## 👥 Contributors

| Name                                             | Role                          | Organization                                    |
|--------------------------------------------------|-------------------------------|-------------------------------------------------|
| [Rustam Sadykov](https://github.com/roosyabuddy) | IG Maintainer                 | [Uzinfocom](https://uzinfocom.uz)               |
| [Vadim Peretokin](https://github.com/vadi2/)     | Primary Author                | [Peretokin Consulting](https://vadimperetok.in) |
| [Bekhzod Akhmedov](https://github.com/BEKHZOD98) | Co-Author                     | [Uzinfocom](https://uzinfocom.uz)               |
| [Sarvar Kubaev](https://github.com/KubayevSarvarbek) | Co-Author                 | [Uzinfocom](https://uzinfocom.uz)               |
| Saodat Kadirova                                  | Business Analyst              | [Uzinfocom](https://uzinfocom.uz)               |
| Irina Berger                                     | Business Analyst              | [Uzinfocom](https://uzinfocom.uz)               |
| Ministry of Health of the Republic of Uzbekistan | Strategic Partner             | Government                                      |
| KfW Development Bank                             | Financial & Technical Support | International Donor                             |

---

## 🛠️ Repository Management and Development Standards

**Semantic versioning**: Version identification follows the conventions documented at https://build.fhir.org/ig/vadi2/DHP-temp/en/index.html#identification-of-versions.

**Branching strategy**: Feature branches are created as needed and merged into the main branch via rebase or squash-commit. All releases are tagged from the main branch according to semantic versioning standards.

**Code review policy**: Pull requests must pass IG Publisher QA checks without introducing new errors or warnings, and require approval from at least one FHIR expert before merging.

**Quality assurance**: Static analysis is enforced through the FHIR IG Publisher's built-in validation and QA tooling, which checks for conformance issues, broken references, terminology validation errors, and a host of other issues.

---

## 📜 License

This Implementation Guide is open-source under the **CC0-1.0** license.

