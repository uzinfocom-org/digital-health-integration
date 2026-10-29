ValueSet: DeathContextVS
Id: death-context-vs
Title: "Death Context ValueSet"
Description: "ValueSet for in-hospital death context, Form 003 inpatient medical record: local codes plus SNOMED CT antepartum and postpartum maternal death."
* insert IntegrationsValueSet(death-context-vs)
* ^experimental = true

* include codes from system death-context-cs
* $sct#31868001 "Antepartum maternal death"
* $sct#5866003 "Postpartum maternal death"

// Supplements providing Russian and Uzbek displays.
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form096SnomedSupplementCS)