Profile: HepatitisEncounter
Parent: UZCoreEncounter
Id: hepatitis-encounter
Title: "Hepatitis Encounter"
Description: "Encounter profile for hepatitis-related clinical encounters"
* ^status = #active
* ^experimental = true
* ^publisher = "DHP Integration"

* subject 1..1 MS
* subject only Reference(UZCorePatient)



Instance: hepatitis-encounter-example
InstanceOf: HepatitisEncounter
Title: "Hepatitis Encounter Example"
Description: "Example of a hepatitis-related clinical encounter"
Usage: #example

* status = #completed
* identifier 
  * system = $hep-id-sys 
  * value = "ENC-2026-9901"
  * type.coding
    * system = $v2-0203
    * code = #PHC
    * display = "Public Health Case Identifier"
  * use = #official
* type[0] = encounter-type-cs#mserv-0001-00004  "Treatment services"
* class = $v3-ActCode#AMB "Ambulatory"
* subject = Reference(hepatitis-patient-example)
* serviceProvider = Reference(samarkand-infectious-hospital)
* participant.type = $v3-ParticipationType#ATND "attender"
* participant.actor = Reference(PractitionerRole/example-hepatologist-role)
* actualPeriod
  * start = "2026-01-26"
* plannedStartDate = "2026-01-26T09:41:00+05:00"
