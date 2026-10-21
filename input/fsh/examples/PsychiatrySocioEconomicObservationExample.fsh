Instance: example-psychiatry-socio-economic-observation
InstanceOf: UZCoreSocioeconomicObservation
Title: "Psychiatry Socio-Economic Observation Profile Instance"
Description: "Example observation representing the social status of a patient."
Usage: #example
* status = #final
* code = $sct#82996008 "Social status"
* subject = Reference(Patient/example-patient-john)
* performer[0] = Reference(PractitionerRole/example-commission-psychiatrist-role)
* effectiveDateTime = "2026-08-15"
* valueCodeableConcept = $social-status#regis0010.00003 "Employed"