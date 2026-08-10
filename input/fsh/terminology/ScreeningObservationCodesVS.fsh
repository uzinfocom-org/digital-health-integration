ValueSet: ScreeningObservationCodesVS
Id: screening-observation-codes-vs
Title: "Screening Observation Codes Composite ValueSet"
Description: "Combined value set of codes for the Observation.code field (Laboratory, Diagnostics, Observations, Findings)."
* insert IntegrationsValueSet(screening-observation-codes-vs)
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningObservationCodesCS)

* include codes from system $sct

* include $loinc#18500-9 "Microscopic observation [Identifier] in Cervix by Cyto stain.thin prep"
* include $loinc#82675-0 "HPV I/H Risk 4 DNA Cvx Ql NAA+probe"
* include $sct#117617002
* include $sct#394597005
* include ScreeningSpecializedObservationParameterCS#scrn-0073-00029 "Ko‘krak bezi sitologiyasi natijasi"
// * include $sct#5880005 "Physical examination"
// * include $sct#1269489004 "Chief complaint"
// * include $sct#281036007 "Follow-up consultation"
// * include $sct#224406003 "Details relating to place of work and employer"
* include codes from valueset ScreeningDiagnosticProcedureVS
* include codes from valueset ScreeningObservationTypeVS
* include codes from valueset ScreeningBreastFindingVS
