Profile: Form044Composition
Parent: Composition
Id: form-044-composition
Title: "Form 044 - Medical Certificate for Foreign Travel"
Description: "Composition profile for Form 044 (Medical certificate for persons travelling abroad / Медицинская справка для выезжающих за границу) documents."

* identifier 1..*
* status = #final
* type = $loinc#11488-4 "Consult note"
* category 1..1
* category = $document-category-cs#form-044 "Medical certificate for foreign travel"
* subject 1..1
* subject only Reference(UZCorePatient)
* author 1..*
* author only Reference(Organization)

// Section slicing by code pattern
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open

* section contains
    infectiousHistory 1..1 and
    travelClearance 1..1

* section[infectiousHistory].title 1..1
* section[infectiousHistory].code 1..1
* section[infectiousHistory].code = $loinc#11348-0 "History of Past illness note"
* section[infectiousHistory].entry 0..*
* section[infectiousHistory].entry only Reference(Condition)
* section[infectiousHistory].entry ^short = "Past infectious diseases (Kechirgan yuqumli kasalliklar)"

* section[travelClearance].title 1..1
* section[travelClearance].code 1..1
* section[travelClearance].code = $loinc#51848-0 "Evaluation note"
* section[travelClearance].entry 1..*
* section[travelClearance].entry only Reference(Observation)
* section[travelClearance].entry ^short = "Travel fitness assessment, destination country, and travel duration observations"
