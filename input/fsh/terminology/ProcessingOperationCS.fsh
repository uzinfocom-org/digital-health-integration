CodeSystem: ProcessingOperationCS
Id: processing-operation-cs
Title: "Blood component processing operations"
Description: "Local DHP operations selected when requesting secondary processing of a blood component."
* insert OriginalCodeSystemDraft(processing-operation-cs)

* #bld-operation-0001 "Yuvish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Обмывание"
  * ^designation[+].language = #en
  * ^designation[=].value = "Washing"
* #bld-operation-0002 "Nurlantirish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Облучение"
  * ^designation[+].language = #en
  * ^designation[=].value = "Irradiation"
* #bld-operation-0003 "Muzlatish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Заморозка"
  * ^designation[+].language = #en
  * ^designation[=].value = "Freezing"
* #bld-operation-0004 "Eritish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Разморозка"
  * ^designation[+].language = #en
  * ^designation[=].value = "Thawing"
