CodeSystem: Form111SpecialistConclusionCodeCS
Id: form111-specialist-conclusion-code-cs
Title: "Form 111 Specialist Conclusion Codes"
Description: "Local codes for the Form 111 specialist conclusions, which LOINC covers only as consult note documents."

* insert OriginalCodeSystemDraft(form111-specialist-conclusion-code-cs)

* #therapist-conclusion "Terapevt xulosasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Заключение терапевта"
  * ^designation[+].language = #en
  * ^designation[=].value = "Therapist conclusion"

* #dentist-conclusion "Stomatolog xulosasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Заключение стоматолога"
  * ^designation[+].language = #en
  * ^designation[=].value = "Dentist conclusion"

* #venereologist-conclusion "Dermatovenerolog xulosasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Заключение дерматовенеролога"
  * ^designation[+].language = #en
  * ^designation[=].value = "Dermatovenereologist conclusion"
