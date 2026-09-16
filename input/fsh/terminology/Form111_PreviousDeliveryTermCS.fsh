CodeSystem: Form111_PreviousDeliveryTermCS
Id: form111-previous-delivery-term-cs
Title: "Form 111 Previous Delivery Term Code"
Description: "Form 111 Previous Delivery Term Code for clinical documents and other knowledge resources in Uzbekistan integrations. Based on Ministry of Health Order 399. Reserved code for a previous delivery term without a suitable SNOMED CT concept; term and premature birth use SNOMED CT directly (see form111-previous-delivery-term-vs)."
* insert OriginalCodeSystemDraft(form111-previous-delivery-term-cs)

* #chr-0026-00001 "Muddatidan kech tug'ruq"
  * ^designation[0].language = #en
  * ^designation[=].value = "Post-term birth"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Запоздалые роды"
