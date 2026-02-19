CodeSystem: ConclusionsCS
Id: conclusions-cs
Title: "Sick Leave Conclusion CodeSystem"
Description: "CodeSystem for sick leave conclusions in Uzbekistan healthcare system"
* insert OriginalCodeSystemDraft(conclusions-cs)

* #emdoc-0008-0001 "Birinchi marta yoki qaytadan nogironligi bo'lgan shaxs sifatida aniqlangan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Первый раз или повторно идентифицирован как человек с инвалидностью"
  * ^designation[+].language = #en
  * ^designation[=].value = "Identified as a person with disability for the first time or repeatedly"

* #emdoc-0008-0002 "Nogironligi bo'lgan shaxs sifatida aniqlangan (I guruh)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Идентифицирован как человек с инвалидностью первой группы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Identified as a person with disability, Group I"

* #emdoc-0008-0003 "Nogironligi bo'lgan shaxs sifatida aniqlangan (II guruh)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Идентифицирован как человек с инвалидностью второй группы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Identified as a person with disability, Group II"

* #emdoc-0008-0004 "Nogironligi bo'lgan shaxs sifatida aniqlangan (III guruh)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Идентифицирован как человек с инвалидностью третьей группы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Identified as a person with disability, Group III"

* #emdoc-0008-0005 "Nogironligi bo'lgan shaxs sifatida aniqlanmagan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Не идентифицирован как человек с инвалидностью"
  * ^designation[+].language = #en
  * ^designation[=].value = "Not identified as a person with disability"

* #emdoc-0008-0006 "Mehnatga layoqatsizlik varaqasi uzaytirildi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Листок нетрудоспособности продлен"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sick leave certificate extended"