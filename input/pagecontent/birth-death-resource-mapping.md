<style>
/* Even, full-width mapping tables (sections vary in column count). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
</style>

This page documents the mapping between birth and death registration data and FHIR resources.

### Overview

The Birth and Death module captures clinical and administrative information required for medical birth and death registration in Uzbekistan. The data is represented using FHIR resources that describe newborns, deceased patients, clinical encounters, observations, and document compositions.

Each section describes the resource used for a specific purpose, the terminology bindings where applicable, the governing profile, and an example resource. Birth documentation is represented using a Composition that groups the birth encounter, APGAR assessment, and birth measurements. Death documentation is represented using a Composition that groups the death encounter and cause of death observation.

---

# Birth Registration

### Birth certificate document (Composition)

The medical birth certificate is represented by a Composition resource. It assembles the birth encounter, APGAR assessment, and birth measurements into a single clinical document.

Profile: [CompositionOfBirth](StructureDefinition-composition-of-birth.html)

Example: [composition-of-birth-example](Composition-composition-of-birth-example.html)

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Document type | LOINC | `LOINC#57075-4` (Newborn delivery information) | `Composition.type` |
| Document identifier | Form Number | `Birth form №103` | `Composition.identifier` |
| Document status | Composition Status | `preliminary` | `Composition.status` |
| Birth encounter | EncounterOfBirth | `encounter-of-birth-example` | `Composition.section` |
| APGAR assessment | ObservationOfAPGAR | `observation-of-apgar-example` | `Composition.section` |
| Birth measurements | ObservationOfBirth | `observation-of-birth-example` | `Composition.section` |

---

### Newborn patient

Represents the newborn whose birth is being documented. Besides the standard patient demographics, the profile captures birth time, multiple birth information, guardians, managing organization and attending practitioner.

Profile: [NewbornPatient](StructureDefinition-newborn-patient.html)

Example: [newborn-patient-example](Patient-newborn-patient-example.html)

| Information to record | Stored in |
| :--- | :--- |
| Birth certificate number | `Patient.identifier` |
| Patient name | `Patient.name` |
| Gender | `Patient.gender` |
| Date of birth | `Patient.birthDate` |
| Birth time | `Patient.birthDate.extension(birthTime)` |
| Multiple birth | `Patient.multipleBirth[x]` |
| Guardian / Contact | `Patient.contact` |
| Managing organization | `Patient.managingOrganization` |
| General practitioner | `Patient.generalPractitioner` |

---

### Related person

Represents the parent or guardian responsible for the newborn.

Profile: [RelatedPersonOfBirth](StructureDefinition-related-person-of-birth.html)

Example: [related-person-of-birth-example](RelatedPerson-related-person-of-birth-example.html)

| Information to record | Stored in |
| :--- | :--- |
| Passport identifier | `RelatedPerson.identifier` |
| Related newborn | `RelatedPerson.patient` |
| Relationship | `RelatedPerson.relationship` |
| Full name | `RelatedPerson.name` |
| Gender | `RelatedPerson.gender` |
| Birth date | `RelatedPerson.birthDate` |
| Telephone | `RelatedPerson.telecom` |

---

### Birth encounter

Represents the encounter during which the child was delivered. It records the organization responsible for the birth, healthcare professionals involved, delivery location and diagnoses identified at birth.

Profile: [EncounterOfBirth](StructureDefinition-encounter-of-birth.html)

Example: [encounter-of-birth-example](Encounter-encounter-of-birth-example.html)

| Information to record | Example | Stored in |
| :--- | :--- | :--- |
| Encounter status | `completed` | `Encounter.status` |
| Encounter class | `IMP` | `Encounter.class` |
| Newborn | `newborn-patient-example` | `Encounter.subject` |
| Organization | `organization1-example` | `Encounter.serviceProvider` |
| Mother encounter | `encounter-mother-delivery-example` | `Encounter.partOf` |
| Birth attendant | `LOINC#87286-1` | `Encounter.participant` |
| Birth certifier | `LOINC#87287-9` | `Encounter.participant` |
| Birth diagnosis | `condition-neonatal-jaundice-example` | `Encounter.diagnosis` |
| Delivery location | `location-delivery-room-example` | `Encounter.location` |

---

### APGAR assessment

Records the APGAR score assigned shortly after birth.

Profile: [ObservationOfAPGAR](StructureDefinition-observation-of-apgar.html)

Example: [observation-of-apgar-example](Observation-observation-of-apgar-example.html)

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Observation type | LOINCBirthVS | `LOINC#9274-2` (5 minute APGAR Score) | `Observation.code` |
| APGAR score | Numeric score | `8` | `Observation.valueQuantity` |
| Assessment time | — | `2026-04-01T10:08:00+05:00` | `Observation.effectiveDateTime` |
| Performer | Practitioner | `practitioner-003` | `Observation.performer` |

---

### Birth measurements

Records measurements and life criteria observed immediately after birth. Each observation represents one clinical measurement such as birth weight, body length or gestational age.

Profile: [ObservationOfBirth](StructureDefinition-observation-of-birth.html)

Example: [observation-of-birth-example](Observation-observation-of-birth-example.html)

| Information to record | Value set | Example | Stored in |
| :--- | :--- | :--- | :--- |
| Measurement type | LOINCBirthVS | `LOINC#8339-4` (Birth weight) | `Observation.code` |
| Birth weight | UCUM | `3200 g` | `Observation.valueQuantity` |
| Breathing | ObservationLifeCriteriaVS | `Breathing = true` | `Observation.component` |
| Heartbeat | ObservationLifeCriteriaVS | `Heartbeat = true` | `Observation.component` |
| Muscle contractions | ObservationLifeCriteriaVS | `Involuntary muscle contractions = true` | `Observation.component` |

---
### Birth document relationships

The birth registration workflow links the newborn, clinical encounter, observations, and Composition into a single clinical document. The Composition resource acts as the document root and references the Encounter and Observations through its sections.

| Resource | References | Purpose |
| :--- | :--- | :--- |
| CompositionOfBirth | EncounterOfBirth | Birth encounter information |
| CompositionOfBirth | ObservationOfAPGAR | APGAR assessment |
| CompositionOfBirth | ObservationOfBirth | Birth measurements |
| EncounterOfBirth | NewbornPatient | Newborn associated with the encounter |
| EncounterOfBirth | UZCoreOrganization | Health facility where delivery occurred |
| EncounterOfBirth | Practitioner | Birth attendant and certifier |
| ObservationOfAPGAR | NewbornPatient | Patient receiving APGAR assessment |
| ObservationOfBirth | NewbornPatient | Patient receiving birth measurements |
| RelatedPersonOfBirth | NewbornPatient | Parent or guardian |

---

### Birth encounter participants

The birth encounter distinguishes between the healthcare professional assisting the delivery and the healthcare professional certifying the birth.

Profile: [EncounterOfBirth](StructureDefinition-encounter-of-birth.html)

Example: [encounter-of-birth-example](Encounter-encounter-of-birth-example.html)

| Participant | Terminology | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Birth attendant | LOINC | `LOINC#87286-1` | `Encounter.participant[attendant]` |
| Birth certifier | LOINC | `LOINC#87287-9` | `Encounter.participant[certifier]` |

---

### Birth life criteria

The Observation of Birth profile records the immediate signs of life observed after delivery. Each criterion is represented as a component with a coded observation and a Boolean value.

Profile: [ObservationOfBirth](StructureDefinition-observation-of-birth.html)

Example: [observation-of-birth-example](Observation-observation-of-birth-example.html)

| Life criterion | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Breathing | ObservationLifeCriteriaVS | `birth0003-00001` | `Observation.component` |
| Heartbeat | ObservationLifeCriteriaVS | `birth0003-00002` | `Observation.component` |
| Involuntary muscle contractions | ObservationLifeCriteriaVS | `birth0003-00004` | `Observation.component` |

---

### Birth measurements

Depending on the measurement being recorded, the Observation value may contain either a Quantity or an Integer.

Profile: [ObservationOfBirth](StructureDefinition-observation-of-birth.html)

Example: [observation-of-birth-example](Observation-observation-of-birth-example.html)

| Measurement | Value type | Example |
| :--- | :--- | :--- |
| Birth weight | Quantity | `3200 g` |
| Birth length | Quantity | `50 cm` |
| Head circumference | Quantity | `35 cm` |
| Gestational age | Integer | `39 weeks` |
| Birth order | Integer | `1` |
| Pregnancy number | Integer | `2` |

---

### APGAR assessment values

The APGAR Observation profile stores a single score for a specific assessment time. Multiple APGAR observations may be recorded (for example, at 1 minute, 5 minutes, and 10 minutes after birth).

Profile: [ObservationOfAPGAR](StructureDefinition-observation-of-apgar.html)

Example: [observation-of-apgar-example](Observation-observation-of-apgar-example.html)

| Information to record | Stored in |
| :--- | :--- |
| APGAR observation code | `Observation.code` |
| Assessment time | `Observation.effectiveDateTime` |
| Healthcare professional | `Observation.performer` |
| APGAR score (0–10) | `Observation.valueQuantity` |

---

### Newborn administrative information

The newborn patient profile extends the UZ Core Patient profile with information required for birth registration.

Profile: [NewbornPatient](StructureDefinition-newborn-patient.html)

Example: [newborn-patient-example](Patient-newborn-patient-example.html)

| Administrative information | Stored in |
| :--- | :--- |
| Birth certificate identifier | `Patient.identifier` |
| Birth date | `Patient.birthDate` |
| Birth time | `Patient.birthDate.extension` |
| Multiple birth indicator | `Patient.multipleBirth[x]` |
| Guardian information | `Patient.contact` |
| Responsible organization | `Patient.managingOrganization` |
| Primary practitioner | `Patient.generalPractitioner` |

---

### Birth document summary

The following resources are required to produce a complete medical birth certificate.

| Resource | Purpose | Example |
| :--- | :--- | :--- |
| CompositionOfBirth | Clinical birth document | `composition-of-birth-example` |
| NewbornPatient | Newborn demographic information | `newborn-patient-example` |
| RelatedPersonOfBirth | Parent or guardian | `related-person-of-birth-example` |
| EncounterOfBirth | Delivery encounter | `encounter-of-birth-example` |
| ObservationOfAPGAR | APGAR assessment | `observation-of-apgar-example` |
| ObservationOfBirth | Birth measurements and life criteria | `observation-of-birth-example` |

---

This completes the **Birth Registration** documentation. The next part documents the **Death Registration** resources, including:

- CompositionOfDeath
- DeceasedPatient
- EncounterOfDeath
- ObservationCauseOfDeath

# Death Registration

### Death certificate document (Composition)

The medical death certificate is represented by a Composition resource. It assembles the death encounter and the cause of death observation into a single clinical document used for death registration.

Profile: [CompositionOfDeath](StructureDefinition-composition-of-death.html)

Example: [composition-of-death-example](Composition-composition-of-death-example.html)

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Document type | LOINC | `LOINC#64297-5` (Death certificate) | `Composition.type` |
| Document identifier | Form Number | `Death form №106` | `Composition.identifier` |
| Document status | Composition Status | `preliminary` | `Composition.status` |
| Cause of death | ObservationCauseOfDeath | `observation-cause-of-death-example` | `Composition.section` |
| Death encounter | EncounterOfDeath | `encounter-of-death-example` | `Composition.section` |

---

### Deceased patient

Represents the deceased patient whose death is being documented. The profile extends the UZ Core Patient profile by requiring the date and time of death and the organization responsible for maintaining the patient's record.

Profile: [DeceasedPatient](StructureDefinition-patient-of-death.html)

Example: [deceased-patient-example](Patient-deceased-patient-example.html)

| Information to record | Stored in |
| :--- | :--- |
| National identifier | `Patient.identifier` |
| Patient name | `Patient.name` |
| Gender | `Patient.gender` |
| Date of birth | `Patient.birthDate` |
| Date and time of death | `Patient.deceasedDateTime` |
| Address | `Patient.address` |
| Managing organization | `Patient.managingOrganization` |

---

### Death encounter

Represents the healthcare encounter during which the death was certified. It records the certifying practitioner, healthcare organization, encounter location, service type and place of death.

Profile: [EncounterOfDeath](StructureDefinition-encounter-of-death.html)

Example: [encounter-of-death-example](Encounter-encounter-of-death-example.html)

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Encounter status | EncounterStatus | `completed` | `Encounter.status` |
| Encounter class | v3 ActCode | `EMER` | `Encounter.class` |
| Service type | DeathEncounterTypeVS | `mserv-0001-00006` (Forensic medical examination) | `Encounter.serviceType` |
| Deceased patient | — | `deceased-patient-example` | `Encounter.subject` |
| Certifying practitioner | UZCorePractitionerRole | `practitionerrole-001` | `Encounter.participant.actor` |
| Healthcare organization | UZCoreOrganization | `organization1-example` | `Encounter.serviceProvider` |
| Death location | UZCoreLocation | `location-death-example` | `Encounter.location` |
| Place of death | SNOMED CT | `183676005` (Died in hospital) | `Encounter.extension(deathPlaceType)` |

---

### Cause of death observation

Records the certified underlying cause of death together with the circumstances surrounding the death, immediate cause, and injury information when applicable.

Profile: [ObservationCauseOfDeath](StructureDefinition-observation-cause-of-death.html)

Example: [observation-cause-of-death-example](Observation-observation-cause-of-death-example.html)

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Observation type | LOINC | `LOINC#79378-6` (Cause of death) | `Observation.code` |
| Underlying cause of death | CauseOfDeathVS | `death0003-00003` | `Observation.valueCodeableConcept` |
| Date and time of death | — | `2026-04-10T14:30:00+05:00` | `Observation.effectiveDateTime` |
| Certifying practitioner | UZCorePractitioner | `practitioner-003` | `Observation.performer` |

---

### Circumstances of death

The Observation Cause of Death profile captures additional information about the circumstances that resulted in death.

Profile: [ObservationCauseOfDeath](StructureDefinition-observation-cause-of-death.html)

Example: [observation-cause-of-death-example](Observation-observation-cause-of-death-example.html)

| Information to record | Value set | Example code | Stored in |
| :--- | :--- | :--- | :--- |
| Circumstances of death | DeathOccuredFromVS | `SNOMED CT#7878000` (Accidental death) | `Observation.component[occurredFrom]` |
| Immediate cause | ICD-10 | `I21.9` (Acute myocardial infarction) | `Observation.component[immediateCause]` |
| Injury type | DeathInjuryPlaceVS | `death0002_00003` (Transport-related) | `Observation.component[accidentPlaceType]` |
| Injury date | — | `2026-04-08T18:00:00+05:00` | `Observation.component[accidentDate]` |
| Place and circumstances | DeathInjuryPlaceVS | `death0002_00003` | `Observation.component[accidentPlaceCircumstances]` |

---

### Death encounter participants

The death encounter identifies the healthcare professional responsible for certifying the death and the healthcare facility where the certification was completed.

Profile: [EncounterOfDeath](StructureDefinition-encounter-of-death.html)

Example: [encounter-of-death-example](Encounter-encounter-of-death-example.html)

| Participant | Stored in |
| :--- | :--- |
| Practitioner role | `Encounter.participant.actor` |
| Participation type | `Encounter.participant.type` |
| Participation period | `Encounter.participant.period` |

---

### Death document relationships

The death registration document is composed of the patient, encounter and clinical observation resources required for legal death certification.

| Resource | References | Purpose |
| :--- | :--- | :--- |
| CompositionOfDeath | ObservationCauseOfDeath | Cause of death certification |
| CompositionOfDeath | EncounterOfDeath | Death encounter |
| EncounterOfDeath | DeceasedPatient | Patient whose death is certified |
| EncounterOfDeath | UZCoreOrganization | Certifying healthcare facility |
| EncounterOfDeath | UZCorePractitionerRole | Certifying healthcare professional |
| ObservationCauseOfDeath | DeceasedPatient | Subject of the observation |
| ObservationCauseOfDeath | UZCorePractitioner | Practitioner recording the observation |

---

### Death registration summary

The following resources are required to represent a complete medical death certificate.

| Resource | Purpose | Example |
| :--- | :--- | :--- |
| CompositionOfDeath | Clinical death document | `composition-of-death-example` |
| DeceasedPatient | Deceased patient information | `deceased-patient-example` |
| EncounterOfDeath | Death certification encounter | `encounter-of-death-example` |
| ObservationCauseOfDeath | Cause of death observation | `observation-cause-of-death-example` |

---

## Resource relationships

The Birth and Death implementation guide uses Composition resources as the document entry point.

### Birth registration

```
CompositionOfBirth
├── EncounterOfBirth
├── ObservationOfAPGAR
└── ObservationOfBirth
      │
      └── NewbornPatient
            │
            └── RelatedPersonOfBirth
```

### Death registration

```
CompositionOfDeath
├── EncounterOfDeath
└── ObservationCauseOfDeath
      │
      └── DeceasedPatient
```

These resources collectively represent the clinical and administrative information required for medical birth and death registration in Uzbekistan while remaining conformant with UZ Core and HL7 FHIR R5.