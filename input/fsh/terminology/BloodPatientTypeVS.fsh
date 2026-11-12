ValueSet: BloodPatientTypeVS
Id: blood-patient-type-vs
Title: "Blood patient type"
Description: "Types of blood patients for registration in blood system"
* insert IntegrationsValueSet(blood-patient-type-vs)
* ^status = #draft
* ^experimental = true
* include $sct#105470007 "Blood donor"
* include $sct#116154003 "Patient"
