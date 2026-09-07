ValueSet: HepatitisTypeOfUltraSoundVS
Id: hepatitis-type-of-ultra-sound-vs
Title: "Hepatit Type Of UltraSound ValueSet"
Description: "Local value set for liver ultrasound findings used in hepatitis follow-up, with Uzbek and Russian designations."

* insert IntegrationsValueSet(hepatitis-type-of-ultra-sound-vs)
* ^experimental = true
* ^language = #uz

* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(HepatitisTypeOfUltraSoundCS)

* include codes from system $sct