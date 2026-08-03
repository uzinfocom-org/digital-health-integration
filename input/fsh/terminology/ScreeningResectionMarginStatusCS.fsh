CodeSystem: ScreeningResectionMarginStatusCS
Id: screening-resection-margin-status-cs
Title: "Screening Resection Margin Status CodeSystem"
Description: "Resection margin status values used in Screening histology conclusions."
* insert OriginalCodeSystemDraft(screening-resection-margin-status-cs)

* #scrn-0076-00001 "Rezeksiya chetlarida o‘sma hujayralari yo‘q"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Опухолевых клеток по краям нет"
  * ^designation[+].language = #en
  * ^designation[=].value = "No tumor cells at resection margins"
* #scrn-0076-00002 "O‘sma rezeksiya chetida"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Опухоль по краю резекции"
  * ^designation[+].language = #en
  * ^designation[=].value = "Tumor at resection margin"
* #scrn-0076-00003 "Aniqlab bo‘lmaydi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Невозможно определить"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cannot be determined"
