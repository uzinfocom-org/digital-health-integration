Profile: ScreeningServiceRequest
Parent: ServiceRequest
Id: screening-service-request
Title: "Screening Service Request"
Description: "Profile for creating referrals for laboratory and diagnostic investigations within the cervical and breast cancer screening program."
* ^experimental = true
* ^status = #active
* ^publisher = "DHP Integration"

* identifier MS
* status MS
* intent MS
* code MS
* subject MS
* encounter MS
* authoredOn MS
* requester MS
* performer MS

* status from http://hl7.org/fhir/ValueSet/request-status (required)
* intent from http://hl7.org/fhir/ValueSet/request-intent (required)
* code from ScreeningServiceRequestCodesVS (preferred)

Instance: ServiceRequest-cytology
InstanceOf: ScreeningServiceRequest
Usage: #example
Description: "Referral for liquid-based cytology"
* identifier[0].system = $screening-local-id
* identifier[=].value = "233"
* identifier[=].use = #usual
* identifier[+].system = $screening-local-id
* identifier[=].value = "26-95-01-1-00065"
* identifier[=].use = #usual
* status = #completed
* intent = #order
* code = $loinc#18500-9 "Microscopic observation [Identifier] in Cervix by Cyto stain.thin prep" 
* subject = Reference(Patient/lola-oripova)
* subject.display = "Lola Oripova Shakhzodovna"
* encounter = Reference(Encounter/Encounter-general)
* authoredOn = "2025-11-10T13:28:17-05:00"
* requester = Reference(PractitionerRole/practitioner-role-gynecologist)
* requester.display = "Lyuba Dadaeva Yuldashevna"
* performer[0] = Reference(Organization/xonobod-medical-association)
* performer[=].display = "Xonobod City Medical Association"


Instance: ServiceRequest-hpv
InstanceOf: ScreeningServiceRequest
Usage: #example
Description: "Referral for HPV testing"
* identifier[0].system = $screening-local-id
* identifier[=].value = "236"
* identifier[=].use = #usual
* status = #completed
* intent = #order
* code =  $loinc#82675-0 "HPV I/H Risk 4 DNA Cvx Ql NAA+probe" 
* subject = Reference(Patient/lola-oripova)
* subject.display = "Lola Oripova Shakhzodovna"
* encounter = Reference(Encounter/Encounter-general)
* authoredOn = "2025-11-10T13:28:17-05:00"
* requester = Reference(PractitionerRole/practitioner-role-gynecologist)
* requester.display = "Lyuba Dadaeva Yuldashevna"
* performer[0] = Reference(Organization/xonobod-medical-association)
* performer[=].display = "Xonobod City Medical Association"


Instance: ServiceRequest-colposcopy
InstanceOf: ScreeningServiceRequest
Usage: #example
Description: "Referral for colposcopy"
* identifier[0].system = $screening-local-id
* identifier[=].value = "234"
* identifier[=].use = #usual
* status = #completed
* intent = #order
* code = $sct#392003006 "Colposcopy"
* subject = Reference(Patient/lola-oripova)
* subject.display = "Lola Oripova Shakhzodovna"
* encounter = Reference(Encounter/Encounter-general)
* authoredOn = "2025-11-10T13:28:17-05:00"
* requester = Reference(PractitionerRole/practitioner-role-gynecologist)
* requester.display = "Lyuba Dadaeva Yuldashevna"
* performer[0] = Reference(Organization/xonobod-medical-association)
* performer[=].display = "Xonobod City Medical Association"


Instance: ServiceRequest-mammography
InstanceOf: ScreeningServiceRequest
Usage: #example
Description: "Referral for mammography"
* identifier[0].system = $screening-local-id
* identifier[=].value = "235"
* identifier[=].use = #usual
* status = #completed
* intent = #order
* code = $sct#71651007 "Mammography"
* subject = Reference(Patient/lola-oripova)
* subject.display = "Lola Oripova Shakhzodovna"
* encounter = Reference(Encounter/Encounter-general)
* authoredOn = "2025-11-10T13:28:17-05:00"
* requester = Reference(PractitionerRole/practitioner-role-gynecologist)
* requester.display = "Lyuba Dadaeva Yuldashevna"
* performer[0] = Reference(Organization/xonobod-medical-association)
* performer[=].display = "Xonobod City Medical Association"