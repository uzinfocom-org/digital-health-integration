Instance: example-blood-donor-eligible
InstanceOf: BloodDonorEligibilityFlag
Title: "Example Blood Donor Eligibility Flag - Eligible"
Description: "Synthetic eligibility recorded for the reserve donor after the examination and pre-donation tests: the donor may give blood. An eligibility has no reason. It is set to inactive, with period.end, if the donor is later deferred."
Usage: #example
* language = #uz
* status = #active
* category = $flag-category#admin
* code = $blood-donor-eligibility-cs#blood-donation-eligible "Qon donorligiga ruxsat berilgan"
* subject = Reference(Patient/ExamplePatient)
* author = Reference(PractitionerRole/example-practitionerrole)
* period.start = "2026-09-24T09:30:00+05:00"

Instance: example-blood-donor-temporary-deferral
InstanceOf: BloodDonorEligibilityFlag
Title: "Example Blood Donor Eligibility Flag - Temporary Deferral"
Description: "Synthetic temporary deferral after a tattoo: the period ends 180 days after it starts. The duration is example data, not a clinical recommendation."
Usage: #example
* language = #uz
* status = #active
* category = $flag-category#clinical
* extension[reason].valueCodeableReference.concept = DonorDeferralReasonCS#donrsn-0001-00001 "Tatuirovka, piercing yoki akupunktura"
* code = $blood-donor-eligibility-cs#blood-donation-deferred-temporary "Tibbiy sabablarga ko'ra qon donorligidan vaqtincha chetlatilgan"
* subject = Reference(Patient/example-salim)
* encounter = Reference(Encounter/example-blood-donation-encounter)
* author = Reference(PractitionerRole/example-practitionerrole)
* period.start = "2026-11-10T10:00:00+05:00"
* period.end = "2027-05-09T10:00:00+05:00"

Instance: example-blood-donor-permanent-deferral
InstanceOf: BloodDonorEligibilityFlag
Title: "Example Blood Donor Eligibility Flag - Permanent Deferral"
Description: "Synthetic permanent deferral after an HIV result confirmed by immunoblot: the period starts when the result is confirmed and has no end."
Usage: #example
* language = #uz
* status = #active
* category = $flag-category#clinical
* extension[reason].valueCodeableReference.concept = DonorDeferralReasonCS#donrsn-0001-00013 "OIV testi ijobiy natijasi"
* extension[reason].valueCodeableReference.reference = Reference(Observation/example-blood-donor-hiv-result)
* code = $blood-donor-eligibility-cs#blood-donation-deferred-permanent "Tibbiy sabablarga ko'ra qon donorligidan doimiy chetlatilgan"
* subject = Reference(Patient/example-salim)
* author = Reference(PractitionerRole/example-practitionerrole)
* period.start = "2026-11-13T12:00:00+05:00"

Instance: example-blood-donor-hiv-screening
InstanceOf: UZCoreObservation
Title: "Example UZ Core Observation - Reactive Donor HIV Screening Result"
Description: "Synthetic reactive HIV 1 and 2 antibody screening result from the donor's pre-donation tests. A reactive screening result alone does not lead to a permanent deferral; the sample goes for a confirmatory test."
Usage: #example
* language = #uz
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#31201-7 "HIV 1+2 Ab [Presence] in Serum or Plasma by Immunoassay"
* subject = Reference(Patient/example-salim)
* encounter = Reference(Encounter/example-blood-donation-encounter)
* basedOn = Reference(ServiceRequest/example-blood-hiv-laboratory-order)
* effectiveDateTime = "2026-11-10T09:30:00+05:00"
* performer = Reference(Organization/xonobod-medical-association)
* specimen = Reference(Specimen/example-blood-whole-blood-specimen)
* valueCodeableConcept = $sct#11214006 "Reactive"

Instance: example-blood-donor-hiv-result
InstanceOf: UZCoreObservation
Title: "Example UZ Core Observation - Confirmed Positive Donor HIV Result"
Description: "Synthetic positive HIV 1 and 2 antibody immunoblot that confirms the reactive screening result of the same sample; the permanent deferral Flag names it as the reason."
Usage: #example
* language = #uz
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#44873-8 "HIV 1+2 Ab [Presence] in Serum by Immunoblot"
* subject = Reference(Patient/example-salim)
* effectiveDateTime = "2026-11-13T11:00:00+05:00"
* performer = Reference(Organization/xonobod-medical-association)
* specimen = Reference(Specimen/example-blood-whole-blood-specimen)
* valueCodeableConcept = $sct#10828004 "Positive"
* interpretation = $observation-interpretation#POS "Ijobiy"

Instance: example-blood-donor-deferral-lifted
InstanceOf: BloodDonorEligibilityFlag
Title: "Example Blood Donor Eligibility Flag - Deferral Lifted Early"
Description: "Synthetic 30-day temporary deferral after a doubtful HIV result, lifted early after a negative repeat test: the flag is inactive and period.end is when it was lifted. The Provenance example records who lifted it and why."
Usage: #example
* language = #uz
* status = #inactive
* category = $flag-category#clinical
* extension[reason].valueCodeableReference.concept = DonorDeferralReasonCS#donrsn-0001-00030 "OIVga tekshiruvning shubhali natijasi"
* code = $blood-donor-eligibility-cs#blood-donation-deferred-temporary "Tibbiy sabablarga ko'ra qon donorligidan vaqtincha chetlatilgan"
* subject = Reference(Patient/example-donor-questionnaire-patient)
* author = Reference(PractitionerRole/example-practitionerrole)
* period.start = "2026-11-16T10:00:00+05:00"
* period.end = "2026-11-23T15:00:00+05:00"

Instance: example-blood-donor-deferral-lifted-provenance
InstanceOf: Provenance
Title: "Example Provenance - Deferral Lifted Early"
Description: "Records who lifted the temporary deferral early and the justification. UZ Core Provenance is for document signatures, so this is a base Provenance."
Usage: #example
* language = #uz
* target = Reference(Flag/example-blood-donor-deferral-lifted)
* occurredDateTime = "2026-11-23T15:00:00+05:00"
* recorded = "2026-11-23T15:00:00+05:00"
* activity = $v3-DataOperation#UPDATE "revise"
* authorization.concept.text = "Takroriy tekshiruvda OIVga test manfiy natija berdi, chetlatish bekor qilindi."
* patient = Reference(Patient/example-donor-questionnaire-patient)
* agent.type = $provenance-participant-type#author "Author"
* agent.who = Reference(PractitionerRole/example-practitionerrole)
