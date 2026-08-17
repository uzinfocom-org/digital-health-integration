Instance: dhis-observation-result-to-snomed
InstanceOf: ConceptMap
Usage: #definition
Title: "Tuberculosis Test Results to SNOMED CT"
Description: "Maps the local DHIS coded test-result codes that have an exact SNOMED CT concept - the identified mycobacterial species and the trace and identification qualifiers - to SNOMED CT. Use the SNOMED CT code directly in resources (see the DHIS Observation Result ValueSet); smear/culture grades, processing states and resistance-band outcomes have no exact SNOMED CT concept and keep their local code."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dhis-observation-result-to-snomed"
* name = "ObservationResultToSnomed"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

* group.source = Canonical( DHISObservationCodeableConceptCS)
* group.target = $sct
* targetScopeCanonical = $sct-vs

* group.element[+].code = #Tub003-0003
* group.element[=].display = "Izlar aniqlangan"
* group.element[=].target[+].code = #260405006
* group.element[=].target[=].display = "Trace"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #Tub003-0020
* group.element[=].display = "M. tuberculosis kompleksi (MTBC)"
* group.element[=].target[+].code = #113858008
* group.element[=].target[=].display = "Mycobacterium tuberculosis complex"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #Tub003-0021
* group.element[=].display = "Silga oid bo‘lmagan mikobakteriyalar (NTM)"
* group.element[=].target[+].code = #110379001
* group.element[=].target[=].display = "Mycobacterium, non-TB"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #Tub003-0022
* group.element[=].display = "Aniqlanmagan"
* group.element[=].target[+].code = #417831002
* group.element[=].target[=].display = "Unidentified isolate"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #Tub003-0023
* group.element[=].display = "M.avium ssp."
* group.element[=].target[+].code = #83723009
* group.element[=].target[=].display = "Mycobacterium avium"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #Tub003-0024
* group.element[=].display = "M. chelonae"
* group.element[=].target[+].code = #243377008
* group.element[=].target[=].display = "Mycobacteroides chelonae"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #Tub003-0025
* group.element[=].display = "M. abscessus"
* group.element[=].target[+].code = #113838007
* group.element[=].target[=].display = "Mycobacteroides abscessus"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #Tub003-0028
* group.element[=].display = "M. gordonae"
* group.element[=].target[+].code = #24871004
* group.element[=].target[=].display = "Mycobacterium gordonae"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #Tub003-0029
* group.element[=].display = "M. intracellulare"
* group.element[=].target[+].code = #83841006
* group.element[=].target[=].display = "Mycobacterium intracellulare"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #Tub003-0030
* group.element[=].display = "M. scrofulaceum"
* group.element[=].target[+].code = #20141004
* group.element[=].target[=].display = "Mycobacterium scrofulaceum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #Tub003-0031
* group.element[=].display = "M. interjectum"
* group.element[=].target[+].code = #113851002
* group.element[=].target[=].display = "Mycobacterium interjectum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #Tub003-0032
* group.element[=].display = "M. kansasii"
* group.element[=].target[+].code = #1507005
* group.element[=].target[=].display = "Mycobacterium kansasii"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #Tub003-0033
* group.element[=].display = "M. malmoense"
* group.element[=].target[+].code = #73576007
* group.element[=].target[=].display = "Mycobacterium malmoense"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #Tub003-0034
* group.element[=].display = "M. marinum"
* group.element[=].target[+].code = #58869008
* group.element[=].target[=].display = "Mycobacterium marinum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #Tub003-0035
* group.element[=].display = "M. peregrinum"
* group.element[=].target[+].code = #113859000
* group.element[=].target[=].display = "Mycobacterium peregrinum"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #Tub003-0036
* group.element[=].display = "M. xenopi"
* group.element[=].target[+].code = #58663006
* group.element[=].target[=].display = "Mycobacterium xenopi"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #Tub003-0037
* group.element[=].display = "Mycobacterium spp"
* group.element[=].target[+].code = #243368001
* group.element[=].target[=].display = "Mycobacterium"
* group.element[=].target[=].relationship = #equivalent
