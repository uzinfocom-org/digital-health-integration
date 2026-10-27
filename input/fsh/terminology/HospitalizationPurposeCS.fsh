CodeSystem: HospitalizationPurposeCS
Id: hospitalization-purpose-cs
Title: "Hospitalization Purpose"
Description: "Purpose of a hospitalization referral (Gospitalizatsiya maqsadi), the multi-select checkbox group on the DMED hospitalization referral form, as verified in the live DMED UI on 2026-09-18: Diagnostika / Konsultativ / Davolash / Ko'rik / D-nazorat / Tug'ruq / Boshqa. Used in ServiceRequest.reason of the hospitalization referral referenced from Form 027 (item 25, Shifoxonaga yotqazish). No UZ Core code system covers this list: encounter-type-cs shares three concepts (Diagnostika, Konsultativ, Davolash) but lacks the other four, and encounter-purpose-cs only shares Diagnostika, so the seven values are kept together here. Uzbek display text follows existing repository terminology (Diagnostika, Konsultativ and Davolash as in EpisodeOfCareTypeCS). The field is not printed on the Form 027 blank and is not present in any version of the Form 027 mapping spreadsheet; the code system stays draft until DHP confirms the values."
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
