CodeSystem: Form111_ContraceptionTypeCS
Id: form111-contraception-type-cs
Title: "Form 111 Contraception Type"
Description: "Form 111 Contraception Type for clinical documents and other knowledge resources in Uzbekistan integrations. Based on Ministry of Health Order 399."
* insert OriginalCodeSystemDraft(form111-contraception-type-cs)

* #chr-0008-00001 "Jarrohliksiz kontratseptsiya"
  * ^designation[0].language = #en
  * ^designation[=].value = "Non-surgical contraception"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Нехирургическая контрацепция"

* #chr-0008-00002 "Qo'llanilmagan"
  * ^designation[0].language = #en
  * ^designation[=].value = "None"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Не применялась"

* #chr-0008-00003 "Jarrohlik kontratseptsiyasi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Surgical contraception"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Хирургическая контрацепция"
