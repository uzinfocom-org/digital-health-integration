CodeSystem: ScreeningBodySiteCS
Id: screening-body-site-cs
Title: "Observed Body Site"
Description: "Local translations for observed body part codes"

* insert SupplementCodeSystemDraft(screening-body-site-cs, http://snomed.info/sct, 5.0.0)

* #80248007 "Left breast"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Левая грудь"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Chap ko'krak"

* #73056007 "Right breast"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Правая грудь"
  * ^designation[+].language = #uz
  * ^designation[=].value = "O'ng ko'krak"