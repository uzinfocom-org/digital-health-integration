Instance: dhis-observation-component-to-loinc
InstanceOf: ConceptMap
Usage: #definition
Title: "Tuberculosis Drug Susceptibility Components to LOINC"
Description: "Maps the local DHIS drug-susceptibility-test component codes to their LOINC [Susceptibility] code. Where the relationship is `equivalent` (plain drug-name agents), use the LOINC code directly in resources (see the DHIS Observation Component Code ValueSet); concentration-bearing agents are narrower and keep their local code. Non-drug component codes (interpretations, grading, identification flags) have no LOINC equivalent and are not listed."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dhis-observation-component-to-loinc"
* name = "ObservationComponentToLoinc"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

* group.source = Canonical(DHISObservationComponentCodeCS)
* group.target = $loinc
* targetScopeCanonical = $loinc-vs

* group[=].element[+].code = #tub004-0007
* group[=].element[=].display = "Rifampitsin (1,0 mg/ml)"
* group[=].element[=].target[+].code = #18974-6
* group[=].element[=].target[=].display = "Rifampin [Susceptibility]"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #tub004-0008
* group[=].element[=].display = "Izoniazid (0,1 mg/ml)"
* group[=].element[=].target[+].code = #18934-0
* group[=].element[=].target[=].display = "Isoniazid [Susceptibility]"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #tub004-0009
* group[=].element[=].display = "Etambutol (5,0 mg/ml)"
* group[=].element[=].target[+].code = #18921-7
* group[=].element[=].target[=].display = "Ethambutol [Susceptibility]"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #tub004-0010
* group[=].element[=].display = "Pirazinamid (100 mg/ml)"
* group[=].element[=].target[+].code = #18973-8
* group[=].element[=].target[=].display = "Pyrazinamide [Susceptibility]"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #tub004-0011
* group[=].element[=].display = "Levofloksatsin (2,0 mg/ml)"
* group[=].element[=].target[+].code = #20629-2
* group[=].element[=].target[=].display = "Levofloxacin [Susceptibility]"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #tub004-0012
* group[=].element[=].display = "Moksifloksatsin (1,0 mg/ml)"
* group[=].element[=].target[+].code = #31039-1
* group[=].element[=].target[=].display = "Moxifloxacin [Susceptibility]"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #tub004-0013
* group[=].element[=].display = "Moksifloksatsin (0,25 mg/ml)"
* group[=].element[=].target[+].code = #31039-1
* group[=].element[=].target[=].display = "Moxifloxacin [Susceptibility]"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #tub004-0014
* group[=].element[=].display = "Gatifloksatsin (0,25 mg/ml)"
* group[=].element[=].target[+].code = #31038-3
* group[=].element[=].target[=].display = "Gatifloxacin [Susceptibility]"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #tub004-0015
* group[=].element[=].display = "Amikatsin (1,0 mg/ml)"
* group[=].element[=].target[+].code = #18860-7
* group[=].element[=].target[=].display = "Amikacin [Susceptibility]"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #tub004-0016
* group[=].element[=].display = "Protionamid (2,5 mg/ml)"
* group[=].element[=].target[+].code = #100057-9
* group[=].element[=].target[=].display = "Prothionamide [Susceptibility]"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #tub004-0017
* group[=].element[=].display = "Linezolid (1,0 mg/ml)"
* group[=].element[=].target[+].code = #29258-1
* group[=].element[=].target[=].display = "Linezolid [Susceptibility]"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #tub004-0018
* group[=].element[=].display = "Klofazimin (1,0 mg/ml)"
* group[=].element[=].target[+].code = #23627-3
* group[=].element[=].target[=].display = "Clofazimine [Susceptibility]"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #tub004-0019
* group[=].element[=].display = "Bedaquilin (1,0 mg/ml)"
* group[=].element[=].target[+].code = #94274-8
* group[=].element[=].target[=].display = "Bedaquiline [Susceptibility]"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #tub004-0020
* group[=].element[=].display = "Delamanid (0,06 mg/ml)"
* group[=].element[=].target[+].code = #93851-4
* group[=].element[=].target[=].display = "Delamanid [Susceptibility]"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #tub004-0021
* group[=].element[=].display = "Pretomanid (1,0 mg/ml)"
* group[=].element[=].target[+].code = #93850-6
* group[=].element[=].target[=].display = "Pretomanid [Susceptibility]"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #tub004-0025
* group[=].element[=].display = "Ethionamide-Prothionamide"
* group[=].element[=].target[+].code = #18922-5
* group[=].element[=].target[=].display = "Ethionamide [Susceptibility]"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #tub004-0022
* group[=].element[=].display = "Rifampcin"
* group[=].element[=].target[+].code = #18974-6
* group[=].element[=].target[=].display = "Rifampin [Susceptibility]"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #tub004-0028
* group[=].element[=].display = "Levofloxacin"
* group[=].element[=].target[+].code = #20629-2
* group[=].element[=].target[=].display = "Levofloxacin [Susceptibility]"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #tub004-0029
* group[=].element[=].display = "Amikacin"
* group[=].element[=].target[+].code = #18860-7
* group[=].element[=].target[=].display = "Amikacin [Susceptibility]"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #tub004-0030
* group[=].element[=].display = "Kanamycin"
* group[=].element[=].target[+].code = #18935-7
* group[=].element[=].target[=].display = "Kanamycin [Susceptibility]"
* group[=].element[=].target[=].relationship = #equivalent

