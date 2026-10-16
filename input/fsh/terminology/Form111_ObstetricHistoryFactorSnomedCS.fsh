CodeSystem: Form111_ObstetricHistoryFactorSnomedCS
Id: form111-obstetric-history-factor-snomed-cs
Title: "Form 111 Obstetric History Factor SNOMED CT CodeSystem"
Description: "SNOMED CT supplement containing Uzbek and Russian designations for obstetric history factors used in Form 111."

* insert SupplementCodeSystemDraft(
    form111-obstetric-history-factor-snomed-cs,
    $sct,
    2026.1.0
)

* #40733004 "Infectious disease"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yuqumli kasallik"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Инфекционное заболевание"

* #8619003 "Infertile"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bepushtlik"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Бесплодие"

* #276506001 "Neonatal death"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Neonatal o'lim"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Неонатальная смерть"

* #16607004 "Missed miscarriage"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Rivojlanmayotgan homiladorlik"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Неразвивающаяся беременность"

* #161765003 "Past pregnancy history of premature delivery"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Anamnezda muddatidan oldin tug'ruq"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Преждевременные роды в анамнезе"

* #161743003 "Past pregnancy history of stillbirth"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Anamnezda o'lik tug'ilish"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Мертворождение в анамнезе"

* #37849005 "Congenital uterine anomaly"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bachadonning tug'ma anomaliyasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Врожденная аномалия матки"