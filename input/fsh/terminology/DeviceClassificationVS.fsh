ValueSet: DeviceClassificationVS
Id: device-classification-vs
Title: "Medical equipment classification ValueSet"
Description: "All codes of the medical equipment classification used in the JihozMed integration."
* insert IntegrationsValueSet(device-classification-vs)
* ^status = #draft
* ^experimental = true

* include codes from system device-classification-cs
