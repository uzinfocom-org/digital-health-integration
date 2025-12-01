CodeSystem: DocRefComStatusCS
Id: doc-ref-com-status-cs
Title: "Document Reference Composition Status CodeSystem"
Description: "This field is a mandatory attribute of the FHIR DocumentReference resource and indicates the current state of the document in the system."
* insert SupplementCodeSystemDraft(doc-ref-com-status-cs, $drcs, 5.0.0)

* #registered
  * ^designation[0].language = #ru
  * ^designation[=].value = "Зарегистрировано"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Roʻyxatdan oʻtgan"

* #partial
  * ^designation[0].language = #ru
  * ^designation[=].value = "Частично"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Qisman"

* #preliminary
  * ^designation[0].language = #ru
  * ^designation[=].value = "Предварительно"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Dastlabki"

* #final
  * ^designation[0].language = #ru
  * ^designation[=].value = "Окончательно"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ohirigi"

* #amended
  * ^designation[0].language = #ru
  * ^designation[=].value = "Изменено"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Oʻzgartirilgan"

* #corrected
  * ^designation[0].language = #ru
  * ^designation[=].value = "Изменено"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Oʻzgartirilgan"

* #appended
  * ^designation[0].language = #ru
  * ^designation[=].value = "Добавлено"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Qo'shimcha kiritilgan"

* #cancelled
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отменено"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bekor qilingan"

* #entered-in-error
  * ^designation[0].language = #ru
  * ^designation[=].value = "Введено по ошибке"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Xatolik bilan kiritilgan"

* #deprecated
  * ^designation[0].language = #ru
  * ^designation[=].value = "Устаревшее"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Eskirgan"

* #unknown
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неизвестно"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Noma'lum"
