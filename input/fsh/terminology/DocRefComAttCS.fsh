CodeSystem: DocRefComAttCS
Id: doc-ref-com-att-cs
Title: "DocumentReference Status CodeSystem"
Description: "This field is a mandatory attribute of the FHIR DocumentReference resource and indicates the current state of the document in the system."
* insert SupplementCodeSystemDraft(doc-ref-com-att-cs, $drca, 5.0.0)

* #personal
  * ^designation[0].language = #ru
  * ^designation[=].value = "Личный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Shaxsiy"

* #professional
  * ^designation[0].language = #ru
  * ^designation[=].value = "Профессиональный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Professional"

* #legal
  * ^designation[0].language = #ru
  * ^designation[=].value = "Юридический"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Huquqiy"

* #official
  * ^designation[0].language = #ru
  * ^designation[=].value = "Официальный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Rasmiy"
