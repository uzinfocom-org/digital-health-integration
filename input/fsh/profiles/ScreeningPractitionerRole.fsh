Profile: ScreeningPractitionerRole
Parent: UZCorePractitionerRole
Id: screening-practitioner-role
Title: "Screening Practitioner Role"
Description: "Practitioner role profile for the screening system, inheriting the UZCore structure."
* ^status = #active
* ^experimental = true
* ^publisher = "DHP Integration"

// If you want to make a field Must Support, even if it was not defined as such in UZCore:
* code MS
* practitioner MS


Instance: practitioner-role-laborant
InstanceOf: ScreeningPractitionerRole
Usage: #example
Description: "Laboratory technician role of Mika Adamova at the Xonobod City Medical Association"
* identifier[0].system = $screening-local-id
* identifier[=].value = "456"
* identifier[=].use = #usual
* active = true
* practitioner = Reference(Practitioner/mika-adamova)
* organization = Reference(Organization/xonobod-medical-association)
* code = src-roles-cs#his_laboratory_laborant

Instance: practitioner-role-gynecologist
InstanceOf: ScreeningPractitionerRole
Usage: #example
Description: "Obstetrician-gynecologist role of Lyuba Dadaeva at the Xonobod City Medical Association"
* identifier[0].system = $screening-local-id
* identifier[=].value = "457"
* identifier[=].use = #usual
* active = true
* practitioner = Reference(Practitioner/lyuba-dadaeva)
* organization = Reference(Organization/xonobod-medical-association)
* code = src-roles-cs#his_centre_obstetrics_gynecology_obstetrician_gynecologist

Instance: practitioner-role-radiologist
InstanceOf: ScreeningPractitionerRole
Usage: #example
Description: "Head radiologist role of Nina Tipsina at the Xonobod City Medical Association"
* identifier[0].system = $screening-local-id
* identifier[=].value = "458"
* identifier[=].use = #usual
* active = true
* practitioner = Reference(Practitioner/nina-tipsina)
* organization = Reference(Organization/xonobod-medical-association)
* code = src-roles-cs#his_ris_ragiologist_head

Instance: practitioner-role-nurse
InstanceOf: ScreeningPractitionerRole
Usage: #example
Description: "Patronage nurse role of Lyuba Dadaeva in the oncology follow-up system"
* identifier[0].system = $screening-local-id
* identifier[=].value = "459"
* identifier[=].use = #usual
* active = true
* practitioner = Reference(Practitioner/lyuba-dadaeva) // Lyuba Dadaeva works both as a gynecologist and as a nurse
* organization = Reference(Organization/xonobod-medical-association)
* code = src-roles-cs#his_poliklinika_patronage_nurse