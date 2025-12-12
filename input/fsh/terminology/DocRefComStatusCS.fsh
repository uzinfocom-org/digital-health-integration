CodeSystem: DocRefComStatusCS
Id: doc-ref-com-status-cs
Title: "Document Reference Status CodeSystem"
Description: "This field is a mandatory attribute of the FHIR DocumentReference resource and indicates the current state of the document in the system."
* ^url = "https://dhp.uz/fhir/integrations/CodeSystem/doc-ref-com-status-cs"
* insert SupplementCodeSystemDraft(doc-ref-com-status-cs, $drcs, 5.0.0)

* #registered
  * ^designation[0].language = #uz
  * ^designation[=].value = "Roʻyxatdan oʻtgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Зарегистрировано"

* #partial
  * ^designation[0].language = #uz
  * ^designation[=].value = "Qisman"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Частично"

* #preliminary
  * ^designation[0].language = #uz
  * ^designation[=].value = "Dastlabki"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Предварительно"

* #final
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ohirigi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Окончательно"

* #amended
  * ^designation[0].language = #uz
  * ^designation[=].value = "Oʻzgartirilgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Изменено"

* #corrected
  * ^designation[0].language = #uz
  * ^designation[=].value = "Oʻzgartirilgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Изменено"

* #appended
  * ^designation[0].language = #uz
  * ^designation[=].value = "Qo'shimcha kiritilgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Добавлено"

* #cancelled
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bekor qilingan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Отменено"

* #entered-in-error
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xatolik bilan kiritilgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Введено по ошибке"

* #deprecated
  * ^designation[0].language = #uz
  * ^designation[=].value = "Eskirgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Устаревшее"

* #unknown
  * ^designation[0].language = #uz
  * ^designation[=].value = "Noma'lum"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Неизвестно"