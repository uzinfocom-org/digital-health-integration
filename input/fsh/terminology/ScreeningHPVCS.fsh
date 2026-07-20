CodeSystem: ScreeningHPVCS
Id: screening-hpv-cs
Title: "HPV Results CodeSystem"
Description: "Local terminology for Human Papillomavirus (HPV) test results"

* insert OriginalCodeSystemDraft(screening-hpv-cs)

* #scr-hpv-1 "Yaroqsiz"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Недействительный"
  * ^designation[+].language = #en
  * ^designation[=].value = "Invalid"

* #scr-hpv-2 "Manfiy"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отрицательный"
  * ^designation[+].language = #en
  * ^designation[=].value = "Negative"

* #scr-hpv-3 "Musbat"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Положительный"
  * ^designation[+].language = #en
  * ^designation[=].value = "Positive"