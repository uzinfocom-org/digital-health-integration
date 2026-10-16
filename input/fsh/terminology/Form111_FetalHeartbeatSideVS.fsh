ValueSet: Form111_FetalHeartbeatSideVS
Id: form111-fetal-heartbeat-side-vs
Title: "Form 111 Fetal Heartbeat Side ValueSet"
Description: "Form 111 Fetal Heartbeat Side ValueSet for clinical documents and other knowledge resources in Uzbekistan integrations. Based on Ministry of Health Order 399."

* insert IntegrationsValueSet(form111-fetal-heartbeat-side-vs)

* ^experimental = true
* ^status = #draft

* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form111_FetalHeartbeatSideCS)

* $sct#7771000 "Left"
* $sct#24028007 "Right"