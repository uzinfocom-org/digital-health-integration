ValueSet: NewbornVitalStatusVS
Id: newborn-vital-status-vs
Title: "Newborn Vital Status ValueSet"
Description: "Vital status of the newborn at birth for Form097 newborn development record. Source terminology (SNOMED CT) reused directly."
* insert IntegrationsValueSet(newborn-vital-status-vs)
* ^experimental = true

// Fhir_mapping row 48: alive / dead
* include $sct#281050002
* include $sct#276506001
