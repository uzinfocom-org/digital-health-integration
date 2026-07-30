CodeSystem: ScreeningCervicitisStatusCS
Id: screening-cervicitis-status-cs
Title: "Screening Cervicitis Status CodeSystem"
Description: "CodeSystem for Screening Cervicitis Status"
* insert OriginalCodeSystemDraft(screening-cervicitis-status-cs)

* #scrn-0068-00001 "Servitsit belgilari yo‘q"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Признаков цервицита нет"
  * ^designation[+].language = #en
  * ^designation[=].value = "No signs of cervicitis"

* #scrn-0068-00002 "Servitsit belgilari mavjud"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Есть признаки цервицита"
  * ^designation[+].language = #en
  * ^designation[=].value = "Signs of cervicitis present"
