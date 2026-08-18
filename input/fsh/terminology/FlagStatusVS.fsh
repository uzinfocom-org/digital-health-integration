ValueSet: FlagStatusVS
Id: flag-status-vs
Title: "Flag Status ValueSet"
Description: "Flag lifecycle statuses, carrying the Uzbek and Russian designations."
* insert IntegrationsValueSet(flag-status-vs)
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(FlagStatusCS)

* include codes from system $flag-status-cs
