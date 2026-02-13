Profile: ObservationIHCnonspecific
Parent: Observation
Id: observation-ihc-nonspecific
Title: "Observation IHC nonspecific"
Description: "A non-specific immunohistochemistry (IHC) study of antibodies to detect the presence/absence of a tumor process"
* ^status = #draft
* ^experimental = true
* ^publisher = "UZINFOCOM"

* identifier MS
* identifier ^short = "Business identufier (IHCnonspecific)"

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
* component.code from https://terminology.medcore.uz/ValueSet/IHCNameAntibody (required)

* component.interpretation MS
* component.interpretation ^short = "Tumor Detection Result Interpretation Code
Determines the tumor detection code based on the results"
* component.interpretation from https://terminology.medcore.uz/ValueSet/Cancerresult (required)
