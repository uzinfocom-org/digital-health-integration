ValueSet: SpecimenResVS
Id: specimen-res-vs
Title: "Biological transfusion test results"
Description: "Positive and negative SNOMED CT results for the biological test in a blood transfusion assessment."
* insert IntegrationsValueSet(specimen-res-vs)
* ^status = #draft
* ^experimental = true
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form111SnomedSupplementCS)
* include $sct#260385009 "Negative"
* include $sct#10828004 "Positive"
