CodeSystem: PlaceOfIncidentCS
Id: place-of-incident-cs
Title: "Place of Incident CodeSystem"
Description: "Collection of information on the place of incident for healthcare events in Uzbekistan"
* insert OriginalCodeSystemDraft(place-of-incident-cs)

* #emdoc-0004-0001 "ish joyida"
  * ^designation[0].language = #ru
  * ^designation[=].value = "на рабочем месте"
  * ^designation[+].language = #en
  * ^designation[=].value = "at the workplace"

* #emdoc-0004-0002 "kundalik hayotda"
  * ^designation[0].language = #ru
  * ^designation[=].value = "в повседневной жизни"
  * ^designation[+].language = #en
  * ^designation[=].value = "in everyday life"

* #emdoc-0004-0003 "ishga borayotgan yo'lda"
  * ^designation[0].language = #ru
  * ^designation[=].value = "по дороге на работу"
  * ^designation[+].language = #en
  * ^designation[=].value = "on the way to work"