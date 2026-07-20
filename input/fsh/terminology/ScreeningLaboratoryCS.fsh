CodeSystem: ScreeningLaboratoryCS
Id: screening-laboratory-cs
Title: "Laboratory Tests CodeSystem"
Description: "Terminology for laboratory tests used in cervical and breast cancer screening programs (LOINC)"

* insert SupplementCodeSystemDraft(screening-laboratory-cs, $loinc, 2.82)

* #18500-9 "Microscopic observation [Identifier] in Cervix by Cyto stain.thin prep"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Взятие мазка на жидкостную цитологию"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Suyuq sitologiya uchun surtma olish"

* #82675-0 "HPV I/H Risk 4 DNA Cvx Ql NAA+probe"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Взятие мазка на ВПЧ"
  * ^designation[+].language = #uz
  * ^designation[=].value = "HPV uchun surtma olish"