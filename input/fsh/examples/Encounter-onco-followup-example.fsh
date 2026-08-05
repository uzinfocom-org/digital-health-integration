// Source: Encounter-onco-followup.json
Instance: EncounterOncoFollowupExample
InstanceOf: ScreeningEncounter
Usage: #example

* id = "Encounter-onco-followup"
* identifier[0].use = #usual
* identifier[0].system = "https://dhp.uz/fhir/core/sid/uz/screening"
* identifier[0].value = "36"
* status = #completed

* class[0].coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-ActCode"
* class[0].coding[0].code = #AMB
* class[0].coding[0].display = "ambulatory"

* type[0].coding[0].system = "https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-type-cs"
* type[0].coding[0].code = #mserv-0001-00003
* type[0].coding[0].display = "Consultative"

* subject.reference = "Patient/lola-oripova"
* subject.display = "Lola Oripova Shakhzodovna"

* participant[0].actor.reference = "PractitionerRole/practitioner-role-nurse"

* actualPeriod.start = 2025-11-17T09:00:00+05:00
* actualPeriod.end = 2025-11-17T09:20:00+05:00
