CodeSystem: ScreeningBreastCytologyMaterialTypeCS
Id: screening-breast-cytology-material-type-cs
Title: "Screening Breast Cytology Material Type CodeSystem"
Description: "Local breast cytology material/guidance types without a clean SNOMED CT aspiration-cytology equivalent."
* insert OriginalCodeSystemDraft(screening-breast-cytology-material-type-cs)

// Positionally numbered to match org.his.model.form025.enums.BreastCytologySubtype's declaration
// order (see SCREENING_BREAST_CYTOLOGY_MATERIAL_TYPE in the coding-mapping SQL): position 1
// (CYTOLOGICAL_MATERIAL), position 2 (FNA) and position 5 (VACUUM_ASSISTED) are SNOMED CT --
// positions 3, 4 and 6 are local.
* #scrn-0088-00003 "UTT nazorati ostida"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Под контролем УЗИ"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ultrasound guided"

* #scrn-0088-00004 "Mammografiya nazorati ostida"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Под контролем маммографии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Mammography guided"

* #scrn-0088-00006 "Surtma"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Мазок"
  * ^designation[+].language = #en
  * ^designation[=].value = "Smear"
