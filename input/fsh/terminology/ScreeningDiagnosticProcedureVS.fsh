ValueSet: ScreeningDiagnosticProcedureVS
Id: screening-diagnostic-procedure-vs
Title: "Diagnostic Procedures ValueSet"
Description: "Value set of SNOMED CT codes for diagnostic referrals and reports."
* insert IntegrationsValueSet(screening-diagnostic-procedure-vs)
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningDiagnosticProcedureCS)

* include codes from system $sct

// * $sct#47079000 "Ultrasonography of breast"
// * $sct#122548005 "Biopsy of breast"
// * $sct#65801008 "Excision"
// * $sct#71651007 "Mammography"
// * $sct#54535009 "Cone biopsy of cervix"
// * $sct#392003006 "Colposcopy"
// * $sct#50796003 "Cervical biopsy"
// * $sct#714797009 "Histologic test"