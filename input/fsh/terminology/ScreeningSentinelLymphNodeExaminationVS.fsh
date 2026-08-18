ValueSet: ScreeningSentinelLymphNodeExaminationVS
Id: screening-sentinel-lymph-node-examination-vs
Title: "Screening Sentinel Lymph Node Examination ValueSet"
Description: "Select values indicating whether sentinel lymph node examination was performed."
* insert IntegrationsValueSet(screening-sentinel-lymph-node-examination-vs)
* ^status = #active
* ^experimental = true
* include codes from system ScreeningSentinelLymphNodeExaminationCS
