Profile: Form130LaboratoryTestResultsComposition
Parent: Composition
Id: form-130-laboratory-test-results-composition
Title: "Form 130 - Laboratory Test Results Composition"
Description: "Composition profile for Form 130 laboratory test results."

* identifier 1..*
* status = #final
* type = $loinc#11502-2 "Laboratory report"
* category 1..1
* category = $document-category-cs#form-130 "Laboratory Test Results"

* subject 1..1
* subject only Reference(UZCorePatient)

* encounter 0..1
* encounter only Reference(UZCoreEncounter)

* author 1..*
* author only Reference(UZCorePractitionerRole)

* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open

* section contains
    patientInformation 1..1 and
    laboratoryOrderInformation 1..1 and
    specimenInformation 1..1 and
    laboratoryTestResults 1..1 and
    responsiblePersons 1..1

// ---------------------------------------------------------------------
// Patient Information
// ---------------------------------------------------------------------

* section[patientInformation].title 1..1
* section[patientInformation].code 1..1
* section[patientInformation].code = $loinc#LP36348-8 "Patient Information"
* section[patientInformation].entry 1..*
* section[patientInformation].entry only Reference(UZCorePatient)

// ---------------------------------------------------------------------
// Laboratory Order Information
// ---------------------------------------------------------------------

* section[laboratoryOrderInformation].title 1..1
* section[laboratoryOrderInformation].code 1..1
* section[laboratoryOrderInformation].code = $loinc#11502-2 "Laboratory report"
* section[laboratoryOrderInformation].entry 1..*
* section[laboratoryOrderInformation].entry only
    Reference(UZCoreServiceRequestLaboratory or UZCoreOrganization or UZCorePractitionerRole)

// ---------------------------------------------------------------------
// Specimen Information
// ---------------------------------------------------------------------

* section[specimenInformation].title 1..1
* section[specimenInformation].code 1..1
* section[specimenInformation].code = $loinc#LP443467-8 "Specimen"
* section[specimenInformation].entry 1..*
* section[specimenInformation].entry only
    Reference(UZCoreSpecimen or UZCoreObservation)

// ---------------------------------------------------------------------
// Complete Blood Count Results
// ---------------------------------------------------------------------

* section[laboratoryTestResults].title 1..1
* section[laboratoryTestResults].code 1..1
* section[laboratoryTestResults].code = $loinc#LP420386-7 "Laboratory test results reported"
* section[laboratoryTestResults].entry 1..*
* section[laboratoryTestResults].entry only
    Reference(UZCoreDiagnosticReport or UZCoreObservation)

// ---------------------------------------------------------------------
// Responsible Persons
// ---------------------------------------------------------------------

* section[responsiblePersons].title 1..1
* section[responsiblePersons].code 1..1
* section[responsiblePersons].code = $loinc#LP35157-4 "Responsible party"
* section[responsiblePersons].entry 1..*
* section[responsiblePersons].entry only Reference(UZCorePractitionerRole)