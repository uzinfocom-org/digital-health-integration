CodeSystem: CancerTNMCategoryCS
Id: cancer-tnm-category-cs
Title: "Cancer TNM Category SNOMED CT Supplement"
Description: "SNOMED CT supplement containing Uzbek and Russian designations for TNM category concepts used in the Uzbekistan healthcare system."

* insert SupplementCodeSystemDraft(
    cancer-tnm-category-cs,
    $sct,
    2026.1.0
)

* #399504009 "cT category"
  * ^designation[0].language = #ru
  * ^designation[=].value = "cT категория"
  * ^designation[+].language = #uz
  * ^designation[=].value = "cT kategoriyasi"

* #384625004  "pT category"
  * ^designation[0].language = #ru
  * ^designation[=].value = "pT категория"
  * ^designation[+].language = #uz
  * ^designation[=].value = "pT kategoriyasi"

* #399534004 "cN category"
  * ^designation[0].language = #ru
  * ^designation[=].value = "cN категория"
  * ^designation[+].language = #uz
  * ^designation[=].value = "cN kategoriyasi"

* #371494008 "pN category"
  * ^designation[0].language = #ru
  * ^designation[=].value = "pN категория"
  * ^designation[+].language = #uz
  * ^designation[=].value = "pN kategoriyasi"

* #399387003 "cM category"
  * ^designation[0].language = #ru
  * ^designation[=].value = "cM категория"
  * ^designation[+].language = #uz
  * ^designation[=].value = "cM kategoriyasi"

* #371497001 "pM category"
  * ^designation[0].language = #ru
  * ^designation[=].value = "pM категория"
  * ^designation[+].language = #uz
  * ^designation[=].value = "pM kategoriyasi"