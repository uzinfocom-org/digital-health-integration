CodeSystem: EncounterClassOfficialCS
Id: encounter-class-official-cs
Title: "Encounter Class Official CodeSystem"
Description: "CodeSystem for official encounter classes in Uzbekistan healthcare system"
* insert SupplementCodeSystemDraft(encounter-class-official-cs, $v3-ActCode, 8.0.0)

* #AMB "ambulator"
  * ^designation[0].language = #ru
  * ^designation[=].value = "амбулаторный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "ambulatory"

* #IMP "statsionar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "стационарный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "inpatient"