Instance: doc-form-number
InstanceOf: NamingSystem
Description: "Official form numbers for standardized clinical documents in Uzbekistan"
Usage: #definition
* name = "UzbekistanDocumentFormNumber"
* status = #active
* kind = #identifier
* publisher = "Uzinfocom"
* responsible = "Ministry of Health of the Republic of Uzbekistan"
* date = "2026-02-03"
* description = "Form numbers for standardized clinical documents (e.g., 053, 086, 094, 095, 138)"
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* usage = "Used in Composition.identifier or CarePlan.identifier when a document corresponds to a standardized form"
* uniqueId[0].type = #uri
* uniqueId[=].value = "https://dhp.uz/fhir/core/sid/doc/uz/form-number"
* uniqueId[=].preferred = true

Instance: doc-template-number
InstanceOf: NamingSystem
Description: "Template numbers for clinical document templates in Uzbekistan"
Usage: #definition
* name = "UzbekistanDocumentTemplateNumber"
* status = #active
* kind = #identifier
* publisher = "Uzinfocom"
* responsible = "Ministry of Health of the Republic of Uzbekistan"
* date = "2026-02-03"
* description = "Template numbers for clinical document templates (distinct from form numbers)"
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* usage = "Used in Composition.identifier or CarePlan.identifier to identify the template used"
* uniqueId[0].type = #uri
* uniqueId[=].value = "https://dhp.uz/fhir/core/sid/doc/uz/template-number"
* uniqueId[=].preferred = true

Instance: ObservationCauseOfDeathExample
InstanceOf: ObservationCauseOfDeath
Title: "Observation Cause of Death Example"
Description: "Example instance of ObservationCauseOfDeath profile"
Usage: #example

* status = #final
* code = http://loinc.org#79378-6
* subject = Reference(patient-death-example)
* effectiveDateTime = "2024-03-15T08:30:00Z"
* valueCodeableConcept = http://snomed.info/sct#38605008

* component[directCause].code = https://dhp.uz/fhir/integrations/CodeSystem/cause-of-death-cs#38605008
* component[directCause].valueString = "Yurak to'xtashi"

* component[clinicalCause].code = https://terminology.dhp.uz/CodeSystem/cause-of-death-cs#death0003.00001
* component[clinicalCause].valueCodeableConcept = http://hl7.org/fhir/sid/icd-10#I21.0

* component[accidentDate].code = https://terminology.dhp.uz/CodeSystem/death-event-of-accident-cs#death0004.00001
* component[accidentDate].valueDateTime = "2024-03-14T22:00:00Z"

* component[accidentType].code = https://terminology.dhp.uz/CodeSystem/death-event-of-accident-cs#death0004.00002
* component[accidentType].valueCodeableConcept =
  https://terminology.dhp.uz/CodeSystem/death-evidence-type-cs#death0002.00001

* component[accidentPlace].code = https://terminology.dhp.uz/CodeSystem/death-event-of-accident-cs#death0004.00003
* component[accidentPlace].valueString = "Toshkent shahar, Chilonzor tumani"

Instance: EncounterOfDeathExample
InstanceOf: EncounterOfDeath
Title: "Encounter of Death Example"
Description: "Example instance of EncounterOfDeath profile"
Usage: #example

* status = #planned
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP
* serviceType = DeathEncounterTypeCS#mserv.0001.00002
* subject = Reference(patient-death-example)
* participant[0].type = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#ATND
* participant[0].period.start = "2024-03-15T08:00:00Z"
* participant[0].period.end = "2024-03-15T10:00:00Z"

Instance: patient-death-example
InstanceOf: PatientOfDeath
Title: "Example Patient Death"
Description: "Example instance of Patient Death profile"
Usage: #example

* identifier[nationalId].value = "30211975910033"
* active = true
* name
  * use = #usual
  * text = "Усманов Салим Салиевич"
  * family = "Усманов"
  * given = "Салим"
  * suffix = "Салиевич"
* telecom
  * system = #phone
  * use = #mobile
  * rank = 1
  * period.start = "2021-05-13"
* birthDate = "1994-01-27"
* address
  * use = #home
  * type = #postal
  * line = "ул.Муминова 4"
  * country = "182"
  * district = "1703202"
  * city = "22070013"
  * period.start = "1999-04-06"
* gender = #male