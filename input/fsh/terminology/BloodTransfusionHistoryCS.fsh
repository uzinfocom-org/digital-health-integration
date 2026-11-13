CodeSystem: BloodTransfusionHistoryCS
Id: blood-transfusion-history-cs
Title: "Blood transfusion history categories"
Description: "Local categories describing a recipient's previous blood transfusions."
* insert OriginalCodeSystemDraft(blood-transfusion-history-cs)

* #bldcomp-0003-00001 "Avval qon quyilmagan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Трансфузий не было"
  * ^designation[+].language = #en
  * ^designation[=].value = "No previous transfusions"
* #bldcomp-0003-00002 "Reaksiyasiz qon quyishlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Трансфузии без реакций"
  * ^designation[+].language = #en
  * ^designation[=].value = "Previous transfusions without reactions"
* #bldcomp-0003-00003 "Reaksiya yoki asoratlar bilan qon quyishlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Трансфузии с реакциями/осложнениями"
  * ^designation[+].language = #en
  * ^designation[=].value = "Previous transfusions with reactions/complications"
* #bldcomp-0003-00004 "Ma’lumotlar mavjud emas"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Данные отсутствуют"
  * ^designation[+].language = #en
  * ^designation[=].value = "Data absent"
