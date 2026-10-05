CodeSystem: NewbornBirthAnthropometryCS
Id: newborn-birth-anthropometry-cs
Title: "Form097 Newborn Birth And Anthropometry"
Description: "Local codes for newborn birth and anthropometry, Form097 newborn development record."

* insert OriginalCodeSystemDraft(newborn-birth-anthropometry-cs)

* #chr-0122-0001 "Birinchi emizishgacha bo'lgan vaqt"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Время до первого прикладывания к груди"
  * ^designation[+].language = #en
  * ^designation[=].value = "Time to first breastfeeding"

* #chr-0122-0002 "Emizilmaslik sababi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Причина отсутствия грудного вскармливания"
  * ^designation[+].language = #en
  * ^designation[=].value = "Reason for not breastfeeding"

* #chr-0122-0003 "Teri-teriga kontakt davomiyligi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Продолжительность контакта кожа к коже"
  * ^designation[+].language = #en
  * ^designation[=].value = "Duration of skin-to-skin contact"

* #chr-0122-0004 "Ona va chaqaloqning teri-teriga kontakti"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Контакт кожа к коже матери и новорождённого"
  * ^designation[+].language = #en
  * ^designation[=].value = "Skin-to-skin contact between mother and newborn"

// Fhir_mapping row 53: spec says "SNOMED Chest circumference" but gives no code and
// no exact active LOINC/SNOMED concept could be confirmed - governed local code.
* #chr-0122-0005 "Ko'krak qafasi aylanasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Окружность грудной клетки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Chest circumference"