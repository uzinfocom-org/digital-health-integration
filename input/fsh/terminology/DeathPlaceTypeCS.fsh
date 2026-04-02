CodeSystem: DeathPlaceTypeCS
Id: death-place-type-cs
Title: "Death Place Type CodeSystem"
Description: "Uzbek and Russian designations for selected SNOMED death place codes"

* insert SupplementCodeSystemDraft(death-place-type-cs, http://snomed.info/sct, 20240131)

* #183676005
  * ^designation[0].language = #ru
  * ^designation[=].value = "Больница"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Shifixona"

* #876879006
  * ^designation[0].language = #ru
  * ^designation[=].value = "Дома"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Uy"

* #876885004
  * ^designation[0].language = #ru
  * ^designation[=].value = "В пути"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Yo'lda"

* #74964007
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другое"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Boshqa"