ValueSet: AmnioticFluidCharacteristicVS
Id: amniotic-fluid-characteristic-vs
Title: "Amniotic Fluid Characteristic ValueSet"
Description: "Appearance of amniotic fluid for Form097 newborn development record: SNOMED CT for clear fluid, local codes for characteristics with no exact active SNOMED CT concept."
* insert IntegrationsValueSet(amniotic-fluid-characteristic-vs)
* ^experimental = true

// Fhir_mapping row 43: transparent (SNOMED CT) + local characteristics
* include $sct#168090003
* include codes from system amniotic-fluid-appearance-cs
