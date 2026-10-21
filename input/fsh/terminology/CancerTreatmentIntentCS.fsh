CodeSystem: CancerTreatmentIntentCS
Id: cancer-treatment-intent-cs
Title: "Cancer treatment intent CodeSystem"
Description: "Local cancer treatment intent codes without equivalent SNOMED CT concepts."

* insert OriginalCodeSystemDraft(cancer-treatment-intent-cs)


* #cancer-0017-0001 "Tugallanmagan radikal"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Радикальное незавершенное"
  * ^designation[+].language = #en
  * ^designation[=].value = "Incomplete curative"

* #cancer-0017-0002 "Boshqa kasalliklar bo‘yicha"
  * ^designation[0].language = #ru
  * ^designation[=].value = "По поводу других заболеваний"
  * ^designation[+].language = #en
  * ^designation[=].value = "For other diseases"

* #cancer-0017-0003 "Asoratlar bo‘yicha"
  * ^designation[0].language = #ru
  * ^designation[=].value = "По поводу осложнений"
  * ^designation[+].language = #en
  * ^designation[=].value = "For complications"