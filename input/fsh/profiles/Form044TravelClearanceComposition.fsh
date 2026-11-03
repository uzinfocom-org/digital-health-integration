Profile: Form044TravelClearanceCertificateComposition
Parent: UZCoreComposition
Id: form-044-travel-clearance-composition
Title: "Form 044 - Medical Certificate for Travelers Abroad Composition"
Description: "Composition profile for Form 044 (Xorijga ketayotganlar uchun tibbiy ma'lumotnoma): the certificate a polyclinic commission issues to a person travelling abroad on a business trip, confirming that there are no medical contraindications to the trip."
* ^experimental = true

* identifier 1..*
* identifier ^short = "Document instance UUID, form number (044) and certificate number"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains certificateNumber 1..1
* identifier[certificateNumber].system = "https://dhp.uz/fhir/core/sid/doc/uz/medical-certificate-number"
* identifier[certificateNumber].value 1..1
* identifier[certificateNumber] ^short = "Certificate number (MA'LUMOTNOMA №), prefixed with the form number"

* status ^short = "Document status: final once the commission issues the certificate"

* type = $composition-type-cs#emdoc-0010-0042 "Medical certificate for travelers abroad"
* type ^short = "Form 044 document type (medical certificate for travelers abroad); LOINC 104988-1 \"Medical Fitness Certificate\" may be sent as an additional coding"

* category 1..*
* category ^short = "Document category: medical record, and the Form 044 category"
* category[dhpCategory] 1..1
* category[dhpCategory] = $composition-category-cs#Comp-001-0001 "Medical record"
* category contains formCategory 1..1
* category[formCategory] = $document-category-cs#form-044
* category[formCategory] ^short = "Form 044 document category"

* subject 1..1
* subject only Reference(UZCorePatient)
* subject ^short = "Person travelling abroad"

* encounter 0..1
* encounter only Reference(UZCoreEncounter)
* encounter ^short = "Commission examination visit, when it is recorded"

* date 1..1
* date ^short = "Date the certificate was issued (Ma'lumotnoma berilgan sana)"

* author 1..*
* author only Reference(UZCorePractitionerRole or UZCorePractitioner)
* author ^short = "Commission chair"

* title 1..1
* title ^short = "Document title"

* custodian 0..1
* custodian only Reference(UZCoreOrganization)
* custodian ^short = "Polyclinic whose commission issued the certificate (Muassasa nomi)"

* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open

* section contains
    personalInformation 1..1 and
    infectiousDiseaseHistory 0..1 and
    travelAuthorization 1..1 and
    residenceInformation 1..1 and
    responsiblePersons 1..1

* section[personalInformation].title 1..1
* section[personalInformation].title ^short = "1. Personal information"
* section[personalInformation].code 1..1
* section[personalInformation].code = $loinc#LP36348-8 "Patient information"
* section[personalInformation].code ^short = "Med ID number, full name, age"
* section[personalInformation].entry 1..*
* section[personalInformation].entry only Reference(UZCorePatient)
* section[personalInformation].entry ^short = "Person travelling abroad"

* section[infectiousDiseaseHistory].title 1..1
* section[infectiousDiseaseHistory].title ^short = "2. History of infectious diseases"
* section[infectiousDiseaseHistory].code 1..1
* section[infectiousDiseaseHistory].code = $loinc#11348-0 "History of Past illness note"
* section[infectiousDiseaseHistory].code ^short = "Past infectious diseases (measles, scarlet fever, whooping cough, viral hepatitis, chickenpox and others)"
* section[infectiousDiseaseHistory].entry 1..*
* section[infectiousDiseaseHistory].entry only Reference(UZCoreCondition)
* section[infectiousDiseaseHistory].entry ^short = "Past infectious diseases"

* section[travelAuthorization].title 1..1
* section[travelAuthorization].title ^short = "3. Travel authorization"
* section[travelAuthorization].code 1..1
* section[travelAuthorization].code = $loinc#104988-1 "Medical Fitness Certificate"
* section[travelAuthorization].code ^short = "Medical conclusion on contraindications to travel, destination country, business trip period"
* section[travelAuthorization].entry 1..*
* section[travelAuthorization].entry only Reference(UZCoreObservation)
* section[travelAuthorization].entry ^short = "Medical conclusion, destination country and business trip period"

* section[residenceInformation].title 1..1
* section[residenceInformation].title ^short = "4. Residence information"
* section[residenceInformation].code 1..1
* section[residenceInformation].code = $loinc#56799-0 "Address"
* section[residenceInformation].code ^short = "Place of residence of the person travelling"
* section[residenceInformation].entry 1..*
* section[residenceInformation].entry only Reference(UZCorePatient)
* section[residenceInformation].entry ^short = "Person travelling abroad (address)"

* section[responsiblePersons].title 1..1
* section[responsiblePersons].title ^short = "5. Responsible persons"
* section[responsiblePersons].code 1..1
* section[responsiblePersons].code = $loinc#LP35157-4 "Responsible party"
* section[responsiblePersons].code ^short = "Commission chair and members"
* section[responsiblePersons].entry 1..*
* section[responsiblePersons].entry only Reference(UZCorePractitionerRole)
* section[responsiblePersons].entry ^short = "Commission chair, and members when recorded"
