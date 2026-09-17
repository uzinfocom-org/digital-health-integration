CodeSystem: DMEDDispensaryDiseaseNatureCS
Id: dmed-dispensary-disease-nature-cs
Title: "DMED Dispensary Disease Nature CodeSystem"
Description: "Disease nature values exactly as DMED sends them in the `disease_nature` field of a dispensary registration record. [dmed-dispensary-disease-nature-to-dhp](ConceptMap-dmed-dispensary-disease-nature-to-dhp.html) translates them to DHP codes."
* insert OriginalCodeSystemDraft(dmed-dispensary-disease-nature-cs)

* #unspecified "Ko'rsatilmagan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Не указано"
  * ^designation[+].language = #en
  * ^designation[=].value = "Unspecified"

* #acute "O'tkir"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Острое"
  * ^designation[+].language = #en
  * ^designation[=].value = "Acute"

* #subacute "Yarim o'tkir"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Подострое"
  * ^designation[+].language = #en
  * ^designation[=].value = "Subacute"

* #life-firsttime "Hayotda birinchi marta aniqlangan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Впервые в жизни"
  * ^designation[+].language = #en
  * ^designation[=].value = "Diagnosed for the first time in life"

* #year-firsttime "Joriy yilda birinchi marta aniqlangan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Впервые в текущем году"
  * ^designation[+].language = #en
  * ^designation[=].value = "Diagnosed for the first time in the current year"
