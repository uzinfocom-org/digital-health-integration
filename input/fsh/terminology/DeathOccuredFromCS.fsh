CodeSystem: DeathOccuredFromCS
Id: death-occured-from-cs
Title: "Death Occurred From CodeSystem"
Description: "Uzbek and Russian designations for selected SNOMED cause of death codes"

* insert SupplementCodeSystemDraft(death-occured-from-cs, http://snomed.info/sct, 20240131)

* #38605008 "Natural death"
  * ^designation[0].language = #ru
  * ^designation[=].value = "От болезни"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Kasallikdan"

* #7878000 "Accidental death"
  * ^designation[0].language = #ru
  * ^designation[=].value = "От несчастного случая вне работы"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ishdan tashqari baxtsiz hodisadan"

* #27935005 "Suicide"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Самоубийство"
  * ^designation[+].language = #uz
  * ^designation[=].value = "O'z joniga qasd qilish"

* #44301001 "Homicide"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Убийство"
  * ^designation[+].language = #uz
  * ^designation[=].value = "O'z o'zini o'ldirish"

* #65037004 "Undetermined manner of death"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Причина смерти не установлена"
  * ^designation[+].language = #uz
  * ^designation[=].value = "O'lim sababi aniqlanmadi"

* #371128008 "Occupational injury"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Производственная травма"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ish joyida jarohatlanish"