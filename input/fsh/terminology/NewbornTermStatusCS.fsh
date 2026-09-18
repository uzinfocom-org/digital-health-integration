CodeSystem: NewbornTermStatusCS
Id: newborn-term-status-cs
Title: "Form097 Newborn Term Status"
Description: "Local codes for newborn term status, Form097 newborn development record."

* insert OriginalCodeSystemDraft(newborn-term-status-cs)

* #chr-0114-0001 "Muddatidan oldin tug'ilgan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Родился раньше срока"
  * ^designation[+].language = #en
  * ^designation[=].value = "Preterm"

* #chr-0114-0002 "Muddatida tug'ilgan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Родился в срок"
  * ^designation[+].language = #en
  * ^designation[=].value = "Term"

* #chr-0114-0003 "Muddatidan kech tug'ilgan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Родился позже срока"
  * ^designation[+].language = #en
  * ^designation[=].value = "Post-term"