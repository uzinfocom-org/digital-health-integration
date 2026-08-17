CodeSystem: ScreeningObservationTypeCS
Id: screening-observation-type-cs
Title: "Screening Observation Type Supplement CodeSystem"
Description: "SNOMED CT supplement containing Uzbek and Russian designations for screening observation type codes used in Uzbekistan."

* insert SupplementCodeSystemDraft(
    screening-observation-type-cs,
    $sct,
    2026.1.0
)

* #1348266008 "Breast Imaging and Reporting and Data System"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Система описания и обработки данных визуализации молочной железы (BI-RADS)"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ko'krak bezi tasvirlash va hisobot berish tizimi (BI-RADS)"

* #129793001 "Mammographic breast density"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Маммографическая плотность молочной железы"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Mammografik ko'krak bezi zichligi"

* #246646005 "Quality of visual image"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Качество визуального изображения"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Vizual tasvir sifati"