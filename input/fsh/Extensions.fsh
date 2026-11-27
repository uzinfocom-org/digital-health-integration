// ===================== Device (JihozMed integration) =====================

Extension: DeviceCountryOfOrigin
Id: device-country-of-origin
Title: "Device Country of Origin"
Description: "Country where the device was manufactured."
Context: Device
* ^status = #draft
* ^experimental = true
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from $iso-3166-2-vs (extensible)

Extension: DeviceManufacturerCountry
Id: device-manufacturer-country
Title: "Device Manufacturer Country"
Description: "Country where the device manufacturer is registered. It can differ from the country where the device was manufactured."
Context: Device
* ^status = #draft
* ^experimental = true
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from $iso-3166-2-vs (extensible)

Extension: DeviceInstallationDate
Id: device-installation-date
Title: "Device Installation Date"
Description: "Date the device was installed and put into operation at the facility."
Context: Device
* ^status = #draft
* ^experimental = true
* value[x] 1..1
* value[x] only dateTime

Extension: DeviceWarrantyDate
Id: device-warranty-date
Title: "Device Warranty Date"
Description: "Date the device warranty ends."
Context: Device
* ^status = #draft
* ^experimental = true
* value[x] 1..1
* value[x] only dateTime

Extension: DeviceCreationDate
Id: device-creation-date
Title: "Device Creation Date"
Description: "Date and time the device record was created in the source system."
Context: Device
* ^status = #draft
* ^experimental = true
* value[x] 1..1
* value[x] only dateTime

Extension: DevicePhoto
Id: device-photo
Title: "Device Photo"
Description: "Photo of the device."
Context: Device
* ^status = #draft
* ^experimental = true
* value[x] 1..1
* value[x] only Attachment

Extension: DeviceContract
Id: device-contract
Title: "Device Contract"
Description: "Purchase contract of the device: contract number and the attached contract file."
Context: Device
* ^status = #draft
* ^experimental = true
* extension contains
    number 1..1 MS and
    document 0..1
* extension[number] ^short = "Contract number"
* extension[number].value[x] only string
* extension[document] ^short = "Contract file (PDF or Word)"
* extension[document].value[x] only Attachment

Extension: DeviceInvoice
Id: device-invoice
Title: "Device Invoice"
Description: "Invoice for the device: invoice number and the attached electronic invoice file."
Context: Device
* ^status = #draft
* ^experimental = true
* extension contains
    number 1..1 MS and
    document 0..1
* extension[number] ^short = "Invoice number"
* extension[number].value[x] only string
* extension[document] ^short = "Electronic invoice file"
* extension[document].value[x] only Attachment

Extension: DevicePrice
Id: device-price
Title: "Device Price"
Description: "Purchase price of the device in Uzbek soum. Zero is allowed."
Context: Device
* ^status = #draft
* ^experimental = true
* value[x] 1..1
* value[x] only Money
* valueMoney.value 1..1
* valueMoney.currency 1..1
* valueMoney.currency = #UZS

// Same extension as in the DMED warehouse integration (branch dmedprofiles), with Device added to its context.
Extension: FundingSourceExtension
Id: funding-source
Title: "Funding Source Extension"
Description: "Financial source category for inventory stocks, supply requisitions and devices."
* ^status = #draft
* ^experimental = true
* ^context[0].type = #element
* ^context[0].expression = "InventoryItem"
* ^context[1].type = #element
* ^context[1].expression = "SupplyRequest"
* ^context[2].type = #element
* ^context[2].expression = "Device"
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept from FundingSourceVS (required)

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

// sick leave
Extension: WorkflowStatus
Id: care-for-workflow-status
Title: "Sick Leave Workflow Status"
Description: "Extended lifecycle status of Sick Leave"

* ^status = #draft

* ^experimental = true

* ^context.type = #element

* ^context.expression = "CarePlan"

* value[x] 1..1 MS

* value[x] only code

* valueCode from CarePlanStatusVS (required)

Extension: StatusHistory
Id: care-for-status-history
Title: "Sick Leave Status History"
Description: "History of workflow statuses with active period"

* ^status = #draft

* ^experimental = true

* ^context.type = #element

* ^context.expression = "CarePlan"

* extension contains
  status 1..1 MS and
  period 1..1 MS

* extension[status].value[x] only code

* extension[status].valueCode from CarePlanStatusVS (required)

* extension[period].value[x] only Period

Extension: DiagnosisUse
Id: care-for-diagnosis-use
Title: "Diagnosis Use Type"
Description: "Type of diagnosis usage for sick leave"

* ^status = #draft

* ^experimental = true

* ^context.type = #element

* ^context.expression = "CarePlan"

* value[x] 0..1

* value[x] only CodeableConcept

* valueCodeableConcept from https://terminology.dhp.uz/fhir/core/ValueSet/diagnosis-type-vs (required)

Extension: RelatedPersonLink
Id: care-for-related-person
Title: "Related Person for Sick Leave"
Description: "Reference to related person when sick leave reason is family care"

* ^status = #draft

* ^experimental = true

* ^context.type = #element

* ^context.expression = "CarePlan"

* value[x] 0..1

* value[x] only Reference(RelatedPerson)

Extension: RelatedPersonBirthdate
Id: relatedperson-birthdate
Title: "Birthdate of Related Person"
Description: "Date of birth of the related person"

* ^status = #draft

* ^experimental = true

* ^context.type = #element

* ^context.expression = "RelatedPerson"

* value[x] 1..1 MS

* value[x] only date


Extension: CancerICCC3Group
Id: cancer-iccc-3-group
Title: "Cancer ICCC-3 Group"
Description: "ICCC-3 group for the primary cancer"

* ^status = #draft
* ^experimental = true
* ^context.type = #element
* ^context.expression = "Condition"

* value[x] 0..1
* value[x] only CodeableConcept
* valueCodeableConcept from $iccc-3-vs (required)


Extension: CancerDetectionCondition
Id: cancer-detection-condition
Title: "Cancer Detection Condition"
Description: "Circumstances under which the primary cancer was detected."

* ^status = #draft
* ^experimental = true
* ^context.type = #element
* ^context.expression = "Condition"

* value[x] 0..1
* value[x] only CodeableConcept
* valueCodeableConcept from CancerDetectionConditionVS (required)

Extension: CancerLateralityQualifier
Id: cancer-laterality-qualifier
Title: "Cancer Laterality Qualifier"
Description: "Laterality of the anatomical site affected by the primary cancer."

* ^status = #draft
* ^experimental = true
* ^context.type = #element
* ^context.expression = "Condition.bodySite"

* value[x] 0..1
* value[x] only CodeableConcept
* valueCodeableConcept from CancerLateralityQualifierVS (required)

Extension: OrdersFundingResolution
Id: orders-funding-resolution
Title: "Orders funding resolution"
Description: "Legal resolution under which an Orders service is funded, additional to the UZ Core payment type."
Context: ServiceRequest
* ^status = #draft
* ^experimental = true
* extension 0..0
* value[x] only CodeableConcept
* value[x] 1..1
* valueCodeableConcept from OrdersFundingResolutionVS (required)
