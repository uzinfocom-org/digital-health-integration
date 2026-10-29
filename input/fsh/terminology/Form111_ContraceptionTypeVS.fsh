ValueSet: Form111_ContraceptionTypeVS
Id: form111-contraception-type-vs
Title: "Form 111 Contraception Type ValueSet"
Description: "Form 111 Contraception Type ValueSet for clinical documents and other knowledge resources in Uzbekistan integrations. Based on Ministry of Health Order 399."
* insert IntegrationsValueSet(form111-contraception-type-vs)
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form111SnomedSupplementCS)

* include codes from system form111-contraception-type-cs

// SNOMED CT equivalent of the DMED `none` token; surgical and non-surgical stay local.
* $sct#445375000 "Does not use contraception"

* ^experimental = true
* ^status = #draft
