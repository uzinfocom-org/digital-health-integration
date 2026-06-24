ValueSet: ScreeningObservationCodesVS
Id: screening-observation-codes-vs
Title: "Screening Observation Codes Composite ValueSet"
Description: "Combined value set of codes for the Observation.code field (Laboratory, Diagnostics, Observations, Findings)."
* ^url = "https://dhp.uz/fhir/integrations/ValueSet/screening-observation-codes-vs"
* ^experimental = true

* include $loinc#18500-9 "Microscopic observation [Identifier] in Cervix by Cyto stain.thin prep"
* include $loinc#82675-0 "HPV I/H Risk 4 DNA Cvx Ql NAA+probe"
* include $sct#5880005 "Physical examination"
* include $sct#1269489004 "Chief complaint"
* include $sct#281036007 "Follow-up consultation"
* include $sct#224406003 "Details relating to place of work and employer"
* include codes from valueset ScreeningDiagnosticProcedureVS
* include codes from valueset ScreeningObservationTypeVS
* include codes from valueset ScreeningBreastFindingVS
