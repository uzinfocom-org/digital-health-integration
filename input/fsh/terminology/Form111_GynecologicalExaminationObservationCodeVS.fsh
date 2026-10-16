ValueSet: Form111_GynecologicalExaminationObservationCodeVS
Id: form111-gynecological-examination-observation-code-vs
Title: "Form 111 Gynecological Examination Observation Code ValueSet"
Description: "Local value set for gynecological examination observations used by the Form 111 information system, with Uzbek and Russian designations."

* insert IntegrationsValueSet(form111-gynecological-examination-observation-code-vs)
* ^experimental = true
* ^language = #uz
* ^status = #draft

* include codes from system form111-gynecological-examination-observation-code-cs

* $loinc#10193-1 "Physical findings of Breasts Narrative"
* $loinc#11401-7 "Physical findings of Female genitalia Narrative"