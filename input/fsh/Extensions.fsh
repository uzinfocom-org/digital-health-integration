Extension: AdmissionOrigin
Id: admission-origin
Title: "Admission Origin"
Description: "Extension to represent the origin from which the patient came before admission."
Context: Encounter.admission.origin
* ^experimental = true
* value[x] only CodeableConcept
* valueCodeableConcept from EncounterAdmissionOriginVS (required)


// screening
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
* valueCodeableConcept from ScreeningBreastQuadrantVS (required)


Extension: ManagingOrganizationAttachment
Id: managing-organization-attachment
Title: "Managing organization attachment date"
Description: "Date when the patient was attached to the managing organization. In Uzbekistan, patients can only change their managing organization once a year."
* ^url = "https://dhp.uz/fhir/integrations/StructureDefinition/managing-organization-attachment"
* ^status = #draft
* ^experimental = true
* ^context.type = #element
* ^context.expression = "Patient"

* value[x] 1..1
* value[x] only date

Extension: DeathPlaceType
Id: death-place-type
Title: "Death Place Type"
Description: "Type which indicates the death place type (home, street, hospital, etc.)"

* ^url = "https://dhp.uz/fhir/integrations/StructureDefinition/death-place-type"
* ^version = "1.0.0"
* ^context.type = #element
* ^context.expression = "Encounter"
* ^status = #active
* ^experimental = true

* value[x] only CodeableConcept
* value[x] 1..1
* value[x] from  DeathPlaceTypeVS (extensible)
* value[x] ^short = "Death place type"
* value[x] ^definition = "Type which is that death place type (home, street, hospital etc)"
