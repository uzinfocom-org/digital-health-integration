CodeSystem: BloodTransfusionValueCS
Id: blood-transfusion-value-cs
Title: "Blood transfusion compatibility results"
Description: "Local compatibility results used for ABO and Rh-Hr checks."
* insert OriginalCodeSystemDraft(blood-transfusion-value-cs)

* #bldcomp-0002-00001 "Mos"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Совместима"
  * ^designation[+].language = #en
  * ^designation[=].value = "Compatible"
* #bldcomp-0002-00002 "Mos emas"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Несовместима"
  * ^designation[+].language = #en
  * ^designation[=].value = "Incompatible"
