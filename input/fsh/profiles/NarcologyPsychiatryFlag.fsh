// Bound to local status and code value sets here because UZ Core does not yet profile Flag.
Profile: NarcologyPsychiatryFlag
Parent: Flag
Id: narcology-psychiatry-flag
Title: "Narcology and Psychiatry Flag"
Description: "Registry information that healthcare providers should be aware of when assessing, treating or managing a patient held in the narcology or psychiatry registry, such as social danger or compulsory treatment."
* ^experimental = true
* ^status = #active
* ^date = "2026-07-27"
* ^publisher = "Uzinfocom"

* status 1..1 MS
* status from FlagStatusVS (required)

* code 1..1 MS
* code from NarcologyPsychiatryRegistryFlagVS (required)

* subject 1..1 MS
* subject only Reference(UZCorePatient)

* period 0..1 MS

* encounter 0..1 MS
* encounter only Reference(UZCoreEncounter)

* author 0..1 MS
* author only Reference(UZCorePractitionerRole)

Instance: example-narcology-flag
InstanceOf: NarcologyPsychiatryFlag
Description: "Compulsory treatment flag raised on Salim's narcology registry record."
Title: "Narcology and Psychiatry Flag Example"
Usage: #example
* status = $flag-status-cs#active "Active"
* code = narcology-psychiatry-registry-flag-cs#registri0001-00002 "Compulsory treatment"
* subject = Reference(example-salim)
* period.start = "2026-03-12"
* encounter = Reference(example-narcology-encounter)
* author = Reference(example-narcologist-role)
