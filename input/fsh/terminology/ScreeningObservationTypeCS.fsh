CodeSystem: ScreeningObservationTypeCS
Id: screening-observation-type-cs
Title: "Observation Types CodeSystem"
Description: "Local terminology for clinical observation types (BI-RADS, Height, Weight, etc.)"
* insert OriginalCodeSystemDraft(screening-observation-type-cs)

* #scr-obser-1 "BI-RADS"
  * ^designation[0].language = #ru
  * ^designation[=].value = "BI-RADS"
  * ^designation[+].language = #en
  * ^designation[=].value = "Breast Imaging and Reporting and Data System"

* #scr-obser-2 "Ko'krak tuzilishi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Структура груди"
  * ^designation[+].language = #en
  * ^designation[=].value = "Mammographic breast density"

* #scr-obser-3 "Tasvir sifati"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Качество снимка"
  * ^designation[+].language = #en
  * ^designation[=].value = "Quality of visual image"

* #scr-obser-4 "Bo'y"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Рост"
  * ^designation[+].language = #en
  * ^designation[=].value = "Body height"

* #scr-obser-5 "Vazn"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Вес"
  * ^designation[+].language = #en
  * ^designation[=].value = "Body weight"

* #scr-obser-6 "TMI"
  * ^designation[0].language = #ru
  * ^designation[=].value = "ИМТ"
  * ^designation[+].language = #en
  * ^designation[=].value = "Body mass index"