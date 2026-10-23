CodeSystem: SickLeaveComponentCS
Id: sick-leave-component-cs
Title: "Sick Leave Component CodeSystem"
Description: "Attributes of a sick leave recorded as Observation components, one per field of the DHP sick leave API"
* insert SickLeaveContact
* insert OriginalCodeSystemDraft(sick-leave-component-cs)

* #urban-resident "Shahar aholisi"
  * ^definition = "Whether the patient is an urban resident (patient.isUrban): true for urban, false for rural"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Городской житель"
  * ^designation[+].language = #en
  * ^designation[=].value = "Urban resident"

* #non-local "Yashash joyidan tashqarida berilgan"
  * ^definition = "Whether the sick leave is issued outside the patient's place of residence (isNonLocal)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Выдан не по месту жительства"
  * ^designation[+].language = #en
  * ^designation[=].value = "Issued outside the place of residence"

* #epidemiological-history "Epidemiologik anamnez"
  * ^definition = "Contact with infectious patients and other epidemiological history (epidemiologicalHistory)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эпидемиологический анамнез"
  * ^designation[+].language = #en
  * ^designation[=].value = "Epidemiological history"
