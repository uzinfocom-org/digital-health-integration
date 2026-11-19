ValueSet: PharmcomRegistrySubstanceVS
Id: pharmcom-registry-substance-vs
Title: "Pharmaceutical Committee registry active substance"
Description: "All active substance identifiers of the Pharmaceutical Committee drug registry in products that have INN codes."
* insert IntegrationsValueSet(pharmcom-registry-substance-vs)
* ^status = #draft
* ^experimental = true
* include codes from system PharmcomRegistrySubstanceCS
