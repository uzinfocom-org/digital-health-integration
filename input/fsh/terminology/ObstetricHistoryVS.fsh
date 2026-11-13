ValueSet: ObstetricHistoryVS
Id: obstetric-history-vs
Title: "Allowed obstetric history categories"
Description: "Local categories describing the recipient's obstetric history."
* insert IntegrationsValueSet(obstetric-history-vs)
* ^status = #draft
* ^experimental = true
* include codes from system ObstetricHistoryCS
