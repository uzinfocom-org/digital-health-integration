CodeSystem: CancerLateralityQualifierCS
Id: cancer-laterality-qualifier-cs
Title: "Cancer Laterality SNOMED CT Supplement"
Description: "SNOMED CT supplement containing Uzbek and Russian designations for laterality concepts used to qualify the body site of a cancer condition in the Uzbekistan healthcare system."

* insert SupplementCodeSystemDraft(
    cancer-laterality-qualifier-cs,
    $sct,
    2026.1.0
)

* #24028007 "Right"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Справа"
  * ^designation[+].language = #uz
  * ^designation[=].value = "O‘ng tomonda"

* #7771000 "Left"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Слева"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Chap tomonda"

* #51440002 "Right and left"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Оба органа"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ikkala a’zo"

* #399488007 "Midline"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Срединная линия"
  * ^designation[+].language = #uz
  * ^designation[=].value = "O‘rta chiziq"

* #261665006 "Unknown"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неизвестно"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Noma’lum"