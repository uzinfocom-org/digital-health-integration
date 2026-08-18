ValueSet: NarcologyPsychiatryRegistryFlagVS
Id: narcology-psychiatry-registry-flag-vs
Title: "Narcology and Psychiatry Registry Flag ValueSet"
Description: "Registry flags that can be raised on a patient in the narcology and psychiatry registries."
* insert IntegrationsValueSet(narcology-psychiatry-registry-flag-vs)
* ^experimental = true
* ^language = #uz

* include codes from system narcology-psychiatry-registry-flag-cs
// Compulsory inpatient treatment is held in the episode-of-care type group code system.
* include narcology-psychiatry-episode-of-care-type-group-cs#psycr0001-00001 "Majburiy statsionar davolanish"
