ValueSet: Form096MaternalDeathTimingVS
Id: maternal-death-timing-vs
Title: "Form 096 Maternal Death Timing"
Description: "Condition.code for the Form 096 field on when a mother who died did so: before, during or after childbirth. Sent only when the mother died."
* insert IntegrationsValueSet(maternal-death-timing-vs)
* ^status = #draft
* ^experimental = true

* $sct#31868001 "Antepartum maternal death"
* $sct#27792001 "Intrapartum maternal death"
* $sct#5866003 "Postpartum maternal death"

// Supplements providing Russian and Uzbek displays.
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form096SnomedSupplementCS)
