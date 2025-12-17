CodeSystem: ObservationUCUMCS
Id: observation-ucum-cs
Title: "Observation UCUM units"
Description: "Units of measurement used to measure the length and weight of a baby at birth"
* insert OriginalCodeSystemDraft(observation-ucum-cs)

* #birth002.0001 "Tana vazni"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Масса тела"
  * ^designation[0].language = #en
  * ^designation[=].value = "Weight"

* #birth002.0002 "Bo'y"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Рост"
  * ^designation[0].language = #en
  * ^designation[=].value = "Length / Height"

* #birth002.0003 "Homiladorlik yoshi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Гестационный возраст"
  * ^designation[0].language = #en
  * ^designation[=].value = "Gestational Age"

* #birth002.0004 "Apgar shkalasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Apgar Score"
  * ^designation[0].language = #en
  * ^designation[=].value = "Apgar Score"
