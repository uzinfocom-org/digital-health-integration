Instance: example-patient-john
InstanceOf: UZCorePatient
Usage: #example
Title: "Example Patient"
Description: "Example patient registered in the DHIS information system."

* identifier[nationalId]
  * value = "12345678901234"

* active = false

* name
  * use = #official
  * text = "John Smith"
  * family = "Deera"
  * given = "John"

* gender = #unknown

* birthDate = "2026-03-13"

* address[uzAddress]
  * use = #temp
  * type = #physical
  * text = "Iltifot MFY, 58-Harbiy shaharcha mavzesi, 53 Uy, 104 Kvartira"
  * city = "104-0116"
  * district = "1726290"
  * state = "1726"
  * country = "UZ"

* managingOrganization = Reference(example-organization)


Instance: example-organization
InstanceOf: UZCoreOrganization
Usage: #example
Title: "Example Organization"
Description: "Example organization representing a tuberculosis treatment facility referenced by DHIS resources."

* name = "Respublika onkologiya markazi"


Instance: example-practitioner
InstanceOf: UZCorePractitioner
Usage: #example
Title: "Example Practitioner"
Description: "Example practitioner representing a clinician involved in tuberculosis care."

* name[0].family = "Karimov"
* name[0].given[0] = "Ali"

Instance: practitionerrole-001
InstanceOf: UZCorePractitionerRole
Usage: #example
Description: "Example practitioner role linking a clinician to a tuberculosis treatment facility."
Title: "Practitioner Role Example"

* practitioner = Reference(Practitioner/example-practitioner)
* organization = Reference(Organization/example-organization)


Instance: example-dhis-encounter
InstanceOf: UZCoreEncounter
Usage: #example
Title: "Encounter Example"
Description: "Example encounter representing a tuberculosis patient's inpatient admission."

* status = #completed

* class = $v3-ActCode#IMP "inpatient encounter"
* type = $encounter-type-cs#mserv-0001-00004 // Treatment

* subject = Reference(example-patient-john)

* actualPeriod.start = "2026-02-12T08:00:00+05:00"
* actualPeriod.end = "2026-02-18T14:00:00+05:00"

* participant[0].type = $v3-ParticipationType#ATND "attender"

* participant[0].period.start = "2026-02-12T08:00:00+05:00"
* participant[0].period.end = "2026-02-18T14:00:00+05:00"

* participant[0].actor = Reference(example-practitioner)

* diagnosis[0].condition = Reference(example-tbc-diagnosis)

* diagnosis[0].use = $encounter-diagnosis-use-cs#final "Final"