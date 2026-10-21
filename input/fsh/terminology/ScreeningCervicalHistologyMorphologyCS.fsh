CodeSystem: ScreeningCervicalHistologyMorphologyCS
Id: screening-cervical-histology-morphology-cs
Title: "Screening Cervical Histology Morphology CodeSystem"
Description: "Local cervical histology morphology subtypes without a clean SNOMED CT equivalent."
* insert OriginalCodeSystemDraft(screening-cervical-histology-morphology-cs)

// Positionally numbered to match org.his.model.form025.enums.HistologicalTypeIcdO's declaration
// order (see SCREENING_CERVICAL_HISTOLOGY_MORPHOLOGY in the coding-mapping SQL): positions 1, 2, 6,
// 7, 10, 12 and 13 (CIN1, CIN2, SCC_NOS, AIS_NOS, ADENOCARCINOMA_NOS, ADENOCARCINOMA_CLEAR_CELL,
// MESONEPHRIC_ADENOCARCINOMA) are SNOMED CT. Positions 3-5, 8, 9 and 11 had no SNOMED CT match
// found -- the HPV-associated/independent splits are WHO 5th edition (2020) classification terms
// that SNOMED CT does not appear to have distinct concepts for yet.
* #scrn-0090-00003 "Bachadon bo‘yni intraepitelial neoplaziyasi 3-daraja"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цервикальная интраэпителиальная неоплазия 3 степени"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cervical intraepithelial neoplasia grade 3"

* #scrn-0090-00004 "Yassi hujayrali rak, OPV bilan bog‘liq"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Плоскоклеточный рак, ВПЧ-ассоциированный"
  * ^designation[+].language = #en
  * ^designation[=].value = "Squamous cell carcinoma, HPV-associated"

* #scrn-0090-00005 "Yassi hujayrali rak, OPV bilan bog‘liq bo‘lmagan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Плоскоклеточный рак, ВПЧ-независимый"
  * ^designation[+].language = #en
  * ^designation[=].value = "Squamous cell carcinoma, HPV-independent"

* #scrn-0090-00008 "Adenokarsinoma in situ, OPV bilan bog‘liq"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аденокарцинома in situ, ВПЧ-ассоциированная"
  * ^designation[+].language = #en
  * ^designation[=].value = "Adenocarcinoma in situ, HPV-associated"

* #scrn-0090-00009 "Adenokarsinoma in situ, OPV bilan bog‘liq bo‘lmagan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аденокарцинома in situ, ВПЧ-независимая"
  * ^designation[+].language = #en
  * ^designation[=].value = "Adenocarcinoma in situ, HPV-independent"

* #scrn-0090-00011 "Oshqozon tipidagi adenokarsinoma"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аденокарцинома желудочного типа"
  * ^designation[+].language = #en
  * ^designation[=].value = "Gastric-type adenocarcinoma"
