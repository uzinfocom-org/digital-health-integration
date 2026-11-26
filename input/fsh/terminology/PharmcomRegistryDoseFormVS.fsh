ValueSet: PharmcomRegistryDoseFormVS
Id: pharmcom-registry-dose-form-vs
Title: "Pharmaceutical Committee registry dose form"
Description: "All detailed dose form identifiers of the Pharmaceutical Committee drug registry."
* insert IntegrationsValueSet(pharmcom-registry-dose-form-vs)
* ^status = #draft
* ^experimental = true
* include codes from system PharmcomRegistryDoseFormCS
