CodeSystem: ScreeningActionTranslationsCS
Id: screening-action-translations-cs
Title: "Screening ActionTranslations"
Description: "Russian and Uzbek designations for explicit codes used by screening resources and questionnaires."
* insert SupplementCodeSystemDraft(screening-action-translations-cs, "http://hl7.org/fhir/action-code", 5.0.0)

* #order-service
  * ^designation[0].language = #ru
  * ^designation[=].value = "Назначить медицинскую услугу"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tibbiy xizmatni tayinlash"
