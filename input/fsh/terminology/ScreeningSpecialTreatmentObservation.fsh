Invariant: sto-1
Description: "Other treatment text must be present if and only if the Other special treatment type is selected."
Severity: #error
Expression: "component.where(code.coding.where(system = 'https://terminology.dhp.uz/fhir/integrations/CodeSystem/screening-histology-order-parameter-cs' and code = 'scrn-0069-00006').exists()).value.ofType(CodeableConcept).coding.where(system = 'https://terminology.dhp.uz/fhir/integrations/CodeSystem/screening-special-treatment-type-cs' and code = 'scrn-0086-00008').exists() = component.where(code.coding.where(system = 'https://terminology.dhp.uz/fhir/integrations/CodeSystem/screening-histology-order-parameter-cs' and code = 'scrn-0069-00008').exists()).exists()"

Profile: ScreeningSpecialTreatmentObservation
Parent: ScreeningObservation
Id: screening-special-treatment-observation
Title: "Screening Special Treatment Observation"
Description: "History of prior special treatment (type, period, free-text detail) associated with a breast or cervical pathology examination. Recorded as its own Observation and linked to the resulting DiagnosticReport via supportingInfo, rather than to the pathology ServiceRequest."
* ^status = #active
* ^experimental = true
* ^publisher = "DHP Integration"
* obeys sto-1

* code = ScreeningHistologyOrderParameterCS#scrn-0069-00006
* component[transformationZone] 0..0
* component[birads] 0..0
* component[breastDensity] 0..0
* component[imageQuality] 0..0
* component contains
    treatmentType 0..* MS and
    treatmentPeriod 0..1 MS and
    otherTreatment 0..1 MS

* component[treatmentType].code = ScreeningHistologyOrderParameterCS#scrn-0069-00006
* component[treatmentType].value[x] 1..1 MS
* component[treatmentType].value[x] only CodeableConcept
* component[treatmentType].valueCodeableConcept from ScreeningSpecialTreatmentTypeVS (required)

* component[treatmentPeriod].code = ScreeningHistologyOrderParameterCS#scrn-0069-00007
* component[treatmentPeriod] ^short = "Date or period of the special treatment; omit when unknown"
* component[treatmentPeriod] ^comment = "This is historical clinical context and is distinct from ServiceRequest.occurrence[x] of the pathology request, which describes when the requested pathology service should occur."
* component[treatmentPeriod].value[x] 1..1 MS
* component[treatmentPeriod].value[x] only Period

* component[otherTreatment].code = ScreeningHistologyOrderParameterCS#scrn-0069-00008
* component[otherTreatment].value[x] 1..1 MS
* component[otherTreatment].value[x] only string
