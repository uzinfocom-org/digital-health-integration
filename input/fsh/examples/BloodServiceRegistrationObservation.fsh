Instance: example-blood-donor-registration-staff
InstanceOf: BloodServiceRegistrationObservation
Title: "Example Blood Service Registration Observation - Staff Donor"
Description: "Staff donor registered for unpaid plasmapheresis."
Usage: #example
* language = #uz
* status = #final
* identifier[registrationNumber].value = "BD-2026-004517"
* code = BloodServiceObservationTypeCS#bsobs-0001-00001 "Donor sifatida ro'yxatga olish"
* subject = Reference(Patient/example-salim)
* effectiveDateTime = "2026-09-23T10:30:00+05:00"
* performer = Reference(PractitionerRole/example-practitionerrole)
* component[donorCategory].code = BloodServiceObservationTypeCS#bsobs-0002-00001 "Donor toifasi"
* component[donorCategory].valueCodeableConcept = $sct#275561000 "Regular blood donor"
* component[compensation].code = BloodServiceObservationTypeCS#bsobs-0002-00002 "Donatsiya to'lovi"
* component[compensation].valueCodeableConcept = DonationCompensationCS#bdcomp-0001-00001 "Bepul"
* component[donationType].code = BloodServiceObservationTypeCS#bsobs-0002-00003 "Donatsiya turi"
* component[donationType].valueCodeableConcept = $sct#20720000 "Plasmapheresis"

Instance: example-blood-donor-registration-reserve
InstanceOf: BloodServiceRegistrationObservation
Title: "Example Blood Service Registration Observation - Reserve Donor"
Description: "Reserve donor registered for paid whole-blood donation."
Usage: #example
* language = #uz
* status = #final
* identifier[registrationNumber].value = "BD-2026-004518"
* code = BloodServiceObservationTypeCS#bsobs-0001-00001 "Donor sifatida ro'yxatga olish"
* subject = Reference(Patient/ExamplePatient)
* effectiveDateTime = "2026-09-24T09:00:00+05:00"
* performer = Reference(PractitionerRole/example-practitionerrole)
* component[donorCategory].code = BloodServiceObservationTypeCS#bsobs-0002-00001 "Donor toifasi"
* component[donorCategory].valueCodeableConcept = DonorCategoryCS#bdcat-0001-00002 "Zaxira donor"
* component[compensation].code = BloodServiceObservationTypeCS#bsobs-0002-00002 "Donatsiya to'lovi"
* component[compensation].valueCodeableConcept = DonationCompensationCS#bdcomp-0001-00002 "Pullik"
* component[donationType].code = BloodServiceObservationTypeCS#bsobs-0002-00003 "Donatsiya turi"
* component[donationType].valueCodeableConcept = $sct#25179006 "Whole blood unit collection"

Instance: example-blood-recipient-registration
InstanceOf: BloodServiceRegistrationObservation
Title: "Example Blood Service Registration Observation - Recipient"
Description: "Recipient registered with unspecified anaemia, linked to the registration encounter and registrar."
Usage: #example
* language = #uz
* status = #final
* identifier[registrationNumber].value = "BR-2026-000932"
* code = BloodServiceObservationTypeCS#bsobs-0001-00002 "Retsipiyent sifatida ro'yxatga olish"
* subject = Reference(Patient/example-patient-john)
* encounter = Reference(example-blood-recipient-registration-encounter)
* effectiveDateTime = "2026-09-25T11:00:00+05:00"
* performer = Reference(example-blood-recipient-registrar)
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
