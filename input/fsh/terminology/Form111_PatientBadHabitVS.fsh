ValueSet: Form111_PatientBadHabitVS
Id: form111-patient-bad-habit-vs
Title: "Form 111 Patient Bad Habits ValueSet"
Description: "Form 111 Patient Bad Habits ValueSet"
* insert IntegrationsValueSet(form111-patient-bad-habit-vs)
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form111SnomedSupplementCS)

* include codes from system form111-patient-bad-habit-cs

// SNOMED CT equivalents of the DMED tokens; the remaining local codes have no standard match.
* $sct#77176002 "Smoker"
* $sct#66590003 "Alcohol dependence"
* $sct#1254812006 "Substance dependence"
* $sct#18085000 "Compulsive gambling"
* $sct#310502008 "Diet poor"
* $sct#44276009 "Habitual promiscuity"
* $sct#415510005 "Sedentary lifestyle"

* ^experimental = true
* ^status = #draft
