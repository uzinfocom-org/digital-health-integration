ValueSet: DonationTypeVS
Id: donation-type-vs
Title: "Donation type"
Description: "Donation types"
* insert IntegrationsValueSet(donation-type-vs)
* ^status = #draft
* ^experimental = true
* include $sct#25179006 "Whole blood unit collection"
* include $sct#20720000 "Plasmapheresis"
* include $sct#72541002 "Plateletpheresis"

* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(DonationTypeTranslationsCS)
