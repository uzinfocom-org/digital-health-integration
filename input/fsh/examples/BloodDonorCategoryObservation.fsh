Instance: example-blood-donor-category-observation
InstanceOf: BloodDonorCategoryObservation
Title: "Example Blood Donor Category Observation - Staff Donor"
Description: "Staff donor with unpaid plasmapheresis, blood group A and a positive RhD type."
Usage: #example
* language = #uz
* status = #final
* category[donorCategory] = DonorCategoryCS#bdcat-0001-00001 "Kadr donor"
* code = $sct#105470007 "Blood donor"
* subject = Reference(Patient/example-salim)
* effectiveDateTime = "2026-09-23T10:30:00+05:00"
* performer = Reference(PractitionerRole/example-practitionerrole)
* valueCodeableConcept = DonationCompensationCS#bdcomp-0001-00001 "Bepul"
* component[donationType].code = BloodDonorObservationTypeCS#bdobs-0001-00001 "Donatsiya turi"
* component[donationType].valueCodeableConcept = DonationTypeCS#bdtype-0001-00002 "Plazmaferez"
* component[bloodGroup].code = BloodDonorObservationTypeCS#bdobs-0001-00002 "Qon guruhi"
* component[bloodGroup].valueCodeableConcept = $sct#112144000
* component[rhFactor].code = BloodDonorObservationTypeCS#bdobs-0001-00003 "Rezus-omil"
* component[rhFactor].valueCodeableConcept = $sct#165747007

Instance: example-blood-donor-category-observation-reserve
InstanceOf: BloodDonorCategoryObservation
Title: "Example Blood Donor Category Observation - Reserve Donor"
Description: "Reserve donor with paid whole-blood donation, blood group O and a negative RhD type."
Usage: #example
* language = #uz
* status = #final
* category[donorCategory] = DonorCategoryCS#bdcat-0001-00002 "Zaxira donor"
* code = $sct#105470007 "Blood donor"
* subject = Reference(Patient/example-patient-john)
* effectiveDateTime = "2026-09-24T09:00:00+05:00"
* performer = Reference(PractitionerRole/example-practitionerrole)
* valueCodeableConcept = DonationCompensationCS#bdcomp-0001-00002 "Pullik"
* component[donationType].code = BloodDonorObservationTypeCS#bdobs-0001-00001 "Donatsiya turi"
* component[donationType].valueCodeableConcept = DonationTypeCS#bdtype-0001-00001 "To'liq qon"
* component[bloodGroup].code = BloodDonorObservationTypeCS#bdobs-0001-00002 "Qon guruhi"
* component[bloodGroup].valueCodeableConcept = $sct#58460004
* component[rhFactor].code = BloodDonorObservationTypeCS#bdobs-0001-00003 "Rezus-omil"
* component[rhFactor].valueCodeableConcept = $sct#165746003

Instance: example-blood-recipient-category-observation
InstanceOf: BloodDonorCategoryObservation
Title: "Example Blood Donor Category Observation - Recipient"
Description: "Recipient registered with blood group A, a positive RhD type and unspecified anaemia, linked to the registration encounter and registrar."
Usage: #example
* language = #uz
* status = #final
* code = $sct#116154003 "Patient"
* subject = Reference(Patient/example-patient-john)
* encounter = Reference(example-blood-recipient-registration-encounter)
* effectiveDateTime = "2026-09-25T11:00:00+05:00"
* performer = Reference(example-blood-recipient-registrar)
* component[bloodGroup].code = BloodDonorObservationTypeCS#bdobs-0001-00002 "Qon guruhi"
* component[bloodGroup].valueCodeableConcept = $sct#112144000
* component[rhFactor].code = BloodDonorObservationTypeCS#bdobs-0001-00003 "Rezus-omil"
* component[rhFactor].valueCodeableConcept = $sct#165747007
* component[diagnosis].code = $loinc#29308-4
* component[diagnosis].valueCodeableConcept = $icd-10#D64.9 "Anaemia, unspecified"

Instance: example-blood-recipient-registration-encounter
InstanceOf: UZCoreEncounter
Title: "Example UZ Core Encounter - Recipient Registration"
Description: "Registration encounter for the recipient in the blood system."
Usage: #example
* language = #uz
* status = #in-progress
* type[nationalType] = encounter-type-cs#mserv-0001-00004
* subject = Reference(Patient/example-patient-john)
* actualPeriod.start = "2026-09-25T11:00:00+05:00"
* participant.actor = Reference(example-blood-recipient-registrar)

Instance: example-blood-recipient-registrar
InstanceOf: UZCorePractitioner
Title: "Example UZ Core Practitioner - Recipient Registrar"
Description: "Synthetic practitioner registering the recipient in the blood system."
Usage: #example
* language = #uz
* active = true
* name.use = #official
* name.family = "Karimova"
* name.given = "Dilnoza"
