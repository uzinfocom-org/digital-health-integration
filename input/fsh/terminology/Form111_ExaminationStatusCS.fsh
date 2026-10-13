CodeSystem: Form111_ExaminationStatusCS
Id: form111-examination-status-cs
Title: "Form 111 Examination Status CodeSystem"
Description: "Form 111 Examination Status CodeSystem for clinical documents and other knowledge resources in Uzbekistan integrations. Based on Ministry of Health Order 399."
* insert OriginalCodeSystemDraft(form111-examination-status-cs)

* #chr-0011-00001 "Me'yor"
  * ^designation[0].language = #en
  * ^designation[=].value = "Normal"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Норма"

* #chr-0011-00002 "Patologiya"
  * ^designation[0].language = #en
  * ^designation[=].value = "Pathology"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Патология"