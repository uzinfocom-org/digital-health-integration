CodeSystem: EncounterPurposeCS
Id: encounter-purpose-cs
Title: "Encounter Purpose Code System"
Description: "A code system representing the purpose of patient encounters in healthcare (uz/ru/en)"
* insert OriginalCodeSystemDraft(encounter-purpose-cs)

* #enc-001 "Diagnostika"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Диагностика"
  * ^designation[+].language = #en
  * ^designation[=].value = "Diagnostics"

* #enc-002 "Majburiy davolash"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Принудительное лечение"
  * ^designation[+].language = #en
  * ^designation[=].value = "Mandatory treatment"

* #enc-003 "Ixtiyoriy davolash"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Добровольное лечение"
  * ^designation[+].language = #en
  * ^designation[=].value = "Voluntary treatment"

* #enc-004 "Ekspertiza"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Экспертиза"
  * ^designation[+].language = #en
  * ^designation[=].value = "Expertise"