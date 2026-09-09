CodeSystem: SilvermanRespiratorySeverityCS
Id: silverman-respiratory-severity-cs
Title: "Form097 Silverman Respiratory Severity"
Description: "Local codes for silverman respiratory severity, Form097 newborn development record."

* insert OriginalCodeSystemDraft(silverman-respiratory-severity-cs)

* #chr-0100-0001 "0 ball — nafas yetishmovchiligi yo'q"
  * ^designation[0].language = #ru
  * ^designation[=].value = "0 баллов — дыхательная недостаточность отсутствует"
  * ^designation[+].language = #en
  * ^designation[=].value = "0 points — no respiratory distress"

* #chr-0100-0002 "1–3 ball — boshlang'ich belgilar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "1–3 балла — начальные признаки"
  * ^designation[+].language = #en
  * ^designation[=].value = "1–3 points — initial signs"

* #chr-0100-0003 "4–6 ball — o'rtacha og'irlik"
  * ^designation[0].language = #ru
  * ^designation[=].value = "4–6 баллов — средняя тяжесть"
  * ^designation[+].language = #en
  * ^designation[=].value = "4–6 points — moderate severity"

* #chr-0100-0004 "6 balldan yuqori — og'ir"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Более 6 баллов — тяжёлая степень"
  * ^designation[+].language = #en
  * ^designation[=].value = "More than 6 points — severe"