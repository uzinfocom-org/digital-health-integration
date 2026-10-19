CodeSystem: FormSectionsCS
Id: form-sections-cs
Title: "Form Sections"
Description: "Local codes for form fields and observation values that have no dedicated concept in LOINC or SNOMED CT, used across Ministry of Health Order 399 form implementations."
* insert OriginalCodeSystemDraft(form-sections-cs)

* #destination-country "Destination country"
  * ^designation[0].language = #en
  * ^designation[=].value = "Destination country"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Страна назначения"

* #trip-period "Business trip period"
  * ^designation[0].language = #en
  * ^designation[=].value = "Business trip period"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Срок командировки"

* #travel-clearance "Travel clearance"
  * ^designation[0].language = #en
  * ^designation[=].value = "Travel clearance"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Разрешение на выезд"

* #allowed "Allowed"
  * ^designation[0].language = #en
  * ^designation[=].value = "Allowed"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Разрешено"

* #denied "Denied"
  * ^designation[0].language = #en
  * ^designation[=].value = "Denied"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Не разрешено"