CodeSystem: ScreeningBreastSurgicalProcedureTypeCS
Id: screening-breast-surgical-procedure-type-cs
Title: "Screening Breast Surgical Procedure Type CodeSystem"
Description: "Local breast surgical procedure types without a clean, non-laterality-specific SNOMED CT equivalent."
* insert OriginalCodeSystemDraft(screening-breast-surgical-procedure-type-cs)

// Positionally numbered to match org.his.model.form025.enums.BreastSurgicalSubtype's declaration
// order (see SCREENING_BREAST_SURGICAL_PROCEDURE_TYPE in the coding-mapping SQL): position 1
// (SECTOR_RESECTION) and position 2 (RADICAL_MASTECTOMY) are SNOMED CT, position 4
// (SKIN_SPARING_MASTECTOMY) is SNOMED CT -- only positions 3 and 5 are local.
* #scrn-0087-00003 "Radikal rezeksiya"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Радикальная резекция"
  * ^designation[+].language = #en
  * ^designation[=].value = "Radical resection"

* #scrn-0087-00005 "Sut bezini amputatsiya qilish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ампутация молочной железы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Breast amputation"
