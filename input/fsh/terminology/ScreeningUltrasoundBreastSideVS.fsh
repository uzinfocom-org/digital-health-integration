ValueSet: ScreeningUltrasoundBreastSideVS
Id: screening-ultrasound-breast-side-vs
Title: "Screening Ultrasound Breast Side ValueSet"
Description: "SNOMED CT body-site codes for the right and left breast, reusing the existing Screening body-site terminology."
* insert IntegrationsValueSet(screening-ultrasound-breast-side-vs)
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningBodySiteCS)

* include $sct#73056007 "Right breast"
* include $sct#80248007 "Left breast"
