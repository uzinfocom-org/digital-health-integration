Instance: narcology-psychiatry-registry-flag-to-snomed
InstanceOf: ConceptMap
Usage: #definition
Title: "Narcology and Psychiatry Registry Flags to SNOMED CT"
Description: "Maps the local narcology and psychiatry registry flag codes to SNOMED CT."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/narcology-psychiatry-registry-flag-to-snomed"
* name = "NarcologyPsychiatryRegistryFlagToSnomed"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

* sourceScopeCanonical = Canonical(NarcologyPsychiatryRegistryFlagVS)
* targetScopeCanonical = $sct-vs

* group[+].source = Canonical(NarcologyPsychiatryRegistryFlagCS)
* group[=].target = $sct

* group[=].element[+].code = #registri0001-00001
* group[=].element[=].display = "Ijtimoiy xavflilik"
* group[=].element[=].target[+].code = #129707006
* group[=].element[=].target[=].display = "At increased risk for other-directed violence (finding)"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #registri0001-00002
* group[=].element[=].display = "Majburiy davolanish"
* group[=].element[=].target[+].code = #303163003
* group[=].element[=].target[=].display = "Treatments administered under the provisions of the law (regime/therapy)"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #registri0001-00003
* group[=].element[=].display = "Majburiy ambulatoriya sharoitida davolanish"
* group[=].element[=].target[+].code = #303163003
* group[=].element[=].target[=].display = "Treatments administered under the provisions of the law (regime/therapy)"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #registri0001-00005
* group[=].element[=].display = "Vasiylik ostida"
* group[=].element[=].target[+].code = #1193838006
* group[=].element[=].target[=].display = "Legal guardian status (observable entity)"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #registri0001-00006
* group[=].element[=].display = "Nogironlik"
* group[=].element[=].target[+].code = #21134002
* group[=].element[=].target[=].display = "Disability (finding)"
* group[=].element[=].target[=].relationship = #equivalent

// Compulsory inpatient treatment is a member of the flag value set but is defined in the
// episode-of-care type group code system, so it needs its own group here.
* group[+].source = Canonical(NarcologyPsychiatryEpisodeOfCareTypeGroupCS)
* group[=].target = $sct

* group[=].element[+].code = #psycr0001-00001
* group[=].element[=].display = "Majburiy statsionar davolanish"
* group[=].element[=].target[+].code = #52748007
* group[=].element[=].target[=].display = "Involuntary hospital admission (procedure)"
* group[=].element[=].target[=].relationship = #equivalent
