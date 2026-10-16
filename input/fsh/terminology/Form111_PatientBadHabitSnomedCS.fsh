CodeSystem: Form111_PatientBadHabitSnomedCS
Id: form111-patient-bad-habit-snomed-cs
Title: "Form 111 Patient Bad Habit SNOMED CT CodeSystem"
Description: "SNOMED CT supplement containing Uzbek and Russian designations for patient bad habits and lifestyle risk factors used in Form 111."

* insert SupplementCodeSystemDraft(
    form111-patient-bad-habit-snomed-cs,
    $sct,
    2026.1.0
)

* #66590003 "Alcohol dependence"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Alkogolizm"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Алкоголизм"

* #1254812006 "Substance dependence"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Giyohvandlik"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Наркомания"

* #18085000 "Compulsive gambling"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Qimorbozlik"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Игромания"

* #310502008 "Diet poor"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Noto'g'ri ovqatlanish"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Нерациональное питание"

* #44276009 "Habitual promiscuity"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Tartibsiz jinsiy hayot"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Беспорядочная половая жизнь"

* #415510005 "Sedentary lifestyle"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Kamharakat turmush tarzi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Пассивный образ жизни"

* #77176002 "Smoker"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Chekish"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Курение"