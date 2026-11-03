CodeSystem: Form111_SocialObservationCodeCS
Id: form111-social-observation-code-cs
Title: "Social Observation Code CodeSystem"
Description: "Form 111 Social Observation Code CodeSystem"
* insert OriginalCodeSystemDraft(form111-social-observation-code-cs)

* #chr-0029-00001 "Turmush o'rtog'ining sog'ligi va zararli odatlari"
  * ^designation[0].language = #en
  * ^designation[=].value = "Spouse health and harmful habits"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Состояние здоровья и вредные привычки супруга"

* #chr-0029-00003 "Mehnat sharoitlari"
  * ^designation[0].language = #en
  * ^designation[=].value = "Working conditions"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Условия труда"

* #chr-0029-00004 "Ish joyi telefon raqami"
  * ^designation[0].language = #en
  * ^designation[=].value = "Workplace phone number"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Телефон места работы"

// Second coding next to SNOMED CT 14679004 "Occupation" until the core can tell specialty from position (uzinfocom-org/digital-health-ig#391).
* #chr-0029-00005 "Mutaxassisligi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Specialty"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Специальность"

* #chr-0029-00006 "Lavozimi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Position"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Должность"
