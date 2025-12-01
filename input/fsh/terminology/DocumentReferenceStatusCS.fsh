CodeSystem: DocRefStatusCS
Id: doc-ref-status-cs
Title: "Document Reference Status CodeSystem"
Description: "This field is a mandatory attribute of the FHIR DocumentReference resource and indicates the current state of the document in the system."
* insert SupplementCodeSystemDraft(doc-ref-status-cs, $drs, 5.0.0)

* #current
  * ^designation[0].language = #ru
  * ^designation[=].value = "Текущий"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Hozirgi"

* #superseded
  * ^designation[0].language = #ru
  * ^designation[=].value = "Заменен"
  * ^designation[+].language = #uz
  * ^designation[=].value = "O'zgartirildi"

* #entered-in-error
  * ^designation[0].language = #ru
  * ^designation[=].value = "Введено по ошибке"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Xato kiritilgan"
