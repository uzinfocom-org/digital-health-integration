ValueSet: Form111_VS
Id: form111-vs
Title: "Form 111 ValueSet"
Description: "Form 111 ValueSet for clinical documents and other knowledge resources in Uzbekistan integrations. Based on Ministry of Health Order 399."
* insert IntegrationsValueSet(form111-vs)
* ^experimental = true
* ^status = #draft

* include codes from system form111-cs
* $loinc#11401-7 "Physical findings of Female genitalia Narrative"
* $loinc#57059-8 "Pregnancy visit summary note Narrative"
* $loinc#92016-5 "Maternal pregnancy risk factors Document"