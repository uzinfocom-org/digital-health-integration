ValueSet: AdministrativeSexVS
Id: administrative-sex-vs
Title: "Administrative Sex ValueSet"
Description: "Administrative sex for Form097 newborn development record. Source terminology (SNOMED CT) reused directly."
* insert IntegrationsValueSet(administrative-sex-vs)
* ^experimental = true

// Fhir_mapping row 47: female / male
* include $sct#248152002
* include $sct#248153007
