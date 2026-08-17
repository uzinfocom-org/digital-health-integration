CodeSystem: DHISBodySiteCS
Id: dhis-body-site-cs
Title: "DHIS Body Site CodeSystem"
Description: "SNOMED CT supplement containing Uzbek and Russian designations for body site codes used in DHIS."

* insert SupplementCodeSystemDraft(
    dhis-body-site-cs,
    $sct,
    2026.1.0
)

* #154283005 "Pulmonary tuberculosis"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лёгочное ТБ"
  * ^designation[+].language = #uz
  * ^designation[=].value = "O‘pka sili"

* #423997002 "Tuberculosis, extrapulmonary"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Внелёгочное ТБ"
  * ^designation[+].language = #uz
  * ^designation[=].value = "O‘pkadan tashqari sil"

* #182159002 "Disseminated tuberculosis"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Генерализованный ТБ"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tarqalgan sil"