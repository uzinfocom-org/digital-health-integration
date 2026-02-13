CodeSystem: EncounterClassLocalCS
Id: encounter-class-local-cs
Title: "Encounter Class Local CodeSystem"
Description: "CodeSystem for local encounter classes in Uzbekistan healthcare system"
* insert OriginalCodeSystemDraft(encounter-class-local-cs)

* #emdoc-0006-0001 "sanatoriy"
  * ^designation[0].language = #ru
  * ^designation[=].value = "санаторный"
  * ^designation[+].language = #en
  * ^designation[=].value = "sanatorium"

* #emdoc-0006-0002 "boshqa"
  * ^designation[0].language = #ru
  * ^designation[=].value = "другой"
  * ^designation[+].language = #en
  * ^designation[=].value = "other"