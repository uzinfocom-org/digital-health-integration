ValueSet: Form111_ContraceptionDetailsVS
Id: form111-contraception-details-vs
Title: "Form 111 Contraception Details ValueSet"
Description: "Form 111 Contraception Details ValueSet for clinical documents and other knowledge resources in Uzbekistan integrations. Based on Ministry of Health Order 399."

* insert IntegrationsValueSet(form111-contraception-details-vs)

* ^experimental = true
* ^status = #draft

* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form111_ContraceptionDetailsCS)

* $sct#225370004 "Uses barrier contraception method"
* $sct#268466006 "Uses spermicidal contraception"
* $sct#268463003 "Uses postcoital contraception"
* $sct#60890002 "Female sterilization"
* $sct#1237404009 "Uses hormonal contraception"
* $sct#312081001 "Uses IUD (intrauterine device) contraception"
* $sct#718701005 "Natural family planning method"
* $sct#22523008 "Vasectomy"