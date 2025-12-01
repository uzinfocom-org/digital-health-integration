CodeSystem: ObservationUCUMCS
Id: observation-ucum-cs
Title: "Observation UCUM units"
Description: "Units of measurement used to measure the length and weight of a baby at birth"
* ^url = "https://terminology.dhp.uz/CodeSystem/observation-ucum-cs"
* ^experimental = true
* ^status = #active
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^language = #en

* #birth002.0001 "Weight"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Масса тела"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tana vazni"

* #birth002.0002 "Length / Height"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Рост"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bo'y"

* #birth002.0003 "Gestational Age"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Гестационный возраст"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Homiladorlik yoshi"

* #birth002.0004 "Apgar Score"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Apgar Score"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Apgar shkalasi"
