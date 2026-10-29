ValueSet: Form096PregnancyObstetricHistoryCodeVS
Id: pregnancy-obstetric-history-code-vs
Title: "Form 096 Medical and Obstetric History Codes"
Description: "Observation.code for the Form 096 history fields: spouse health, menarche, age at first sexual activity, previous pregnancies, abortions and their outcomes, weights of previous newborns, gravidity, parity, last menstrual period, quickening, number of prenatal visits, employer and occupation. Codes shared with Form 111 are the same as in Form 111. Previous pregnancy outcome values come from form111-previous-pregnancy-outcome-vs and previous delivery term values from form111-previous-delivery-term-vs."
* insert IntegrationsValueSet(pregnancy-obstetric-history-code-vs)
* ^status = #draft
* ^experimental = true

* $sct#720372000 "Health status of spouse"
* $loinc#42798-9 "Age at menarche"
* $sct#228456002 "Age became sexually active"
* $sct#246211005 "Number of previous pregnancies"
* $loinc#11612-9 "[#] Abortions"
* $loinc#63893-2 "Outcome of pregnancy"
* $form111-general-obs-cs#chr-0035-00015 "Tug'ruq turi (muddati bo'yicha)"
* $loinc#8339-4 "Birth weight Measured"
* $loinc#11996-6 "[#] Pregnancies"
* $loinc#11977-6 "[#] Parity"
* $loinc#8665-2 "Last menstrual period start date"
* $loinc#57065-5 "Quickening date"
* $loinc#68493-6 "Prenatal visits for this pregnancy #"
* $loinc#80427-8 "Employer name [Identifier]"
* $sct#14679004 "Occupation"

// Supplements providing Russian and Uzbek displays.
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form096SnomedSupplementCS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form111SnomedSupplementCS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form096LoincSupplementCS)
