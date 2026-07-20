ValueSet: EncounterClassVS
Id: encounter-class-vs
Title: "Encounter Class ValueSet"
Description: "ValueSet including both local and official encounter classes in Uzbekistan healthcare system"
* insert IntegrationsValueSet(encounter-class-vs)
* ^experimental = true

* include codes from system encounter-class-local-cs

* include $v3-ActCode#AMB "ambulator"
* include $v3-ActCode#IMP "statsionar"