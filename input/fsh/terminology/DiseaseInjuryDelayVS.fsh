ValueSet: DiseaseInjuryDelayVS
Id: disease-injury-delay-vs
Title: "Disease/Injury Delay"
Description: "Time from the onset of disease or injury to hospital admission, for the value of the illness duration Observation (LOINC 77977-7) in [Form 066](form-066-mapping.html)."
* insert IntegrationsValueSet(disease-injury-delay-vs)
* ^status = #draft
* ^experimental = true
* include codes from system disease-injury-delay-cs
