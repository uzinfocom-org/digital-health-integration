ValueSet: Form111_GeneralObservationCodeVS
Id: form111-general-observation-code-vs
Title: "Form 111 General Observation Code ValueSet"
Description: "Local value set for general observations used by the Form 111 information system, with Uzbek and Russian designations."

* insert IntegrationsValueSet(form111-general-observation-code-vs)
* ^experimental = true
* ^language = #uz
* ^status = #draft

* include codes from system form111-general-observation-code-cs

* $loinc#49033-4 "Menstrual History - Reported"
* $loinc#85354-9 "Blood pressure panel with all children optional"
* $loinc#8480-6 "Systolic blood pressure"
* $loinc#8462-4 "Diastolic blood pressure"
* $loinc#80427-8 "Employer name [Identifier]"

* $sct#228456002 "Age became sexually active"