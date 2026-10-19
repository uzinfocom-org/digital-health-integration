CodeSystem: InfantFeedingTypeCS
Id: infant-feeding-type-cs
Title: "Form097 Infant Feeding Type"
Description: "Local codes for infant feeding type, Form097 newborn development record."

* insert OriginalCodeSystemDraft(infant-feeding-type-cs)

* #chr-0106-0001 "Faqat ona suti"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Только грудное"
  * ^designation[+].language = #en
  * ^designation[=].value = "Exclusive breastfeeding"

* #chr-0106-0002 "Sun'iy"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Искусственное"
  * ^designation[+].language = #en
  * ^designation[=].value = "Formula feeding"

* #chr-0106-0003 "Aralash"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Смешанное"
  * ^designation[+].language = #en
  * ^designation[=].value = "Mixed feeding"