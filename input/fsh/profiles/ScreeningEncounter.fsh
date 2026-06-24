Profile: ScreeningEncounter
Parent: UZCoreEncounter
Id: screening-encounter
Title: "Screening Encounter"
Description: "Profile for documenting patient encounters within the cervical and breast cancer screening workflow (outpatient visit, laboratory, radiology, and diagnostic services)."
* ^status = #active
* ^publisher = "DHP Integration"
* ^experimental = true

* subject 1..1


Instance: Encounter-radiology
InstanceOf: ScreeningEncounter
Usage: #example
Description: "Patient visit to the radiology department (X-ray/mammography unit)"
* identifier[0].system = $screening-local-id
* identifier[=].value = "33"
* identifier[=].use = #usual
* status = #completed
* class = $v3-ActCode#AMB "ambulatory"
* type = $encounter-type-cs#mserv-0001-00002 // Diagnostic (imaging)
* subject = Reference(Patient/lola-oripova)
* subject.display = "Lola Oripova Shakhzodovna"
* basedOn[0] = Reference(ServiceRequest/ServiceRequest-mammography)
* serviceProvider = Reference(Organization/xonobod-medical-association)
* serviceProvider.display = "Khonobod City Medical Association"
* actualPeriod.start = "2025-11-17T11:50:00Z"
* actualPeriod.end = "2025-11-17T12:30:00Z"
* length.value = 40
* length.unit = "min"
* length.system = $ucum
* length.code = #min


Instance: Encounter-laboratory
InstanceOf: ScreeningEncounter
Usage: #example
Description: "Laboratory visit for specimen collection and registration"
* identifier[0].system = $screening-local-id
* identifier[=].value = "34"
* identifier[=].use = #usual
* status = #completed
* class = $v3-ActCode#AMB "ambulatory"
* type = $encounter-type-cs#mserv-0001-00002 // Diagnostic (laboratory)
* subject = Reference(Patient/lola-oripova)
* subject.display = "Lola Oripova Shakhzodovna"
// ВАЖНО: Изменено на cytology (как мы договорились ранее)
* basedOn[0] = Reference(ServiceRequest/ServiceRequest-cytology)
* serviceProvider = Reference(Organization/xonobod-medical-association)
* serviceProvider.display = "Khonobod City Medical Association"

Instance: Encounter-diagnostics
InstanceOf: ScreeningEncounter
Usage: #example
Description: "Patient visit to the diagnostic examination unit"
* identifier[0].system = $screening-local-id
* identifier[=].value = "35"
* identifier[=].use = #usual
* status = #completed
* class = $v3-ActCode#AMB "ambulatory"
* type = $encounter-type-cs#mserv-0001-00002 // Diagnostic (colposcopy)
* subject = Reference(Patient/lola-oripova)
* subject.display = "Lola Oripova Shakhzodovna"
* basedOn[0] = Reference(ServiceRequest/ServiceRequest-colposcopy)
* serviceProvider = Reference(Organization/xonobod-medical-association)
* serviceProvider.display = "Khonobod City Medical Association"

Instance: Encounter-general
InstanceOf: ScreeningEncounter
Usage: #example
Description: "Outpatient visit to an obstetrician-gynecologist or oncology screening office"
* identifier[0].system = $screening-local-id
* identifier[=].value = "36"
* identifier[=].use = #usual
* status = #completed
* class = $v3-ActCode#AMB "ambulatory"
* type = $encounter-type-cs#mserv-0001-00003 // Consultative (gynecology visit)
* subject = Reference(Patient/lola-oripova)
* subject.display = "Lola Oripova Shakhzodovna"
// basedOn здесь нет, так как это первичный визит!
* serviceProvider = Reference(Organization/xonobod-medical-association)
* serviceProvider.display = "Khonobod City Medical Association"