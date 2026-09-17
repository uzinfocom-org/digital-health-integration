Instance: cancer-registry-dict-icdo3-topography-to-dhp-icdo3-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "Cancer Registry Dictionary ICD-O-3 Topography to DHP ICD-O-3 Topography"
Description: "ConceptMap defining the mapping between Cancer Registry internal topography identifiers and the corresponding ICD-O-3 topography codes used by DHP."
* name = "CancerRegistryDictionaryICDO3TopographyToDHPICDO3TopographyCM"
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/cancer-registry-dict-icdo3-topography-to-dhp-icdo3-cm"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

* sourceScopeCanonical = Canonical(CancerRegistryDictionaryICDO3TopographyVS)

* group[+].source = Canonical(CancerRegistryDictionaryICDO3TopographyCS)
* group[=].target =  $icd-o-3

* group[=].element[+].code = #1
* group[=].element[=].display = "yuqori lab tashqi yuzasi"
* group[=].element[=].target[+].code = #C00.0
* group[=].element[=].target[=].display = "External upper lip"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #2
* group[=].element[=].display = "pastki lab tashqi yuzasi"
* group[=].element[=].target[+].code = #C00.1
* group[=].element[=].target[=].display = "External lower lip"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #3
* group[=].element[=].display = "lablar tashqi yuzasi qo'shimcha aniqlashtirishsiz (QA)"
* group[=].element[=].target[+].code = #C00.2
* group[=].element[=].target[=].display = "External lip, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #4
* group[=].element[=].display = "yuqori lab shilliq qismi"
* group[=].element[=].target[+].code = #C00.3
* group[=].element[=].target[=].display = "Mucosa of upper lip"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #5
* group[=].element[=].display = "pastki lab shilliq qismi"
* group[=].element[=].target[+].code = #C00.4
* group[=].element[=].target[=].display = "Mucosa of lower lip"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #6
* group[=].element[=].display = "lablar shilliq qismi QA"
* group[=].element[=].target[+].code = #C00.5
* group[=].element[=].target[=].display = "Mucosa of lip, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #7
* group[=].element[=].display = "og'iz burchagi (lab bitishmalari)"
* group[=].element[=].target[+].code = #C00.6
* group[=].element[=].target[=].display = "Commissure of lip"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #8
* group[=].element[=].display = "labning bir nechta qismlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C00.8
* group[=].element[=].target[=].display = "Overlapping lesion of lip"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #9
* group[=].element[=].display = "lab QA"
* group[=].element[=].target[+].code = #C00.9
* group[=].element[=].target[=].display = "Lip, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #10
* group[=].element[=].display = "til asosi QA"
* group[=].element[=].target[+].code = #C01.9
* group[=].element[=].target[=].display = "Base of tongue, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #11
* group[=].element[=].display = "tilning yuqori yuzasi QA"
* group[=].element[=].target[+].code = #C02.0
* group[=].element[=].target[=].display = "Dorsal surface of tongue, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #12
* group[=].element[=].display = "tilning yon yuzasi"
* group[=].element[=].target[+].code = #C02.1
* group[=].element[=].target[=].display = "Border of tongue"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #13
* group[=].element[=].display = "tilning pastki yuzasi"
* group[=].element[=].target[+].code = #C02.2
* group[=].element[=].target[=].display = "Ventral surface of tongue, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #14
* group[=].element[=].display = "tilning old qismi"
* group[=].element[=].target[+].code = #C02.3
* group[=].element[=].target[=].display = "Anterior 2/3 of tongue, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #15
* group[=].element[=].display = "til bodomcha bezi"
* group[=].element[=].target[+].code = #C02.4
* group[=].element[=].target[=].display = "Lingual tonsil"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #16
* group[=].element[=].display = "tilning chegeralangan sohasi"
* group[=].element[=].target[+].code = #C02.8
* group[=].element[=].target[=].display = "Overlapping lesion of tongue"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #17
* group[=].element[=].display = "til QA"
* group[=].element[=].target[+].code = #C02.9
* group[=].element[=].target[=].display = "Tongue, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #18
* group[=].element[=].display = "yuqori jag' milki"
* group[=].element[=].target[+].code = #C03.0
* group[=].element[=].target[=].display = "Upper gum"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #19
* group[=].element[=].display = "pastki jag' milki"
* group[=].element[=].target[+].code = #C03.1
* group[=].element[=].target[=].display = "Lower gum"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #20
* group[=].element[=].display = "milk QA"
* group[=].element[=].target[+].code = #C03.9
* group[=].element[=].target[=].display = "Gum, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #21
* group[=].element[=].display = "og'iz bo'shlig'i tubi old qismi"
* group[=].element[=].target[+].code = #C04.0
* group[=].element[=].target[=].display = "Anterior floor of mouth"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #22
* group[=].element[=].display = "og'iz bo'shlig'i tubi yon qismi"
* group[=].element[=].target[+].code = #C04.1
* group[=].element[=].target[=].display = "Lateral floor of mouth"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #23
* group[=].element[=].display = "og'iz bo'shlig'i tubi kuplab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C04.8
* group[=].element[=].target[=].display = "Overlapping lesion of floor of mouth"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #24
* group[=].element[=].display = "og'iz bo'shlig'i tubi QA"
* group[=].element[=].target[+].code = #C04.9
* group[=].element[=].target[=].display = "Floor of mouth, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #25
* group[=].element[=].display = "qattiq tanglay"
* group[=].element[=].target[+].code = #C05.0
* group[=].element[=].target[=].display = "Hard palate"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #26
* group[=].element[=].display = "yumshoq tanglay QA"
* group[=].element[=].target[+].code = #C05.1
* group[=].element[=].target[=].display = "Soft palate, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #27
* group[=].element[=].display = "tanglay tilchasi"
* group[=].element[=].target[+].code = #C05.2
* group[=].element[=].target[=].display = "Uvula"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #28
* group[=].element[=].display = "tanglayning ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C05.8
* group[=].element[=].target[=].display = "Overlapping lesion of palate"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #29
* group[=].element[=].display = "tanglay QA"
* group[=].element[=].target[+].code = #C05.9
* group[=].element[=].target[=].display = "Palate, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #30
* group[=].element[=].display = "yonoq shilliq qavati"
* group[=].element[=].target[+].code = #C06.0
* group[=].element[=].target[=].display = "Cheek mucosa"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #31
* group[=].element[=].display = "og'iz dahliz"
* group[=].element[=].target[+].code = #C06.1
* group[=].element[=].target[=].display = "Vestibule of mouth"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #32
* group[=].element[=].display = "og'iz bo'shlig'i retromolyar sohasi"
* group[=].element[=].target[+].code = #C06.2
* group[=].element[=].target[=].display = "Retromolar area"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #33
* group[=].element[=].display = "og'iz bo'shlig'i ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C06.8
* group[=].element[=].target[=].display = "Overlapping lesion of other and unspecified parts of mouth"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #34
* group[=].element[=].display = "og'iz bo'shlig'i QA"
* group[=].element[=].target[+].code = #C06.9
* group[=].element[=].target[=].display = "Mouth, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #35
* group[=].element[=].display = "quloq oldi so'lak bezi"
* group[=].element[=].target[+].code = #C07.9
* group[=].element[=].target[=].display = "Parotid gland"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #36
* group[=].element[=].display = "jag' osti so'lak bezi"
* group[=].element[=].target[+].code = #C08.0
* group[=].element[=].target[=].display = "Submandibular gland"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #37
* group[=].element[=].display = "til osti so'lak bezi"
* group[=].element[=].target[+].code = #C08.1
* group[=].element[=].target[=].display = "Sublingual gland"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #38
* group[=].element[=].display = "ko'plab katta so'lak bezlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C08.8
* group[=].element[=].target[=].display = "Overlapping lesion of major salivary glands"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #39
* group[=].element[=].display = "katta so'lak bezi"
* group[=].element[=].target[+].code = #C08.9
* group[=].element[=].target[=].display = "Major salivary gland, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #40
* group[=].element[=].display = "bodomchasimon chuqurcha"
* group[=].element[=].target[+].code = #C09.0
* group[=].element[=].target[=].display = "Tonsillar fossa"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #41
* group[=].element[=].display = "tanglay bodomcha bezi yoyi"
* group[=].element[=].target[+].code = #C09.1
* group[=].element[=].target[=].display = "Tonsillar pillar"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #42
* group[=].element[=].display = "tanglay bodomcha bezining ko'plab qismlarining zararlanishi"
* group[=].element[=].target[+].code = #C09.8
* group[=].element[=].target[=].display = "Overlapping lesion of tonsil"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #43
* group[=].element[=].display = "bodomsimon bez QA"
* group[=].element[=].target[+].code = #C09.9
* group[=].element[=].target[=].display = "Tonsil, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #44
* group[=].element[=].display = "hiqildoq usti chuqurchasi"
* group[=].element[=].target[+].code = #C10.0
* group[=].element[=].target[=].display = "Vallecula"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #45
* group[=].element[=].display = "hiqildoq usti old yuzasi"
* group[=].element[=].target[+].code = #C10.1
* group[=].element[=].target[=].display = "Anterior surface of epiglottis"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #46
* group[=].element[=].display = "og'iz-halqum yon devori"
* group[=].element[=].target[+].code = #C10.2
* group[=].element[=].target[=].display = "Lateral wall of oropharynx"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #47
* group[=].element[=].display = "og'iz-halqum orqa devori"
* group[=].element[=].target[+].code = #C10.3
* group[=].element[=].target[=].display = "Posterior wall of oropharynx"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #48
* group[=].element[=].display = "jabrasmon yoriq"
* group[=].element[=].target[+].code = #C10.4
* group[=].element[=].target[=].display = "Branchial cleft"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #49
* group[=].element[=].display = "ohiz-halqum ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C10.8
* group[=].element[=].target[=].display = "Overlapping lesion of oropharynx"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #50
* group[=].element[=].display = "og'iz-halqum QA"
* group[=].element[=].target[+].code = #C10.9
* group[=].element[=].target[=].display = "Oropharynx, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #51
* group[=].element[=].display = "burun-halqum yuqori devori"
* group[=].element[=].target[+].code = #C11.0
* group[=].element[=].target[=].display = "Superior wall of nasopharynx"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #52
* group[=].element[=].display = "burun-halqum orqa devori"
* group[=].element[=].target[+].code = #C11.1
* group[=].element[=].target[=].display = "Posterior wall of nasopharynx"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #53
* group[=].element[=].display = "burun-halqum yon devori"
* group[=].element[=].target[+].code = #C11.2
* group[=].element[=].target[=].display = "Lateral wall of nasopharynx"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #54
* group[=].element[=].display = "burun-halqum old devori"
* group[=].element[=].target[+].code = #C11.3
* group[=].element[=].target[=].display = "Anterior wall of nasopharynx"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #55
* group[=].element[=].display = "burun-halqum ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C11.8
* group[=].element[=].target[=].display = "Overlapping lesion of nasopharynx"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #56
* group[=].element[=].display = "burun-halqum QA"
* group[=].element[=].target[+].code = #C11.9
* group[=].element[=].target[=].display = "Nasopharynx, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #57
* group[=].element[=].display = "hiqildoq-halqumning noksimon cho'ntagi"
* group[=].element[=].target[+].code = #C12.9
* group[=].element[=].target[=].display = "Pyriform sinus"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #58
* group[=].element[=].display = "hiqildoq-halqumning uzuksimon ort sohasi"
* group[=].element[=].target[+].code = #C13.0
* group[=].element[=].target[=].display = "Postcricoid region"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #59
* group[=].element[=].display = "hiqildoq usti cho'michsimon pastki halqum burmasi"
* group[=].element[=].target[+].code = #C13.1
* group[=].element[=].target[=].display = "Hypopharyngeal aspect of aryepiglottic fold"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #60
* group[=].element[=].display = "hiqildoq-halqum orqa devori"
* group[=].element[=].target[+].code = #C13.2
* group[=].element[=].target[=].display = "Posterior wall of hypopharynx"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #61
* group[=].element[=].display = "hiqildoq-halqum ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C13.8
* group[=].element[=].target[=].display = "Overlapping lesion of hypopharynx"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #62
* group[=].element[=].display = "hiqildoq-halqum QA"
* group[=].element[=].target[+].code = #C13.9
* group[=].element[=].target[=].display = "Hypopharynx, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #63
* group[=].element[=].display = "halqum QA"
* group[=].element[=].target[+].code = #C14.0
* group[=].element[=].target[=].display = "Pharynx, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #64
* group[=].element[=].display = "Valdeyer halqum xalqasi QA"
* group[=].element[=].target[+].code = #C14.2
* group[=].element[=].target[=].display = "Waldeyer ring"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #65
* group[=].element[=].display = "lablar, og'iz bo'shlig'i va halqumning zararlanishi"
* group[=].element[=].target[+].code = #C14.8
* group[=].element[=].target[=].display = "Overlapping lesion of lip, oral cavity and pharynx"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #66
* group[=].element[=].display = "qizilo'ngach bo'yin qismi"
* group[=].element[=].target[+].code = #C15.0
* group[=].element[=].target[=].display = "Cervical esophagus"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #67
* group[=].element[=].display = "qizilo'ngach ko'krak qismi"
* group[=].element[=].target[+].code = #C15.1
* group[=].element[=].target[=].display = "Thoracic esophagus"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #68
* group[=].element[=].display = "qizilo'ngach qorin qismi"
* group[=].element[=].target[+].code = #C15.2
* group[=].element[=].target[=].display = "Abdominal esophagus"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #69
* group[=].element[=].display = "qizilo'ngach yuqori uchligi"
* group[=].element[=].target[+].code = #C15.3
* group[=].element[=].target[=].display = "Upper third of esophagus"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #70
* group[=].element[=].display = "qizilo'ngach o'rta uchligi"
* group[=].element[=].target[+].code = #C15.4
* group[=].element[=].target[=].display = "Middle third of esophagus"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #71
* group[=].element[=].display = "qizilo'ngach pastki uchligi"
* group[=].element[=].target[+].code = #C15.5
* group[=].element[=].target[=].display = "Lower third of esophagus"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #72
* group[=].element[=].display = "qizilo'ngach ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C15.8
* group[=].element[=].target[=].display = "Overlapping lesion of esophagus"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #73
* group[=].element[=].display = "oshqozon kardiyasi QA"
* group[=].element[=].target[+].code = #C16.0
* group[=].element[=].target[=].display = "Cardia, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #74
* group[=].element[=].display = "oshqozon tubi"
* group[=].element[=].target[+].code = #C16.1
* group[=].element[=].target[=].display = "Fundus of stomach"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #75
* group[=].element[=].display = "oshqozon tanasi"
* group[=].element[=].target[+].code = #C16.2
* group[=].element[=].target[=].display = "Body of stomach"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #76
* group[=].element[=].display = "oshqozonning 12 barmoq ichakka o'tadigan qismi"
* group[=].element[=].target[+].code = #C16.3
* group[=].element[=].target[=].display = "Gastric antrum"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #77
* group[=].element[=].display = "qorin bo'yni"
* group[=].element[=].target[+].code = #C16.4
* group[=].element[=].target[=].display = "Pylorus"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #78
* group[=].element[=].display = "oshqozon kichik egriligi"
* group[=].element[=].target[+].code = #C16.5
* group[=].element[=].target[=].display = "Lesser curvature of stomach, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #79
* group[=].element[=].display = "oshqozon katta egriligi"
* group[=].element[=].target[+].code = #C16.6
* group[=].element[=].target[=].display = "Greater curvature of stomach, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #80
* group[=].element[=].display = "oshqozon ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C16.8
* group[=].element[=].target[=].display = "Overlapping lesion of stomach"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #81
* group[=].element[=].display = "oshqozon QA"
* group[=].element[=].target[+].code = #C16.9
* group[=].element[=].target[=].display = "Stomach, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #82
* group[=].element[=].display = "12 barmoq ichak"
* group[=].element[=].target[+].code = #C17.0
* group[=].element[=].target[=].display = "Duodenum"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #83
* group[=].element[=].display = "och ichak"
* group[=].element[=].target[+].code = #C17.1
* group[=].element[=].target[=].display = "Jejunum"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #84
* group[=].element[=].display = "yonbosh ichak"
* group[=].element[=].target[+].code = #C17.2
* group[=].element[=].target[=].display = "Ileum"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #85
* group[=].element[=].display = "Mekkel divertikuli"
* group[=].element[=].target[+].code = #C17.3
* group[=].element[=].target[=].display = "Meckel diverticulum"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #86
* group[=].element[=].display = "ingichka ichak ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C17.8
* group[=].element[=].target[=].display = "Overlapping lesion of small intestine"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #87
* group[=].element[=].display = "ingichka ichak"
* group[=].element[=].target[+].code = #C17.9
* group[=].element[=].target[=].display = "Small intestine, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #88
* group[=].element[=].display = "ko'r ichak"
* group[=].element[=].target[+].code = #C18.0
* group[=].element[=].target[=].display = "Cecum"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #89
* group[=].element[=].display = "chuvalchangsimon o'simta"
* group[=].element[=].target[+].code = #C18.1
* group[=].element[=].target[=].display = "Appendix"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #90
* group[=].element[=].display = "ko'tariluvchi chambar ichak"
* group[=].element[=].target[+].code = #C18.2
* group[=].element[=].target[=].display = "Ascending colon"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #91
* group[=].element[=].display = "yo'g'on ichak o'ng (jigar) burilishi"
* group[=].element[=].target[+].code = #C18.3
* group[=].element[=].target[=].display = "Hepatic flexure of colon"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #92
* group[=].element[=].display = "ko'ndalang chambar ichak"
* group[=].element[=].target[+].code = #C18.4
* group[=].element[=].target[=].display = "Transverse colon"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #93
* group[=].element[=].display = "yo'g'on ichak chap (taloq) burilishi"
* group[=].element[=].target[+].code = #C18.5
* group[=].element[=].target[=].display = "Splenic flexure of colon"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #94
* group[=].element[=].display = "tushuvchi chambar ichak"
* group[=].element[=].target[+].code = #C18.6
* group[=].element[=].target[=].display = "Descending colon"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #95
* group[=].element[=].display = "sigmasimon ichak"
* group[=].element[=].target[+].code = #C18.7
* group[=].element[=].target[=].display = "Sigmoid colon"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #96
* group[=].element[=].display = "yo'g'on ichak ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C18.8
* group[=].element[=].target[=].display = "Overlapping lesion of colon"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #97
* group[=].element[=].display = "yo'g'on ichak QA"
* group[=].element[=].target[+].code = #C18.9
* group[=].element[=].target[=].display = "Colon, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #98
* group[=].element[=].display = "rektosigmoid birikma"
* group[=].element[=].target[+].code = #C19.9
* group[=].element[=].target[=].display = "Rectosigmoid junction"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #99
* group[=].element[=].display = "to'g'ri ichak"
* group[=].element[=].target[+].code = #C20.9
* group[=].element[=].target[=].display = "Rectum, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #100
* group[=].element[=].display = "anus"
* group[=].element[=].target[+].code = #C21.0
* group[=].element[=].target[=].display = "Anus, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #101
* group[=].element[=].display = "anal kanal"
* group[=].element[=].target[+].code = #C21.1
* group[=].element[=].target[=].display = "Anal canal"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #102
* group[=].element[=].display = "kloakogen soha"
* group[=].element[=].target[+].code = #C21.2
* group[=].element[=].target[=].display = "Cloacogenic zone"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #103
* group[=].element[=].display = "to'g'ri ichak va anusning ko'plab qismlarining zararlanishi"
* group[=].element[=].target[+].code = #C21.8
* group[=].element[=].target[=].display = "Overlapping lesion of rectum, anus and anal canal"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #104
* group[=].element[=].display = "jigar"
* group[=].element[=].target[+].code = #C22.0
* group[=].element[=].target[=].display = "Liver"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #105
* group[=].element[=].display = "jigar ichi o't yo'li"
* group[=].element[=].target[+].code = #C22.1
* group[=].element[=].target[=].display = "Intrahepatic bile duct"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #106
* group[=].element[=].display = "o't pufagi"
* group[=].element[=].target[+].code = #C23.9
* group[=].element[=].target[=].display = "Gallbladder"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #107
* group[=].element[=].display = "jigardan tashqari o't yo'li"
* group[=].element[=].target[+].code = #C24.0
* group[=].element[=].target[=].display = "Extrahepatic bile duct"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #108
* group[=].element[=].display = "jigar-oshqozon osti bezi Fater ampulasi"
* group[=].element[=].target[+].code = #C24.1
* group[=].element[=].target[=].display = "Ampulla of Vater"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #109
* group[=].element[=].display = "o't yo'llari ko'plab qismlarining zararlanishi"
* group[=].element[=].target[+].code = #C24.8
* group[=].element[=].target[=].display = "Overlapping lesion of biliary tract"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #110
* group[=].element[=].display = "jigar yo'llari QA"
* group[=].element[=].target[+].code = #C24.9
* group[=].element[=].target[=].display = "Biliary tract, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #111
* group[=].element[=].display = "oshqozon osti bezi boshchasi"
* group[=].element[=].target[+].code = #C25.0
* group[=].element[=].target[=].display = "Head of pancreas"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #112
* group[=].element[=].display = "oshqozon osti bezi boshchasi"
* group[=].element[=].target[+].code = #C25.1
* group[=].element[=].target[=].display = "Body of pancreas"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #113
* group[=].element[=].display = "oshqozon osti bezi dumi"
* group[=].element[=].target[+].code = #C25.2
* group[=].element[=].target[=].display = "Tail of pancreas"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #114
* group[=].element[=].display = "oshqozon osti bezi yo'li"
* group[=].element[=].target[+].code = #C25.3
* group[=].element[=].target[=].display = "Pancreatic duct"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #115
* group[=].element[=].display = "oshqozon osti bezi Langergans orolchalari"
* group[=].element[=].target[+].code = #C25.4
* group[=].element[=].target[=].display = "Islets of Langerhans"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #116
* group[=].element[=].display = "oshqozon osti bezining boshqa qismlari"
* group[=].element[=].target[+].code = #C25.7
* group[=].element[=].target[=].display = "Other specified parts of pancreas"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #117
* group[=].element[=].display = "oshqozon osti bezi ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C25.8
* group[=].element[=].target[=].display = "Overlapping lesion of pancreas"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #118
* group[=].element[=].display = "oshqozon osti bezi QA"
* group[=].element[=].target[+].code = #C25.9
* group[=].element[=].target[=].display = "Pancreas, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #119
* group[=].element[=].display = "ichaklar QA"
* group[=].element[=].target[+].code = #C26.0
* group[=].element[=].target[=].display = "Intestinal tract, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #120
* group[=].element[=].display = "hazm qilish tizimi ko'plab qismlarining zararlanishi"
* group[=].element[=].target[+].code = #C26.8
* group[=].element[=].target[=].display = "Overlapping lesion of digestive system"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #121
* group[=].element[=].display = "oshqozon-ichak tizimi QA"
* group[=].element[=].target[+].code = #C26.9
* group[=].element[=].target[=].display = "Gastrointestinal tract, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #122
* group[=].element[=].display = "burun bo'shlig'i"
* group[=].element[=].target[+].code = #C30.0
* group[=].element[=].target[=].display = "Nasal cavity"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #123
* group[=].element[=].display = "o'rta quloq"
* group[=].element[=].target[+].code = #C30.1
* group[=].element[=].target[=].display = "Middle ear"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #124
* group[=].element[=].display = "yuqori jag' bo'shlig'i"
* group[=].element[=].target[+].code = #C31.0
* group[=].element[=].target[=].display = "Maxillary sinus"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #125
* group[=].element[=].display = "g'alvirsimon bo'shliq"
* group[=].element[=].target[+].code = #C31.1
* group[=].element[=].target[=].display = "Ethmoid sinus"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #126
* group[=].element[=].display = "peshona bo'shlig'i"
* group[=].element[=].target[+].code = #C31.2
* group[=].element[=].target[=].display = "Frontal sinus"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #127
* group[=].element[=].display = "ponasimon bo'shliq"
* group[=].element[=].target[+].code = #C31.3
* group[=].element[=].target[=].display = "Sphenoid sinus"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #128
* group[=].element[=].display = "qo'shimcha (yondosh) bo'shliqlarning qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C31.8
* group[=].element[=].target[=].display = "Overlapping lesion of accessory sinuses"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #129
* group[=].element[=].display = "qo'shimcha (yondosh) bo'shliqlar QA"
* group[=].element[=].target[+].code = #C31.9
* group[=].element[=].target[=].display = "Accessory sinus, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #130
* group[=].element[=].display = "ovoz yorig'i (boylam sohasi)"
* group[=].element[=].target[+].code = #C32.0
* group[=].element[=].target[=].display = "Glottis"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #131
* group[=].element[=].display = "hiqildoqning boylam usti sohasi"
* group[=].element[=].target[+].code = #C32.1
* group[=].element[=].target[=].display = "Supraglottis"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #132
* group[=].element[=].display = "hiqildoqning boylam osti sohasi"
* group[=].element[=].target[+].code = #C32.2
* group[=].element[=].target[=].display = "Subglottis"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #133
* group[=].element[=].display = "hiqildoq tog'aylari"
* group[=].element[=].target[+].code = #C32.3
* group[=].element[=].target[=].display = "Laryngeal cartilage"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #134
* group[=].element[=].display = "hiqildoq ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C32.8
* group[=].element[=].target[=].display = "Overlapping lesion of larynx"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #135
* group[=].element[=].display = "hiqildoq QA"
* group[=].element[=].target[+].code = #C32.9
* group[=].element[=].target[=].display = "Larynx, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #136
* group[=].element[=].display = "traxeya"
* group[=].element[=].target[+].code = #C33.9
* group[=].element[=].target[=].display = "Trachea"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #137
* group[=].element[=].display = "bosh bronx"
* group[=].element[=].target[+].code = #C34.0
* group[=].element[=].target[=].display = "Main bronchus"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #138
* group[=].element[=].display = "o'pkaning yuqori bo'lagi"
* group[=].element[=].target[+].code = #C34.1
* group[=].element[=].target[=].display = "Upper lobe, lung"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #139
* group[=].element[=].display = "o'pkaning o'rta bo'lagi"
* group[=].element[=].target[+].code = #C34.2
* group[=].element[=].target[=].display = "Middle lobe, lung"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #140
* group[=].element[=].display = "o'pkaning pastki bo'lagi"
* group[=].element[=].target[+].code = #C34.3
* group[=].element[=].target[=].display = "Lower lobe, lung"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #141
* group[=].element[=].display = "o'pka va bronxning ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C34.8
* group[=].element[=].target[=].display = "Overlapping lesion of lung"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #142
* group[=].element[=].display = "o'pka QA"
* group[=].element[=].target[+].code = #C34.9
* group[=].element[=].target[=].display = "Lung, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #143
* group[=].element[=].display = "ayrisimon bez"
* group[=].element[=].target[+].code = #C37.9
* group[=].element[=].target[=].display = "Thymus"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #144
* group[=].element[=].display = "yurak"
* group[=].element[=].target[+].code = #C38.0
* group[=].element[=].target[=].display = "Heart"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #145
* group[=].element[=].display = "ko'ks old sohasi"
* group[=].element[=].target[+].code = #C38.1
* group[=].element[=].target[=].display = "Anterior mediastinum"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #146
* group[=].element[=].display = "ko'ks orqa sohasi"
* group[=].element[=].target[+].code = #C38.2
* group[=].element[=].target[=].display = "Posterior mediastinum"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #147
* group[=].element[=].display = "ko'ks oralig'i QA"
* group[=].element[=].target[+].code = #C38.3
* group[=].element[=].target[=].display = "Mediastinum, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #148
* group[=].element[=].display = "plevra QA"
* group[=].element[=].target[+].code = #C38.4
* group[=].element[=].target[=].display = "Pleura, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #149
* group[=].element[=].display = "yurak, ko'ks oralig'i va plevraning ko'plab qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C38.8
* group[=].element[=].target[=].display = "Overlapping lesion of heart, mediastinum and pleura"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #150
* group[=].element[=].display = "yuqori nafas yo'llari"
* group[=].element[=].target[+].code = #C39.0
* group[=].element[=].target[=].display = "Upper respiratory tract, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #151
* group[=].element[=].display = "nafas tizimi ko'plab qismlarining zararlanishi"
* group[=].element[=].target[+].code = #C39.8
* group[=].element[=].target[=].display = "Overlapping lesion of respiratory system and intrathoracic organs"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #152
* group[=].element[=].display = "nafas tizimi QA"
* group[=].element[=].target[+].code = #C39.9
* group[=].element[=].target[=].display = "Ill-defined sites within respiratory system"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #153
* group[=].element[=].display = "qo'lning uzun va kurak suyagi"
* group[=].element[=].target[+].code = #C40.0
* group[=].element[=].target[=].display = "Long bones of upper limb, scapula and associated joints"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #154
* group[=].element[=].display = "qo'lning kalta suyagi"
* group[=].element[=].target[+].code = #C40.1
* group[=].element[=].target[=].display = "Short bones of upper limb and associated joints"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #155
* group[=].element[=].display = "oyoqning uzun suyagi"
* group[=].element[=].target[+].code = #C40.2
* group[=].element[=].target[=].display = "Long bones of lower limb and associated joints"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #156
* group[=].element[=].display = "oyoqning kalta suyagi"
* group[=].element[=].target[+].code = #C40.3
* group[=].element[=].target[=].display = "Short bones of lower limb and associated joints"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #157
* group[=].element[=].display = "oyoo'-qo'llarning ko'plab zararlanishi"
* group[=].element[=].target[+].code = #C40.8
* group[=].element[=].target[=].display = "Overlapping lesion of bones, joints and articular cartilage of limbs"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #158
* group[=].element[=].display = "oyoq-qo'llar suyaklari QA"
* group[=].element[=].target[+].code = #C40.9
* group[=].element[=].target[=].display = "Bone of limb, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #159
* group[=].element[=].display = "bosh va yuz suyaklari"
* group[=].element[=].target[+].code = #C41.0
* group[=].element[=].target[=].display = "Bones of skull and face and associated joints"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #160
* group[=].element[=].display = "pastki jag' suyagi"
* group[=].element[=].target[+].code = #C41.1
* group[=].element[=].target[=].display = "Mandible"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #161
* group[=].element[=].display = "umurtqa"
* group[=].element[=].target[+].code = #C41.2
* group[=].element[=].target[=].display = "Vertebral column"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #162
* group[=].element[=].display = "qovurg'a, to'sh, o'mrov"
* group[=].element[=].target[+].code = #C41.3
* group[=].element[=].target[=].display = "Rib, sternum, clavicle and associated joints"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #163
* group[=].element[=].display = "chanoq, dumg'aza va dum suyaklari"
* group[=].element[=].target[+].code = #C41.4
* group[=].element[=].target[=].display = "Pelvic bones, sacrum, coccyx and associated joints"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #164
* group[=].element[=].display = "suyak, bo'g'im, bo'g'im tog'ayining ma'lum chegaradan chiqib zararlanishi"
* group[=].element[=].target[+].code = #C41.8
* group[=].element[=].target[=].display = "Overlapping lesion of bones, joints and articular cartilage"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #165
* group[=].element[=].display = "suyak QA"
* group[=].element[=].target[+].code = #C41.9
* group[=].element[=].target[=].display = "Bone, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #166
* group[=].element[=].display = "qon"
* group[=].element[=].target[+].code = #C42.0
* group[=].element[=].target[=].display = "Blood"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #167
* group[=].element[=].display = "suyak ko'migi"
* group[=].element[=].target[+].code = #C42.1
* group[=].element[=].target[=].display = "Bone marrow"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #168
* group[=].element[=].display = "taloq"
* group[=].element[=].target[+].code = #C42.2
* group[=].element[=].target[=].display = "Spleen"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #169
* group[=].element[=].display = "retikuloendotelial tizim QA"
* group[=].element[=].target[+].code = #C42.3
* group[=].element[=].target[=].display = "Reticuloendothelial system, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #170
* group[=].element[=].display = "qon ishlab chiqaruvchi tizim QA"
* group[=].element[=].target[+].code = #C42.4
* group[=].element[=].target[=].display = "Hematopoietic system, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #171
* group[=].element[=].display = "lab terisi QA"
* group[=].element[=].target[+].code = #C44.0
* group[=].element[=].target[=].display = "Skin of lip, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #172
* group[=].element[=].display = "qovoq terisi"
* group[=].element[=].target[+].code = #C44.1
* group[=].element[=].target[=].display = "Eyelid"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #173
* group[=].element[=].display = "tashqi quloq"
* group[=].element[=].target[+].code = #C44.2
* group[=].element[=].target[=].display = "External ear"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #174
* group[=].element[=].display = "yuz terisi"
* group[=].element[=].target[+].code = #C44.3
* group[=].element[=].target[=].display = "Skin of other and unspecified parts of face"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #175
* group[=].element[=].display = "boshning sochli qismi va bo'yin terisi"
* group[=].element[=].target[+].code = #C44.4
* group[=].element[=].target[=].display = "Skin of scalp and neck"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #176
* group[=].element[=].display = "tana terisi"
* group[=].element[=].target[+].code = #C44.5
* group[=].element[=].target[=].display = "Skin of trunk"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #177
* group[=].element[=].display = "qo'l va elka terisi"
* group[=].element[=].target[+].code = #C44.6
* group[=].element[=].target[=].display = "Skin of upper limb and shoulder"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #178
* group[=].element[=].display = "oyoq va son terisi"
* group[=].element[=].target[+].code = #C44.7
* group[=].element[=].target[=].display = "Skin of lower limb and hip"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #179
* group[=].element[=].display = "terining ko'plab zararlanishi"
* group[=].element[=].target[+].code = #C44.8
* group[=].element[=].target[=].display = "Overlapping lesion of skin"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #180
* group[=].element[=].display = "teri QA"
* group[=].element[=].target[+].code = #C44.9
* group[=].element[=].target[=].display = "Skin, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #181
* group[=].element[=].display = "bosh, yuz va bo'yinning periferik nervlari va vegetativ AT"
* group[=].element[=].target[+].code = #C47.0
* group[=].element[=].target[=].display = "Peripheral nerves and autonomic nervous system of head, face, and neck"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #182
* group[=].element[=].display = "qo'l va elka kamarining periferik nervlari va vegetativ AT"
* group[=].element[=].target[+].code = #C47.1
* group[=].element[=].target[=].display = "Peripheral nerves and autonomic nervous system of upper limb and shoulder"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #183
* group[=].element[=].display = "oyoq va sonningperiferik nervlari va vegetativ AT"
* group[=].element[=].target[+].code = #C47.2
* group[=].element[=].target[=].display = "Peripheral nerves and autonomic nervous system of lower limb and hip"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #184
* group[=].element[=].display = "ko'krak qafasining periferik nervlari va vegetativ AT"
* group[=].element[=].target[+].code = #C47.3
* group[=].element[=].target[=].display = "Peripheral nerves and autonomic nervous system of thorax"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #185
* group[=].element[=].display = "qorinning periferik nervlari va vegetativ AT"
* group[=].element[=].target[+].code = #C47.4
* group[=].element[=].target[=].display = "Peripheral nerves and autonomic nervous system of abdomen"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #186
* group[=].element[=].display = "chanoqning periferik nervlari va vegetativ AT"
* group[=].element[=].target[+].code = #C47.5
* group[=].element[=].target[=].display = "Peripheral nerves and autonomic nervous system of pelvis"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #187
* group[=].element[=].display = "orqa (tana orqa qismi) ning periferik nervlari va vegetativ AT"
* group[=].element[=].target[+].code = #C47.6
* group[=].element[=].target[=].display = "Peripheral nerves and autonomic nervous system of trunk, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #188
* group[=].element[=].display = "periferik nervlar va vegetativ ATning ko'plab zararlanishi"
* group[=].element[=].target[+].code = #C47.8
* group[=].element[=].target[=].display = "Overlapping lesion of peripheral nerves and autonomic nervous system"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #189
* group[=].element[=].display = "periferik nervlar va vegetativ ATQA"
* group[=].element[=].target[+].code = #C47.9
* group[=].element[=].target[=].display = "Autonomic nervous system, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #190
* group[=].element[=].display = "qorin orti bo'shlig'i"
* group[=].element[=].target[+].code = #C48.0
* group[=].element[=].target[=].display = "Retroperitoneum"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #191
* group[=].element[=].display = "qorin parda, aniq sohasi"
* group[=].element[=].target[+].code = #C48.1
* group[=].element[=].target[=].display = "Specified parts of peritoneum"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #192
* group[=].element[=].display = "qorin parda, noaniq sohasi"
* group[=].element[=].target[+].code = #C48.2
* group[=].element[=].target[=].display = "Peritoneum, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #193
* group[=].element[=].display = "qorin orti bo'shlig'i va qorin pardaning ko'plab qismlarining zararlanishi"
* group[=].element[=].target[+].code = #C48.8
* group[=].element[=].target[=].display = "Overlapping lesion of retroperitoneum and peritoneum"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #194
* group[=].element[=].display = "bosh, yuz, bo'yinning yumshoq to'qimasi"
* group[=].element[=].target[+].code = #C49.0
* group[=].element[=].target[=].display = "Connective, Subcutaneous and other soft tissues of head, face, and neck"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #195
* group[=].element[=].display = "qo'l, elkaning biriktiruvchi va yumshoq to'qimasi"
* group[=].element[=].target[+].code = #C49.1
* group[=].element[=].target[=].display = "Connective, Subcutaneous and other soft tissues of upper limb and shoulder"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #196
* group[=].element[=].display = "oyoq va sonning biriktiruvchi va yumshoq to'qimasi"
* group[=].element[=].target[+].code = #C49.2
* group[=].element[=].target[=].display = "Connective, Subcutaneous and other soft tissues of lower limb and hip"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #197
* group[=].element[=].display = "ko'krak devori yumshoq to'qimasi"
* group[=].element[=].target[+].code = #C49.3
* group[=].element[=].target[=].display = "Connective, Subcutaneous and other soft tissues of thorax"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #198
* group[=].element[=].display = "qorin devori yumshoq to'qimasi"
* group[=].element[=].target[+].code = #C49.4
* group[=].element[=].target[=].display = "Connective, Subcutaneous and other soft tissues of abdomen"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #199
* group[=].element[=].display = "chanoqning biriktiruvchi va yumshoq to'qimasi"
* group[=].element[=].target[+].code = #C49.5
* group[=].element[=].target[=].display = "Connective, Subcutaneous and other soft tissues of pelvis"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #200
* group[=].element[=].display = "orqa (tana orqa qismi) ning yumshoq to'qimasi"
* group[=].element[=].target[+].code = #C49.6
* group[=].element[=].target[=].display = "Connective, Subcutaneous and other soft tissues of trunk, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #201
* group[=].element[=].display = "tananing ko'plab qismlari yumshoq to'qimasining zararlanishi"
* group[=].element[=].target[+].code = #C49.8
* group[=].element[=].target[=].display = "Overlapping lesion of connective, subcutaneous and other soft tissues"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #202
* group[=].element[=].display = "biriktiruvchi va yumshoq to'qima QA"
* group[=].element[=].target[+].code = #C49.9
* group[=].element[=].target[=].display = "Connective, Subcutaneous and other soft tissues, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #203
* group[=].element[=].display = "sut bezi, so'rg'ich va so'rg'ich atrofi (areola)"
* group[=].element[=].target[+].code = #C50.0
* group[=].element[=].target[=].display = "Nipple"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #204
* group[=].element[=].display = "sut bezi markaziy qismi"
* group[=].element[=].target[+].code = #C50.1
* group[=].element[=].target[=].display = "Central portion of breast"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #205
* group[=].element[=].display = "sut bezi yuqori-ichki kvadranti"
* group[=].element[=].target[+].code = #C50.2
* group[=].element[=].target[=].display = "Upper-inner quadrant of breast"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #206
* group[=].element[=].display = "sut bezi pastki-ichki kvadranti"
* group[=].element[=].target[+].code = #C50.3
* group[=].element[=].target[=].display = "Lower-inner quadrant of breast"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #207
* group[=].element[=].display = "sut bezi yuqori-tashqi kvadranti"
* group[=].element[=].target[+].code = #C50.4
* group[=].element[=].target[=].display = "Upper-outer quadrant of breast"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #208
* group[=].element[=].display = "sut bezi pastki-tashqi kvadranti"
* group[=].element[=].target[+].code = #C50.5
* group[=].element[=].target[=].display = "Lower-outer quadrant of breast"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #209
* group[=].element[=].display = "sut bezi qo'ltiq osti o'simtasi"
* group[=].element[=].target[+].code = #C50.6
* group[=].element[=].target[=].display = "Axillary tail of breast"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #210
* group[=].element[=].display = "sut bezining ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C50.8
* group[=].element[=].target[=].display = "Overlapping lesion of breast"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #211
* group[=].element[=].display = "sut bezi QA"
* group[=].element[=].target[+].code = #C50.9
* group[=].element[=].target[=].display = "Breast, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #212
* group[=].element[=].display = "katta uyatli lab"
* group[=].element[=].target[+].code = #C51.0
* group[=].element[=].target[=].display = "Labium majus"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #213
* group[=].element[=].display = "kichik uyatli lab"
* group[=].element[=].target[+].code = #C51.1
* group[=].element[=].target[=].display = "Labium minus"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #214
* group[=].element[=].display = "klitor"
* group[=].element[=].target[+].code = #C51.2
* group[=].element[=].target[=].display = "Clitoris"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #215
* group[=].element[=].display = "qin dahlizining ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C51.8
* group[=].element[=].target[=].display = "Overlapping lesion of vulva"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #216
* group[=].element[=].display = "qin dahlizi QA"
* group[=].element[=].target[+].code = #C51.9
* group[=].element[=].target[=].display = "Vulva, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #217
* group[=].element[=].display = "qin QA"
* group[=].element[=].target[+].code = #C52.9
* group[=].element[=].target[=].display = "Vagina, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #218
* group[=].element[=].display = "bachadon bo'ynining ichki qismi"
* group[=].element[=].target[+].code = #C53.0
* group[=].element[=].target[=].display = "Endocervix"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #219
* group[=].element[=].display = "bachadon bo'ynining tashqi qismi"
* group[=].element[=].target[+].code = #C53.1
* group[=].element[=].target[=].display = "Exocervix"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #220
* group[=].element[=].display = "bachadon bo'yniningko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C53.8
* group[=].element[=].target[=].display = "Overlapping lesion of cervix uteri"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #221
* group[=].element[=].display = "bachadon bo'yni"
* group[=].element[=].target[+].code = #C53.9
* group[=].element[=].target[=].display = "Cervix uteri"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #222
* group[=].element[=].display = "bachadon bo'yinchasi"
* group[=].element[=].target[+].code = #C54.0
* group[=].element[=].target[=].display = "Isthmus uteri"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #223
* group[=].element[=].display = "endometriy"
* group[=].element[=].target[+].code = #C54.1
* group[=].element[=].target[=].display = "Endometrium"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #224
* group[=].element[=].display = "miometriy"
* group[=].element[=].target[+].code = #C54.2
* group[=].element[=].target[=].display = "Myometrium"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #225
* group[=].element[=].display = "bachadon tubi"
* group[=].element[=].target[+].code = #C54.3
* group[=].element[=].target[=].display = "Fundus uteri"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #226
* group[=].element[=].display = "bachadon tanasining ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C54.8
* group[=].element[=].target[=].display = "Overlapping lesion of corpus uteri"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #227
* group[=].element[=].display = "bachadon tanasi"
* group[=].element[=].target[+].code = #C54.9
* group[=].element[=].target[=].display = "Corpus uteri"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #228
* group[=].element[=].display = "bachadon QA"
* group[=].element[=].target[+].code = #C55.9
* group[=].element[=].target[=].display = "Uterus, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #229
* group[=].element[=].display = "tuxumdon"
* group[=].element[=].target[+].code = #C56.9
* group[=].element[=].target[=].display = "Ovary"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #230
* group[=].element[=].display = "fallopiev nayi"
* group[=].element[=].target[+].code = #C57.0
* group[=].element[=].target[=].display = "Fallopian tube"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #231
* group[=].element[=].display = "bachadon keng boylami"
* group[=].element[=].target[+].code = #C57.1
* group[=].element[=].target[=].display = "Broad ligament"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #232
* group[=].element[=].display = "bachadon yumaloq boylami"
* group[=].element[=].target[+].code = #C57.2
* group[=].element[=].target[=].display = "Round ligament"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #233
* group[=].element[=].display = "parametriy"
* group[=].element[=].target[+].code = #C57.3
* group[=].element[=].target[=].display = "Parametrium"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #234
* group[=].element[=].display = "bachadon ortiqlari"
* group[=].element[=].target[+].code = #C57.4
* group[=].element[=].target[=].display = "Uterine adnexa"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #235
* group[=].element[=].display = "ayollar jinsiy a'zolarining boshqa sohalari"
* group[=].element[=].target[+].code = #C57.7
* group[=].element[=].target[=].display = "Other specified parts of female genital organs"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #236
* group[=].element[=].display = "ayollar ko'plab jinsiy a'zolarining zararlanishi"
* group[=].element[=].target[+].code = #C57.8
* group[=].element[=].target[=].display = "Overlapping lesion of female genital organs"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #237
* group[=].element[=].display = "ayollar jinsiy a'zolari QA"
* group[=].element[=].target[+].code = #C57.9
* group[=].element[=].target[=].display = "Female genital tract, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #238
* group[=].element[=].display = "plasenta (yo'ldosh)"
* group[=].element[=].target[+].code = #C58.9
* group[=].element[=].target[=].display = "Placenta"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #239
* group[=].element[=].display = "jinsiy olat cheka kertmagi"
* group[=].element[=].target[+].code = #C60.0
* group[=].element[=].target[=].display = "Prepuce"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #240
* group[=].element[=].display = "jinsiy olat boshchasi"
* group[=].element[=].target[+].code = #C60.1
* group[=].element[=].target[=].display = "Glans penis"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #241
* group[=].element[=].display = "jinsiy olat tanasi"
* group[=].element[=].target[+].code = #C60.2
* group[=].element[=].target[=].display = "Body of penis"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #242
* group[=].element[=].display = "jinsiy olat ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C60.8
* group[=].element[=].target[=].display = "Overlapping lesion of penis"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #243
* group[=].element[=].display = "jinsiy olat QA"
* group[=].element[=].target[+].code = #C60.9
* group[=].element[=].target[=].display = "Penis, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #244
* group[=].element[=].display = "prostata bezi"
* group[=].element[=].target[+].code = #C61.9
* group[=].element[=].target[=].display = "Prostate gland"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #245
* group[=].element[=].display = "yorg'oqqa tushmagan moyak"
* group[=].element[=].target[+].code = #C62.0
* group[=].element[=].target[=].display = "Undescended testis"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #246
* group[=].element[=].display = "yorg'oqqa tushgan moyak"
* group[=].element[=].target[+].code = #C62.1
* group[=].element[=].target[=].display = "Descended testis"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #247
* group[=].element[=].display = "moyak QA"
* group[=].element[=].target[+].code = #C62.9
* group[=].element[=].target[=].display = "Testis, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #248
* group[=].element[=].display = "moyakning ortiqlari"
* group[=].element[=].target[+].code = #C63.0
* group[=].element[=].target[=].display = "Epididymis"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #249
* group[=].element[=].display = "urug' tizimchasi"
* group[=].element[=].target[+].code = #C63.1
* group[=].element[=].target[=].display = "Spermatic cord"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #250
* group[=].element[=].display = "yorg'oq QA"
* group[=].element[=].target[+].code = #C63.2
* group[=].element[=].target[=].display = "Scrotum, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #251
* group[=].element[=].display = "erkaklar jinsiy a'zolarining boshqa sohalari"
* group[=].element[=].target[+].code = #C63.7
* group[=].element[=].target[=].display = "Other specified parts of male genital organs"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #252
* group[=].element[=].display = "erkaklar ko'plab jinsiy a'zolarining zararlanishi"
* group[=].element[=].target[+].code = #C63.8
* group[=].element[=].target[=].display = "Overlapping lesion of male genital organs"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #253
* group[=].element[=].display = "erkaklar jinsiy a'zolari QA"
* group[=].element[=].target[+].code = #C63.9
* group[=].element[=].target[=].display = "Male genital organs, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #254
* group[=].element[=].display = "buyrak"
* group[=].element[=].target[+].code = #C64.9
* group[=].element[=].target[=].display = "Kidney, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #255
* group[=].element[=].display = "buyrak jomi"
* group[=].element[=].target[+].code = #C65.9
* group[=].element[=].target[=].display = "Renal pelvis"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #256
* group[=].element[=].display = "siydik nayi"
* group[=].element[=].target[+].code = #C66.9
* group[=].element[=].target[=].display = "Ureter"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #257
* group[=].element[=].display = "siydik pufagi uchburchagi"
* group[=].element[=].target[+].code = #C67.0
* group[=].element[=].target[=].display = "Trigone of bladder"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #258
* group[=].element[=].display = "siydik pufagi gumbazi"
* group[=].element[=].target[+].code = #C67.1
* group[=].element[=].target[=].display = "Dome of bladder"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #259
* group[=].element[=].display = "siydik pufagi yon devori"
* group[=].element[=].target[+].code = #C67.2
* group[=].element[=].target[=].display = "Lateral wall of bladder"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #260
* group[=].element[=].display = "siydik pufagi old devori"
* group[=].element[=].target[+].code = #C67.3
* group[=].element[=].target[=].display = "Anterior wall of bladder"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #261
* group[=].element[=].display = "siydik pufagi orqa devori"
* group[=].element[=].target[+].code = #C67.4
* group[=].element[=].target[=].display = "Posterior wall of bladder"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #262
* group[=].element[=].display = "siydik pufagi bo'yinchasi"
* group[=].element[=].target[+].code = #C67.5
* group[=].element[=].target[=].display = "Bladder neck"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #263
* group[=].element[=].display = "siydik nayi teshigi"
* group[=].element[=].target[+].code = #C67.6
* group[=].element[=].target[=].display = "Ureteric orifice"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #264
* group[=].element[=].display = "uraxus (birlamchi siydik yo'li)"
* group[=].element[=].target[+].code = #C67.7
* group[=].element[=].target[=].display = "Urachus"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #265
* group[=].element[=].display = "siydik pufagining ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C67.8
* group[=].element[=].target[=].display = "Overlapping lesion of bladder"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #266
* group[=].element[=].display = "siydik pufagi QA"
* group[=].element[=].target[+].code = #C67.9
* group[=].element[=].target[=].display = "Bladder, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #267
* group[=].element[=].display = "siydik kanali"
* group[=].element[=].target[+].code = #C68.0
* group[=].element[=].target[=].display = "Urethra"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #268
* group[=].element[=].display = "parauretral bez"
* group[=].element[=].target[+].code = #C68.1
* group[=].element[=].target[=].display = "Paraurethral gland"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #269
* group[=].element[=].display = "ko'plab ayirish a'zolarining zararlanishi"
* group[=].element[=].target[+].code = #C68.8
* group[=].element[=].target[=].display = "Overlapping lesion of urinary organs"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #270
* group[=].element[=].display = "ayirish a'zolari QA"
* group[=].element[=].target[+].code = #C68.9
* group[=].element[=].target[=].display = "Urinary system, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #271
* group[=].element[=].display = "kon'yunktiva"
* group[=].element[=].target[+].code = #C69.0
* group[=].element[=].target[=].display = "Conjunctiva"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #272
* group[=].element[=].display = "shox parda QA"
* group[=].element[=].target[+].code = #C69.1
* group[=].element[=].target[=].display = "Cornea, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #273
* group[=].element[=].display = "to'r parda QA"
* group[=].element[=].target[+].code = #C69.2
* group[=].element[=].target[=].display = "Retina"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #274
* group[=].element[=].display = "ko'z tomirli pardasi"
* group[=].element[=].target[+].code = #C69.3
* group[=].element[=].target[=].display = "Choroid"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #275
* group[=].element[=].display = "ko'z kipriksimon tanasi"
* group[=].element[=].target[+].code = #C69.4
* group[=].element[=].target[=].display = "Ciliary body"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #276
* group[=].element[=].display = "yosh bezi QA"
* group[=].element[=].target[+].code = #C69.5
* group[=].element[=].target[=].display = "Lacrimal gland"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #277
* group[=].element[=].display = "ko'z kosasi QA"
* group[=].element[=].target[+].code = #C69.6
* group[=].element[=].target[=].display = "Orbit, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #278
* group[=].element[=].display = "ko'zning ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C69.8
* group[=].element[=].target[=].display = "Overlapping lesion of eye and adnexa"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #279
* group[=].element[=].display = "ko'z QA"
* group[=].element[=].target[+].code = #C69.9
* group[=].element[=].target[=].display = "Eye, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #280
* group[=].element[=].display = "bosh miya pardasi"
* group[=].element[=].target[+].code = #C70.0
* group[=].element[=].target[=].display = "Cerebral meninges"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #281
* group[=].element[=].display = "orqa miya pardasi"
* group[=].element[=].target[+].code = #C70.1
* group[=].element[=].target[=].display = "Spinal meninges"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #282
* group[=].element[=].display = "miya pardasi QA"
* group[=].element[=].target[+].code = #C70.9
* group[=].element[=].target[=].display = "Meninges, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #283
* group[=].element[=].display = "katta miya (bo'lma va qorinchalardan tashqari)"
* group[=].element[=].target[+].code = #C71.0
* group[=].element[=].target[=].display = "Cerebrum"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #284
* group[=].element[=].display = "miyaning peshona bo'lmasi"
* group[=].element[=].target[+].code = #C71.1
* group[=].element[=].target[=].display = "Frontal lobe"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #285
* group[=].element[=].display = "miyaning chakka bo'lmasi"
* group[=].element[=].target[+].code = #C71.2
* group[=].element[=].target[=].display = "Temporal lobe"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #286
* group[=].element[=].display = "miyaning tepa bo'lmasi"
* group[=].element[=].target[+].code = #C71.3
* group[=].element[=].target[=].display = "Parietal lobe"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #287
* group[=].element[=].display = "miyaning ensa bo'lmasi"
* group[=].element[=].target[+].code = #C71.4
* group[=].element[=].target[=].display = "Occipital lobe"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #288
* group[=].element[=].display = "miya qorinchalari QA"
* group[=].element[=].target[+].code = #C71.5
* group[=].element[=].target[=].display = "Ventricle, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #289
* group[=].element[=].display = "miyacha"
* group[=].element[=].target[+].code = #C71.6
* group[=].element[=].target[=].display = "Cerebellum, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #290
* group[=].element[=].display = "bosh miya ustuni"
* group[=].element[=].target[+].code = #C71.7
* group[=].element[=].target[=].display = "Brain stem"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #291
* group[=].element[=].display = "bosh miyaning ko'plab qismlarining qo'shma zararlanishi"
* group[=].element[=].target[+].code = #C71.8
* group[=].element[=].target[=].display = "Overlapping lesion of brain"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #292
* group[=].element[=].display = "bosh miya QA"
* group[=].element[=].target[+].code = #C71.9
* group[=].element[=].target[=].display = "Brain, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #293
* group[=].element[=].display = "orqa miya"
* group[=].element[=].target[+].code = #C72.0
* group[=].element[=].target[=].display = "Spinal cord"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #294
* group[=].element[=].display = "ot dumi"
* group[=].element[=].target[+].code = #C72.1
* group[=].element[=].target[=].display = "Cauda equina"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #295
* group[=].element[=].display = "hid sezish nervi"
* group[=].element[=].target[+].code = #C72.2
* group[=].element[=].target[=].display = "Olfactory nerve"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #296
* group[=].element[=].display = "ko'ruv nervi"
* group[=].element[=].target[+].code = #C72.3
* group[=].element[=].target[=].display = "Optic nerve"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #297
* group[=].element[=].display = "eshitish nervi"
* group[=].element[=].target[+].code = #C72.4
* group[=].element[=].target[=].display = "Acoustic nerve"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #298
* group[=].element[=].display = "bosh miya nervi"
* group[=].element[=].target[+].code = #C72.5
* group[=].element[=].target[=].display = "Cranial nerve, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #299
* group[=].element[=].display = "miya va MATning ko'plab qismlarining zararlanishi"
* group[=].element[=].target[+].code = #C72.8
* group[=].element[=].target[=].display = "Overlapping lesion of brain and central nervous system"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #300
* group[=].element[=].display = "MAT QA"
* group[=].element[=].target[+].code = #C72.9
* group[=].element[=].target[=].display = "Nervous system, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #301
* group[=].element[=].display = "qalqonsimon bez"
* group[=].element[=].target[+].code = #C73.9
* group[=].element[=].target[=].display = "Thyroid gland"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #302
* group[=].element[=].display = "buyrak usti bezi po'stlog'i"
* group[=].element[=].target[+].code = #C74.0
* group[=].element[=].target[=].display = "Cortex of adrenal gland"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #303
* group[=].element[=].display = "buyrak usti bezi miya (mag'iz) qavati"
* group[=].element[=].target[+].code = #C74.1
* group[=].element[=].target[=].display = "Medulla of adrenal gland"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #304
* group[=].element[=].display = "burak usti bezi QA"
* group[=].element[=].target[+].code = #C74.9
* group[=].element[=].target[=].display = "Adrenal gland, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #305
* group[=].element[=].display = "qalqon oldi bezi"
* group[=].element[=].target[+].code = #C75.0
* group[=].element[=].target[=].display = "Parathyroid gland"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #306
* group[=].element[=].display = "gipofiz"
* group[=].element[=].target[+].code = #C75.1
* group[=].element[=].target[=].display = "Pituitary gland"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #307
* group[=].element[=].display = "kriniofaringeal yo'l"
* group[=].element[=].target[+].code = #C75.2
* group[=].element[=].target[=].display = "Craniopharyngeal duct"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #308
* group[=].element[=].display = "g'uddasimon bez"
* group[=].element[=].target[+].code = #C75.3
* group[=].element[=].target[=].display = "Pineal gland"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #309
* group[=].element[=].display = "karotid glomus"
* group[=].element[=].target[+].code = #C75.4
* group[=].element[=].target[=].display = "Carotid body"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #310
* group[=].element[=].display = "aortal glomus va boshqa paragangliylar"
* group[=].element[=].target[+].code = #C75.5
* group[=].element[=].target[=].display = "Aortic body and other paraganglia"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #311
* group[=].element[=].display = "endokrin bezlarining ko'plab zararlanishi"
* group[=].element[=].target[+].code = #C75.8
* group[=].element[=].target[=].display = "Overlapping lesion of endocrine glands and related structures"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #312
* group[=].element[=].display = "endokrin bez QA"
* group[=].element[=].target[+].code = #C75.9
* group[=].element[=].target[=].display = "Endocrine gland, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #313
* group[=].element[=].display = "bosh, yuz, bo'yin QA"
* group[=].element[=].target[+].code = #C76.0
* group[=].element[=].target[=].display = "Head, face or neck, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #314
* group[=].element[=].display = "ko'krak bo'shlig'i QA"
* group[=].element[=].target[+].code = #C76.1
* group[=].element[=].target[=].display = "Thorax, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #315
* group[=].element[=].display = "qorin QA"
* group[=].element[=].target[+].code = #C76.2
* group[=].element[=].target[=].display = "Abdomen, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #316
* group[=].element[=].display = "chanoq QA"
* group[=].element[=].target[+].code = #C76.3
* group[=].element[=].target[=].display = "Pelvis, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #317
* group[=].element[=].display = "qo'llar QA"
* group[=].element[=].target[+].code = #C76.4
* group[=].element[=].target[=].display = "Upper limb, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #318
* group[=].element[=].display = "oyoqlar QA"
* group[=].element[=].target[+].code = #C76.5
* group[=].element[=].target[=].display = "Lower limb, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #319
* group[=].element[=].display = "noaniq lokalizatsiyali boshqa o'smalar"
* group[=].element[=].target[+].code = #C76.7
* group[=].element[=].target[=].display = "Other ill-defined sites"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #320
* group[=].element[=].display = "aniqlanmagan a'zolarning ko'plab zararlanishi"
* group[=].element[=].target[+].code = #C76.8
* group[=].element[=].target[=].display = "Overlapping lesion of ill-defined sites"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #321
* group[=].element[=].display = "bosh va bo'yin l.t"
* group[=].element[=].target[+].code = #C77.0
* group[=].element[=].target[=].display = "Lymph nodes of head, face and neck"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #322
* group[=].element[=].display = "ko'krak ichi l.t"
* group[=].element[=].target[+].code = #C77.1
* group[=].element[=].target[=].display = "Intrathoracic lymph nodes"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #323
* group[=].element[=].display = "qorin ichi l.t"
* group[=].element[=].target[+].code = #C77.2
* group[=].element[=].target[=].display = "Intra-abdominal lymph nodes"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #324
* group[=].element[=].display = "ko'ltiq osti va qo'llar l.t"
* group[=].element[=].target[+].code = #C77.3
* group[=].element[=].target[=].display = "Lymph nodes of axilla or arm"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #325
* group[=].element[=].display = "chov va oyoqlar l.t"
* group[=].element[=].target[+].code = #C77.4
* group[=].element[=].target[=].display = "Lymph nodes of inguinal region or leg"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #326
* group[=].element[=].display = "chanoq ichi l.t"
* group[=].element[=].target[+].code = #C77.5
* group[=].element[=].target[=].display = "Pelvic lymph nodes"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #327
* group[=].element[=].display = "limfa tugunlarning ko'plab zararlanishi"
* group[=].element[=].target[+].code = #C77.8
* group[=].element[=].target[=].display = "Lymph nodes of multiple regions"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #328
* group[=].element[=].display = "limfa tugun QA"
* group[=].element[=].target[+].code = #C77.9
* group[=].element[=].target[=].display = "Lymph node, NOS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #329
* group[=].element[=].display = "noaniq lokalizatsiyali"
* group[=].element[=].target[+].code = #C80.9
* group[=].element[=].target[=].display = "Unknown primary site"
* group[=].element[=].target[=].relationship = #equivalent


