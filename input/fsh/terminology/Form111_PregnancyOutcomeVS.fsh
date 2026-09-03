ValueSet: Form111_PregnancyOutcomeVS
Id: form111-pregnancy-outcome-vs
Title: "Form 111 Pregnancy Outcome ValueSet"
Description: "Form 111 Pregnancy Outcome ValueSet for clinical documents and other knowledge resources in Uzbekistan integrations. Based on Ministry of Health Order 399. Covers the outcome of the current pregnancy: termination, delivery, miscarriage, or maternal/child death."
* insert IntegrationsValueSet(form111-pregnancy-outcome-vs)

* include codes from system form111-pregnancy-outcome-cs
* $sct#386639001 "Termination of pregnancy"
* $sct#3950001 "Delivery"
* $sct#17369002 "Miscarriage"

* ^experimental = true
* ^status = #draft
