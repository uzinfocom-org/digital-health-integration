CodeSystem: NewbornDailyObservationComponentCS
Id: newborn-daily-observation-component-cs
Title: "Form097 Newborn Daily Observation Component"
Description: "Local codes identifying the daily newborn observation panel and its components, Form097 newborn development record."

* insert OriginalCodeSystemDraft(newborn-daily-observation-component-cs)

* #daily-observation-panel "Chaqaloqni kundalik kuzatuv paneli"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Панель ежедневного наблюдения за новорождённым"
  * ^designation[+].language = #en
  * ^designation[=].value = "Daily newborn observation panel"

* #umbilical-cord-separation-date "Kindik ajralish vaqti"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Время отделения пуповины"
  * ^designation[+].language = #en
  * ^designation[=].value = "Umbilical cord separation date"
