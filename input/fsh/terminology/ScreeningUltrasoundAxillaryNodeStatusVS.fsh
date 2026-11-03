ValueSet: ScreeningUltrasoundAxillaryNodeStatusVS
Id: screening-ultrasound-axillary-node-status-vs
Title: "Screening Ultrasound Axillary Node Status ValueSet"
Description: "Defines Screening Ultrasound Axillary Node Status"
* insert IntegrationsValueSet(screening-ultrasound-axillary-node-status-vs)
* ^experimental = true
* ^language = #uz
* include codes from system screening-ultrasound-axillary-node-status-cs
* include $sct#281900007
* include $sct#263654008

// Supplements providing screening display languages.
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslationsCS)
