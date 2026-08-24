Instance: cancer-id-icd3-topography-to-cancer-icd3-topography-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "Cancer ID ICD-3 Topography To Cancer ICD-3 Topography"
Description: "ConceptMap for mapping Cancer ID ICD-3 topography codes to Cancer ICD-3 topography codes"
* name = "CancerIdICD3topographyToCancerICD3topographyCM"
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/cancer-id-icd3-topography-to-cancer-icd3-topography-cm"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

* sourceScopeCanonical = Canonical(CancerIdICD3TopographyVS)
* targetScopeCanonical = Canonical(CancerICD3TopographyVS)

// Group 1: CancerIdICD3topographyCS to CancerICD3topographyCS
* group[+].source = Canonical(CancerIdICD3TopographyCS)
* group[=].target = Canonical(CancerICD3TopographyCS)

* group[=].element[+].code = #1
* group[=].element[=].display = "yuqori lab tashqi yuzasi"
* group[=].element[=].target[+].code = #C000
* group[=].element[=].target[=].display = "yuqori lab tashqi yuzasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #2
* group[=].element[=].display = "pastki lab tashqi yuzasi"
* group[=].element[=].target[+].code = #C001
* group[=].element[=].target[=].display = "pastki lab tashqi yuzasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #3
* group[=].element[=].display = "lablar tashqi yuzasi qo'shimcha aniqlashtirishsiz (QA)"
* group[=].element[=].target[+].code = #C002
* group[=].element[=].target[=].display = "lablar tashqi yuzasi qo'shimcha aniqlashtirishsiz (QA)"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #4
* group[=].element[=].display = "yuqori lab shilliq qismi"
* group[=].element[=].target[+].code = #C003
* group[=].element[=].target[=].display = "yuqori lab shilliq qismi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #5
* group[=].element[=].display = "pastki lab shilliq qismi"
* group[=].element[=].target[+].code = #C004
* group[=].element[=].target[=].display = "pastki lab shilliq qismi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #6
* group[=].element[=].display = "lablar shilliq qismi QA"
* group[=].element[=].target[+].code = #C005
* group[=].element[=].target[=].display = "lablar shilliq qismi QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #7
* group[=].element[=].display = "og'iz burchagi (lab bitishmalari)"
* group[=].element[=].target[+].code = #C006
* group[=].element[=].target[=].display = "og'iz burchagi (lab bitishmalari)"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #8
* group[=].element[=].display = "labning bir nechta qismlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C008
* group[=].element[=].target[=].display = "labning bir nechta qismlarining qo'shma zararlanishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #9
* group[=].element[=].display = "lab QA"
* group[=].element[=].target[+].code = #C009
* group[=].element[=].target[=].display = "lab QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #10
* group[=].element[=].display = "til asosi QA"
* group[=].element[=].target[+].code = #C019
* group[=].element[=].target[=].display = "til asosi QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #11
* group[=].element[=].display = "tilning yuqori yuzasi QA"
* group[=].element[=].target[+].code = #C020
* group[=].element[=].target[=].display = "tilning yuqori yuzasi QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #12
* group[=].element[=].display = "tilning yon yuzasi"
* group[=].element[=].target[+].code = #C021
* group[=].element[=].target[=].display = "tilning yon yuzasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #13
* group[=].element[=].display = "tilning pastki yuzasi"
* group[=].element[=].target[+].code = #C022
* group[=].element[=].target[=].display = "tilning pastki yuzasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #14
* group[=].element[=].display = "tilning old qismi"
* group[=].element[=].target[+].code = #C023
* group[=].element[=].target[=].display = "tilning old qismi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #15
* group[=].element[=].display = "til bodomcha bezi"
* group[=].element[=].target[+].code = #C024
* group[=].element[=].target[=].display = "til bodomcha bezi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #16
* group[=].element[=].display = "tilning chegeralangan sohasi"
* group[=].element[=].target[+].code = #C028
* group[=].element[=].target[=].display = "tilning chegeralangan sohasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #17
* group[=].element[=].display = "til QA"
* group[=].element[=].target[+].code = #C029
* group[=].element[=].target[=].display = "til QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #18
* group[=].element[=].display = "yuqori jag' milki"
* group[=].element[=].target[+].code = #C030
* group[=].element[=].target[=].display = "yuqori jag' milki"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #19
* group[=].element[=].display = "pastki jag' milki"
* group[=].element[=].target[+].code = #C031
* group[=].element[=].target[=].display = "pastki jag' milki"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #20
* group[=].element[=].display = "milk QA"
* group[=].element[=].target[+].code = #C039
* group[=].element[=].target[=].display = "milk QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #21
* group[=].element[=].display = "og'iz bo'shlig'i tubi old qismi"
* group[=].element[=].target[+].code = #C040
* group[=].element[=].target[=].display = "og'iz bo'shlig'i tubi old qismi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #22
* group[=].element[=].display = "og'iz bo'shlig'i tubi yon qismi"
* group[=].element[=].target[+].code = #C041
* group[=].element[=].target[=].display = "og'iz bo'shlig'i tubi yon qismi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #23
* group[=].element[=].display = "og'iz bo'shlig'i tubi kuplab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C048
* group[=].element[=].target[=].display = "og'iz bo'shlig'i tubi kuplab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #24
* group[=].element[=].display = "og'iz bo'shlig'i tubi QA"
* group[=].element[=].target[+].code = #C049
* group[=].element[=].target[=].display = "og'iz bo'shlig'i tubi QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #25
* group[=].element[=].display = "qattiq tanglay"
* group[=].element[=].target[+].code = #C050
* group[=].element[=].target[=].display = "qattiq tanglay"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #26
* group[=].element[=].display = "yumshoq tanglay QA"
* group[=].element[=].target[+].code = #C051
* group[=].element[=].target[=].display = "yumshoq tanglay QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #27
* group[=].element[=].display = "tanglay tilchasi"
* group[=].element[=].target[+].code = #C052
* group[=].element[=].target[=].display = "tanglay tilchasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #28
* group[=].element[=].display = "tanglayning ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C058
* group[=].element[=].target[=].display = "tanglayning ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #29
* group[=].element[=].display = "tanglay QA"
* group[=].element[=].target[+].code = #C059
* group[=].element[=].target[=].display = "tanglay QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #30
* group[=].element[=].display = "yonoq shilliq qavati"
* group[=].element[=].target[+].code = #C060
* group[=].element[=].target[=].display = "yonoq shilliq qavati"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #31
* group[=].element[=].display = "og'iz dahliz"
* group[=].element[=].target[+].code = #C061
* group[=].element[=].target[=].display = "og'iz dahliz"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #32
* group[=].element[=].display = "og'iz bo'shlig'i retromolyar sohasi"
* group[=].element[=].target[+].code = #C062
* group[=].element[=].target[=].display = "og'iz bo'shlig'i retromolyar sohasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #33
* group[=].element[=].display = "og'iz bo'shlig'i ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C068
* group[=].element[=].target[=].display = "og'iz bo'shlig'i ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #34
* group[=].element[=].display = "og'iz bo'shlig'i QA"
* group[=].element[=].target[+].code = #C069
* group[=].element[=].target[=].display = "og'iz bo'shlig'i QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #35
* group[=].element[=].display = "quloq oldi so'lak bezi"
* group[=].element[=].target[+].code = #C079
* group[=].element[=].target[=].display = "quloq oldi so'lak bezi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #36
* group[=].element[=].display = "jag' osti so'lak bezi"
* group[=].element[=].target[+].code = #C080
* group[=].element[=].target[=].display = "jag' osti so'lak bezi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #37
* group[=].element[=].display = "til osti so'lak bezi"
* group[=].element[=].target[+].code = #C081
* group[=].element[=].target[=].display = "til osti so'lak bezi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #38
* group[=].element[=].display = "ko'plab katta so'lak bezlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C088
* group[=].element[=].target[=].display = "ko'plab katta so'lak bezlarining qo'shma zararlanishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #39
* group[=].element[=].display = "katta so'lak bezi"
* group[=].element[=].target[+].code = #C089
* group[=].element[=].target[=].display = "katta so'lak bezi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #40
* group[=].element[=].display = "bodomchasimon chuqurcha"
* group[=].element[=].target[+].code = #C090
* group[=].element[=].target[=].display = "bodomchasimon chuqurcha"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #41
* group[=].element[=].display = "tanglay bodomcha bezi yoyi"
* group[=].element[=].target[+].code = #C091
* group[=].element[=].target[=].display = "tanglay bodomcha bezi yoyi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #42
* group[=].element[=].display = "tanglay bodomcha bezining ko'plab qismlarining zararlanishi"
* group[=].element[=].target[+].code = #C098
* group[=].element[=].target[=].display = "tanglay bodomcha bezining ko'plab qismlarining zararlanishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #43
* group[=].element[=].display = "bodomsimon bez QA"
* group[=].element[=].target[+].code = #C099
* group[=].element[=].target[=].display = "bodomsimon bez QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #44
* group[=].element[=].display = "hiqildoq usti chuqurchasi"
* group[=].element[=].target[+].code = #C100
* group[=].element[=].target[=].display = "hiqildoq usti chuqurchasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #45
* group[=].element[=].display = "hiqildoq usti old yuzasi"
* group[=].element[=].target[+].code = #C101
* group[=].element[=].target[=].display = "hiqildoq usti old yuzasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #46
* group[=].element[=].display = "og'iz-halqum yon devori"
* group[=].element[=].target[+].code = #C102
* group[=].element[=].target[=].display = "og'iz-halqum yon devori"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #47
* group[=].element[=].display = "og'iz-halqum orqa devori"
* group[=].element[=].target[+].code = #C103
* group[=].element[=].target[=].display = "og'iz-halqum orqa devori"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #48
* group[=].element[=].display = "jabrasmon yoriq"
* group[=].element[=].target[+].code = #C104
* group[=].element[=].target[=].display = "jabrasmon yoriq"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #49
* group[=].element[=].display = "ohiz-halqum ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C108
* group[=].element[=].target[=].display = "ohiz-halqum ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #50
* group[=].element[=].display = "og'iz-halqum QA"
* group[=].element[=].target[+].code = #C109
* group[=].element[=].target[=].display = "og'iz-halqum QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #51
* group[=].element[=].display = "burun-halqum yuqori devori"
* group[=].element[=].target[+].code = #C110
* group[=].element[=].target[=].display = "burun-halqum yuqori devori"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #52
* group[=].element[=].display = "burun-halqum orqa devori"
* group[=].element[=].target[+].code = #C111
* group[=].element[=].target[=].display = "burun-halqum orqa devori"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #53
* group[=].element[=].display = "burun-halqum yon devori"
* group[=].element[=].target[+].code = #C112
* group[=].element[=].target[=].display = "burun-halqum yon devori"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #54
* group[=].element[=].display = "burun-halqum old devori"
* group[=].element[=].target[+].code = #C113
* group[=].element[=].target[=].display = "burun-halqum old devori"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #55
* group[=].element[=].display = "burun-halqum ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C118
* group[=].element[=].target[=].display = "burun-halqum ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #56
* group[=].element[=].display = "burun-halqum QA"
* group[=].element[=].target[+].code = #C119
* group[=].element[=].target[=].display = "burun-halqum QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #57
* group[=].element[=].display = "hiqildoq-halqumning noksimon cho'ntagi"
* group[=].element[=].target[+].code = #C129
* group[=].element[=].target[=].display = "hiqildoq-halqumning noksimon cho'ntagi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #58
* group[=].element[=].display = "hiqildoq-halqumning uzuksimon ort sohasi"
* group[=].element[=].target[+].code = #C130
* group[=].element[=].target[=].display = "hiqildoq-halqumning uzuksimon ort sohasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #59
* group[=].element[=].display = "hiqildoq usti cho'michsimon pastki halqum burmasi"
* group[=].element[=].target[+].code = #C131
* group[=].element[=].target[=].display = "hiqildoq usti cho'michsimon pastki halqum burmasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #60
* group[=].element[=].display = "hiqildoq-halqum orqa devori"
* group[=].element[=].target[+].code = #C132
* group[=].element[=].target[=].display = "hiqildoq-halqum orqa devori"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #61
* group[=].element[=].display = "hiqildoq-halqum ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C138
* group[=].element[=].target[=].display = "hiqildoq-halqum ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #62
* group[=].element[=].display = "hiqildoq-halqum QA"
* group[=].element[=].target[+].code = #C139
* group[=].element[=].target[=].display = "hiqildoq-halqum QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #63
* group[=].element[=].display = "halqum QA"
* group[=].element[=].target[+].code = #C140
* group[=].element[=].target[=].display = "halqum QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #64
* group[=].element[=].display = "Valdeyer halqum xalqasi QA"
* group[=].element[=].target[+].code = #C142
* group[=].element[=].target[=].display = "Valdeyer halqum xalqasi QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #65
* group[=].element[=].display = "lablar, og'iz bo'shlig'i va halqumning zararlanishi"
* group[=].element[=].target[+].code = #C148
* group[=].element[=].target[=].display = "lablar, og'iz bo'shlig'i va halqumning zararlanishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #66
* group[=].element[=].display = "qizilo'ngach bo'yin qismi"
* group[=].element[=].target[+].code = #C150
* group[=].element[=].target[=].display = "qizilo'ngach bo'yin qismi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #67
* group[=].element[=].display = "qizilo'ngach ko'krak qismi"
* group[=].element[=].target[+].code = #C151
* group[=].element[=].target[=].display = "qizilo'ngach ko'krak qismi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #68
* group[=].element[=].display = "qizilo'ngach qorin qismi"
* group[=].element[=].target[+].code = #C152
* group[=].element[=].target[=].display = "qizilo'ngach qorin qismi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #69
* group[=].element[=].display = "qizilo'ngach yuqori uchligi"
* group[=].element[=].target[+].code = #C153
* group[=].element[=].target[=].display = "qizilo'ngach yuqori uchligi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #70
* group[=].element[=].display = "qizilo'ngach o'rta uchligi"
* group[=].element[=].target[+].code = #C154
* group[=].element[=].target[=].display = "qizilo'ngach o'rta uchligi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #71
* group[=].element[=].display = "qizilo'ngach pastki uchligi"
* group[=].element[=].target[+].code = #C155
* group[=].element[=].target[=].display = "qizilo'ngach pastki uchligi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #72
* group[=].element[=].display = "qizilo'ngach ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C158
* group[=].element[=].target[=].display = "qizilo'ngach ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #73
* group[=].element[=].display = "oshqozon kardiyasi QA"
* group[=].element[=].target[+].code = #C160
* group[=].element[=].target[=].display = "oshqozon kardiyasi QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #74
* group[=].element[=].display = "oshqozon tubi"
* group[=].element[=].target[+].code = #C161
* group[=].element[=].target[=].display = "oshqozon tubi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #75
* group[=].element[=].display = "oshqozon tanasi"
* group[=].element[=].target[+].code = #C162
* group[=].element[=].target[=].display = "oshqozon tanasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #76
* group[=].element[=].display = "oshqozonning 12 barmoq ichakka o'tadigan qismi"
* group[=].element[=].target[+].code = #C163
* group[=].element[=].target[=].display = "oshqozonning 12 barmoq ichakka o'tadigan qismi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #77
* group[=].element[=].display = "qorin bo'yni"
* group[=].element[=].target[+].code = #C164
* group[=].element[=].target[=].display = "qorin bo'yni"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #78
* group[=].element[=].display = "oshqozon kichik egriligi"
* group[=].element[=].target[+].code = #C165
* group[=].element[=].target[=].display = "oshqozon kichik egriligi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #79
* group[=].element[=].display = "oshqozon katta egriligi"
* group[=].element[=].target[+].code = #C166
* group[=].element[=].target[=].display = "oshqozon katta egriligi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #80
* group[=].element[=].display = "oshqozon ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C168
* group[=].element[=].target[=].display = "oshqozon ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #81
* group[=].element[=].display = "oshqozon QA"
* group[=].element[=].target[+].code = #C169
* group[=].element[=].target[=].display = "oshqozon QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #82
* group[=].element[=].display = "12 barmoq ichak"
* group[=].element[=].target[+].code = #C170
* group[=].element[=].target[=].display = "12 barmoq ichak"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #83
* group[=].element[=].display = "och ichak"
* group[=].element[=].target[+].code = #C171
* group[=].element[=].target[=].display = "och ichak"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #84
* group[=].element[=].display = "yonbosh ichak"
* group[=].element[=].target[+].code = #C172
* group[=].element[=].target[=].display = "yonbosh ichak"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #85
* group[=].element[=].display = "Mekkel divertikuli"
* group[=].element[=].target[+].code = #C173
* group[=].element[=].target[=].display = "Mekkel divertikuli"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #86
* group[=].element[=].display = "ingichka ichak ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C178
* group[=].element[=].target[=].display = "ingichka ichak ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #87
* group[=].element[=].display = "ingichka ichak"
* group[=].element[=].target[+].code = #C179
* group[=].element[=].target[=].display = "ingichka ichak"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #88
* group[=].element[=].display = "ko'r ichak"
* group[=].element[=].target[+].code = #C180
* group[=].element[=].target[=].display = "ko'r ichak"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #89
* group[=].element[=].display = "chuvalchangsimon o'simta"
* group[=].element[=].target[+].code = #C181
* group[=].element[=].target[=].display = "chuvalchangsimon o'simta"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #90
* group[=].element[=].display = "ko'tariluvchi chambar ichak"
* group[=].element[=].target[+].code = #C182
* group[=].element[=].target[=].display = "ko'tariluvchi chambar ichak"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #91
* group[=].element[=].display = "yo'g'on ichak o'ng (jigar) burilishi"
* group[=].element[=].target[+].code = #C183
* group[=].element[=].target[=].display = "yo'g'on ichak o'ng (jigar) burilishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #92
* group[=].element[=].display = "ko'ndalang chambar ichak"
* group[=].element[=].target[+].code = #C184
* group[=].element[=].target[=].display = "ko'ndalang chambar ichak"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #93
* group[=].element[=].display = "yo'g'on ichak chap (taloq) burilishi"
* group[=].element[=].target[+].code = #C185
* group[=].element[=].target[=].display = "yo'g'on ichak chap (taloq) burilishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #94
* group[=].element[=].display = "tushuvchi chambar ichak"
* group[=].element[=].target[+].code = #C186
* group[=].element[=].target[=].display = "tushuvchi chambar ichak"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #95
* group[=].element[=].display = "sigmasimon ichak"
* group[=].element[=].target[+].code = #C187
* group[=].element[=].target[=].display = "sigmasimon ichak"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #96
* group[=].element[=].display = "yo'g'on ichak ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C188
* group[=].element[=].target[=].display = "yo'g'on ichak ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #97
* group[=].element[=].display = "yo'g'on ichak QA"
* group[=].element[=].target[+].code = #C189
* group[=].element[=].target[=].display = "yo'g'on ichak QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #98
* group[=].element[=].display = "rektosigmoid birikma"
* group[=].element[=].target[+].code = #C199
* group[=].element[=].target[=].display = "rektosigmoid birikma"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #99
* group[=].element[=].display = "to'g'ri ichak"
* group[=].element[=].target[+].code = #C209
* group[=].element[=].target[=].display = "to'g'ri ichak"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #100
* group[=].element[=].display = "anus"
* group[=].element[=].target[+].code = #C210
* group[=].element[=].target[=].display = "anus"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #101
* group[=].element[=].display = "anal kanal"
* group[=].element[=].target[+].code = #C211
* group[=].element[=].target[=].display = "anal kanal"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #102
* group[=].element[=].display = "kloakogen soha"
* group[=].element[=].target[+].code = #C212
* group[=].element[=].target[=].display = "kloakogen soha"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #103
* group[=].element[=].display = "to'g'ri ichak va anusning ko'plab qismlarining zararlanishi"
* group[=].element[=].target[+].code = #C218
* group[=].element[=].target[=].display = "to'g'ri ichak va anusning ko'plab qismlarining zararlanishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #104
* group[=].element[=].display = "jigar"
* group[=].element[=].target[+].code = #C220
* group[=].element[=].target[=].display = "jigar"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #105
* group[=].element[=].display = "jigar ichi o't yo'li"
* group[=].element[=].target[+].code = #C221
* group[=].element[=].target[=].display = "jigar ichi o't yo'li"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #106
* group[=].element[=].display = "o't pufagi"
* group[=].element[=].target[+].code = #C239
* group[=].element[=].target[=].display = "o't pufagi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #107
* group[=].element[=].display = "jigardan tashqari o't yo'li"
* group[=].element[=].target[+].code = #C240
* group[=].element[=].target[=].display = "jigardan tashqari o't yo'li"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #108
* group[=].element[=].display = "jigar-oshqozon osti bezi Fater ampulasi"
* group[=].element[=].target[+].code = #C241
* group[=].element[=].target[=].display = "jigar-oshqozon osti bezi Fater ampulasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #109
* group[=].element[=].display = "o't yo'llari ko'plab qismlarining zararlanishi"
* group[=].element[=].target[+].code = #C248
* group[=].element[=].target[=].display = "o't yo'llari ko'plab qismlarining zararlanishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #110
* group[=].element[=].display = "jigar yo'llari QA"
* group[=].element[=].target[+].code = #C249
* group[=].element[=].target[=].display = "jigar yo'llari QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #111
* group[=].element[=].display = "oshqozon osti bezi boshchasi"
* group[=].element[=].target[+].code = #C250
* group[=].element[=].target[=].display = "oshqozon osti bezi boshchasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #112
* group[=].element[=].display = "oshqozon osti bezi boshchasi"
* group[=].element[=].target[+].code = #C251
* group[=].element[=].target[=].display = "oshqozon osti bezi boshchasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #113
* group[=].element[=].display = "oshqozon osti bezi dumi"
* group[=].element[=].target[+].code = #C252
* group[=].element[=].target[=].display = "oshqozon osti bezi dumi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #114
* group[=].element[=].display = "oshqozon osti bezi yo'li"
* group[=].element[=].target[+].code = #C253
* group[=].element[=].target[=].display = "oshqozon osti bezi yo'li"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #115
* group[=].element[=].display = "oshqozon osti bezi Langergans orolchalari"
* group[=].element[=].target[+].code = #C254
* group[=].element[=].target[=].display = "oshqozon osti bezi Langergans orolchalari"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #116
* group[=].element[=].display = "oshqozon osti bezining boshqa qismlari"
* group[=].element[=].target[+].code = #C257
* group[=].element[=].target[=].display = "oshqozon osti bezining boshqa qismlari"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #117
* group[=].element[=].display = "oshqozon osti bezi ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C258
* group[=].element[=].target[=].display = "oshqozon osti bezi ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #118
* group[=].element[=].display = "oshqozon osti bezi QA"
* group[=].element[=].target[+].code = #C259
* group[=].element[=].target[=].display = "oshqozon osti bezi QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #119
* group[=].element[=].display = "ichaklar QA"
* group[=].element[=].target[+].code = #C260
* group[=].element[=].target[=].display = "ichaklar QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #120
* group[=].element[=].display = "hazm qilish tizimi ko'plab qismlarining zararlanishi"
* group[=].element[=].target[+].code = #C268
* group[=].element[=].target[=].display = "hazm qilish tizimi ko'plab qismlarining zararlanishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #121
* group[=].element[=].display = "oshqozon-ichak tizimi QA"
* group[=].element[=].target[+].code = #C269
* group[=].element[=].target[=].display = "oshqozon-ichak tizimi QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #122
* group[=].element[=].display = "burun bo'shlig'i"
* group[=].element[=].target[+].code = #C300
* group[=].element[=].target[=].display = "burun bo'shlig'i"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #123
* group[=].element[=].display = "o'rta quloq"
* group[=].element[=].target[+].code = #C301
* group[=].element[=].target[=].display = "o'rta quloq"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #124
* group[=].element[=].display = "yuqori jag' bo'shlig'i"
* group[=].element[=].target[+].code = #C310
* group[=].element[=].target[=].display = "yuqori jag' bo'shlig'i"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #125
* group[=].element[=].display = "g'alvirsimon bo'shliq"
* group[=].element[=].target[+].code = #C311
* group[=].element[=].target[=].display = "g'alvirsimon bo'shliq"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #126
* group[=].element[=].display = "peshona bo'shlig'i"
* group[=].element[=].target[+].code = #C312
* group[=].element[=].target[=].display = "peshona bo'shlig'i"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #127
* group[=].element[=].display = "ponasimon bo'shliq"
* group[=].element[=].target[+].code = #C313
* group[=].element[=].target[=].display = "ponasimon bo'shliq"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #128
* group[=].element[=].display = "qo'shimcha (yondosh) bo'shliqlarning qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C318
* group[=].element[=].target[=].display = "qo'shimcha (yondosh) bo'shliqlarning qo'shma zararlanishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #129
* group[=].element[=].display = "qo'shimcha (yondosh) bo'shliqlar QA"
* group[=].element[=].target[+].code = #C319
* group[=].element[=].target[=].display = "qo'shimcha (yondosh) bo'shliqlar QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #130
* group[=].element[=].display = "ovoz yorig'i (boylam sohasi)"
* group[=].element[=].target[+].code = #C320
* group[=].element[=].target[=].display = "ovoz yorig'i (boylam sohasi)"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #131
* group[=].element[=].display = "hiqildoqning boylam usti sohasi"
* group[=].element[=].target[+].code = #C321
* group[=].element[=].target[=].display = "hiqildoqning boylam usti sohasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #132
* group[=].element[=].display = "hiqildoqning boylam osti sohasi"
* group[=].element[=].target[+].code = #C322
* group[=].element[=].target[=].display = "hiqildoqning boylam osti sohasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #133
* group[=].element[=].display = "hiqildoq tog'aylari"
* group[=].element[=].target[+].code = #C323
* group[=].element[=].target[=].display = "hiqildoq tog'aylari"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #134
* group[=].element[=].display = "hiqildoq ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C328
* group[=].element[=].target[=].display = "hiqildoq ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #135
* group[=].element[=].display = "hiqildoq QA"
* group[=].element[=].target[+].code = #C329
* group[=].element[=].target[=].display = "hiqildoq QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #136
* group[=].element[=].display = "traxeya"
* group[=].element[=].target[+].code = #C339
* group[=].element[=].target[=].display = "traxeya"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #137
* group[=].element[=].display = "bosh bronx"
* group[=].element[=].target[+].code = #C340
* group[=].element[=].target[=].display = "bosh bronx"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #138
* group[=].element[=].display = "o'pkaning yuqori bo'lagi"
* group[=].element[=].target[+].code = #C341
* group[=].element[=].target[=].display = "o'pkaning yuqori bo'lagi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #139
* group[=].element[=].display = "o'pkaning o'rta bo'lagi"
* group[=].element[=].target[+].code = #C342
* group[=].element[=].target[=].display = "o'pkaning o'rta bo'lagi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #140
* group[=].element[=].display = "o'pkaning pastki bo'lagi"
* group[=].element[=].target[+].code = #C343
* group[=].element[=].target[=].display = "o'pkaning pastki bo'lagi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #141
* group[=].element[=].display = "o'pka va bronxning ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C348
* group[=].element[=].target[=].display = "o'pka va bronxning ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #142
* group[=].element[=].display = "o'pka QA"
* group[=].element[=].target[+].code = #C349
* group[=].element[=].target[=].display = "o'pka QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #143
* group[=].element[=].display = "ayrisimon bez"
* group[=].element[=].target[+].code = #C379
* group[=].element[=].target[=].display = "ayrisimon bez"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #144
* group[=].element[=].display = "yurak"
* group[=].element[=].target[+].code = #C380
* group[=].element[=].target[=].display = "yurak"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #145
* group[=].element[=].display = "ko'ks old sohasi"
* group[=].element[=].target[+].code = #C381
* group[=].element[=].target[=].display = "ko'ks old sohasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #146
* group[=].element[=].display = "ko'ks orqa sohasi"
* group[=].element[=].target[+].code = #C382
* group[=].element[=].target[=].display = "ko'ks orqa sohasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #147
* group[=].element[=].display = "ko'ks oralig'i QA"
* group[=].element[=].target[+].code = #C383
* group[=].element[=].target[=].display = "ko'ks oralig'i QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #148
* group[=].element[=].display = "plevra QA"
* group[=].element[=].target[+].code = #C384
* group[=].element[=].target[=].display = "plevra QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #149
* group[=].element[=].display = "yurak, ko'ks oralig'i va plevraning ko'plab qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C388
* group[=].element[=].target[=].display = "yurak, ko'ks oralig'i va plevraning ko'plab qo'shma zararlanishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #150
* group[=].element[=].display = "yuqori nafas yo'llari"
* group[=].element[=].target[+].code = #C390
* group[=].element[=].target[=].display = "yuqori nafas yo'llari"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #151
* group[=].element[=].display = "nafas tizimi ko'plab qismlarining zararlanishi"
* group[=].element[=].target[+].code = #C398
* group[=].element[=].target[=].display = "nafas tizimi ko'plab qismlarining zararlanishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #152
* group[=].element[=].display = "nafas tizimi QA"
* group[=].element[=].target[+].code = #C399
* group[=].element[=].target[=].display = "nafas tizimi QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #153
* group[=].element[=].display = "qo'lning uzun va kurak suyagi"
* group[=].element[=].target[+].code = #C400
* group[=].element[=].target[=].display = "qo'lning uzun va kurak suyagi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #154
* group[=].element[=].display = "qo'lning kalta suyagi"
* group[=].element[=].target[+].code = #C401
* group[=].element[=].target[=].display = "qo'lning kalta suyagi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #155
* group[=].element[=].display = "oyoqning uzun suyagi"
* group[=].element[=].target[+].code = #C402
* group[=].element[=].target[=].display = "oyoqning uzun suyagi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #156
* group[=].element[=].display = "oyoqning kalta suyagi"
* group[=].element[=].target[+].code = #C403
* group[=].element[=].target[=].display = "oyoqning kalta suyagi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #157
* group[=].element[=].display = "oyoo'-qo'llarning ko'plab zararlanishi"
* group[=].element[=].target[+].code = #C408
* group[=].element[=].target[=].display = "oyoo'-qo'llarning ko'plab zararlanishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #158
* group[=].element[=].display = "oyoq-qo'llar suyaklari QA"
* group[=].element[=].target[+].code = #C409
* group[=].element[=].target[=].display = "oyoq-qo'llar suyaklari QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #159
* group[=].element[=].display = "bosh va yuz suyaklari"
* group[=].element[=].target[+].code = #C410
* group[=].element[=].target[=].display = "bosh va yuz suyaklari"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #160
* group[=].element[=].display = "pastki jag' suyagi"
* group[=].element[=].target[+].code = #C411
* group[=].element[=].target[=].display = "pastki jag' suyagi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #161
* group[=].element[=].display = "umurtqa"
* group[=].element[=].target[+].code = #C412
* group[=].element[=].target[=].display = "umurtqa"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #162
* group[=].element[=].display = "qovurg'a, to'sh, o'mrov"
* group[=].element[=].target[+].code = #C413
* group[=].element[=].target[=].display = "qovurg'a, to'sh, o'mrov"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #163
* group[=].element[=].display = "chanoq, dumg'aza va dum suyaklari"
* group[=].element[=].target[+].code = #C414
* group[=].element[=].target[=].display = "chanoq, dumg'aza va dum suyaklari"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #164
* group[=].element[=].display = "suyak, bo'g'im, bo'g'im tog'ayining ma'lum chegaradan chiqib zararlanishi"
* group[=].element[=].target[+].code = #C418
* group[=].element[=].target[=].display = "suyak, bo'g'im, bo'g'im tog'ayining ma'lum chegaradan chiqib zararlanishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #165
* group[=].element[=].display = "suyak QA"
* group[=].element[=].target[+].code = #C419
* group[=].element[=].target[=].display = "suyak QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #166
* group[=].element[=].display = "qon"
* group[=].element[=].target[+].code = #C420
* group[=].element[=].target[=].display = "qon"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #167
* group[=].element[=].display = "suyak ko'migi"
* group[=].element[=].target[+].code = #C421
* group[=].element[=].target[=].display = "suyak ko'migi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #168
* group[=].element[=].display = "taloq"
* group[=].element[=].target[+].code = #C422
* group[=].element[=].target[=].display = "taloq"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #169
* group[=].element[=].display = "retikuloendotelial tizim QA"
* group[=].element[=].target[+].code = #C423
* group[=].element[=].target[=].display = "retikuloendotelial tizim QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #170
* group[=].element[=].display = "qon ishlab chiqaruvchi tizim QA"
* group[=].element[=].target[+].code = #C424
* group[=].element[=].target[=].display = "qon ishlab chiqaruvchi tizim QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #171
* group[=].element[=].display = "lab terisi QA"
* group[=].element[=].target[+].code = #C440
* group[=].element[=].target[=].display = "lab terisi QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #172
* group[=].element[=].display = "qovoq terisi"
* group[=].element[=].target[+].code = #C441
* group[=].element[=].target[=].display = "qovoq terisi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #173
* group[=].element[=].display = "tashqi quloq"
* group[=].element[=].target[+].code = #C442
* group[=].element[=].target[=].display = "tashqi quloq"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #174
* group[=].element[=].display = "yuz terisi"
* group[=].element[=].target[+].code = #C443
* group[=].element[=].target[=].display = "yuz terisi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #175
* group[=].element[=].display = "boshning sochli qismi va bo'yin terisi"
* group[=].element[=].target[+].code = #C444
* group[=].element[=].target[=].display = "boshning sochli qismi va bo'yin terisi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #176
* group[=].element[=].display = "tana terisi"
* group[=].element[=].target[+].code = #C445
* group[=].element[=].target[=].display = "tana terisi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #177
* group[=].element[=].display = "qo'l va elka terisi"
* group[=].element[=].target[+].code = #C446
* group[=].element[=].target[=].display = "qo'l va elka terisi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #178
* group[=].element[=].display = "oyoq va son terisi"
* group[=].element[=].target[+].code = #C447
* group[=].element[=].target[=].display = "oyoq va son terisi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #179
* group[=].element[=].display = "terining ko'plab zararlanishi"
* group[=].element[=].target[+].code = #C448
* group[=].element[=].target[=].display = "terining ko'plab zararlanishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #180
* group[=].element[=].display = "teri QA"
* group[=].element[=].target[+].code = #C449
* group[=].element[=].target[=].display = "teri QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #181
* group[=].element[=].display = "bosh, yuz va bo'yinning periferik nervlari va vegetativ AT"
* group[=].element[=].target[+].code = #C470
* group[=].element[=].target[=].display = "bosh, yuz va bo'yinning periferik nervlari va vegetativ AT"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #182
* group[=].element[=].display = "qo'l va elka kamarining periferik nervlari va vegetativ AT"
* group[=].element[=].target[+].code = #C471
* group[=].element[=].target[=].display = "qo'l va elka kamarining periferik nervlari va vegetativ AT"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #183
* group[=].element[=].display = "oyoq va sonningperiferik nervlari va vegetativ AT"
* group[=].element[=].target[+].code = #C472
* group[=].element[=].target[=].display = "oyoq va sonningperiferik nervlari va vegetativ AT"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #184
* group[=].element[=].display = "ko'krak qafasining periferik nervlari va vegetativ AT"
* group[=].element[=].target[+].code = #C473
* group[=].element[=].target[=].display = "ko'krak qafasining periferik nervlari va vegetativ AT"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #185
* group[=].element[=].display = "qorinning periferik nervlari va vegetativ AT"
* group[=].element[=].target[+].code = #C474
* group[=].element[=].target[=].display = "qorinning periferik nervlari va vegetativ AT"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #186
* group[=].element[=].display = "chanoqning periferik nervlari va vegetativ AT"
* group[=].element[=].target[+].code = #C475
* group[=].element[=].target[=].display = "chanoqning periferik nervlari va vegetativ AT"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #187
* group[=].element[=].display = "orqa (tana orqa qismi) ning periferik nervlari va vegetativ AT"
* group[=].element[=].target[+].code = #C476
* group[=].element[=].target[=].display = "orqa (tana orqa qismi) ning periferik nervlari va vegetativ AT"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #188
* group[=].element[=].display = "periferik nervlar va vegetativ ATning ko'plab zararlanishi"
* group[=].element[=].target[+].code = #C478
* group[=].element[=].target[=].display = "periferik nervlar va vegetativ ATning ko'plab zararlanishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #189
* group[=].element[=].display = "periferik nervlar va vegetativ ATQA"
* group[=].element[=].target[+].code = #C479
* group[=].element[=].target[=].display = "periferik nervlar va vegetativ ATQA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #190
* group[=].element[=].display = "qorin orti bo'shlig'i"
* group[=].element[=].target[+].code = #C480
* group[=].element[=].target[=].display = "qorin orti bo'shlig'i"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #191
* group[=].element[=].display = "qorin parda, aniq sohasi"
* group[=].element[=].target[+].code = #C481
* group[=].element[=].target[=].display = "qorin parda, aniq sohasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #192
* group[=].element[=].display = "qorin parda, noaniq sohasi"
* group[=].element[=].target[+].code = #C482
* group[=].element[=].target[=].display = "qorin parda, noaniq sohasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #193
* group[=].element[=].display = "qorin orti bo'shlig'i va qorin pardaning ko'plab qismlarining zararlanishi"
* group[=].element[=].target[+].code = #C488
* group[=].element[=].target[=].display = "qorin orti bo'shlig'i va qorin pardaning ko'plab qismlarining zararlanishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #194
* group[=].element[=].display = "bosh, yuz, bo'yinning yumshoq to'qimasi"
* group[=].element[=].target[+].code = #C490
* group[=].element[=].target[=].display = "bosh, yuz, bo'yinning yumshoq to'qimasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #195
* group[=].element[=].display = "qo'l, elkaning biriktiruvchi va yumshoq to'qimasi"
* group[=].element[=].target[+].code = #C491
* group[=].element[=].target[=].display = "qo'l, elkaning biriktiruvchi va yumshoq to'qimasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #196
* group[=].element[=].display = "oyoq va sonning biriktiruvchi va yumshoq to'qimasi"
* group[=].element[=].target[+].code = #C492
* group[=].element[=].target[=].display = "oyoq va sonning biriktiruvchi va yumshoq to'qimasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #197
* group[=].element[=].display = "ko'krak devori yumshoq to'qimasi"
* group[=].element[=].target[+].code = #C493
* group[=].element[=].target[=].display = "ko'krak devori yumshoq to'qimasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #198
* group[=].element[=].display = "qorin devori yumshoq to'qimasi"
* group[=].element[=].target[+].code = #C494
* group[=].element[=].target[=].display = "qorin devori yumshoq to'qimasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #199
* group[=].element[=].display = "chanoqning biriktiruvchi va yumshoq to'qimasi"
* group[=].element[=].target[+].code = #C495
* group[=].element[=].target[=].display = "chanoqning biriktiruvchi va yumshoq to'qimasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #200
* group[=].element[=].display = "orqa (tana orqa qismi) ning yumshoq to'qimasi"
* group[=].element[=].target[+].code = #C496
* group[=].element[=].target[=].display = "orqa (tana orqa qismi) ning yumshoq to'qimasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #201
* group[=].element[=].display = "tananing ko'plab qismlari yumshoq to'qimasining zararlanishi"
* group[=].element[=].target[+].code = #C498
* group[=].element[=].target[=].display = "tananing ko'plab qismlari yumshoq to'qimasining zararlanishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #202
* group[=].element[=].display = "biriktiruvchi va yumshoq to'qima QA"
* group[=].element[=].target[+].code = #C499
* group[=].element[=].target[=].display = "biriktiruvchi va yumshoq to'qima QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #203
* group[=].element[=].display = "sut bezi, so'rg'ich va so'rg'ich atrofi (areola)"
* group[=].element[=].target[+].code = #C500
* group[=].element[=].target[=].display = "sut bezi, so'rg'ich va so'rg'ich atrofi (areola)"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #204
* group[=].element[=].display = "sut bezi markaziy qismi"
* group[=].element[=].target[+].code = #C501
* group[=].element[=].target[=].display = "sut bezi markaziy qismi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #205
* group[=].element[=].display = "sut bezi yuqori-ichki kvadranti"
* group[=].element[=].target[+].code = #C502
* group[=].element[=].target[=].display = "sut bezi yuqori-ichki kvadranti"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #206
* group[=].element[=].display = "sut bezi pastki-ichki kvadranti"
* group[=].element[=].target[+].code = #C503
* group[=].element[=].target[=].display = "sut bezi pastki-ichki kvadranti"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #207
* group[=].element[=].display = "sut bezi yuqori-tashqi kvadranti"
* group[=].element[=].target[+].code = #C504
* group[=].element[=].target[=].display = "sut bezi yuqori-tashqi kvadranti"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #208
* group[=].element[=].display = "sut bezi pastki-tashqi kvadranti"
* group[=].element[=].target[+].code = #C505
* group[=].element[=].target[=].display = "sut bezi pastki-tashqi kvadranti"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #209
* group[=].element[=].display = "sut bezi qo'ltiq osti o'simtasi"
* group[=].element[=].target[+].code = #C506
* group[=].element[=].target[=].display = "sut bezi qo'ltiq osti o'simtasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #210
* group[=].element[=].display = "sut bezining ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C508
* group[=].element[=].target[=].display = "sut bezining ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #211
* group[=].element[=].display = "sut bezi QA"
* group[=].element[=].target[+].code = #C509
* group[=].element[=].target[=].display = "sut bezi QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #212
* group[=].element[=].display = "katta uyatli lab"
* group[=].element[=].target[+].code = #C510
* group[=].element[=].target[=].display = "katta uyatli lab"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #213
* group[=].element[=].display = "kichik uyatli lab"
* group[=].element[=].target[+].code = #C511
* group[=].element[=].target[=].display = "kichik uyatli lab"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #214
* group[=].element[=].display = "klitor"
* group[=].element[=].target[+].code = #C512
* group[=].element[=].target[=].display = "klitor"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #215
* group[=].element[=].display = "qin dahlizining ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C518
* group[=].element[=].target[=].display = "qin dahlizining ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #216
* group[=].element[=].display = "qin dahlizi QA"
* group[=].element[=].target[+].code = #C519
* group[=].element[=].target[=].display = "qin dahlizi QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #217
* group[=].element[=].display = "qin QA"
* group[=].element[=].target[+].code = #C529
* group[=].element[=].target[=].display = "qin QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #218
* group[=].element[=].display = "bachadon bo'ynining ichki qismi"
* group[=].element[=].target[+].code = #C530
* group[=].element[=].target[=].display = "bachadon bo'ynining ichki qismi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #219
* group[=].element[=].display = "bachadon bo'ynining tashqi qismi"
* group[=].element[=].target[+].code = #C531
* group[=].element[=].target[=].display = "bachadon bo'ynining tashqi qismi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #220
* group[=].element[=].display = "bachadon bo'yniningko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C538
* group[=].element[=].target[=].display = "bachadon bo'yniningko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #221
* group[=].element[=].display = "bachadon bo'yni"
* group[=].element[=].target[+].code = #C539
* group[=].element[=].target[=].display = "bachadon bo'yni"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #222
* group[=].element[=].display = "bachadon bo'yinchasi"
* group[=].element[=].target[+].code = #C540
* group[=].element[=].target[=].display = "bachadon bo'yinchasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #223
* group[=].element[=].display = "endometriy"
* group[=].element[=].target[+].code = #C541
* group[=].element[=].target[=].display = "endometriy"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #224
* group[=].element[=].display = "miometriy"
* group[=].element[=].target[+].code = #C542
* group[=].element[=].target[=].display = "miometriy"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #225
* group[=].element[=].display = "bachadon tubi"
* group[=].element[=].target[+].code = #C543
* group[=].element[=].target[=].display = "bachadon tubi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #226
* group[=].element[=].display = "bachadon tanasining ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C548
* group[=].element[=].target[=].display = "bachadon tanasining ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #227
* group[=].element[=].display = "bachadon tanasi"
* group[=].element[=].target[+].code = #C549
* group[=].element[=].target[=].display = "bachadon tanasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #228
* group[=].element[=].display = "bachadon QA"
* group[=].element[=].target[+].code = #C559
* group[=].element[=].target[=].display = "bachadon QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #229
* group[=].element[=].display = "tuxumdon"
* group[=].element[=].target[+].code = #C569
* group[=].element[=].target[=].display = "tuxumdon"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #230
* group[=].element[=].display = "fallopiev nayi"
* group[=].element[=].target[+].code = #C570
* group[=].element[=].target[=].display = "fallopiev nayi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #231
* group[=].element[=].display = "bachadon keng boylami"
* group[=].element[=].target[+].code = #C571
* group[=].element[=].target[=].display = "bachadon keng boylami"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #232
* group[=].element[=].display = "bachadon yumaloq boylami"
* group[=].element[=].target[+].code = #C572
* group[=].element[=].target[=].display = "bachadon yumaloq boylami"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #233
* group[=].element[=].display = "parametriy"
* group[=].element[=].target[+].code = #C573
* group[=].element[=].target[=].display = "parametriy"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #234
* group[=].element[=].display = "bachadon ortiqlari"
* group[=].element[=].target[+].code = #C574
* group[=].element[=].target[=].display = "bachadon ortiqlari"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #235
* group[=].element[=].display = "ayollar jinsiy a'zolarining boshqa sohalari"
* group[=].element[=].target[+].code = #C577
* group[=].element[=].target[=].display = "ayollar jinsiy a'zolarining boshqa sohalari"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #236
* group[=].element[=].display = "ayollar ko'plab jinsiy a'zolarining zararlanishi"
* group[=].element[=].target[+].code = #C578
* group[=].element[=].target[=].display = "ayollar ko'plab jinsiy a'zolarining zararlanishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #237
* group[=].element[=].display = "ayollar jinsiy a'zolari QA"
* group[=].element[=].target[+].code = #C579
* group[=].element[=].target[=].display = "ayollar jinsiy a'zolari QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #238
* group[=].element[=].display = "plasenta (yo'ldosh)"
* group[=].element[=].target[+].code = #C589
* group[=].element[=].target[=].display = "plasenta (yo'ldosh)"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #239
* group[=].element[=].display = "jinsiy olat cheka kertmagi"
* group[=].element[=].target[+].code = #C600
* group[=].element[=].target[=].display = "jinsiy olat cheka kertmagi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #240
* group[=].element[=].display = "jinsiy olat boshchasi"
* group[=].element[=].target[+].code = #C601
* group[=].element[=].target[=].display = "jinsiy olat boshchasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #241
* group[=].element[=].display = "jinsiy olat tanasi"
* group[=].element[=].target[+].code = #C602
* group[=].element[=].target[=].display = "jinsiy olat tanasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #242
* group[=].element[=].display = "jinsiy olat ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C608
* group[=].element[=].target[=].display = "jinsiy olat ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #243
* group[=].element[=].display = "jinsiy olat QA"
* group[=].element[=].target[+].code = #C609
* group[=].element[=].target[=].display = "jinsiy olat QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #244
* group[=].element[=].display = "prostata bezi"
* group[=].element[=].target[+].code = #C619
* group[=].element[=].target[=].display = "prostata bezi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #245
* group[=].element[=].display = "yorg'oqqa tushmagan moyak"
* group[=].element[=].target[+].code = #C620
* group[=].element[=].target[=].display = "yorg'oqqa tushmagan moyak"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #246
* group[=].element[=].display = "yorg'oqqa tushgan moyak"
* group[=].element[=].target[+].code = #C621
* group[=].element[=].target[=].display = "yorg'oqqa tushgan moyak"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #247
* group[=].element[=].display = "moyak QA"
* group[=].element[=].target[+].code = #C629
* group[=].element[=].target[=].display = "moyak QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #248
* group[=].element[=].display = "moyakning ortiqlari"
* group[=].element[=].target[+].code = #C630
* group[=].element[=].target[=].display = "moyakning ortiqlari"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #249
* group[=].element[=].display = "urug' tizimchasi"
* group[=].element[=].target[+].code = #C631
* group[=].element[=].target[=].display = "urug' tizimchasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #250
* group[=].element[=].display = "yorg'oq QA"
* group[=].element[=].target[+].code = #C632
* group[=].element[=].target[=].display = "yorg'oq QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #251
* group[=].element[=].display = "erkaklar jinsiy a'zolarining boshqa sohalari"
* group[=].element[=].target[+].code = #C637
* group[=].element[=].target[=].display = "erkaklar jinsiy a'zolarining boshqa sohalari"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #252
* group[=].element[=].display = "erkaklar ko'plab jinsiy a'zolarining zararlanishi"
* group[=].element[=].target[+].code = #C638
* group[=].element[=].target[=].display = "erkaklar ko'plab jinsiy a'zolarining zararlanishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #253
* group[=].element[=].display = "erkaklar jinsiy a'zolari QA"
* group[=].element[=].target[+].code = #C639
* group[=].element[=].target[=].display = "erkaklar jinsiy a'zolari QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #254
* group[=].element[=].display = "buyrak"
* group[=].element[=].target[+].code = #C649
* group[=].element[=].target[=].display = "buyrak"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #255
* group[=].element[=].display = "buyrak jomi"
* group[=].element[=].target[+].code = #C659
* group[=].element[=].target[=].display = "buyrak jomi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #256
* group[=].element[=].display = "siydik nayi"
* group[=].element[=].target[+].code = #C669
* group[=].element[=].target[=].display = "siydik nayi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #257
* group[=].element[=].display = "siydik pufagi uchburchagi"
* group[=].element[=].target[+].code = #C670
* group[=].element[=].target[=].display = "siydik pufagi uchburchagi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #258
* group[=].element[=].display = "siydik pufagi gumbazi"
* group[=].element[=].target[+].code = #C671
* group[=].element[=].target[=].display = "siydik pufagi gumbazi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #259
* group[=].element[=].display = "siydik pufagi yon devori"
* group[=].element[=].target[+].code = #C672
* group[=].element[=].target[=].display = "siydik pufagi yon devori"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #260
* group[=].element[=].display = "siydik pufagi old devori"
* group[=].element[=].target[+].code = #C673
* group[=].element[=].target[=].display = "siydik pufagi old devori"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #261
* group[=].element[=].display = "siydik pufagi orqa devori"
* group[=].element[=].target[+].code = #C674
* group[=].element[=].target[=].display = "siydik pufagi orqa devori"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #262
* group[=].element[=].display = "siydik pufagi bo'yinchasi"
* group[=].element[=].target[+].code = #C675
* group[=].element[=].target[=].display = "siydik pufagi bo'yinchasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #263
* group[=].element[=].display = "siydik nayi teshigi"
* group[=].element[=].target[+].code = #C676
* group[=].element[=].target[=].display = "siydik nayi teshigi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #264
* group[=].element[=].display = "uraxus (birlamchi siydik yo'li)"
* group[=].element[=].target[+].code = #C677
* group[=].element[=].target[=].display = "uraxus (birlamchi siydik yo'li)"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #265
* group[=].element[=].display = "siydik pufagining ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C678
* group[=].element[=].target[=].display = "siydik pufagining ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #266
* group[=].element[=].display = "siydik pufagi QA"
* group[=].element[=].target[+].code = #C679
* group[=].element[=].target[=].display = "siydik pufagi QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #267
* group[=].element[=].display = "siydik kanali"
* group[=].element[=].target[+].code = #C680
* group[=].element[=].target[=].display = "siydik kanali"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #268
* group[=].element[=].display = "parauretral bez"
* group[=].element[=].target[+].code = #C681
* group[=].element[=].target[=].display = "parauretral bez"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #269
* group[=].element[=].display = "ko'plab ayirish a'zolarining zararlanishi"
* group[=].element[=].target[+].code = #C688
* group[=].element[=].target[=].display = "ko'plab ayirish a'zolarining zararlanishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #270
* group[=].element[=].display = "ayirish a'zolari QA"
* group[=].element[=].target[+].code = #C689
* group[=].element[=].target[=].display = "ayirish a'zolari QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #271
* group[=].element[=].display = "kon'yunktiva"
* group[=].element[=].target[+].code = #C690
* group[=].element[=].target[=].display = "kon'yunktiva"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #272
* group[=].element[=].display = "shox parda QA"
* group[=].element[=].target[+].code = #C691
* group[=].element[=].target[=].display = "shox parda QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #273
* group[=].element[=].display = "to'r parda QA"
* group[=].element[=].target[+].code = #C692
* group[=].element[=].target[=].display = "to'r parda QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #274
* group[=].element[=].display = "ko'z tomirli pardasi"
* group[=].element[=].target[+].code = #C693
* group[=].element[=].target[=].display = "ko'z tomirli pardasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #275
* group[=].element[=].display = "ko'z kipriksimon tanasi"
* group[=].element[=].target[+].code = #C694
* group[=].element[=].target[=].display = "ko'z kipriksimon tanasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #276
* group[=].element[=].display = "yosh bezi QA"
* group[=].element[=].target[+].code = #C695
* group[=].element[=].target[=].display = "yosh bezi QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #277
* group[=].element[=].display = "ko'z kosasi QA"
* group[=].element[=].target[+].code = #C696
* group[=].element[=].target[=].display = "ko'z kosasi QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #278
* group[=].element[=].display = "ko'zning ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C698
* group[=].element[=].target[=].display = "ko'zning ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #279
* group[=].element[=].display = "ko'z QA"
* group[=].element[=].target[+].code = #C699
* group[=].element[=].target[=].display = "ko'z QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #280
* group[=].element[=].display = "bosh miya pardasi"
* group[=].element[=].target[+].code = #C700
* group[=].element[=].target[=].display = "bosh miya pardasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #281
* group[=].element[=].display = "orqa miya pardasi"
* group[=].element[=].target[+].code = #C701
* group[=].element[=].target[=].display = "orqa miya pardasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #282
* group[=].element[=].display = "miya pardasi QA"
* group[=].element[=].target[+].code = #C709
* group[=].element[=].target[=].display = "miya pardasi QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #283
* group[=].element[=].display = "katta miya (bo'lma va qorinchalardan tashqari)"
* group[=].element[=].target[+].code = #C710
* group[=].element[=].target[=].display = "katta miya (bo'lma va qorinchalardan tashqari)"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #284
* group[=].element[=].display = "miyaning peshona bo'lmasi"
* group[=].element[=].target[+].code = #C711
* group[=].element[=].target[=].display = "miyaning peshona bo'lmasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #285
* group[=].element[=].display = "miyaning chakka bo'lmasi"
* group[=].element[=].target[+].code = #C712
* group[=].element[=].target[=].display = "miyaning chakka bo'lmasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #286
* group[=].element[=].display = "miyaning tepa bo'lmasi"
* group[=].element[=].target[+].code = #C713
* group[=].element[=].target[=].display = "miyaning tepa bo'lmasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #287
* group[=].element[=].display = "miyaning ensa bo'lmasi"
* group[=].element[=].target[+].code = #C714
* group[=].element[=].target[=].display = "miyaning ensa bo'lmasi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #288
* group[=].element[=].display = "miya qorinchalari QA"
* group[=].element[=].target[+].code = #C715
* group[=].element[=].target[=].display = "miya qorinchalari QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #289
* group[=].element[=].display = "miyacha"
* group[=].element[=].target[+].code = #C716
* group[=].element[=].target[=].display = "miyacha"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #290
* group[=].element[=].display = "bosh miya ustuni"
* group[=].element[=].target[+].code = #C717
* group[=].element[=].target[=].display = "bosh miya ustuni"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #291
* group[=].element[=].display = "bosh miyaning ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C718
* group[=].element[=].target[=].display = "bosh miyaning ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #292
* group[=].element[=].display = "bosh miya QA"
* group[=].element[=].target[+].code = #C719
* group[=].element[=].target[=].display = "bosh miya QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #293
* group[=].element[=].display = "orqa miya"
* group[=].element[=].target[+].code = #C720
* group[=].element[=].target[=].display = "orqa miya"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #294
* group[=].element[=].display = "ot dumi"
* group[=].element[=].target[+].code = #C721
* group[=].element[=].target[=].display = "ot dumi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #295
* group[=].element[=].display = "hid sezish nervi"
* group[=].element[=].target[+].code = #C722
* group[=].element[=].target[=].display = "hid sezish nervi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #296
* group[=].element[=].display = "ko'ruv nervi"
* group[=].element[=].target[+].code = #C723
* group[=].element[=].target[=].display = "ko'ruv nervi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #297
* group[=].element[=].display = "eshitish nervi"
* group[=].element[=].target[+].code = #C724
* group[=].element[=].target[=].display = "eshitish nervi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #298
* group[=].element[=].display = "bosh miya nervi"
* group[=].element[=].target[+].code = #C725
* group[=].element[=].target[=].display = "bosh miya nervi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #299
* group[=].element[=].display = "miya va MATning ko'plab qismlarining zararlanishi"
* group[=].element[=].target[+].code = #C728
* group[=].element[=].target[=].display = "miya va MATning ko'plab qismlarining zararlanishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #300
* group[=].element[=].display = "MAT QA"
* group[=].element[=].target[+].code = #C729
* group[=].element[=].target[=].display = "MAT QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #301
* group[=].element[=].display = "qalqonsimon bez"
* group[=].element[=].target[+].code = #C739
* group[=].element[=].target[=].display = "qalqonsimon bez"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #302
* group[=].element[=].display = "buyrak usti bezi po'stlog'i"
* group[=].element[=].target[+].code = #C740
* group[=].element[=].target[=].display = "buyrak usti bezi po'stlog'i"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #303
* group[=].element[=].display = "buyrak usti bezi miya (mag'iz) qavati"
* group[=].element[=].target[+].code = #C741
* group[=].element[=].target[=].display = "buyrak usti bezi miya (mag'iz) qavati"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #304
* group[=].element[=].display = "burak usti bezi QA"
* group[=].element[=].target[+].code = #C749
* group[=].element[=].target[=].display = "burak usti bezi QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #305
* group[=].element[=].display = "qalqon oldi bezi"
* group[=].element[=].target[+].code = #C750
* group[=].element[=].target[=].display = "qalqon oldi bezi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #306
* group[=].element[=].display = "gipofiz"
* group[=].element[=].target[+].code = #C751
* group[=].element[=].target[=].display = "gipofiz"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #307
* group[=].element[=].display = "kriniofaringeal yo'l"
* group[=].element[=].target[+].code = #C752
* group[=].element[=].target[=].display = "kriniofaringeal yo'l"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #308
* group[=].element[=].display = "g'uddasimon bez"
* group[=].element[=].target[+].code = #C753
* group[=].element[=].target[=].display = "g'uddasimon bez"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #309
* group[=].element[=].display = "karotid glomus"
* group[=].element[=].target[+].code = #C754
* group[=].element[=].target[=].display = "karotid glomus"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #310
* group[=].element[=].display = "aortal glomus va boshqa paragangliylar"
* group[=].element[=].target[+].code = #C755
* group[=].element[=].target[=].display = "aortal glomus va boshqa paragangliylar"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #311
* group[=].element[=].display = "endokrin bezlarining ko'plab zararlanishi"
* group[=].element[=].target[+].code = #C758
* group[=].element[=].target[=].display = "endokrin bezlarining ko'plab zararlanishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #312
* group[=].element[=].display = "endokrin bez QA"
* group[=].element[=].target[+].code = #C759
* group[=].element[=].target[=].display = "endokrin bez QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #313
* group[=].element[=].display = "bosh, yuz, bo'yin QA"
* group[=].element[=].target[+].code = #C760
* group[=].element[=].target[=].display = "bosh, yuz, bo'yin QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #314
* group[=].element[=].display = "ko'krak bo'shlig'i QA"
* group[=].element[=].target[+].code = #C761
* group[=].element[=].target[=].display = "ko'krak bo'shlig'i QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #315
* group[=].element[=].display = "qorin QA"
* group[=].element[=].target[+].code = #C762
* group[=].element[=].target[=].display = "qorin QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #316
* group[=].element[=].display = "chanoq QA"
* group[=].element[=].target[+].code = #C763
* group[=].element[=].target[=].display = "chanoq QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #317
* group[=].element[=].display = "qo'llar QA"
* group[=].element[=].target[+].code = #C764
* group[=].element[=].target[=].display = "qo'llar QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #318
* group[=].element[=].display = "oyoqlar QA"
* group[=].element[=].target[+].code = #C765
* group[=].element[=].target[=].display = "oyoqlar QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #319
* group[=].element[=].display = "noaniq lokalizatsiyali boshqa o'smalar"
* group[=].element[=].target[+].code = #C767
* group[=].element[=].target[=].display = "noaniq lokalizatsiyali boshqa o'smalar"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #320
* group[=].element[=].display = "aniqlanmagan a'zolarning ko'plab zararlanishi"
* group[=].element[=].target[+].code = #C768
* group[=].element[=].target[=].display = "aniqlanmagan a'zolarning ko'plab zararlanishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #321
* group[=].element[=].display = "bosh va bo'yin l.t"
* group[=].element[=].target[+].code = #C770
* group[=].element[=].target[=].display = "bosh va bo'yin l.t"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #322
* group[=].element[=].display = "ko'krak ichi l.t"
* group[=].element[=].target[+].code = #C771
* group[=].element[=].target[=].display = "ko'krak ichi l.t"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #323
* group[=].element[=].display = "qorin ichi l.t"
* group[=].element[=].target[+].code = #C772
* group[=].element[=].target[=].display = "qorin ichi l.t"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #324
* group[=].element[=].display = "ko'ltiq osti va qo'llar l.t"
* group[=].element[=].target[+].code = #C773
* group[=].element[=].target[=].display = "ko'ltiq osti va qo'llar l.t"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #325
* group[=].element[=].display = "chov va oyoqlar l.t"
* group[=].element[=].target[+].code = #C774
* group[=].element[=].target[=].display = "chov va oyoqlar l.t"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #326
* group[=].element[=].display = "chanoq ichi l.t"
* group[=].element[=].target[+].code = #C775
* group[=].element[=].target[=].display = "chanoq ichi l.t"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #327
* group[=].element[=].display = "limfa tugunlarning ko'plab zararlanishi"
* group[=].element[=].target[+].code = #C778
* group[=].element[=].target[=].display = "limfa tugunlarning ko'plab zararlanishi"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #328
* group[=].element[=].display = "limfa tugun QA"
* group[=].element[=].target[+].code = #C779
* group[=].element[=].target[=].display = "limfa tugun QA"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #329
* group[=].element[=].display = "noaniq lokalizatsiyali"
* group[=].element[=].target[+].code = #C809
* group[=].element[=].target[=].display = "noaniq lokalizatsiyali"
* group[=].element[=].target[=].relationship = #equivalent
