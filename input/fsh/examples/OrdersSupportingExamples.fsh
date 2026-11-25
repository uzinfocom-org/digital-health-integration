Instance: example-orders-patient
InstanceOf: UZCorePatient
Title: "Example UZ Core Patient - Orders Referral"
Description: "Synthetic patient receiving state-funded care for a kidney stone."
Usage: #example
* language = #uz
* identifier[nationalId].value = "90000000000003"
* active = true
* name.text = "Karimova Nodira Anvarovna"
* name.family = "Karimova"
* name.given = "Nodira"
* gender = #female
* birthDate = "1985-09-19"


Instance: example-orders-clinic
InstanceOf: UZCoreOrganization
Title: "Example UZ Core Organization - Orders clinic"
Description: "Synthetic organization participating in the Orders referral workflow."
Usage: #example
* language = #uz
* identifier[taxId].value = "201234560"
* active = true
* name = "Oilaviy poliklinika"


Instance: example-orders-hospital
InstanceOf: UZCoreOrganization
Title: "Example UZ Core Organization - Orders hospital"
Description: "Synthetic organization participating in the Orders referral workflow."
Usage: #example
* language = #uz
* identifier[taxId].value = "201234561"
* active = true
* name = "Ixtisoslashtirilgan urologiya markazi"


Instance: example-orders-regional-commission
InstanceOf: UZCoreOrganization
Title: "Example UZ Core Organization - Orders regional-commission"
Description: "Synthetic organization participating in the Orders referral workflow."
Usage: #example
* language = #uz
* identifier[taxId].value = "201234562"
* active = true
* name = "Viloyat tibbiy komissiyasi"


Instance: example-orders-practitioner
InstanceOf: UZCorePractitioner
Title: "Example UZ Core Practitioner - Orders Physician"
Description: "Synthetic physician participating in the Orders referral workflow."
Usage: #example
* language = #uz
* active = true
* name.text = "Aziz Karimov"
* name.family = "Karimov"
* name.given = "Aziz"

Instance: example-orders-urology-service
InstanceOf: UZCoreHealthcareService
Title: "Example UZ Core HealthcareService - Orders Urology"
Description: "Receiving urology service for the hospitalization referral."
Usage: #example
* language = #uz
* active = true
* providedBy = Reference(Organization/example-orders-hospital)
* name = "Urologiya xizmati"


Instance: example-orders-family-doctor-role
InstanceOf: UZCorePractitionerRole
Title: "Example UZ Core PractitionerRole - Orders family-doctor-role"
Description: "Physician role participating in the Orders referral workflow."
Usage: #example
* language = #uz
* active = true
* practitioner = Reference(Practitioner/example-orders-practitioner)
* organization = Reference(Organization/example-orders-clinic)
* code.coding[role] = https://terminology.dhp.uz/fhir/core/CodeSystem/position-and-profession-cs#2211.1 "Umumiy amaliyot vrachi"
* healthcareService = Reference(HealthcareService/example-orders-urology-service)


Instance: example-orders-specialist-role
InstanceOf: UZCorePractitionerRole
Title: "Example UZ Core PractitionerRole - Orders specialist-role"
Description: "Physician role participating in the Orders referral workflow."
Usage: #example
* language = #uz
* active = true
* practitioner = Reference(Practitioner/example-orders-practitioner)
* organization = Reference(Organization/example-orders-hospital)
* code.coding[role] = https://terminology.dhp.uz/fhir/core/CodeSystem/position-and-profession-cs#2211.1 "Umumiy amaliyot vrachi"
* healthcareService = Reference(HealthcareService/example-orders-urology-service)
