CodeSystem: ScreeningVaginalDischargeTypeCS
Id: screening-vaginal-discharge-type-cs
Title: "Screening Vaginal Discharge Type CodeSystem"
Description: "Local vaginal discharge appearance types without a clean SNOMED CT equivalent."
* insert OriginalCodeSystemDraft(screening-vaginal-discharge-type-cs)

// Positions 3 (Foamy), 5 (Bloody), 6 (Mucous) and 8 (Purulent) moved to SNOMED CT
// (289546003, 289547007, 289548002, 289550005) in screening-vaginal-discharge-type-vs -- see
// its SNOMED CT "Vaginal discharge" (271939006) descendant list. "Normal" was added there too
// (289566007, "Normal vaginal secretions"). These four had no SNOMED CT match found: "meat-wash
// color" and "yellow fluid mixed with blood" are compound color+consistency descriptors SNOMED
// only models as separate single-axis findings (color alone, consistency alone); "cloudy" and
// "curd-like" (candidiasis) have no matching concept at all.
* #scrn-0019-00001 "Go‘sht yuvindisi rangi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цвет мясных помоев"
  * ^designation[+].language = #en
  * ^designation[=].value = "Meat-wash color"

* #scrn-0019-00002 "Loyqa"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Мутные"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cloudy"

* #scrn-0019-00004 "Qonli sariq suyuqlik"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Желтая жидкость с кровью"
  * ^designation[+].language = #en
  * ^designation[=].value = "Yellow fluid mixed with blood"

* #scrn-0019-00007 "Tvoroglilar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Творожистые"
  * ^designation[+].language = #en
  * ^designation[=].value = "Curd-like"

* #scrn-0019-00009 "Boshqa"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другое"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other"