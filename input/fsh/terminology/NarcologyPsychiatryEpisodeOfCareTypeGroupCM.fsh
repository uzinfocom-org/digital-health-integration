Instance: narcology-psychiatry-episode-of-care-type-group-to-snomed
InstanceOf: ConceptMap
Usage: #definition
Title: "Narcology and Psychiatry EpisodeOfCare Type Groups to SNOMED CT"
Description: "Maps the local narcology and psychiatry dynamic observation group codes to SNOMED CT."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/narcology-psychiatry-episode-of-care-type-group-to-snomed"
* name = "NarcologyPsychiatryEpisodeOfCareTypeGroupToSnomed"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

* group.source = Canonical(NarcologyPsychiatryEpisodeOfCareTypeGroupCS)
* sourceScopeCanonical = Canonical(NarcologyPsychiatryEpisodeOfCareTypeGroupVS)
* group.target = $sct
* targetScopeCanonical = $sct-vs

* group.element[+].code = #narcr0001-00001
* group.element[=].display = "Profilaktik guruh"
* group.element[=].target[+].code = #302805002
* group.element[=].target[=].display = "Preventive monitoring (regime/therapy)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #narcr0001-00002
* group.element[=].display = "Dispanser guruhi"
* group.element[=].target[+].code = #225419007
* group.element[=].target[=].display = "Surveillance (regime/therapy)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #psycr0001-00001
* group.element[=].display = "Majburiy statsionar davolanish"
* group.element[=].target[+].code = #52748007
* group.element[=].target[=].display = "Involuntary hospital admission (procedure)"
* group.element[=].target[=].relationship = #equivalent
