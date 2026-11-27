CodeSystem: HospitalizationPurposeCS
Id: hospitalization-purpose-cs
Title: "Hospitalization Purpose"
Description: "Purpose of a hospitalization referral (Gospitalizatsiya maqsadi): the multi-select checkbox group on the DMED hospitalization referral that Form 027 item 26 (Shifoxonaga yotqazish) refers to. Used in ServiceRequest.reason of the hospitalization request. No UZ Core code system covers the whole list: encounter-type-cs shares Diagnostika, Konsultativ and Davolash but lacks the other four."
* insert OriginalCodeSystemDraft(hospitalization-purpose-cs)

* #diagnostics "Diagnostika"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Диагностика"
  * ^designation[+].language = #en
  * ^designation[=].value = "Diagnostics"

* #consultation "Konsultativ"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Консультация"
  * ^designation[+].language = #en
  * ^designation[=].value = "Consultation"

* #treatment "Davolash"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лечение"
  * ^designation[+].language = #en
  * ^designation[=].value = "Treatment"

* #examination "Ko'rik"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Осмотр"
  * ^designation[+].language = #en
  * ^designation[=].value = "Examination"

* #dispensary-control "D-nazorat"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Д-контроль"
  * ^designation[+].language = #en
  * ^designation[=].value = "Dispensary control"

* #delivery "Tug'ruq"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Родоразрешение"
  * ^designation[+].language = #en
  * ^designation[=].value = "Delivery"

* #other "Boshqa"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другое"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other"
