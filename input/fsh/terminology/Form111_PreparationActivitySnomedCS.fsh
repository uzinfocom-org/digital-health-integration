CodeSystem: Form111_PreparationActivitySnomedCS
Id: form111-preparation-activity-snomed-cs
Title: "Form 111 Preparation Activity SNOMED CT CodeSystem"
Description: "SNOMED CT supplement containing Uzbek and Russian designations for preparation activities used in Form 111."

* insert SupplementCodeSystemDraft(
    form111-preparation-activity-snomed-cs,
    $sct,
    2026.1.0
)

* #183329005 "Antenatal exercises"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Tug'ruqqa jismoniy tayyorgarlik"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Физическая подготовка к родам"

* #408779007 "Psychoprophylaxis"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Psixoprofilaktik tayyorgarlik"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Психопрофилактическая подготовка"

* #363695005 "Ultraviolet light therapy"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ultrabinafsha nurlanish"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Ультрафиолетовое облучение"