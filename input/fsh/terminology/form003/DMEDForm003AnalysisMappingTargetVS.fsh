ValueSet: DMEDForm003AnalysisMappingTargetVS
Id: dmed-form-003-analysis-mapping-target-vs
Title: "DMED Form 003 analysis mapping targets"
Description: "Target codes used by the Form 003 analysis ConceptMap; source items without an established equivalent retain their source code."
* insert IntegrationsValueSet(dmed-form-003-analysis-mapping-target-vs)
* ^status = #draft
* ^experimental = false
* include $loinc#625-4
* include Form003ObservationCodeCS#other-diseases
