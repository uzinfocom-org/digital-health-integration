ValueSet: SpecimenFeatureTypeVS
Id: specimen-feature-type-vs
Title: "DHIS Specimen Feature Type ValueSet"
Description: "Value set of tuberculosis specimen feature types used by the DHIS information system. A culture isolate is expressed as a SNOMED CT code; the remaining processing states use local codes that have no 1:1 SNOMED CT match."
* ^experimental = true
* insert IntegrationsValueSet(specimen-feature-type-vs)
* include specimen-feature-type-cs#Spec002-0001
* include specimen-feature-type-cs#Spec002-0002
* include specimen-feature-type-cs#Spec002-0003
* include $sct#119303007
