ValueSet: Form096TissueIntegrityStatusVS
Id: tissue-integrity-status-vs
Title: "Form 096 Placenta and Membranes Completeness"
Description: "Observation.valueCodeableConcept for the Form 096 placenta completeness (Observation.code SNOMED CT 364343000) and membranes completeness (SNOMED CT 364351002) fields."
* insert IntegrationsValueSet(tissue-integrity-status-vs)
* ^status = #draft
* ^experimental = true

* $sct#249170006 "Complete placenta at delivery"
* $sct#268479002 "Incomplete placenta at delivery"
* $sct#249181009 "Membranes complete"
* $sct#249182002 "Membranes incomplete"

// Supplements providing Russian and Uzbek displays.
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form096SnomedSupplementCS)
