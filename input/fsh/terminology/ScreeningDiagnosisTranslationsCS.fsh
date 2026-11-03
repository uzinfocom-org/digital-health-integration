CodeSystem: ScreeningDiagnosisTranslationsCS
Id: screening-diagnosis-translations-cs
Title: "Screening ICD-10 diagnosis translations"
Description: "ICD-10 supplement with translations in Uzbek and Russian for screening diagnoses. Not yet referenced by any ValueSet."
* insert SupplementCodeSystemDraft(screening-diagnosis-translations-cs, $icd-10, 2019.0.0)

* #D06.9
  * ^designation[0].language = #ru
  * ^designation[=].value = "Карцинома in situ неуточнённой части шейки матки"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bachadon bo'ynining aniqlanmagan qismidagi in situ karsinoma"

* #E11
  * ^designation[0].language = #ru
  * ^designation[=].value = "Сахарный диабет 2 типа"
  * ^designation[+].language = #uz
  * ^designation[=].value = "2-turdagi qandli diabet"

* #N87.1
  * ^designation[0].language = #ru
  * ^designation[=].value = "Умеренная дисплазия шейки матки"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bachadon bo'ynining o'rtacha displaziyasi"
