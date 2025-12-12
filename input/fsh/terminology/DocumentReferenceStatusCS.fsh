CodeSystem: DocRefStatusCS
Id: doc-ref-status-cs
Title: "Document Reference Status CodeSystem"
Description: "This field is a mandatory attribute of the FHIR DocumentReference resource and indicates the current state of the document in the system."
* ^url = "https://dhp.uz/fhir/integrations/CodeSystem/doc-ref-status-cs"
* insert SupplementCodeSystemDraft(doc-ref-status-cs, $drs, 5.0.0)

* #current
  * ^designation[0].language = #uz
  * ^designation[=].value = "Hozirgi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Текущий"

* #superseded
  * ^designation[0].language = #uz
  * ^designation[=].value = "O'zgartirildi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Заменен"

* #entered-in-error
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xato kiritilgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Введено по ошибке"