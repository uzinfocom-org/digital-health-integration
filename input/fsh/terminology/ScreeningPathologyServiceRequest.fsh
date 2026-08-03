Invariant: spr-1
Description: "A pathology request must contain exactly one of breast material class or cervical material type."
Severity: #error
Expression: "orderDetail.parameter.where(code.coding.where(system = 'https://terminology.dhp.uz/fhir/integrations/CodeSystem/screening-histology-order-parameter-cs' and code = 'scrn-0069-00001').exists()).exists() xor orderDetail.parameter.where(code.coding.where(system = 'https://terminology.dhp.uz/fhir/integrations/CodeSystem/screening-histology-order-parameter-cs' and code = 'scrn-0069-00005').exists()).exists()"

Invariant: spr-2
Description: "A breast biopsy request must include the biopsy subtype."
Severity: #error
Expression: "orderDetail.parameter.where(code.coding.where(system = 'https://terminology.dhp.uz/fhir/integrations/CodeSystem/screening-histology-order-parameter-cs' and code = 'scrn-0069-00001').exists()).value.ofType(CodeableConcept).coding.where(system = 'https://terminology.dhp.uz/fhir/integrations/CodeSystem/screening-breast-material-class-cs' and code = 'scrn-0072-00001').exists() implies orderDetail.parameter.where(code.coding.where(system = 'https://terminology.dhp.uz/fhir/integrations/CodeSystem/screening-histology-order-parameter-cs' and code = 'scrn-0069-00002').exists()).exists()"

Invariant: spr-3
Description: "A breast surgical specimen request must include the surgical procedure type."
Severity: #error
Expression: "orderDetail.parameter.where(code.coding.where(system = 'https://terminology.dhp.uz/fhir/integrations/CodeSystem/screening-histology-order-parameter-cs' and code = 'scrn-0069-00001').exists()).value.ofType(CodeableConcept).coding.where(system = 'https://terminology.dhp.uz/fhir/integrations/CodeSystem/screening-breast-material-class-cs' and code = 'scrn-0072-00002').exists() implies orderDetail.parameter.where(code.coding.where(system = 'https://terminology.dhp.uz/fhir/integrations/CodeSystem/screening-histology-order-parameter-cs' and code = 'scrn-0069-00003').exists()).exists()"

Invariant: spr-4
Description: "A breast cytology request must include the cytology material type."
Severity: #error
Expression: "orderDetail.parameter.where(code.coding.where(system = 'https://terminology.dhp.uz/fhir/integrations/CodeSystem/screening-histology-order-parameter-cs' and code = 'scrn-0069-00001').exists()).value.ofType(CodeableConcept).coding.where(system = 'https://terminology.dhp.uz/fhir/integrations/CodeSystem/screening-breast-material-class-cs' and code = 'scrn-0072-00003').exists() implies orderDetail.parameter.where(code.coding.where(system = 'https://terminology.dhp.uz/fhir/integrations/CodeSystem/screening-histology-order-parameter-cs' and code = 'scrn-0069-00004').exists()).exists()"

Profile: ScreeningPathologyServiceRequest
Parent: ScreeningServiceRequest
Id: screening-pathology-service-request
Title: "Screening Pathology Service Request"
Description: "FHIR R5 request for breast or cervical pathology with conditionally required material parameters."
* ^status = #active
* ^experimental = true
* ^publisher = "DHP Integration"
* obeys spr-1 and spr-2 and spr-3 and spr-4

* code.concept 1..1 MS
* code.concept = $sct#714797009 "Histologic test"
* orderDetail 1..1 MS
* orderDetail.parameter ^slicing.discriminator.type = #value
* orderDetail.parameter ^slicing.discriminator.path = "code"
* orderDetail.parameter ^slicing.rules = #open
* orderDetail.parameter contains
    materialClass 0..1 MS and
    biopsySubtype 0..1 MS and
    surgicalProcedureType 0..1 MS and
    cytologyMaterialType 0..1 MS and
    cervicalMaterialType 0..1 MS

* orderDetail.parameter[materialClass].code = ScreeningHistologyOrderParameterCS#scrn-0069-00001
* orderDetail.parameter[materialClass].value[x] only CodeableConcept
* orderDetail.parameter[materialClass].valueCodeableConcept from ScreeningBreastMaterialClassVS (required)

* orderDetail.parameter[biopsySubtype].code = ScreeningHistologyOrderParameterCS#scrn-0069-00002
* orderDetail.parameter[biopsySubtype].value[x] only CodeableConcept
* orderDetail.parameter[biopsySubtype].valueCodeableConcept from ScreeningBreastBiopsySubtypeVS (required)

* orderDetail.parameter[surgicalProcedureType].code = ScreeningHistologyOrderParameterCS#scrn-0069-00003
* orderDetail.parameter[surgicalProcedureType].value[x] only CodeableConcept
* orderDetail.parameter[surgicalProcedureType].valueCodeableConcept from ScreeningBreastSurgicalProcedureTypeVS (required)

* orderDetail.parameter[cytologyMaterialType].code = ScreeningHistologyOrderParameterCS#scrn-0069-00004
* orderDetail.parameter[cytologyMaterialType].value[x] only CodeableConcept
* orderDetail.parameter[cytologyMaterialType].valueCodeableConcept from ScreeningBreastCytologyMaterialTypeVS (required)

* orderDetail.parameter[cervicalMaterialType].code = ScreeningHistologyOrderParameterCS#scrn-0069-00005
* orderDetail.parameter[cervicalMaterialType].value[x] only CodeableConcept
* orderDetail.parameter[cervicalMaterialType].valueCodeableConcept from ScreeningCervicalMaterialTypeVS (required)
