ValueSet: TBDrugSensitivityVS
Id: tb-drug-sensitivity-vs
Title: "Tuberculosis Drug Susceptibility"
Description: "Tuberculosis drug susceptibility and resistance categories, for the value of the drug susceptibility Observation (LOINC 18769-0) in [Form 066](form-066-mapping.html)."
* insert IntegrationsValueSet(tb-drug-sensitivity-vs)
* ^status = #draft
* ^experimental = true
* include codes from system tb-drug-sensitivity-cs
