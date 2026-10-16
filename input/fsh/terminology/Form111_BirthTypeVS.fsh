ValueSet: Form111_BirthTypeVS
Id: form111-birth-type-vs
Title: "Form111 Birth Type ValueSet"
Description: "Local value set for birth types used by the Form 111 information system, with Uzbek and Russian designations."

* insert IntegrationsValueSet(form111-birth-type-vs)
* ^experimental = true
* ^language = #uz

* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form111_BirthTypeSnomedCS)

* $sct#289259007 "Vaginal delivery"
* include codes from system form111-birth-type-cs