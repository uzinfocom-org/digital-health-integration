ValueSet: ScreeningLaboratoryVS
Id: screening-laboratory-vs
Title: "Laboratory Tests ValueSet"
Description: "Value set of codes for laboratory referrals and results"
* insert IntegrationsValueSet(screening-laboratory-vs)
* ^experimental = true

* include $loinc#18500-9 "Microscopic observation [Identifier] in Cervix by Cyto stain.thin prep"  
* include $loinc#82675-0 "HPV I/H Risk 4 DNA Cvx Ql NAA+probeg" 
