CodeSystem: EncounterClassOfficialCS
Id: encounter-class-official-cs
Title: "Encounter Class Official CodeSystem"
Description: "Uzbek and Russian designations for encounter class codes"

* insert SupplementCodeSystemDraft(
    encounter-class-official-cs,
    $v3-ActCode,
    3.0.0
)

* #AMB
  * ^designation[0].language = #ru
  * ^designation[=].value = "амбулаторный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ambulator"

* #IMP
  * ^designation[0].language = #ru
  * ^designation[=].value = "стационарный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Statsionar"