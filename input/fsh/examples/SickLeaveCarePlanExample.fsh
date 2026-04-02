Instance: ExamplePatient
InstanceOf: UZCorePatient
Usage: #example
Title: "Example Patient"
Description: "Minimal example patient for sick leave"
* identifier[nationalId].value = "31234567890124"
* name.use = #official
* name.text = "Karimov Akmal"
* name.family = "Karimov"
* name.given = "Akmal"

Instance: Form095CarePlanExample
InstanceOf: CarePlan
Usage: #example
Title: "Form 095 - Sick leave"
Description: "Example of a student disability certificate (Form 095) using document category and form number"

* status = #active
* intent = #order

* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:uuid:550e8400-e29b-41d4-a716-446655440000"

* identifier[+].system = "https://dhp.uz/fhir/core/sid/doc/uz/form-number"
* identifier[=].value = "095"

* category = document-category-cs#form-095

* subject = Reference(ExamplePatient)

* period.start = "2026-02-03"
* period.end = "2026-02-10"
