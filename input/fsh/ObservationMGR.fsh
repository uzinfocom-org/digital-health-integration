Profile: ObservationMGR
Parent: Observation
Id: observation-mgr
Title: "Observation MGR"
Description: "Molecular genetic testing to identify variants of genetic disorders"
* ^status = #draft
* ^experimental = true
* ^publisher = "UZINFOCOM"

* identifier MS
* identifier ^short = "Business identifier (MGR)"

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

* method MS
* method ^short = "Defines the research method"
* method from https://terminology.medcore.uz/ValueSet/ResearchMethod (required)

* component MS

* component.code MS
* component.code ^short = "Defines the code of the survey parameter"
* component.code from https://terminology.medcore.uz/ValueSet/MGRMarker (required)

* component.value[x] MS

* component.valueCodeableConcept MS
* component.valueCodeableConcept ^short = "Genetic disorder variant code"
* component.valueCodeableConcept from https://terminology.medcore.uz/ValueSet/GeneticDisorder (required)

* component.interpretation MS
* component.interpretation ^short = "Tumor Detection Result Interpretation Code
Determines the tumor detection code based on the results"
* component.interpretation from https://terminology.medcore.uz/ValueSet/Cancerresult (required)