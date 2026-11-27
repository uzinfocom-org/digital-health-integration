ValueSet: FundingSourceVS
Id: funding-source-vs
Title: "Funding source ValueSet"
Description: "Sources of funds used to finance the acquisition of medical supplies and products, used in the DMED Sklad integration"
* insert IntegrationsValueSet(funding-source-vs)

* include codes from system funding-source-cs
* include codes from system https://terminology.dhp.uz/fhir/core/CodeSystem/financing-source-cs

* ^experimental = true
* ^status = #draft