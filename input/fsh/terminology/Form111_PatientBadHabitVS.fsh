ValueSet: Form111_PatientBadHabitVS
Id: form111-patient-bad-habit-vs
Title: "Form 111 Patient Bad Habit ValueSet"
Description: "Local value set for patient bad habits and lifestyle risk factors used by the Form 111 information system, with Uzbek and Russian designations."

* insert IntegrationsValueSet(form111-patient-bad-habit-vs)
* ^experimental = true
* ^language = #uz

* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form111_PatientBadHabitSnomedCS)

* $sct#66590003 "Alcohol dependence"
* $sct#1254812006 "Substance dependence"
* $sct#18085000 "Compulsive gambling"
* $sct#310502008 "Diet poor"
* $sct#44276009 "Habitual promiscuity"
* $sct#415510005 "Sedentary lifestyle"
* $sct#77176002 "Smoker"

* include codes from system form111-patient-bad-habit-cs