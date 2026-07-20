Instance: dhis-tuberculosis-to-snomed
InstanceOf: ConceptMap
Usage: #definition
Title: "Tuberculosis Diagnoses to SNOMED CT"
Description: "Maps the local DHIS tuberculosis diagnosis and comorbidity codes to SNOMED CT. Where the relationship is `equivalent`, use the SNOMED CT code directly in resources (see the DHIS Condition Code ValueSet); the remaining codes have only a broader, narrower or related SNOMED CT concept and keep their local code."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dhis-tuberculosis-to-snomed"
* name = "TuberculosisToSnomed"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

* group.source = Canonical(DHISConditionCodeCS)
* group.target = $sct
* targetScopeCanonical = $sct-vs

* group.element[+].code = #tub001-0009
* group.element[=].display = "Fibroz-kavernoz o‘pka sili"
* group.element[=].target[+].code = #186177005
* group.element[=].target[=].display = "Cavitary pulmonary tuberculosis"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

* group.element[+].code = #tub001-0025
* group.element[=].display = "Surunkali nonspesifik o'pka kasalliklari"
* group.element[=].target[+].code = #13645005
* group.element[=].target[=].display = "Chronic obstructive lung disease"
* group.element[=].target[=].relationship = #related-to

* group.element[+].code = #tub001-0027
* group.element[=].display = "Ruhiy kasallik"
* group.element[=].target[+].code = #74732009
* group.element[=].target[=].display = "Mental illness"
* group.element[=].target[=].relationship = #source-is-broader-than-target

* group.element[+].code = #tub001-0001
* group.element[=].display = "Birlamchi sil kompleksi"
* group.element[=].target[+].code = #88356006
* group.element[=].target[=].display = "Primary respiratory tuberculosis"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #tub001-0002
* group.element[=].display = "Disseminatsiyalangan sil"
* group.element[=].target[+].code = #186278007
* group.element[=].target[=].display = "Acute miliary tuberculosis of multiple sites"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #tub001-0003
* group.element[=].display = "Miliyar sil"
* group.element[=].target[+].code = #724541008
* group.element[=].target[=].display = "Acute miliary tuberculosis of a single specified site"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #tub001-0004
* group.element[=].display = "O‘choqli o‘pka sili"
* group.element[=].target[+].code = #700272008
* group.element[=].target[=].display = "Other respiratory tuberculosis"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #tub001-0005
* group.element[=].display = "Infiltrativ o‘pka sili"
* group.element[=].target[+].code = #186175002
* group.element[=].target[=].display = "Pulmonary tuberculosis, bacteriologically confirmed"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #tub001-0006
* group.element[=].display = "Kazeoz pnevmoniya"
* group.element[=].target[+].code = #154283005
* group.element[=].target[=].display = "Caseous pneumonia (pulmonary tuberculosis)"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #tub001-0007
* group.element[=].display = "O‘pka tuberkulomasi"
* group.element[=].target[+].code = #186195008
* group.element[=].target[=].display = "Tuberculoma of lung"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #tub001-0008
* group.element[=].display = "Kaverna bilan o‘pka sili"
* group.element[=].target[+].code = #186177005
* group.element[=].target[=].display = "Cavitary pulmonary tuberculosis"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #tub001-0010
* group.element[=].display = "Tsirrotik o‘pka sili"
* group.element[=].target[+].code = #90117007
* group.element[=].target[=].display = "Cirrhotic pulmonary tuberculosis"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #tub001-0011
* group.element[=].display = "Bronx, traxeya va yuqori nafas yo‘llari sili"
* group.element[=].target[+].code = #186199002
* group.element[=].target[=].display = "Tuberculosis of larynx, trachea and bronchus"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #tub001-0012
* group.element[=].display = "Ko‘krak ichi limfa tugunlari sili"
* group.element[=].target[+].code = #78436002
* group.element[=].target[=].display = "Tuberculosis of intrathoracic lymph nodes"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #tub001-0013
* group.element[=].display = "Sil plevriti (empiema)"
* group.element[=].target[+].code = #186182003
* group.element[=].target[=].display = "Tuberculous pleurisy"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #tub001-0014
* group.element[=].display = "Sil meningiti"
* group.element[=].target[+].code = #58437007
* group.element[=].target[=].display = "Tuberculous meningitis"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #tub001-0015
* group.element[=].display = "Ichak, qorin parda va mezenterial limfa tugunlari sili"
* group.element[=].target[+].code = #186225008
* group.element[=].target[=].display = "Tuberculosis of intestines, peritoneum and mesenteric lymph nodes"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #tub001-0016
* group.element[=].display = "Suyak va bo‘g‘imlar sili"
* group.element[=].target[+].code = #17653001
* group.element[=].target[=].display = "Tuberculosis of bones and joints"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #tub001-0017
* group.element[=].display = "Siydik-jinsiy tizim sili"
* group.element[=].target[+].code = #4445009
* group.element[=].target[=].display = "Tuberculosis of genitourinary system"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #tub001-0018
* group.element[=].display = "Teri va teri osti to‘qimalari sili"
* group.element[=].target[+].code = #271423008
* group.element[=].target[=].display = "Tuberculosis of skin and subcutaneous tissue"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #tub001-0019
* group.element[=].display = "Periferik limfa tugunlari sili"
* group.element[=].target[+].code = #77038006
* group.element[=].target[=].display = "Tuberculosis of peripheral lymph nodes"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #tub001-0020
* group.element[=].display = "Ko‘z sili"
* group.element[=].target[+].code = #49107007
* group.element[=].target[=].display = "Tuberculosis of eye"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #tub001-0021
* group.element[=].display = "Boshqa a’zolar sili"
* group.element[=].target[+].code = #56717001
* group.element[=].target[=].display = "Tuberculosis of other specified organs"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #tub001-0022
* group.element[=].display = "Qandli diabet"
* group.element[=].target[+].code = #73211009
* group.element[=].target[=].display = "Diabetes"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #tub001-0023
* group.element[=].display = "Yurak ishemik kasalligi"
* group.element[=].target[+].code = #414545008
* group.element[=].target[=].display = "Coronary heart disease"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #tub001-0024
* group.element[=].display = "Gipertenziya"
* group.element[=].target[+].code = #38341003
* group.element[=].target[=].display = "Hypertension"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #tub001-0026
* group.element[=].display = "Yara"
* group.element[=].target[+].code = #13200003
* group.element[=].target[=].display = "Ulcer"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #tub001-0028
* group.element[=].display = "Onkologiya"
* group.element[=].target[+].code = #363346000
* group.element[=].target[=].display = "Oncology"
* group.element[=].target[=].relationship = #source-is-broader-than-target
