CodeSystem: DispensaryDiseaseNatureCS
Id: dispensary-disease-nature-cs
Title: "Dispensary Disease Nature CodeSystem"
Description: "Nature of the disease recorded when a patient is placed under dispensary observation. Carried on the diagnosis through the [Disease Nature extension](StructureDefinition-disease-nature.html)."
* insert OriginalCodeSystemDraft(dispensary-disease-nature-cs)

* #chr-0128-0001 "Ko'rsatilmagan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Не указано"
  * ^designation[+].language = #en
  * ^designation[=].value = "Unspecified"

* #chr-0128-0002 "O'tkir"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Острое"
  * ^designation[+].language = #en
  * ^designation[=].value = "Acute"

* #chr-0128-0003 "Yarim o'tkir"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Подострое"
  * ^designation[+].language = #en
  * ^designation[=].value = "Subacute"

* #chr-0128-0004 "Hayotda birinchi marta aniqlangan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Впервые в жизни"
  * ^designation[+].language = #en
  * ^designation[=].value = "Diagnosed for the first time in life"

* #chr-0128-0005 "Joriy yilda birinchi marta aniqlangan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Впервые в текущем году"
  * ^designation[+].language = #en
  * ^designation[=].value = "Diagnosed for the first time in the current year"
