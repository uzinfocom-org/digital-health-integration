Instance: dhis-observation-tuberculosis-code
InstanceOf: ConceptMap
Usage: #definition
Title: "Tuberculosis Diagnostic Tests to LOINC"
Description: "Maps the local DHIS tuberculosis diagnostic test codes to LOINC. Where the relationship is `equivalent`, use the LOINC code directly in resources (see the DHIS Observation Code ValueSet); the remaining tests (culture media and assay variants) have only a broader or related LOINC concept and keep their local code."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dhis-observation-tuberculosis-code"
* name = "ObservationCodeToLoinc"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

* group.source = Canonical(DHISObservationCodeCS)
* group.target = $loinc
* targetScopeCanonical = $loinc-vs

* group[=].element[+].code = #Tub002-0004
* group[=].element[=].display = "Xpert MTB/XDR"
* group[=].element[=].target[+].code = #94053-6
* group[=].element[=].target[=].display = "Xpert MTB/XDR"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #Tub002-0005
* group[=].element[=].display = "LJ muhitida ekish"
* group[=].element[=].target[+].code = #539-7
* group[=].element[=].target[=].display = "Culture on Löwenstein–Jensen medium"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #Tub002-0006
* group[=].element[=].display = "MGIT muhitida ekish"
* group[=].element[=].target[+].code = #539-7
* group[=].element[=].target[=].display = "MGIT BACTEC culture"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #Tub002-0007
* group[=].element[=].display = "MGITda fenotipik TLU"
* group[=].element[=].target[+].code = #29579-0
* group[=].element[=].target[=].display = "Phenotypic DST on MGIT"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #Tub002-0009
* group[=].element[=].display = "LPA MTBDR SL (Fql/SLI)"
* group[=].element[=].target[+].code = #94053-6
* group[=].element[=].target[=].display = "LPA MTBDRsl (Fql/SLI)"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #Tub002-0001
* group[=].element[=].display = "Balg'am surtmasi, FL"
* group[=].element[=].target[+].code = #53904-9
* group[=].element[=].target[=].display = "Sputum smear microscopy (fluorescent)"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #Tub002-0002
* group[=].element[=].display = "Balg'am surtmasi, ZN"
* group[=].element[=].target[+].code = #647-8
* group[=].element[=].target[=].display = "Sputum smear microscopy (Ziehl–Neelsen)"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #Tub002-0003
* group[=].element[=].display = "Xpert MTB/RIF Ultra"
* group[=].element[=].target[+].code = #89371-9
* group[=].element[=].target[=].display = "Xpert MTB/RIF Ultra"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #Tub002-0008
* group[=].element[=].display = "LPA MTBDR plus (Rif/Inh/Eto-Pto)"
* group[=].element[=].target[+].code = #89876-7
* group[=].element[=].target[=].display = "LPA MTBDRplus (Rif/Inh/Eto-Pto)"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #Tub002-0010
* group[=].element[=].display = "Ko'krak qafasi rentgenografiyasi"
* group[=].element[=].target[+].code = #30745-4
* group[=].element[=].target[=].display = "Chest X-ray"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #Tub002-0011
* group[=].element[=].display = "OIV testi"
* group[=].element[=].target[+].code = #56888-1
* group[=].element[=].target[=].display = "HIV testing"
* group[=].element[=].target[=].relationship = #equivalent
