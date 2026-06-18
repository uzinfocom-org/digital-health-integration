Instance: screening-cervical-cytology-to-snomed
InstanceOf: ConceptMap
Usage: #definition
Title: "Cervical Cytology Results to SNOMED CT"
Description: "Maps local UZ screening cytology result codes to SNOMED CT."
* url = "https://terminology.dhp.uz/ConceptMap/screening-cervical-cytology-to-snomed"
* name = "ScreeningCervicalCytologyToSnomed"
* status = #draft
* experimental = false
* publisher = "DHP Integration"

* group.source = Canonical(ScreeningCervicalCytologyCS)
* sourceScopeCanonical = Canonical(ScreeningCervicalCytologyVS)
* group.target = $sct
* targetScopeCanonical = $sct-vs 

// 1. NILM
* group.element[+].code = #scr-cyt-1
* group.element[=].display = "NILM"
* group.element[=].target[+].code = #373887005
* group.element[=].target[=].display = "Negative for intraepithelial lesion or malignancy"
* group.element[=].target[=].relationship = #equivalent

// 2. ASC-US
* group.element[+].code = #scr-cyt-2
* group.element[=].display = "ASC-US"
* group.element[=].target[+].code = #39035006
* group.element[=].target[=].display = "Atypical squamous cells of undetermined significance"
* group.element[=].target[=].relationship = #equivalent

// 3. LSIL
* group.element[+].code = #scr-cyt-3
* group.element[=].display = "LSIL"
* group.element[=].target[+].code = #416030007
* group.element[=].target[=].display = "Cervicovaginal cytology: LSIL"
* group.element[=].target[=].relationship = #equivalent

// 4. ASC-H
* group.element[+].code = #scr-cyt-4
* group.element[=].display = "ASC-H"
* group.element[=].target[+].code = #373878001
* group.element[=].target[=].display = "Atypical squamous cells, cannot exclude high-grade squamous intraepithelial lesion"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

// 5. HSIL
* group.element[+].code = #scr-cyt-5
* group.element[=].display = "HSIL"
* group.element[=].target[+].code = #22725004
* group.element[=].target[=].display = "High-grade squamous intraepithelial lesion"
* group.element[=].target[=].relationship = #equivalent

// 6. SCC
* group.element[+].code = #scr-cyt-6
* group.element[=].display = "SCC"
* group.element[=].target[+].code = #1162767002
* group.element[=].target[=].display = "Squamous cell carcinoma"
* group.element[=].target[=].relationship = #equivalent

// 7. AGC
* group.element[+].code = #scr-cyt-7
* group.element[=].display = "AGC"
* group.element[=].target[+].code = #4476003
* group.element[=].target[=].display = "Atypical glandular cells of undetermined significance"
* group.element[=].target[=].relationship = #source-is-narrower-than-target

// 8. AIS
* group.element[+].code = #scr-cyt-8
* group.element[=].display = "AIS"
* group.element[=].target[+].code = #51642000
* group.element[=].target[=].display = "Adenocarcinoma in situ"
* group.element[=].target[=].relationship = #equivalent

// 9. AC
* group.element[+].code = #scr-cyt-9
* group.element[=].display = "AC"
* group.element[=].target[+].code = #1187332001
* group.element[=].target[=].display = "Adenocarcinoma"
* group.element[=].target[=].relationship = #equivalent

// 10. Other
* group.element[+].code = #scr-cyt-10
* group.element[=].display = "Other"
* group.element[=].target[+].code = #74964007
* group.element[=].target[=].display = "Other"
* group.element[=].target[=].relationship = #equivalent