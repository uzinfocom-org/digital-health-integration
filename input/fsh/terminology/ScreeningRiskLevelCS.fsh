CodeSystem: ScreeningRiskLevelCS
Id: screening-risk-level-cs
Title: "Screening Risk Level CodeSystem"
Description: "Calculated screening risk levels returned by the Screening system."
* insert OriginalCodeSystemDraft(screening-risk-level-cs)

* #scrn-0081-00001 "Past xavf"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Низкий риск"
  * ^designation[+].language = #en
  * ^designation[=].value = "Low risk"

* #scrn-0081-00002 "O‘rta xavf"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Средний риск"
  * ^designation[+].language = #en
  * ^designation[=].value = "Moderate risk"

* #scrn-0081-00003 "Yuqori xavf"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Высокий риск"
  * ^designation[+].language = #en
  * ^designation[=].value = "High risk"
