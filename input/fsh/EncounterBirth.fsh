Profile: EncounterBirth
Parent: UZCoreEncounter
Id: encounter-birth
Title: "Encounter of Birth"
Description: "Uzbekistan Birth Encounter profile, used to represent patients administrative information"
* ^status = #draft
* ^experimental = true

* serviceType MS
* serviceType ^short = "Specific type of service"

* subject MS
* subject only Reference(PatientBirth) //(Patient - Child Vital Records)
* subject ^short = "The baby associated with this meeting"

* partOf MS
* partOf ^short = "Link to Mother(Encounter)"

* serviceProvider MS
* serviceProvider ^short = "The organization (institution) responsible for this Encounter"

* participant MS
* participant ^short = "The doctor (paramedic or obstetrician) who issued the medical birth certificate"
* participant.actor MS
* participant.actor ^short = "The person participating in the meeting"
* participant.period MS
* participant.period ^short = "The time period during the meeting in which the participant participated"
* participant
  * type MS
  * ^short = "The role of the meeting participant"

* actualPeriod MS
* actualPeriod ^short = "The actual start and end time of the meeting"

* plannedStartDate MS
* plannedStartDate ^short = "The planned date/time of the start (or arrival date) of the meeting"

* plannedEndDate MS
* plannedEndDate ^short = "Planned date/time of the end (or date of discharge) of the meeting"

* diagnosis MS
* diagnosis.condition MS
* diagnosis.condition ^short = "Observed congenital problems (e.g. jaundice, congenital abnormalities)
Diagnostic conditions at birth (e.g. low birth weight, respiratory distress)
Clinical assessments related to birth (e.g. signs of infection, abnormal Apgar scores)"

* location MS
* location.location 1..1 MS
* location.location ^short = "The place where the baby was born"