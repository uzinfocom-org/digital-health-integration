CodeSystem: ScreeningCervicalMaterialTypeCS
Id: screening-cervical-material-type-cs
Title: "Screening Cervical Material Type CodeSystem"
Description: "Local cervical biopsy/surgical material types without a clean SNOMED CT equivalent."
* insert OriginalCodeSystemDraft(screening-cervical-material-type-cs)

// SCREENING_CERVICAL_MATERIAL_TYPE draws from two backing enums (BiopsyMaterialType and
// CervicalSurgicalMaterialType -- see the coding-mapping SQL); most values already have SNOMED CT
// codes (PUNCH_BIOPSY, CONIZATION, ENDOCERVICAL_CURETTAGE_BIOPSY, EXCISION_BIOPSY, CONICAL_BIOPSY,
// CONICAL_BIOPSY_WITH_CURETTAGE, CKC, TRACHELECTOMY, TOTAL_HYSTERECTOMY,
// RADICAL_EXTENDED_HYSTERECTOMY). These three had no SNOMED CT match found.
* #scrn-0089-00001 "Kyuretaj bilan ekstsizion biopsiya"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эксцизионная биопсия с выскабливанием"
  * ^designation[+].language = #en
  * ^designation[=].value = "Excisional biopsy with curettage"

* #scrn-0089-00002 "Ilmoqli elektroeksziya (LLETZ/LEEP)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Петлевая электроэксцизия (LLETZ/LEEP)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Loop electrosurgical excision procedure (LLETZ/LEEP)"

* #scrn-0089-00003 "Bachadonni ortiqlarisiz ekstirpatsiya qilish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Экстирпация матки без придатков"
  * ^designation[+].language = #en
  * ^designation[=].value = "Extirpation of uterus without appendages"
