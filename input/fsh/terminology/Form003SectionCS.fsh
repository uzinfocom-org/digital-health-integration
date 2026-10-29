CodeSystem: Form003SectionCS
Id: form-003-section-cs
Title: "Form 003 Composition Section Codes"
Description: "Local codes for the top-level sections of the Form 003 inpatient medical record Composition that have no suitable LOINC concept."

* insert OriginalCodeSystemDraft(form-003-section-cs)

* #administrative-information "Ma'muriy ma'lumotlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Административные сведения"
  * ^designation[+].language = #en
  * ^designation[=].value = "Administrative information"

* #admission-screening "Qabulda tekshiruv"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Осмотр при поступлении"
  * ^designation[+].language = #en
  * ^designation[=].value = "Admission screening"

* #status-localis "Mahalliy holat"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Местное состояние"
  * ^designation[+].language = #en
  * ^designation[=].value = "Status localis"

* #department-examination "Bo'lim shifokori ko'rigi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Осмотр врача отделения"
  * ^designation[+].language = #en
  * ^designation[=].value = "Department doctor examination"

* #hospitalization-summary "Gospitalizatsiya yakuni"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Итоги госпитализации"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hospitalization summary"


* #expertise-referral-conclusion "Ekspertizaga yo'naltirish uchun xulosa"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Заключение для направления на экспертизу"
  * ^designation[+].language = #en
  * ^designation[=].value = "Conclusion for referral to medical expertise"

* #special-marks "Alohida belgilar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Особые отметки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Special marks"
