CodeSystem: Form111_BreastConditionCS
Id: form111-breast-condition-cs
Title: "Form 111 Breast Condition Code"
Description: "Form 111 Breast Condition Code for clinical documents and other knowledge resources in Uzbekistan integrations. Based on Ministry of Health Order 399."
* insert OriginalCodeSystemDraft(form111-breast-condition-cs)

* #chr-0004-00001 "Patologiya yo'q"
  * ^designation[0].language = #en
  * ^designation[=].value = "No pathology"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Патология отсутствует"

* #chr-0004-00002 "Patologiya mavjud"
  * ^designation[0].language = #en
  * ^designation[=].value = "Pathology present"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Имеется патология"