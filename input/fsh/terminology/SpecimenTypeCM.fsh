Instance: specimen-type-conceptmap
InstanceOf: ConceptMap
Usage: #definition
Title: "Tuberculosis Specimen Types to SNOMED CT"
Description: "Maps the local DHIS specimen type codes to SNOMED CT. Where the relationship is `equivalent`, use the SNOMED CT code directly in resources (see the DHIS Specimen Type ValueSet); the remaining codes (site groupings and culture media) have only a broader or related SNOMED CT concept and keep their local code."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/specimen-type-conceptmap"
* name = "SpecimenTypesCodeToSnomed"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

* group[+].source = Canonical(SpecimenTypeCS)
* group[=].target = $sct
* targetScopeCanonical = $sct-vs

* group[=].element[+].code = #Spec001-0001
* group[=].element[=].display = "O'pka"
* group[=].element[=].target[+].code = #258603007
* group[=].element[=].target[=].display = "Respiratory specimen"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #Spec001-0006
* group[=].element[=].display = "Ekstrapulmoner"
* group[=].element[=].target[+].code = #123038009
* group[=].element[=].target[=].display = "Specimen"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #Spec001-0023
* group[=].element[=].display = "Qattiq muhit LY"
* group[=].element[=].target[+].code = #119303007
* group[=].element[=].target[=].display = "Microbial isolate"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #Spec001-0002
* group[=].element[=].display = "Makrota"
* group[=].element[=].target[+].code = #119334006
* group[=].element[=].target[=].display = "Sputum specimen"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #Spec001-0003
* group[=].element[=].display = "Induktsiyalangan makrota"
* group[=].element[=].target[+].code = #258610001
* group[=].element[=].target[=].display = "Sputum specimen obtained by sputum induction"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #Spec001-0004
* group[=].element[=].display = "Bronxial sekretlar"
* group[=].element[=].target[+].code = #258446004
* group[=].element[=].target[=].display = "Bronchial fluid"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #Spec001-0005
* group[=].element[=].display = "Bronxoalveolyar lavaj"
* group[=].element[=].target[+].code = #258607008
* group[=].element[=].target[=].display = "Bronchoalveolar lavage fluid"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #Spec001-0007
* group[=].element[=].display = "Plevra suyuqligi"
* group[=].element[=].target[+].code = #418564007
* group[=].element[=].target[=].display = "Pleural fluid"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #Spec001-0008
* group[=].element[=].display = "Miya orqa miya suyuqligi"
* group[=].element[=].target[+].code = #258450006
* group[=].element[=].target[=].display = "CSF specimen"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #Spec001-0009
* group[=].element[=].display = "Yiring"
* group[=].element[=].target[+].code = #119323008
* group[=].element[=].target[=].display = "Pus specimen"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #Spec001-0010
* group[=].element[=].display = "Jarrohlik namunasi"
* group[=].element[=].target[+].code = #445405002
* group[=].element[=].target[=].display = "Specimen obtained by surgical procedure"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #Spec001-0011
* group[=].element[=].display = "Qon"
* group[=].element[=].target[+].code = #119297000
* group[=].element[=].target[=].display = "Blood specimen"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #Spec001-0012
* group[=].element[=].display = "Askista suyuqligi"
* group[=].element[=].target[+].code = #309201001
* group[=].element[=].target[=].display = "Ascitic fluid"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #Spec001-0013
* group[=].element[=].display = "Punktura"
* group[=].element[=].target[+].code = #119295008
* group[=].element[=].target[=].display = "Specimen obtained by aspiration"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #Spec001-0014
* group[=].element[=].display = "Siydik"
* group[=].element[=].target[+].code = #122575003
* group[=].element[=].target[=].display = "Urine specimen"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #Spec001-0015
* group[=].element[=].display = "Najas"
* group[=].element[=].target[+].code = #119339001
* group[=].element[=].target[=].display = "Faeces specimen"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #Spec001-0016
* group[=].element[=].display = "Qin oqindi"
* group[=].element[=].target[+].code = #16221011000119101
* group[=].element[=].target[=].display = "Vaginal discharge specimen"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #Spec001-0017
* group[=].element[=].display = "Sinoviy suyuqlik"
* group[=].element[=].target[+].code = #119332005
* group[=].element[=].target[=].display = "Synovial fluid"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #Spec001-0018
* group[=].element[=].display = "Ekssudat"
* group[=].element[=].target[+].code = #258441009
* group[=].element[=].target[=].display = "Exudate specimen"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #Spec001-0019
* group[=].element[=].display = "Trassudat"
* group[=].element[=].target[+].code = #258538002
* group[=].element[=].target[=].display = "Transudate specimen"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #Spec001-0020
* group[=].element[=].display = "Sperma"
* group[=].element[=].target[+].code = #119347001
* group[=].element[=].target[=].display = "Seminal fluid specimen"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #Spec001-0021
* group[=].element[=].display = "Ajratish"
* group[=].element[=].target[+].code = #258439008
* group[=].element[=].target[=].display = "Discharge specimen"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #Spec001-0022
* group[=].element[=].display = "Kultura"
* group[=].element[=].target[+].code = #119303007
* group[=].element[=].target[=].display = "Microbial isolate"
* group[=].element[=].target[=].relationship = #equivalent
