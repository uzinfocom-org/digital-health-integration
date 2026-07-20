CodeSystem: ScreeningTransformationZoneCS
Id: screening-transformation-zone-cs
Title: "Transformation Zone CodeSystem"
Description: "Local terminology for cervical transformation zone types"
* insert OriginalCodeSystemDraft(screening-transformation-zone-cs)

* #scr-tz-1 "TZ1 (To'liq ko'rinadi)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Тип 1 (полностью видна)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Type 1 (fully visible)"

* #scr-tz-2 "TZ2 (Qisman kanalda)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Тип 2 (частично в канале)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Type 2 (partially in canal)"

* #scr-tz-3 "TZ3 (Ko'rinmaydi / chuqur)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Тип 3 (не видна / глубоко)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Type 3 (not visible / deep)"