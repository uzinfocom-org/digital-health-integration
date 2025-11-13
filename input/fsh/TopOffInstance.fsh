// Instance: example
// InstanceOf: Patient
// Usage: #example
// Title: "Example Patient - Boltayev"
// * name[0].text = "Boltayev Damir Ketmonovich"
// * gender = #male
// * birthDate = "1950-01-01"

// Instance: related1
// InstanceOf: RelatedPerson
// Usage: #example
// Title: "Example RelatedPerson - Boltayev"
// * patient = Reference(Patient/example)
// * name[0].text = "Boltayev Damir Ketmonovich"
// * gender = #male
// * birthDate = "1950-01-01"

// Instance: InstanceDHPSickLeaveCarePlan
// InstanceOf: DHPSickLeaveCarePlan
// Title: "Example - Sick Leave CarePlan (with RelatedPerson)"
// Description: "CarePlan instance built from SickLeave sheet; RelatedPerson referenced via supportingInfo."
// Usage: #example
// * category[0].coding[0].system = "https://terminology.dhp.uz/CodeSystem/sick-leave-category-cs"
// * category[0].coding[0].code = #mserv-0005-00001
// * category[0].coding[0].display = "Sick leave"
// * subject = Reference(Patient/example)
// * intent = #plan
// * status = #completed
// * identifier[0].system = "urn:example:careplan-series"
// * identifier[0].value = "series-001"
// * created = "2025-10-02"
// * period.start = "2025-10-02"
// * period.end = "2025-10-15"
// * supportingInfo[0] = Reference(RelatedPerson/related1)
// * supportingInfo[0].display = "Related person: Boltayev Damir Ketmonovich"

// Instance: InstanceDHPSickLeaveObservation
// InstanceOf: DHPSickLeaveObservation
// Title: "Example - Sick Leave Observation (InstanceDHPSickLeaveObservation)"
// Description: "Observation representing data related to sick leave CarePlan (all example values combined)."
// Usage: #example
// * subject = Reference(Patient/example)
// * basedOn = Reference(CarePlan/InstanceDHPSickLeaveCarePlan)
// * code.coding[0].system = "http://snomed.info/sct"
// * code.coding[0].code = #224459001
// * code.coding[0].display = "On sick leave from work"
// * valueCodeableConcept.text = "On sick leave from work"

// * component[0].code.coding[0].system = "https://dhp.uz/fhir/integrations/CodeSystem/sick-leave-component-cs"
// * component[0].code.coding[0].code = #emdoc-0009-0001
// * component[0].code.coding[0].display = "City affiliation"
// * component[0].valueCodeableConcept.text = "Tashkent"

// * component[1].code.coding[0].system = "https://dhp.uz/fhir/integrations/CodeSystem/sick-leave-component-cs"
// * component[1].code.coding[0].code = #emdoc-0009-0002
// * component[1].code.coding[0].display = "Place of incident"
// * component[1].valueCodeableConcept.text = "Home"

// * component[2].code.coding[0].system = "https://dhp.uz/fhir/integrations/CodeSystem/sick-leave-component-cs"
// * component[2].code.coding[0].code = #emdoc-0009-0003
// * component[2].code.coding[0].display = "Issuance of sick leave to a patient from another city"
// * component[2].valueBoolean = false

// * component[3].code.coding[0].system = "https://dhp.uz/fhir/integrations/CodeSystem/sick-leave-component-cs"
// * component[3].code.coding[0].code = #emdoc-0009-0004
// * component[3].code.coding[0].display = "Information about contact with an infectious disease patient"
// * component[3].valueBoolean = false

// * component[4].code.coding[0].system = "https://dhp.uz/fhir/integrations/CodeSystem/sick-leave-component-cs"
// * component[4].code.coding[0].code = #emdoc-0009-0005
// * component[4].code.coding[0].display = "Degree of kinship"
// * component[4].valueCodeableConcept.text = "First degree relative"

// * component[5].code.coding[0].system = "https://dhp.uz/fhir/integrations/CodeSystem/sick-leave-component-cs"
// * component[5].code.coding[0].code = #emdoc-0009-0006
// * component[5].code.coding[0].display = "Regime/Mode"
// * component[5].valueCodeableConcept.text = "AMB"

// * component[6].code.coding[0].system = "https://dhp.uz/fhir/integrations/CodeSystem/sick-leave-component-cs"
// * component[6].code.coding[0].code = #emdoc-0009-0007
// * component[6].code.coding[0].display = "Data on regime violation"
// * component[6].valueCodeableConcept.text = "No violations reported"

// * component[7].code.coding[0].system = "https://dhp.uz/fhir/integrations/CodeSystem/sick-leave-component-cs"
// * component[7].code.coding[0].code = #emdoc-0009-0008
// * component[7].code.coding[0].display = "Temporarily transfer to another job"
// * component[7].valueDateTime = "2025-10-01T09:00:00+05:00"

// * component[8].code.coding[0].system = "https://dhp.uz/fhir/integrations/CodeSystem/sick-leave-component-cs"
// * component[8].code.coding[0].code = #emdoc-0009-0009
// * component[8].code.coding[0].display = "Conclusions"
// * component[8].valueCodeableConcept.text = "Conclusions example"

// * component[9].code.coding[0].system = "https://dhp.uz/fhir/integrations/CodeSystem/sick-leave-component-cs"
// * component[9].code.coding[0].code = #emdoc-0009-0010
// * component[9].code.coding[0].display = "Date of verification"
// * component[9].valueDateTime = "2025-10-02T12:00:00+05:00"

// * extension[0].url = "https://dhp.uz/fhir/StructureDefinition/care-for.RelatedPerson.birthdate"
// * extension[0].valueDate = "1950-01-01"
