CodeSystem: Form111_FetalPresentationCS
Id: form111-fetal-presentation-cs
Title: "Form 111 Fetal Presentation CodeSystem"
Description: "Form 111 Fetal Presentation CodeSystem for clinical documents and other knowledge resources in Uzbekistan integrations. Based on Ministry of Health Order 399."
* insert OriginalCodeSystemDraft(form111-fetal-presentation-cs)

* #chr-0015-00001 "Chanoq bilan kelish"
  * ^designation[0].language = #en
  * ^designation[=].value = "Breech presentation"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Тазовое предлежание"

* #chr-0015-00002 "Bosh bilan kelish"
  * ^designation[0].language = #en
  * ^designation[=].value = "Cephalic presentation"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Головное предлежание"

* #chr-0015-00003 "Aniqlanmagan"
  * ^designation[0].language = #en
  * ^designation[=].value = "Undetermined"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Не определено"