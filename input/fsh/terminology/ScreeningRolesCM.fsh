Instance: screening-roles-to-national
InstanceOf: ConceptMap
Usage: #definition
Title: "Local Roles to National Practitioner Roles"
Description: "Maps local cervical and breast cancer screening system practitioner roles to the national practitioner role classifier."
* name = "ScreeningRolesToNational"
* url = "https://dhp.uz/fhir/integrations/ConceptMap/screening-roles-to-national"
* status = #draft
* experimental = false
* publisher = "DHP Integration"

* group[+].source = Canonical(ScreeningRolesCS)
* sourceScopeCanonical = Canonical(ScreeningRolesVS)
* group[=].target = $position-and-profession-cs

* group[=].element[+].code = #his_poliklinika_patronage_nurse
* group[=].element[=].display = "Polyclinic: Patronage nurse"
* group[=].element[=].target[+].code = #3221.15
* group[=].element[=].target[=].display = "Патронажная медицинская сестра"
* group[=].element[=].target[=].relationship = #source-is-broader-than-target

* group[=].element[+].code = #his_poliklinika_registrar
* group[=].element[=].display = "Polyclinic: Registrar"
* group[=].element[=].target[+].code = #3252.2
* group[=].element[=].target[=].display = "Медицинский регистратор"
* group[=].element[=].target[=].relationship = #source-is-broader-than-target

* group[=].element[+].code = #his_rmo_obstetrician_gynecologist
* group[=].element[=].display = "RMO: Obstetrician-gynecologist"
* group[=].element[=].target[+].code = #2222.1
* group[=].element[=].target[=].display = "Врач акушер-гинеколог (консультативной/ диагностической/ семейной поликлиники, диспансера и пр.)"
* group[=].element[=].target[=].relationship = #source-is-broader-than-target

* group[=].element[+].code = #his_rmo_ultrasound_doctor
* group[=].element[=].display = "RMO: Ultrasound doctor"
* group[=].element[=].target[+].code = #2212.121
* group[=].element[=].target[=].display = "Врач ультразвуковой диагностики"
* group[=].element[=].target[=].relationship = #source-is-broader-than-target

* group[=].element[+].code = #his_laboratory_laborant
* group[=].element[=].display = "Laboratory: Laborant"
* group[=].element[=].target[+].code = #3212.5
* group[=].element[=].target[=].display = "Медицинский лаборант"
* group[=].element[=].target[=].relationship = #source-is-broader-than-target

* group[=].element[+].code = #his_centre_obstetrics_gynecology_obstetrician_gynecologist
* group[=].element[=].display = "Center of Obstetrics & Gynecology: Obstetrician-gynecologist"
* group[=].element[=].target[+].code = #2222.2
* group[=].element[=].target[=].display = "Врач акушер-гинеколог роддома/перинатального центра (родзала, палатный, патологии беременности, экстренной гинекологии и пр.)"
* group[=].element[=].target[=].relationship = #source-is-broader-than-target

* group[=].element[+].code = #his_centre_obstetrics_gynecology_mammologist
* group[=].element[=].display = "Center of Obstetrics & Gynecology: Mammologist"
* group[=].element[=].target[+].code = #2212.58
* group[=].element[=].target[=].display = "Врач маммолог"
* group[=].element[=].target[=].relationship = #source-is-broader-than-target

* group[=].element[+].code = #his_centre_obstetrics_gynecology_ultrasound_doctor
* group[=].element[=].display = "Center of Obstetrics & Gynecology: Ultrasound doctor"
* group[=].element[=].target[+].code = #2212.121
* group[=].element[=].target[=].display = "Врач ультразвуковой диагностики"
* group[=].element[=].target[=].relationship = #source-is-broader-than-target

* group[=].element[+].code = #his_centre_oncology_obstetrician_gynecologist
* group[=].element[=].display = "Oncology Center: Obstetrician-gynecologist"
* group[=].element[=].target[+].code = #2212.75
* group[=].element[=].target[=].display = "Врач онкогинеколог"
* group[=].element[=].target[=].relationship = #source-is-broader-than-target

* group[=].element[+].code = #his_centre_oncology_mammologist
* group[=].element[=].display = "Oncology Center: Mammologist"
* group[=].element[=].target[+].code = #2212.58
* group[=].element[=].target[=].display = "Врач маммолог"
* group[=].element[=].target[=].relationship = #source-is-broader-than-target

* group[=].element[+].code = #his_statistician
* group[=].element[=].display = "Statistician"
* group[=].element[=].target[+].code = #2212.109
* group[=].element[=].target[=].display = "Врач статистик"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #his_statistician_region
* group[=].element[=].display = "Regional statistician"
* group[=].element[=].target[+].code = #2212.110
* group[=].element[=].target[=].display = "Врач судебно-медицинской экспертизы"
* group[=].element[=].target[=].relationship = #source-is-broader-than-target

* group[=].element[+].code = #his_ris_laborant
* group[=].element[=].display = "RIS Laborant"
* group[=].element[=].target[+].code = #3212.5
* group[=].element[=].target[=].display = "Медицинский лаборант"
* group[=].element[=].target[=].relationship = #source-is-broader-than-target

* group[=].element[+].code = #his_ris_mammologist
* group[=].element[=].display = "RIS Mammologist"
* group[=].element[=].target[+].code = #2212.58
* group[=].element[=].target[=].display = "Врач маммолог"
* group[=].element[=].target[=].relationship = #source-is-broader-than-target

* group[=].element[+].code = #his_ris_ultrasound
* group[=].element[=].display = "RIS Ultrasound doctor"
* group[=].element[=].target[+].code = #2212.121
* group[=].element[=].target[=].display = "Врач ультразвуковой диагностики"
* group[=].element[=].target[=].relationship = #source-is-broader-than-target

* group[=].element[+].code = #his_ris_pathomorphologist
* group[=].element[=].display = "RIS Pathomorphologist"
* group[=].element[=].target[+].code = #2212.88
* group[=].element[=].target[=].display = "Врач патологоанатом"
* group[=].element[=].target[=].relationship = #source-is-broader-than-target

* group[=].element[+].code = #his_ris_radiologist
* group[=].element[=].display = "RIS Radiologist"
* group[=].element[=].target[+].code = #2212.101
* group[=].element[=].target[=].display = "Врач рентгенолог"
* group[=].element[=].target[=].relationship = #source-is-broader-than-target

* group[=].element[+].code = #his_ris_ragiologist_head
* group[=].element[=].display = "RIS Head Radiologist"
* group[=].element[=].target[+].code = #1342.18
* group[=].element[=].target[=].display = "Заведующий отделением (учреждении здравоохранения)"
* group[=].element[=].target[=].relationship = #source-is-broader-than-target

* group[=].element[+].code = #his_ris_radiologist_new
* group[=].element[=].display = "HIS RIS: Radiologist (new)"
* group[=].element[=].target[+].code = #2212.101
* group[=].element[=].target[=].display = "Врач рентгенолог"
* group[=].element[=].target[=].relationship = #source-is-broader-than-target

* group[=].element[+].code = #his_ris_head_radiologist
* group[=].element[=].display = "HIS RIS: Head Radiologist"
* group[=].element[=].target[+].code = #2212.101
* group[=].element[=].target[=].display = "Врач рентгенолог"
* group[=].element[=].target[=].relationship = #source-is-broader-than-target

* group[=].element[+].code = #his_ris_radiologist_head_new
* group[=].element[=].display = "HIS RIS: Head Radiologist (new)"
* group[=].element[=].target[+].code = #2212.101
* group[=].element[=].target[=].display = "Врач рентгенолог"
* group[=].element[=].target[=].relationship = #source-is-broader-than-target