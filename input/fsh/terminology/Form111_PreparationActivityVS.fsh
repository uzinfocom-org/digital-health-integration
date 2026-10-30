ValueSet: Form111_PreparationActivityVS
Id: form111-preparation-activity-vs
Title: "Preparation Activity ValueSet"
Description: "Form 111 Preparation Activity ValueSet"
* insert IntegrationsValueSet(form111-preparation-activity-vs)
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form111SnomedSupplementCS)

* include codes from system form111-preparation-activity-cs

// SNOMED CT procedures for the activities that have a standard equivalent; the mothers' school stays local.
* $sct#183329005 "Antenatal exercises"
* $sct#408779007 "Psychoprophylaxis"
* $sct#363695005 "Ultraviolet light therapy"

* ^experimental = true
* ^status = #draft
