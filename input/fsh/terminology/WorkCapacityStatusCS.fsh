CodeSystem: WorkCapacityStatusCS
Id: work-capacity-status-cs
Title: "Form003 Work Capacity Status"
Description: "Local codes for work-capacity status at discharge, Form003 inpatient medical record."

* insert OriginalCodeSystemDraft(work-capacity-status-cs)

* #chr-0036-0001 "To'liq tiklangan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Трудоспособность восстановлена полностью"
  * ^designation[+].language = #en
  * ^designation[=].value = "Work capacity fully restored"

* #chr-0036-0002 "Pasaygan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Снижена"
  * ^designation[+].language = #en
  * ^designation[=].value = "Reduced"

* #chr-0036-0003 "Vaqtincha yo'qolgan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Временно утрачена"
  * ^designation[+].language = #en
  * ^designation[=].value = "Temporarily lost"

* #chr-0036-0004 "Mazkur kasallik sababli butunlay yo'qolgan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Стойко утрачена в связи с данным заболеванием"
  * ^designation[+].language = #en
  * ^designation[=].value = "Permanently lost due to this disease"

* #chr-0036-0005 "Boshqa sabablarga ko'ra yo'qolgan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Утрачена по другим причинам"
  * ^designation[+].language = #en
  * ^designation[=].value = "Lost due to other causes"
