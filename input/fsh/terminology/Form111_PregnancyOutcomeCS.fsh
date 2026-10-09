CodeSystem: Form111_PregnancyOutcomeCS
Id: form111-pregnancy-outcome-cs
Title: "Form 111 Pregnancy Outcome Code"
Description: "Form 111 Pregnancy Outcome Code for clinical documents and other knowledge resources in Uzbekistan integrations. Based on Ministry of Health Order 399. Covers pregnancy outcomes without a suitable SNOMED CT concept; other outcomes use SNOMED CT directly (see form111-pregnancy-outcome-vs)."
* insert OriginalCodeSystemDraft(form111-pregnancy-outcome-cs)

* #chr-0024-00001 "Bola o'limi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Child death"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Смерть ребенка"

* #chr-0024-00002 "Ona o'limi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Maternal death"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Смерть матери"
