CodeSystem: ScreeningSpecialTreatmentTypeCS
Id: screening-special-treatment-type-cs
Title: "Screening Special Treatment Type CodeSystem"
Description: "Local special treatment types without suitable SNOMED CT equivalents."
* insert OriginalCodeSystemDraft(screening-special-treatment-type-cs)

* #scrn-0086-00004 "Immuno-target terapiya"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Иммуно-таргетная терапия"
  * ^designation[+].language = #en
  * ^designation[=].value = "Immuno-targeted therapy"
* #scrn-0086-00008 "Boshqa"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другое"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other"
