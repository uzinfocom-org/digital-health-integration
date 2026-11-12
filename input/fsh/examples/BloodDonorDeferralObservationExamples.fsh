Instance: example-blood-donor-temporary-deferral
InstanceOf: BloodDonorDeferralObservation
Title: "Example Blood Donor Deferral Observation - Temporary Deferral"
Description: "Synthetic temporary donor deferral with two reasons, each recorded with an illustrative duration of 180 days. Durations are example data, not clinical recommendations."
Usage: #example
* language = #uz
* status = #final
* code = DonorDeferralTypeCS#tmpdf-0001-00001 "Vaqtincha chetlatish"
* subject = Reference(example-deferral-donor)
* encounter = Reference(example-deferral-encounter)
* effectiveDateTime = "2026-11-11T10:00:00+05:00"
* issued = "2026-11-11T10:05:00+05:00"
* performer = Reference(example-deferral-practitioner)
* component[0].code = DonorDeferralReasonCS#donrsn-0001-00003 "Qon yoki uning komponentlarini quyish"
* component[=].valueInteger = 180
* component[+].code = DonorDeferralReasonCS#donrsn-0001-00001 "Tatuirovka, piercing yoki akupunktura"
* component[=].valueInteger = 180

Instance: example-blood-donor-lifelong-deferral
InstanceOf: BloodDonorDeferralObservation
Title: "Example Blood Donor Deferral Observation - Lifelong Deferral"
Description: "Synthetic lifelong donor deferral with a positive HIV test result as the recorded reason. No duration is supplied."
Usage: #example
* language = #uz
* status = #final
* code = DonorDeferralTypeCS#lldf-0001-00001 "Umrbod chetlatish"
* subject = Reference(example-deferral-donor)
* encounter = Reference(example-deferral-encounter)
* effectiveDateTime = "2026-11-11T10:00:00+05:00"
* issued = "2026-11-11T10:05:00+05:00"
* performer = Reference(example-deferral-practitioner)
* component[0].code = DonorDeferralReasonCS#donrsn-0001-00013 "OIV testi ijobiy natijasi"

Instance: example-deferral-donor
InstanceOf: UZCorePatient
Title: "Example UZ Core Patient - Deferral Assessment Donor"
Description: "Synthetic donor used by the donor deferral examples."
Usage: #example
* language = #uz
* identifier[nationalId].value = "31234367890123"
* name.use = #official
* name.family = "Tursunov"
* name.given = "Alisher"
* gender = #male
* birthDate = "1990-04-12"

Instance: example-deferral-practitioner
InstanceOf: UZCorePractitioner
Title: "Example UZ Core Practitioner - Donor Deferral Assessor"
Description: "Synthetic practitioner responsible for the donor deferral assessments."
Usage: #example
* language = #uz
* active = true
* name.family = "Rasulov"
* name.given = "Bahodir"

Instance: example-deferral-encounter
InstanceOf: UZCoreEncounter
Title: "Example UZ Core Encounter - Donor Deferral Assessment"
Description: "Synthetic encounter during which the donor deferral assessment is recorded."
Usage: #example
* language = #uz
* status = #in-progress
* type[nationalType] = $encounter-type-cs#mserv-0001-00002 "Diagnostika"
* subject = Reference(example-deferral-donor)
* actualPeriod.start = "2026-11-11T09:30:00+05:00"
