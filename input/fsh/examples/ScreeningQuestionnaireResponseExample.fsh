Instance: screening-intake
InstanceOf: UZCoreQuestionnaireResponse
Usage: #example
Description: "Completed screening questionnaire (Complaints and Medical History)"


* identifier.system = $screening-local-id
* identifier.value = "1233"
* identifier.use = #usual

* questionnaire = "https://terminology.dhp.uz/screening-intake-template"
* status = #completed

* subject = Reference(Patient/lola-oripova)
* encounter = Reference(Encounter/Encounter-general)
* authored = "2025-11-10T09:00:00Z"
* author = Reference(PractitionerRole/practitioner-role-gynecologist)

// --- Group 1: Cervical Screening ---
* item[0].linkId = "cervical-group"
* item[0].item[0].linkId = "1.1"
* item[0].item[0].answer.valueBoolean = false
* item[0].item[1].linkId = "1.2"
* item[0].item[1].answer.valueBoolean = false
* item[0].item[2].linkId = "1.3"
* item[0].item[2].answer.valueBoolean = false
* item[0].item[3].linkId = "1.4"
* item[0].item[3].answer.valueBoolean = false
* item[0].item[4].linkId = "1.5"
* item[0].item[4].answer.valueBoolean = true
* item[0].item[5].linkId = "1.6"
* item[0].item[5].answer.valueBoolean = false
* item[0].item[6].linkId = "1.7"
* item[0].item[6].answer.valueBoolean = true
* item[0].item[7].linkId = "1.8"
* item[0].item[7].answer.valueString = "Up to 3 months ago"

// --- Group 2: Mammography (Breast Group) ---
* item[1].linkId = "breast-group"
* item[1].item[0].linkId = "2.1"
* item[1].item[0].answer.valueBoolean = true
* item[1].item[1].linkId = "2.2"
* item[1].item[1].answer.valueBoolean = false
* item[1].item[2].linkId = "2.3"
* item[1].item[2].answer.valueBoolean = false
* item[1].item[3].linkId = "2.4"
* item[1].item[3].answer.valueBoolean = false
* item[1].item[4].linkId = "2.5"
* item[1].item[4].answer.valueBoolean = true
* item[1].item[5].linkId = "2.6"
* item[1].item[5].answer.valueBoolean = false
* item[1].item[6].linkId = "2.7"
* item[1].item[6].answer.valueBoolean = false
* item[1].item[7].linkId = "2.8"
* item[1].item[7].answer.valueBoolean = true
* item[1].item[8].linkId = "2.9"
* item[1].item[8].answer.valueString = "Up to 3 months ago"


