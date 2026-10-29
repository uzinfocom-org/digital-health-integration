ValueSet: AmnioticFluidCharacteristicVS
Id: amniotic-fluid-characteristic-vs
Title: "Amniotic Fluid Characteristic"
Description: "Observation.valueCodeableConcept for an amniotic fluid appearance field (Observation.code LOINC 1887-9 \"Appearance of Amniotic fluid\"): SNOMED CT for clear fluid and local codes for the characteristics that have no exact SNOMED CT concept."
* insert IntegrationsValueSet(amniotic-fluid-characteristic-vs)
* ^status = #draft
* ^experimental = true

* $sct#168090003 "Amniotic fluid - clear"
* include codes from system amniotic-fluid-appearance-cs

// Supplements providing Russian and Uzbek displays.
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form096SnomedSupplementCS)
