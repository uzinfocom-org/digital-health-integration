CodeSystem: CancerStageGroupCS
Id: cancer-stage-group-cs
Title: "Cancer Stage Group"
Description: "Cancer stage grouping code system for Uzbekistan healthcare system."

* insert SupplementCodeSystemDraft(
    cancer-stage-group-cs,
    $sct,
    2026.1.0
)

* #399390009 "TNM stage grouping"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Группировка стадий TNM"
  * ^designation[+].language = #uz
  * ^designation[=].value = "TNM bosqichlarini guruhlash"

* #399537006 "Clinical TNM stage grouping"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Клиническая группировка стадий TNM"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Klinik TNM bosqichlarini guruhlash"

* #399588009 "Pathologic TNM stage grouping"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Группировка стадий патологической TNM"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Patologik TNM bosqichlarini guruhlash"




