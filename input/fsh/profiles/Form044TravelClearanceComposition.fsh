Profile: Form044TravelClearanceCertificateComposition
Parent: Composition
Id: form-044-travel-clearance-composition
Title: "Form 044 - Certificate of Absence of Medical Contraindications for Travel Abroad Composition"
Description: "Composition profile for Form 044 medical certificate for travel abroad."

* identifier 1..*
* status = #final
* type = $loinc#104988-1 "Medical fitness certificate"
* category 1..1
* category = $document-category-cs#form-044 "Certificate on absence of medical contraindications for travel abroad"

* subject 1..1
* subject only Reference(UZCorePatient)

* encounter 0..0

* author only Reference(UZCorePractitionerRole)

* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open

* section contains
    personalInformation 1..1 and
    residenceInformation 1..1 and
    infectiousDiseaseHistory 0..1 and
    travelAuthorization 1..1 and
    responsiblePersons 1..1

* section[personalInformation].title 1..1
* section[personalInformation].code 1..1
* section[personalInformation].code = $loinc#LP36348-8 "Patient Information"
* section[personalInformation].entry 1..*
* section[personalInformation].entry only Reference(UZCorePatient)

* section[residenceInformation].title 1..1
* section[residenceInformation].code 1..1
* section[residenceInformation].code = $loinc#56799-0 "Address"
* section[residenceInformation].entry 1..*
* section[residenceInformation].entry only Reference(UZCorePatient)

* section[infectiousDiseaseHistory].title 1..1
* section[infectiousDiseaseHistory].code 1..1
* section[infectiousDiseaseHistory].code = $loinc#11348-0 "History of Past illness note"
* section[infectiousDiseaseHistory].entry 1..*
* section[infectiousDiseaseHistory].entry only Reference(UZCoreCondition)

* section[travelAuthorization].title 1..1
* section[travelAuthorization].code 1..1
* section[travelAuthorization].code = $loinc#104988-1 "Medical fitness certificate"
* section[travelAuthorization].entry 1..*
* section[travelAuthorization].entry only Reference(UZCoreObservation)

* section[responsiblePersons].title 1..1
* section[responsiblePersons].code 1..1
* section[responsiblePersons].code = $loinc#LP35157-4 "Responsible party"
* section[responsiblePersons].entry 1..*
* section[responsiblePersons].entry only Reference(UZCorePractitionerRole)