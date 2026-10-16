ValueSet: Form111_PreparationActivityVS
Id: form111-preparation-activity-vs
Title: "Form111 Preparation Activity ValueSet"
Description: "Local value set for preparation activities used by the Form 111 information system, with Uzbek and Russian designations."

* insert IntegrationsValueSet(form111-preparation-activity-vs)
* ^experimental = true
* ^language = #uz

* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form111_PreparationActivitySnomedCS)

* $sct#183329005 "Antenatal exercises"
* $sct#408779007 "Psychoprophylaxis"
* $sct#363695005 "Ultraviolet light therapy"

* include codes from system form111-preparation-activity-cs