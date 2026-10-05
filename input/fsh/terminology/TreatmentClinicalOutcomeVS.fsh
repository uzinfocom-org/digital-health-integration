ValueSet: TreatmentClinicalOutcomeVS
Id: treatment-clinical-outcome-vs
Title: "Form003 Treatment Clinical Outcome ValueSet"
Description: "ValueSet for the clinical-outcome axis of the treatment result, Form003 inpatient medical record. Active SNOMED CT patient's-condition concepts; no local CodeSystem."
* insert IntegrationsValueSet(treatment-clinical-outcome-vs)
* ^experimental = true

* $sct#370996005 "Patient condition resolved"
* $sct#268910001 "Patient's condition improved"
* $sct#359748005 "Patient's condition the same"
* $sct#275723000 "Patient's condition deteriorating"