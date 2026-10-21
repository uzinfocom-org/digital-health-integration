CodeSystem: ScreeningHistologyOrderParameterCS
Id: screening-histology-order-parameter-cs
Title: "Screening Histology Order Parameter CodeSystem"
Description: "Types of parameters specified in histology, cytology and biopsy ServiceRequest resources."
* ^url = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/screening-histology-order-parameter-cs"
* ^status = #active
* ^experimental = true
* ^content = #complete
* ^caseSensitive = true

* #scrn-0069-00001 "Olingan material turi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Тип полученного материала"
  * ^designation[+].language = #en
  * ^designation[=].value = "Received material type"
* #scrn-0069-00002 "Biopsiya kichik turi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Подтип биопсии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Biopsy subtype"
* #scrn-0069-00003 "Jarrohlik aralashuvi turi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Вид хирургического вмешательства"
  * ^designation[+].language = #en
  * ^designation[=].value = "Surgical procedure type"
* #scrn-0069-00004 "Sitologik material turi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Вид цитологического материала"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cytology material type"
* #scrn-0069-00005 "Bachadon bo‘yni biopsiya materiali turi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Тип биопсийного материала шейки матки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cervical biopsy material type"
* #scrn-0069-00006 "Maxsus davolash turi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Вид специального лечения"
  * ^designation[+].language = #en
  * ^designation[=].value = "Special treatment type"
* #scrn-0069-00007 "Davolash sanasi yoki davri"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Дата или период лечения"
  * ^designation[+].language = #en
  * ^designation[=].value = "Treatment date or period"
* #scrn-0069-00008 "Boshqa davolash"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другое лечение"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other treatment"
