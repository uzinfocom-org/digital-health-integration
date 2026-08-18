CodeSystem: TypeResourceCS
Id: type-resource-cs
Title: "Type Resource CodeSystem"
Description: "Record artifact types issued by the narcology and psychiatry registries."

* insert OriginalCodeSystemDraft(type-resource-cs)

* #type-res-0002-0001 "Komissiya qarori"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Решение комиссии"
  * ^designation[+].language = #en
  * ^designation[=].value = "The commission's decision"

// Used by the psychiatry registry only, so it is not part of NarcologyTypeResourceVS.
* #type-res-0002-0002 "Bayonnoma raqami/sud nomi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Номер протокола/название суда"
  * ^designation[+].language = #en
  * ^designation[=].value = "Protocol number/court name"
