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

// SNOMED CT has no distinct concept for these -- local codes, positionally numbered to match
// org.his.model.form025.enums.BreastHistologicalTypeWho's declaration order (see
// SCREENING_BREAST_HISTOLOGIC_TYPE in the coding-mapping SQL).
* #scrn-0029-00010 "Duktal adenoma"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Протоковая аденома"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ductal adenoma"

* #scrn-0029-00011 "Pleomorf adenoma"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Плеоморфная аденома"
  * ^designation[+].language = #en
  * ^designation[=].value = "Pleomorphic adenoma"

* #scrn-0029-00014 "Epitelial-myoepitelial karsinoma"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эпителиально-миоэпителиальная карцинома"
  * ^designation[+].language = #en
  * ^designation[=].value = "Epithelial-myoepithelial carcinoma"

* #scrn-0029-00017 "Kapsulalangan papillyar karsinoma"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Инкапсулированная папиллярная карцинома"
  * ^designation[+].language = #en
  * ^designation[=].value = "Encapsulated papillary carcinoma"

* #scrn-0029-00027 "Onkotsitar karsinoma"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Онкоцитарная карцинома"
  * ^designation[+].language = #en
  * ^designation[=].value = "Oncocytic carcinoma"

* #scrn-0029-00029 "Glikogenga boy karsinoma"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Гликоген-богатая карцинома"
  * ^designation[+].language = #en
  * ^designation[=].value = "Glycogen-rich carcinoma"

* #scrn-0029-00030 "Sebatsial karsinoma"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Себацейная карцинома"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sebaceous carcinoma"

* #scrn-0029-00037 "Apokrin adenokarsinoma"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Апокринная аденокарцинома"
  * ^designation[+].language = #en
  * ^designation[=].value = "Apocrine adenocarcinoma"

