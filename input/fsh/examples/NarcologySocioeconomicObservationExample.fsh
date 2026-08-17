Instance: example-narcology-socioeconomic
InstanceOf: UZCoreSocioeconomicObservation
Title: "Narcology Socioeconomic Observation Example"
Description: "Salim's social status as recorded by the narcology registry."
Usage: #example
* status = #final
* code.coding[socioeconomicType] = $sct#82996008 "Social status"
* subject = Reference(example-salim)
* valueCodeableConcept = $social-status#regis0010.00003 "Employed"
* effectiveDateTime = "2026-03-12"
* performer = Reference(example-narcologist-role)
