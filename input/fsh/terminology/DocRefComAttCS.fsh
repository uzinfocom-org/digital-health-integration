CodeSystem: DocRefComAttCS
Id: doc-ref-com-att-cs
Title: "DocumentReference Status CodeSystem"
Description: "This field is a mandatory attribute of the FHIR DocumentReference resource and indicates the current state of the document in the system."
* insert SupplementCodeSystemDraft(doc-ref-com-att-cs, $drca, 5.0.0)

* #personal
  * ^designation[0].language = #uz
  * ^designation[=].value = "Shaxsiy"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Личный"

* #professional
  * ^designation[0].language = #uz
  * ^designation[=].value = "Professional"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Профессиональный"

* #legal
  * ^designation[0].language = #uz
  * ^designation[=].value = "Huquqiy"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Юридический"

* #official
  * ^designation[0].language = #uz
  * ^designation[=].value = "Rasmiy"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Официальный"
