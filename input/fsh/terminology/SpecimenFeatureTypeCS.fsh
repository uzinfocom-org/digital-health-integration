CodeSystem: SpecimenFeatureTypeCS
Id: specimen-feature-type-cs
Title: "DHIS Specimen Feature Type CodeSystem"
Description: "Local code system describing the processing state of a tuberculosis specimen (primary sample, sediment, culture isolate) used in the DHIS information system, with Russian and English designations. The DHIS Specimen Feature Type to SNOMED CT ConceptMap records the SNOMED CT concept for the culture isolate; in resources use the SNOMED CT code directly wherever an exact match exists (see the DHIS Specimen Feature Type ValueSet), keeping a local code only where no exact SNOMED CT match exists."

* insert OriginalCodeSystemDraft(specimen-feature-type-cs)

* #Spec002-0001 "Birlamchi namuna"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Первичный образец"
  * ^designation[+].language = #en
  * ^designation[=].value = "Primary sample"

* #Spec002-0002 "Chokin"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Осадок"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sediment"

* #Spec002-0003 "Makrota namunasi cho'kindisi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Осадок образца макроты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Macrota sample sediment"

* #Spec002-0004 "Kultura izolati"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Изолят культуры"
  * ^designation[+].language = #en
  * ^designation[=].value = "Culture isolate"
