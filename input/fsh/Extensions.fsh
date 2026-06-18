Extension: BreastQuadrantExtension
Id: breast-quadrant
Title: "Breast Quadrant Extension"
Description: "Breast quadrant used to localize findings."
* ^status = #active
* ^experimental = true
* ^url = "https://dhp.uz/fhir/integrations/StructureDefinition/breast-quadrant"
* ^context.type = #element
* ^context.expression = "Observation.bodySite"
* value[x] only CodeableConcept
* valueCodeableConcept from SrcBreastQuadrantVS (required)


Extension: WorkPlaceExtension
Id: workPlace
Title: "WorkPlace Extension"
Description: "Extension for recording the patient's place of employment."
* ^status = #active
* ^experimental = true
* ^url = "https://dhp.uz/fhir/integrations/StructureDefinition/workPlace"
* ^context.type = #element
* ^context.expression = "Patient"
* value[x] only string