CodeSystem: Form111_NewbornBirthConditionSnomedCS
Id: form111-newborn-birth-condition-snomed-cs
Title: "Form 111 Newborn Birth Condition SNOMED CT CodeSystem"
Description: "SNOMED CT supplement containing Uzbek and Russian designations for newborn birth conditions used in Form 111."

* insert SupplementCodeSystemDraft(
    form111-newborn-birth-condition-snomed-cs,
    $sct,
    2026.1.0
)

* #713202001 "Antepartum stillbirth"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Tug'ruq boshlanishidan oldingi homila o'limi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Антенатальная гибель плода"

* #237362003 "Fetal intrapartum death"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Tug'ruq vaqtida homila o'limi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Интранатальная гибель плода"

* #281050002 "Livebirth"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Tirik tug'ilish"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Живорождение"