Profile: EncounterOfBirth
Parent: UZCoreEncounter
Id: encounter-of-birth
Title: "Encounter of Birth"
Description: "Uzbekistan Birth Encounter profile, used to represent patients administrative information"
* ^status = #draft
* ^experimental = true
* ^publisher = "Uzinfocom"

* subject MS
* subject only Reference(NewbornPatient)
* subject ^short = "The infant associated with this encounter"

* serviceProvider MS
* serviceProvider ^short = "The organization (institution) responsible for this Encounter"

* partOf MS
* partOf ^short = "Link to Mother(Encounter)"

* participant ^slicing.discriminator.type = #value
* participant ^slicing.discriminator.path = "type"
* participant ^slicing.rules = #open


* participant contains attendant 0..* and certifier 0..*
* participant[attendant].type = http://loinc.org#87286-1
* participant[certifier].type = http://loinc.org#87287-9

* participant[attendant].type 1..1 MS
* participant[attendant].type ^short = "Role of participant in collision"
* participant[attendant].type.coding 1..* MS
* participant[attendant].type.coding ^short = "The period of time during the collision in which the participant was involved"
* participant[attendant].type.coding.system 1..1 MS
* participant[attendant].type.coding.system ^short = "Identity of the terminological system"
* participant[attendant].type.coding.system = "http://loinc.org"
* participant[attendant].type.coding.code 1..1 MS
* participant[attendant].type.coding ^short = "A symbol in the syntax defined by the system"
* participant[attendant].type.coding.code = #87286-1

* participant[attendant].actor 1..1 MS
* participant[attendant].actor ^short = "The doctor (paramedic or midwife) who issued the medical birth certificate"
* participant[attendant].actor only Reference(Practitioner)

* participant[certifier].type 1..1 MS
* participant[certifier].type ^short = "Role of the certifier"
* participant[certifier].type.coding 1..* MS
* participant[certifier].type.coding ^short = "The period of time during the collision in which the participant was involved"
* participant[certifier].type.coding.system 1..1 MS
* participant[certifier].type.coding.system ^short = "Identity of the terminological system"
* participant[certifier].type.coding.system = "http://loinc.org"
* participant[certifier].type.coding.code 1..1 MS
* participant[certifier].type.coding ^short = "A symbol in the syntax defined by the system"
* participant[certifier].type.coding.code = #87287-9

* participant[certifier].actor 1..1 MS
* participant[certifier].actor ^short = "The doctor who signed the medical birth certificate"
* participant[certifier].actor only Reference(Practitioner)

* participant[certifier].period 0..1
* participant[certifier].period.start 0..1 MS

* diagnosis MS
* diagnosis.condition MS
* diagnosis.condition ^short = "Observed congenital problems (e.g., jaundice, congenital anomalies)
Diagnostic conditions at birth (e.g., low birth weight, respiratory distress)
Clinical assessments related to birth (e.g., signs of infection, abnormal Apgar scores)"

* location MS

* location.location 1..1 MS
* location.location only Reference(UZCoreLocation)
* location.location ^short = "The place where the baby was born"



Instance: encounter-of-birth-example
InstanceOf: EncounterOfBirth
Usage: #example
Title: "Encounter of Birth Example"
Description: "Example birth encounter for a newborn in Uzbekistan"

* status = #completed
* class = $v3-ActCode#IMP "inpatient encounter"

* subject = Reference(newborn-patient-example)

* serviceProvider = Reference(organization1-example)
* partOf = Reference(encounter-mother-delivery-example)

* participant[attendant].type.coding[0].system = "http://loinc.org"
* participant[attendant].type.coding[0].code = #87286-1
* participant[attendant].type.coding[0].display = "Birth attendant [Extended Identifier]"
* participant[attendant].actor = Reference(practitioner-birth-attendant-example)

* participant[certifier].type.coding[0].system = "http://loinc.org"
* participant[certifier].type.coding[0].code = #87287-9
* participant[certifier].type.coding[0].display = "Birth certifier [Extended Identifier]"
* participant[certifier].actor = Reference(practitioner-birth-certifier-example)
* participant[certifier].period.start = "2026-04-01T10:30:00+05:00"

* diagnosis[0].condition = Reference(condition-neonatal-jaundice-example)

* location[0].location = Reference(location-delivery-room-example)
