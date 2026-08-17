CodeSystem: LocalObservationCodeCS
Id: local-observation-code
Title: "Local Observation Code System"
Description: "Observation.code identifiers used across MoH forms where LOINC or SNOMED CT have no suitable code (uz/ru/en). Currently used in [Form 066-1 - Psychiatric/Narcological Discharge Statistical Card](StructureDefinition-form-066-1-psychiatric-discharge-composition.html)."
* insert OriginalCodeSystemDraft(local-observation-code)

* #num-previous-hospitalizations "Avval necha marta shifoxonada davolangan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Количество предыдущих госпитализаций"
  * ^designation[+].language = #en
  * ^designation[=].value = "Number of previous hospitalizations"
