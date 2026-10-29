CodeSystem: ScreeningYesNoTranslationsCS
Id: screening-yes-no-translations-cs
Title: "Screening yes/no indicator translations"
Description: "Expanded yes/no indicator (HL7 v2 table 0532) supplement with translations in Uzbek and Russian. Not yet referenced by any ValueSet."
* insert SupplementCodeSystemDraft(screening-yes-no-translations-cs, $v2-0532, 3.0.0)

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
