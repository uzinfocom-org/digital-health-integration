ValueSet: Form111_PreviousPregnancyOutcomeVS
Id: form111-previous-pregnancy-outcome-vs
Title: "Form 111 Previous Pregnancy Outcome ValueSet"
Description: "Outcomes explicitly supported by DMED previous_pregnancies[].pregnancy_outcome. This set does not infer abortion subtype, miscarriage, or maternal/child death from the coarse source token."
* insert IntegrationsValueSet(form111-previous-pregnancy-outcome-vs)

* $sct#386639001 "Termination of pregnancy"
* $sct#3950001 "Birth"
* $sct#17369002 "Miscarriage"

* ^experimental = true
* ^status = #draft
