Profile: EncounterOfBirth
Parent: Encounter
Id: encounter-of-birth
Title: "Encounter of Birth"
Description: "Uzbekistan Birth Encounter profile, used to represent patients administrative information"
* ^status = #draft
* ^experimental = true
* ^publisher = "Uzinfocom"

* subject MS
* subject only Reference(PatientOfBirth)
* subject ^short = "The infant associated with this encounter"

* serviceProvider MS
* serviceProvider ^short = "The organization (institution) responsible for this Encounter"

* partOf MS
* partOf ^short = "Link to Mother(Encounter)"

* participant ^slicing.discriminator.type = #value
* participant ^slicing.discriminator.path = "type"
* participant ^slicing.rules = #open

// add changes for participant
* participant contains participantAttendant 0..* and participantCertifier 0..*
* participant[participantAttendant].type = http://loinc.org#87286-1
* participant[participantCertifier].type = http://loinc.org#87287-9

* participant[participantAttendant].type 1..1 MS
* participant[participantAttendant].type ^short = "Role of participant in collision"
* participant[participantAttendant].type.coding 1..* MS
* participant[participantAttendant].type.coding ^short = "The period of time during the collision in which the participant was involved"
* participant[participantAttendant].type.coding.system 1..1 MS
* participant[participantAttendant].type.coding.system ^short = "Identity of the terminological system"
* participant[participantAttendant].type.coding.system = "http://loinc.org"
* participant[participantAttendant].type.coding.code 1..1 MS
* participant[participantAttendant].type.coding ^short = "A symbol in the syntax defined by the system"
* participant[participantAttendant].type.coding.code = #87286-1

* participant[participantAttendant].actor 1..1 MS
* participant[participantAttendant].actor ^short = "The doctor (paramedic or midwife) who issued the medical birth certificate"
* participant[participantAttendant].actor only Reference(Practitioner)

// * participant contains participantCertifier 0..*

* participant[participantCertifier].type 1..1 MS
* participant[participantCertifier].type ^short = "Role of the certifier"
* participant[participantCertifier].type.coding 1..* MS
* participant[participantCertifier].type.coding ^short = "The period of time during the collision in which the participant was involved"
* participant[participantCertifier].type.coding.system 1..1 MS
* participant[participantCertifier].type.coding.system ^short = "Identity of the terminological system"
* participant[participantCertifier].type.coding.system = "http://loinc.org"
* participant[participantCertifier].type.coding.code 1..1 MS
* participant[participantCertifier].type.coding ^short = "A symbol in the syntax defined by the system"
* participant[participantCertifier].type.coding.code = #87287-9

* participant[participantCertifier].actor 1..1 MS
* participant[participantCertifier].actor ^short = "The doctor who signed the medical birth certificate"
* participant[participantCertifier].actor only Reference(Practitioner)

* participant[participantCertifier].period 0..1
* participant[participantCertifier].period.start 0..1 MS

* diagnosis MS
* diagnosis.condition MS
* diagnosis.condition ^short = "Observed congenital problems (e.g., jaundice, congenital anomalies)
Diagnostic conditions at birth (e.g., low birth weight, respiratory distress)
Clinical assessments related to birth (e.g., signs of infection, abnormal Apgar scores)"

* location MS

* location.location 1..1 MS
* location.location only Reference(UZCoreLocation)
* location.location ^short = "The place where the baby was born"