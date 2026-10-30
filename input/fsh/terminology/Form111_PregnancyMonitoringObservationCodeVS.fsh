ValueSet: Form111_PregnancyMonitoringObservationCodeVS
Id: form111-pregnancy-monitoring-observation-code-vs
Title: "Pregnancy Monitoring Observation Code ValueSet"
Description: "Form 111 Pregnancy Monitoring Observation Code ValueSet"
* insert IntegrationsValueSet(form111-pregnancy-monitoring-observation-code-vs)
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form111SnomedSupplementCS)

* include codes from system form111-pregnancy-monitoring-observation-code-cs

// Standard codes replacing the former local concepts.
* $sct#396552003 "Abdominal circumference"

* ^experimental = true
* ^status = #draft
