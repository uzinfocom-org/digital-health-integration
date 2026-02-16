CodeSystem: DocRefComStatusCS
Id: doc-ref-com-status-cs
Title: "Document Reference Status CodeSystem"
Description: "This field is a mandatory attribute of the FHIR DocumentReference resource and indicates the current state of the document in the system."
* insert SupplementCodeSystemDraft(doc-ref-com-status-cs, $drcs, 5.0.0)

* #registered
  * ^designation[+].language = #ru
  * ^designation[=].value = "Зарегистрировано"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ro'yxatdan o'tgan"

* #partial
  * ^designation[+].language = #ru
  * ^designation[=].value = "Частично"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Qisman"

* #preliminary
  * ^designation[+].language = #ru
  * ^designation[=].value = "Предварительно"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Dastlabki"

* #final
  * ^designation[+].language = #ru
  * ^designation[=].value = "Окончательно"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ohirigi"

* #amended
  * ^designation[+].language = #ru
  * ^designation[=].value = "Изменено"
  * ^designation[0].language = #uz
  * ^designation[=].value = "O'zgartirilgan"

* #corrected
  * ^designation[+].language = #ru
  * ^designation[=].value = "Изменено"
  * ^designation[0].language = #uz
  * ^designation[=].value = "O'zgartirilgan"

* #appended
  * ^designation[+].language = #ru
  * ^designation[=].value = "Добавлено"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Qo'shimcha kiritilgan"

* #cancelled
  * ^designation[+].language = #ru
  * ^designation[=].value = "Отменено"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bekor qilingan"

* #entered-in-error
  * ^designation[+].language = #ru
  * ^designation[=].value = "Введено по ошибке"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xatolik bilan kiritilgan"

* #deprecated
  * ^designation[+].language = #ru
  * ^designation[=].value = "Устаревшее"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Eskirgan"

* #unknown
  * ^designation[+].language = #ru
  * ^designation[=].value = "Неизвестно"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Noma'lum"