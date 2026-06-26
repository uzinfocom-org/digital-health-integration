ValueSet: DeathOccuredFromVS
Id: death-occured-from-vs
Title: "Death Occurred From ValueSet"
Description: "Selected SNOMED CT manner of death codes"

* ^experimental = true

* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(DeathOccuredFromCS)

* $sct#38605008 "Natural death"
* $sct#7878000 "Accidental death"
* $sct#44301001 "Suicide"
* $sct#27935005 "Homicide"
* $sct#65037004 "Undetermined manner of death"
* $sct#185973002 "Occupational injury"