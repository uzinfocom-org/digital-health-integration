Profile: NarcologyObservation
Parent: UZCoreObservation
Id: narcology-observation
Title: "Narcology Observation"
Description: "Decision issued by the medical-consultation commission of the narcology registry."
* ^experimental = true
* ^status = #active
* ^date = "2026-07-27"
* ^publisher = "Uzinfocom"

* code 1..1 MS
* code from NarcologyTypeResourceVS

// Commission members are carried in performer, which UZ Core already leaves 0..*.
* value[x] 1..1 MS
* value[x] only string
* value[x] ^short = "The decision the commission reached"

Instance: example-narcology-commission
InstanceOf: NarcologyObservation
Usage: #example
Title: "Narcology Commission Decision Example"
Description: "Medical-consultation commission decision for a patient with harmful stimulant use."
* status = #final
* code = type-resource-cs#type-res-0002-0001 "The commission's decision"
* subject = Reference(example-salim)
* encounter = Reference(example-narcology-encounter)
* effectiveDateTime = "2026-03-12"
* performer[0] = Reference(PractitionerRole/example-narcologist-role)
* performer[+] = Reference(PractitionerRole/example-commission-psychiatrist-role)
* valueString = "Dispensary observation is required. The patient is to be reviewed again in six months."
