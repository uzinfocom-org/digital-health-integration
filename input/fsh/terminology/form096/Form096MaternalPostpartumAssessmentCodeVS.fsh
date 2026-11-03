ValueSet: Form096MaternalPostpartumAssessmentCodeVS
Id: maternal-postpartum-assessment-code-vs
Title: "Form 096 Postpartum Observation Codes"
Description: "Observation.code for the Form 096 postpartum observation fields, one Observation per field and day: general condition, breasts, fundal height, lochia, urinary bladder and bowel action. Lochia values are SNOMED CT lochia findings, such as 278072004 \"Lochia rubra\"."
* insert IntegrationsValueSet(maternal-postpartum-assessment-code-vs)
* ^status = #draft
* ^experimental = true

* $form111-assessment-obs-cs#chr-0005-00003 "Umumiy ahvoli"
* $loinc#10193-1 "Physical findings of Breasts Narrative"
* $loinc#11881-0 "Uterus Fundal height Tape measure"
* $sct#364239002 "Lochia feature"
* $sct#249585009 "Urinary bladder finding"
* $sct#39211005 "Bowel action"

// Supplements providing Russian and Uzbek displays.
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form096SnomedSupplementCS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form096LoincSupplementCS)
