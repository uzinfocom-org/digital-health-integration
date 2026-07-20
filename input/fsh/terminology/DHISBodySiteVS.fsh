ValueSet: DHISBodySiteVS
Id: dhis-body-site-vs
Title: "DHIS Body Site ValueSet"
Description: "Local value set for body sites used by the DHIS information system, with Russian and English designations."
* insert IntegrationsValueSet(dhis-body-site-vs)
* ^experimental = true
* ^language = #uz

* include codes from valueset $bodySite-condition
* $sct#154283005 "Pulmonary tuberculosis"
* $sct#423997002 "Tuberculosis, extrapulmonary"
* $sct#182159002 "Disseminated tuberculosis"        