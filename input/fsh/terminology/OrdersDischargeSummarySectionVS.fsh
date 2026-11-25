ValueSet: OrdersDischargeSummarySectionVS
Id: orders-discharge-summary-section-vs
Title: "Discharge summary section"
Description: "Section codes for a discharge summary (epicrisis) Composition: LOINC where it has an equivalent, local codes otherwise"
* insert IntegrationsValueSet(orders-discharge-summary-section-vs)
* ^experimental = true
* $loinc|2.83#10154-3 "Chief complaint Narrative - Reported"
* $loinc|2.83#10164-2 "History of Present illness Narrative"
* $loinc|2.83#29545-1 "Physical findings note"
* $loinc|2.83#10202-0 "Physical findings of Nervous system Narrative"
* include codes from system orders-discharge-summary-section-cs

* ^status = #draft
