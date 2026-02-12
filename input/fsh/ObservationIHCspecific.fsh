Profile: ObservationIHCspecific
Parent: Observation
Id: observation-ihc-specific
Title: "Observation IHC specific"
Description: "A specific study of hormones by immunohistochemistry (IHC) to detect the presence/absence of a tumor process"
* ^experimental = true
* ^status = #draf

* identifier MS
* identifier ^short = "Business identufier (IHC specific)"

* code MS
* code ^short = "Defines the name of the examination for the patient"
* code from https://terminology.medcore.uz/ValueSet/NameTests (required)

* subject MS
* subject only Reference(Patient)
* subject ^short = "Identifies the patient for whom the examination is being performed"

* effectiveDateTime MS
* effectiveDateTime ^short = "Date and time of examination"

* performer MS
* performer only Reference(Organization)
* performer ^short = "Identifies the organization that provides patient information"

* component MS

* component.code MS
* component.code ^short = "Defines the code of the survey parameter"
* component.code from https://terminology.medcore.uz/ValueSet/IHCHormone (required)

* component.value[x] MS

* component.valueQuantity MS
* component.valueQuantity ^short = "Quantitative result of the parameter"

* component.valueCodeableConcept MS
* component.valueCodeableConcept ^short = "Parameter result code"
* component.valueCodeableConcept from https://terminology.medcore.uz/ValueSet/IHCHormoneresult (required)

* component.interpretation MS
* component.interpretation ^short = "Tumor Detection Result Interpretation Code
Determines the tumor detection code based on the results"
* component.interpretation from https://terminology.medcore.uz/ValueSet/Cancerresult (required)