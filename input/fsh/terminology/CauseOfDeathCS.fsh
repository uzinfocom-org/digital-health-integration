CodeSystem: CauseOfDeathCS
Id: cause-of-death-cs
Title: "Cause of Death CodeSystem"
Description: "List of causes of death CodeSystem with translations in Russian and English languages"

* insert OriginalCodeSystemDraft(cause-of-death-cs)

* #death0003-00001 "O'limga bevosita olib kelgan kasallik yoki holat"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Болезнь или состояние, непосредственно приведшее к смерти"
  * ^designation[0].language = #en
  * ^designation[=].value = "Disease or condition that directly led to death"

* #death0003-00002 "Ko'rsatilgan sababga olib kelgan patologik holatlar"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Патологические состояния, которые привели к возникновению указанной причины"
  * ^designation[0].language = #en
  * ^designation[=].value = "Pathological conditions that led to the specified cause"

* #death0003-00003 "O'limning asosiy sababi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Основная причина смерти"
  * ^designation[0].language = #en
  * ^designation[=].value = "Underlying cause of death"

* #death0003-00004 "O'limga olib kelgan, ammo unga olib kelgan kasallik yoki patologik holat bilan bog'liq bo'lmagan boshqa muhim holatlar"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Прочие важные состояния, способствовавшие смерти, но не связанные с болезнью или патологическим состоянием, приведшим к ней"
  * ^designation[0].language = #en
  * ^designation[=].value = "Other important conditions that contributed to death but were not related to the disease or pathological condition that led to it"