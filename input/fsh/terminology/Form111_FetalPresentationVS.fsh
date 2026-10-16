ValueSet: Form111_FetalPresentationVS
Id: form111-fetal-presentation-vs
Title: "Form 111 Fetal Presentation ValueSet"
Description: "Form 111 Fetal Presentation ValueSet for clinical documents and other knowledge resources in Uzbekistan integrations. Based on Ministry of Health Order 399."

* insert IntegrationsValueSet(form111-fetal-presentation-vs)

* ^experimental = true
* ^status = #draft

* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form111_FetalPresentationCS)

* $sct#6096002 "Breech presentation"
* $sct#1209182005 "Cephalic fetal presentation"
* $sct#373068000 "Undetermined"