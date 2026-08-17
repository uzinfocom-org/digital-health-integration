// Self-contained PractitionerRole examples used by the Screening examples.
// The role resources intentionally do not reference separate Practitioner or
// Organization examples, so adding them cannot introduce unresolved references.

Instance: ScreeningPathologistRoleExample
InstanceOf: PractitionerRole
Usage: #example
Title: "Screening Pathologist PractitionerRole Example"
Description: "Example pathomorphologist role referenced by Screening pathology and histology results."
* id = "practitioner-role-pathologist"
* active = true
* code[0] = ScreeningRolesCS#his_ris_pathomorphologist

Instance: ScreeningUltrasoundDoctorRoleExample
InstanceOf: PractitionerRole
Usage: #example
Title: "Screening Ultrasound Doctor PractitionerRole Example"
Description: "Example ultrasound doctor role referenced by the Screening breast ultrasonography result."
* id = "practitioner-role-ultrasound-doctor"
* active = true
* code[0] = ScreeningRolesCS#his_ris_ultrasound

Instance: ScreeningSurgeonRoleExample
InstanceOf: PractitionerRole
Usage: #example
Title: "Screening Surgeon PractitionerRole Example"
Description: "Example surgeon role referenced by Screening biopsy requests, procedures, and specimen collection."
* id = "practitioner-role-surgeon"
* active = true
* code[0].text = "Surgeon"
