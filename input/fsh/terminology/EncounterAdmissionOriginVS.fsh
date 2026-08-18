ValueSet: EncounterAdmissionOriginVS
Id: encounter-admission-origin-vs
Title: "Encounter admission origin translations"
Description: "Encounter admission origin codes with English and Russian translations"
* insert IntegrationsValueSet(encounter-admission-origin-vs)
* ^experimental = true
* include codes from system admit-source-home-cs
