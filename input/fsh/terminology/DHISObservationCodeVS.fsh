ValueSet: DHISObservationCodeVS
Id: dhis-observation-code-vs
Title: "DHIS Observation Code ValueSet"
Description: "Value set of tuberculosis diagnostic test codes used by the DHIS information system. Tests with an exact LOINC equivalent are expressed as LOINC codes; the remaining tests (culture medium and assay variants) use local codes that have no 1:1 LOINC match."
* insert IntegrationsValueSet(dhis-observation-code-vs)
* ^experimental = true

* include dhis-observation-code-cs#Tub002-0004
* include dhis-observation-code-cs#Tub002-0005
* include dhis-observation-code-cs#Tub002-0006
* include dhis-observation-code-cs#Tub002-0007
* include dhis-observation-code-cs#Tub002-0009
* include $loinc#53904-9
* include $loinc#647-8
* include $loinc#89371-9
* include $loinc#89876-7
* include $loinc#30745-4
* include $loinc#56888-1
