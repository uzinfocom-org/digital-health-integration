CodeSystem: ScreeningBreastHistologicTypeCS
Id: screening-breast-histologic-type-cs
Title: "Screening Breast Histologic Type CodeSystem"
Description: "CodeSystem for Screening Breast Histologic Type"
* insert OriginalCodeSystemDraft(screening-breast-histologic-type-cs)

// SNOMED CT has no International concept for this: 476361000210101 exists only
// in the Norwegian extension, so a local code is kept.
* #scrn-0029-00002 "Ustun hujayrali shikastlanishlar, tekis epitelial atipiya bilan birga"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Столбноклеточные поражения, включая плоскую эпителиальную атипию"
  * ^designation[+].language = #en
  * ^designation[=].value = "Columnar cell lesions, including flat epithelial atypia"

* #scrn-0029-00006 "Mikroglandyulyar adenoz"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Микрожелезистый аденоз"
  * ^designation[+].language = #en
  * ^designation[=].value = "Microglandular adenosis"

