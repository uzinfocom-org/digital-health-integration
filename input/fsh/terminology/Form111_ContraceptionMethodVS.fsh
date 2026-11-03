ValueSet: Form111_ContraceptionMethodVS
Id: form111-contraception-method-vs
Title: "Form 111 Contraception Method ValueSet"
Description: "Contraception methods DMED sends in contraception_details. The paper form records only the contraception type; DMED adds the method."
* insert IntegrationsValueSet(form111-contraception-method-vs)
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form111SnomedSupplementCS)

* $sct#275572005 "History of female sterilization"
* $sct#830148006 "Partner had vasectomy"
* $sct#718701005 "Natural family planning method"
* $sct#225370004 "Uses barrier contraception method"
* $sct#268466006 "Uses spermicidal contraception"
* $sct#312081001 "Uses IUD (intrauterine device) contraception"
* $sct#1237404009 "Uses hormonal contraception"
* $sct#268463003 "Uses postcoital contraception"

* ^experimental = true
* ^status = #draft
