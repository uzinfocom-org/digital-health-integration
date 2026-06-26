CodeSystem: DeathPlaceTypeCS
Id: death-place-type-cs
Title: "Death Place Type CodeSystem"
Description: "Uzbek and Russian designations for selected SNOMED death place codes"

* insert SupplementCodeSystemDraft(death-place-type-cs, http://snomed.info/sct, 20240131)

* #183676005 "Died in hospital"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Больница"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Shifoxona"

* #876879006 "Died at home"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Дома"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Uy"

* #876885004 "Died in street"
  * ^designation[0].language = #ru
  * ^designation[=].value = "В пути"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Yo'lda"

* #74964007 "Other"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другое"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Boshqa"