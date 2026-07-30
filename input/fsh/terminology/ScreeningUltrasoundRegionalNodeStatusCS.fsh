CodeSystem: ScreeningUltrasoundRegionalNodeStatusCS
Id: screening-ultrasound-regional-node-status-cs
Title: "Screening Ultrasound Regional Node Status CodeSystem"
Description: "CodeSystem for Screening Ultrasound Regional Node Status"
* insert OriginalCodeSystemDraft(screening-ultrasound-regional-node-status-cs)

* #scrn-0050-00001 "Vizualizatsiya qilinmaydi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Не лоцируются"
  * ^designation[+].language = #en
  * ^designation[=].value = "Not visualized"

* #scrn-0050-00002 "Vizualizatsiya qilinadi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лоцируются"
  * ^designation[+].language = #en
  * ^designation[=].value = "Visualized"
  
* #scrn-0050-00003 "Kattalashgan / o‘zgargan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Увеличены / изменены"
  * ^designation[+].language = #en
  * ^designation[=].value = "Enlarged / changed"
