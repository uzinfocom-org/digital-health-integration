ValueSet: DMEDDispensaryDiseaseNatureVS
Id: dmed-dispensary-disease-nature-vs
Title: "DMED dispensary disease nature"
Description: "Disease nature values DMED can send in the `disease_nature` field of a dispensary registration record."
* insert IntegrationsValueSet(dmed-dispensary-disease-nature-vs)
* ^experimental = true

* include codes from system dmed-dispensary-disease-nature-cs
