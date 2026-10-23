CodeSystem: ScreeningYesNoTranslationsCS
Id: screening-yes-no-translations-cs
Title: "Screening YesNoTranslations"
Description: "Russian and Uzbek designations for explicit codes used by screening resources and questionnaires."
* insert SupplementCodeSystemDraft(screening-yes-no-translations-cs, "http://terminology.hl7.org/CodeSystem/v2-0532", 2.9.0)

* #N
  * ^designation[0].language = #ru
  * ^designation[=].value = "Нет"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Yo'q"

* #UNK
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неизвестно"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Noma'lum"

* #Y
  * ^designation[0].language = #ru
  * ^designation[=].value = "Да"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ha"
