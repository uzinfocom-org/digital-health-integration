Instance: cancer-registry-role-to-dhp-position-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "Cancer Registry Role To DHP Position"
Description: "Role classification for users within the oncology information system mapped to DHP Position and Professions ConceptMap"
* name = "CancerRegistryRoleToDHPPositionCM"
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/cancer-registry-role-to-dhp-position-cm"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* targetScopeCanonical = $position-and-profession-vs

* group[+].source = Canonical(CancerRegistryRolesCS)
* group[=].target = $position-and-profession-cs

* group[=].element[+].code = #3
* group[=].element[=].display = "registrar"
* group[=].element[=].target[+].code = #3252.2
* group[=].element[=].target[=].display = "Tibbiy ro'yxatdan o'tkazuvchi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #1
* group[=].element[=].display = "System Administrator"
* group[=].element[=].target[+].code = #1211.45
* group[=].element[=].target[=].display = "Katta ma'mur"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #7
* group[=].element[=].display = "Institution Administrator"
* group[=].element[=].target[+].code = #3341.1
* group[=].element[=].target[=].display = "Ma'mur"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target

* group[=].element[+].code = #4
* group[=].element[=].display = "researcher"
* group[=].element[=].target[+].code = #2212.155
* group[=].element[=].target[=].display = "Ilmiy xodim"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target