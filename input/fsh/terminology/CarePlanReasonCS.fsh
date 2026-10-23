CodeSystem: CarePlanReasonCS
Id: care-plan-reason-cs
Title: "Care plan reason translation in Russian and English"
Description: "Reasons for temporary incapacity of the DHP sick leave API"

* insert SickLeaveContact
* insert OriginalCodeSystemDraft(care-plan-reason-cs)

* #DIS "Kasallik"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Заболевание"
  * ^designation[+].language = #en
  * ^designation[=].value = "Disease"

* #INJ "Vaqtinchalik mehnatga layoqatsizlikka olib kelgan jarohat"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Травма с временной утратой трудоспособности"
  * ^designation[+].language = #en
  * ^designation[=].value = "Temporary Disability"

* #MAT "Homiladorlik va tug'ruq ta'tili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отпуск по беременности и родам"
  * ^designation[+].language = #en
  * ^designation[=].value = "Maternity Leave"

* #FMC "Kasal oila a'zosini parvarish qilish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Уход за больным членом семьи"
  * ^designation[+].language = #en
  * ^designation[=].value = "Family Member Care"

* #PRO "Ortopedik-protez muassasasining statsionar sharoitida protezlash"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Протезирование в условиях стационара протезно-ортопедического предприятия"
  * ^designation[+].language = #en
  * ^designation[=].value = "Prosthetics"

* #SAN "Sanator-kurort (yoki ambulator-kurort) davolanish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Санаторно-курортное или амбулаторно-курортное лечение"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sanatorium Treatment"

* #QRT "Karantin"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Карантин"
  * ^designation[+].language = #en
  * ^designation[=].value = "Quarantine"

* #NBC "Yangi tug'ilgan chaqaloqni parvarish qilish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Уход за новорождённым"
  * ^designation[+].language = #en
  * ^designation[=].value = "Newborn Care"
