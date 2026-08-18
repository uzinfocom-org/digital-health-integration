ValueSet: ScreeningBodySiteVS
Id: screening-body-site-vs
Title: "Observed Body Site VS"
Description: "Observed body part codes used in screening"

* insert IntegrationsValueSet(screening-body-site-vs)
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningBodySiteCS)

* include codes from system $sct



// * include $sct#80248007 "Left breast"
// * include $sct#73056007 "Right breast"