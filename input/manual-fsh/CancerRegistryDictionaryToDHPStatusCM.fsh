Instance: cancer-registry-dictionary-to-dhp-status-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "Cancer Registry Dictionary to DHP Status"
Description: "ConceptMap defining the mapping between cancer status codes used by the Cancer Registry and the corresponding status codes used by DHP."
* name = "CancerRegistryDictionaryToDHPStatusCM"
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/cancer-registry-dictionary-to-dhp-status-cm"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

* sourceScopeCanonical = Canonical(CancerRegistryDictionaryVS)

// Group 1: CancerRegistryDictionaryCS to CancerEncounterSubjectStatusCS
* group[+].source = Canonical(CancerRegistryDictionaryCS)
* group[=].target = $discharge-disposition-home-cs

* group[=].element[+].code = #29
* group[=].element[=].display = "Жив"
* group[=].element[=].target[+].code = #cancer-0001-0001
* group[=].element[=].target[=].display = "Жив"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #30
* group[=].element[=].display = "Умер"
* group[=].element[=].target[+].code = #mserv-0004-00002
* group[=].element[=].target[=].display = "Умер"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #31
* group[=].element[=].display = "Выехал"
* group[=].element[=].target[+].code = #mserv-0004-00003
* group[=].element[=].target[=].display = "Сам ушел из больницы"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #32
* group[=].element[=].display = "Диагноз не подтвердился"
* group[=].element[=].target[+].code = #cancer-0001-0002
* group[=].element[=].target[=].display = "Диагноз не подтвердился"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #33
* group[=].element[=].display = "Снят с учета в связи с истечением сроков наблюдения"
* group[=].element[=].target[+].code = #cancer-0001-0003
* group[=].element[=].target[=].display = "Снят с учета в связи с истечением сроков наблюдения"
* group[=].element[=].target[=].relationship = #equivalent


// Group 2: CancerRegistryDictionaryCS to CancerConfirmationMethodCS
* group[+].source = Canonical(CancerRegistryDictionaryCS)
* group[=].target = Canonical(CancerConfirmationMethodCS)

* group[=].element[+].code = #357
* group[=].element[=].display = "Специфические опухолевые маркёры"
* group[=].element[=].target[+].code = #cancer-0002-0001
* group[=].element[=].target[=].display = "Специфические опухолевые маркёры"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #358
* group[=].element[=].display = "Цитологически (Иммунофенотипировние)"
* group[=].element[=].target[+].code = #cancer-0002-0002
* group[=].element[=].target[=].display = "Цитологически (Иммунофенотипировние)"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #359
* group[=].element[=].display = "Гистология"
* group[=].element[=].target[+].code = #cancer-0002-0003
* group[=].element[=].target[=].display = "Гистология"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #360
* group[=].element[=].display = "Цитогенетика и/или молекулярная диагностика"
* group[=].element[=].target[+].code = #cancer-0002-0004
* group[=].element[=].target[=].display = "Цитогенетика и/или молекулярная диагностика"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #354
* group[=].element[=].display = "Только свидетельство о смерти (DCO)"
* group[=].element[=].target[+].code = #cancer-0002-0005
* group[=].element[=].target[=].display = "Только свидетельство о смерти (DCO)"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #355
* group[=].element[=].display = "Только клинически (без инстурументального исследования)"
* group[=].element[=].target[+].code = #cancer-0002-0006
* group[=].element[=].target[=].display = "Только клинически (без инстурументального исследования)"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #356
* group[=].element[=].display = "Инструментальные методы"
* group[=].element[=].target[+].code = #cancer-0002-0007
* group[=].element[=].target[=].display = "Инструментальные методы"
* group[=].element[=].target[=].relationship = #equivalent

// Group 3: CancerRegistryDictionaryCS to CancerDiagnosisTypeCS
* group[+].source = Canonical(CancerRegistryDictionaryCS)
* group[=].target = $diagnosis-type-cs

* group[=].element[+].code = #505
* group[=].element[=].display = "История болезни или выписка из истории болезни (амб. Карта) филиала РСНПМЦОиР"
* group[=].element[=].target[+].code = #cancer-0003-0001
* group[=].element[=].target[=].display = "История болезни (амб. Карта) филиала РСНПМЦОиР"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #506
* group[=].element[=].display = "Выписка из истории болезни (амб.карты) другого государственного медицинского учреждения"
* group[=].element[=].target[+].code = #cancer-0003-0002
* group[=].element[=].target[=].display = "Выписка из истории болезни (амб.карты) другого медицинского учреждения"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #507
* group[=].element[=].display = "Извещение филиала РСНПМЦОиР"
* group[=].element[=].target[+].code = #cancer-0003-0003
* group[=].element[=].target[=].display = "Извещение филиала РСНПМЦОиР"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #509
* group[=].element[=].display = "Извещение из другого медицинского учреждения"
* group[=].element[=].target[+].code = #cancer-0003-0004
* group[=].element[=].target[=].display = "Извещение из другого медицинского учреждения"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #508
* group[=].element[=].display = "Извещение РМО/ГМО"
* group[=].element[=].target[+].code = #cancer-0003-0005
* group[=].element[=].target[=].display = "Извещение РМО/ГМО"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #898
* group[=].element[=].display = "История болезни или выписка из истории болезни (амб.карта) РНПМЦ детской онкологии, гематологии и иммунологии"
* group[=].element[=].target[+].code = #cancer-0003-0006
* group[=].element[=].target[=].display = "История болезни или выписка из истории болезни (амб.карта) РНПМЦ детской онкологии, гематологии и иммунологии"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #985
* group[=].element[=].display = "РСНПМЦ гематологии"
* group[=].element[=].target[+].code = #cancer-0003-0007
* group[=].element[=].target[=].display = "РСНПМЦ гематологии"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #510
* group[=].element[=].display = "Свидетельство о смерти"
* group[=].element[=].target[+].code = #cancer-0003-0008
* group[=].element[=].target[=].display = "Свидетельство о смерти"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #511
* group[=].element[=].display = "ЗАГС"
* group[=].element[=].target[+].code = #cancer-0003-0009
* group[=].element[=].target[=].display = "ЗАГС"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #513
* group[=].element[=].display = "Выписка из истории болезни (амб.карты) частного медицинского учреждения"
* group[=].element[=].target[+].code = #cancer-0003-0010
* group[=].element[=].target[=].display = "Выписка из истории болезни (амб.карты) частного медицинского учреждения"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #512
* group[=].element[=].display = "Паталого-анатомическое бюро"
* group[=].element[=].target[+].code = #gencl-0001-00011
* group[=].element[=].target[=].display = "Патологоанатомический диагноз"
* group[=].element[=].target[=].relationship = #equivalent

// Group 4: CancerRegistryDictionaryCS to CancerLaterlityQualifierCS
* group[+].source = Canonical(CancerRegistryDictionaryCS)
* group[=].target = $sct

* group[=].element[+].code = #336
* group[=].element[=].display = "Слева"
* group[=].element[=].target[+].code = #7771000 
* group[=].element[=].target[=].display = "Left"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #337
* group[=].element[=].display = "Справа"
* group[=].element[=].target[+].code = #24028007
* group[=].element[=].target[=].display = "Right"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #338
* group[=].element[=].display = "Оба органа"
* group[=].element[=].target[+].code = #51440002 
* group[=].element[=].target[=].display = "Right and left"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #339
* group[=].element[=].display = "Неизвестно"
* group[=].element[=].target[+].code = #261665006
* group[=].element[=].target[=].display = "Unknown"
* group[=].element[=].target[=].relationship = #equivalent

// Group 5: CancerRegistryDictionaryCS to CancerDetectionConditionCS
* group[+].source = Canonical(CancerRegistryDictionaryCS)
* group[=].target = Canonical(CancerDetectionConditionCS)

* group[=].element[+].code = #346
* group[=].element[=].display = "Обратился самостоятельно"
* group[=].element[=].target[+].code = #cancer-0005-0001
* group[=].element[=].target[=].display = "Обратился самостоятельно"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #347
* group[=].element[=].display = "Выявлен в кабинете Онконазорат"
* group[=].element[=].target[+].code = #cancer-0005-0002
* group[=].element[=].target[=].display = "Выявлен в кабинете Онконазорат"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #348
* group[=].element[=].display = "При других видах профосмотра"
* group[=].element[=].target[+].code = #cancer-0005-0003
* group[=].element[=].target[=].display = "При других видах профосмотра"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #349
* group[=].element[=].display = "При параллельном профосмотре"
* group[=].element[=].target[+].code = #cancer-0005-0004
* group[=].element[=].target[=].display = "При параллельном профосмотре"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #350
* group[=].element[=].display = "При скрининге"
* group[=].element[=].target[+].code = #cancer-0005-0005
* group[=].element[=].target[=].display = "При скрининге"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #351
* group[=].element[=].display = "Учтен посмертно с диагнозом, установленом при жизни"
* group[=].element[=].target[+].code = #cancer-0005-0006
* group[=].element[=].target[=].display = "Учтен посмертно с диагнозом, установленом при жизни"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #352
* group[=].element[=].display = "Учтен посмертно без вскрытия"
* group[=].element[=].target[+].code = #cancer-0005-0007
* group[=].element[=].target[=].display = "Учтен посмертно без вскрытия"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #353
* group[=].element[=].display = "Учтен посмертно после вскрытия"
* group[=].element[=].target[+].code = #cancer-0005-0008
* group[=].element[=].target[=].display = "Учтен посмертно после вскрытия"
* group[=].element[=].target[=].relationship = #equivalent


// Group 6: CancerRegistryDictionaryCS to CancerCCCtCategoryCS
* group[+].source = Canonical(CancerRegistryDictionaryCS)
* group[=].target = $sct

* group[=].element[+].code = #412
* group[=].element[=].display = "X"
* group[=].element[=].target[+].code = #1352975000
* group[=].element[=].target[=].display = "X"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #413
* group[=].element[=].display = "in situ"
* group[=].element[=].target[+].code = #1352984000
* group[=].element[=].target[=].display = "is"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #414
* group[=].element[=].display = "0"
* group[=].element[=].target[+].code = #1352986003
* group[=].element[=].target[=].display = "0"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #415
* group[=].element[=].display = "1"
* group[=].element[=].target[+].code = #1352996007
* group[=].element[=].target[=].display = "1"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #416
* group[=].element[=].display = "1a"
* group[=].element[=].target[+].code = #1352983006
* group[=].element[=].target[=].display = "1a"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #417
* group[=].element[=].display = "1b"
* group[=].element[=].target[+].code = #1352968001
* group[=].element[=].target[=].display = "1b"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #418
* group[=].element[=].display = "1c"
* group[=].element[=].target[+].code = #1352973007
* group[=].element[=].target[=].display = "1c"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #419
* group[=].element[=].display = "1d"
* group[=].element[=].target[+].code = #1352978003
* group[=].element[=].target[=].display = "1d"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #420
* group[=].element[=].display = "2"
* group[=].element[=].target[+].code = #1352993004
* group[=].element[=].target[=].display = "2"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #421
* group[=].element[=].display = "2a"
* group[=].element[=].target[+].code = #1352962000
* group[=].element[=].target[=].display = "2a"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #422
* group[=].element[=].display = "2b"
* group[=].element[=].target[+].code = #1352972002
* group[=].element[=].target[=].display = "2b"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #423
* group[=].element[=].display = "2c"
* group[=].element[=].target[+].code = #1352969009
* group[=].element[=].target[=].display = "2c"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #424
* group[=].element[=].display = "2d"
* group[=].element[=].target[+].code = #1352971009
* group[=].element[=].target[=].display = "2d"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #425
* group[=].element[=].display = "3"
* group[=].element[=].target[+].code = #1352966002
* group[=].element[=].target[=].display = "3"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #426
* group[=].element[=].display = "3a"
* group[=].element[=].target[+].code = #1352989005
* group[=].element[=].target[=].display = "3a"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #427
* group[=].element[=].display = "3b"
* group[=].element[=].target[+].code = #1352991002
* group[=].element[=].target[=].display = "3b"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #428
* group[=].element[=].display = "3c"
* group[=].element[=].target[+].code = #1352976004
* group[=].element[=].target[=].display = "3c"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #429
* group[=].element[=].display = "3d"
* group[=].element[=].target[+].code = #1352994005
* group[=].element[=].target[=].display = "3d"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #430
* group[=].element[=].display = "3e"
* group[=].element[=].target[+].code = #1352974001
* group[=].element[=].target[=].display = "3e"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #431
* group[=].element[=].display = "4"
* group[=].element[=].target[+].code = #1352997003
* group[=].element[=].target[=].display = "4"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #432
* group[=].element[=].display = "4a"
* group[=].element[=].target[+].code = #1352982001
* group[=].element[=].target[=].display = "4a"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #433
* group[=].element[=].display = "4b"
* group[=].element[=].target[+].code = #1352960008
* group[=].element[=].target[=].display = "4b"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #434
* group[=].element[=].display = "4c"
* group[=].element[=].target[+].code = #1352980009
* group[=].element[=].target[=].display = "4c"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #435
* group[=].element[=].display = "4d"
* group[=].element[=].target[+].code = #1352963005
* group[=].element[=].target[=].display = "4d"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #436
* group[=].element[=].display = "4e"
* group[=].element[=].target[+].code = #1352981008
* group[=].element[=].target[=].display = "4e"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #872
* group[=].element[=].display = "a"
* group[=].element[=].target[+].code = #1352961007
* group[=].element[=].target[=].display = "a"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #873
* group[=].element[=].display = "1a1"
* group[=].element[=].target[+].code = #1352959003
* group[=].element[=].target[=].display = "1a1"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #874
* group[=].element[=].display = "1a2"
* group[=].element[=].target[+].code = #1352988002
* group[=].element[=].target[=].display = "1a2"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #875
* group[=].element[=].display = "2a1"
* group[=].element[=].target[+].code = #1352990001
* group[=].element[=].target[=].display = "2a1"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #876
* group[=].element[=].display = "2a2"
* group[=].element[=].target[+].code = #1352967006
* group[=].element[=].target[=].display = "2a2"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #877
* group[=].element[=].display = "1b1"
* group[=].element[=].target[+].code = #1352985004
* group[=].element[=].target[=].display = "1b1"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #878
* group[=].element[=].display = "1b2"
* group[=].element[=].target[+].code = #1352992009
* group[=].element[=].target[=].display = "1b2"
* group[=].element[=].target[=].relationship = #equivalent

* group[+].source = Canonical(CancerRegistryDictionaryCS)
* group[=].target = Canonical(CancerCCCtCategoryCS)

* group[=].element[+].code = #437
* group[=].element[=].display = "m"
* group[=].element[=].target[+].code = #cancer-0006-0001
* group[=].element[=].target[=].display = "m"
* group[=].element[=].target[=].relationship = #equivalent


// Group 7: CancerRegistryDictionaryCS to CancerCCcNCategoryCS
* group[+].source = Canonical(CancerRegistryDictionaryCS)
* group[=].target = $sct

* group[=].element[+].code = #871
* group[=].element[=].display = "0"
* group[=].element[=].target[+].code = #1353041009
* group[=].element[=].target[=].display = "0"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #438
* group[=].element[=].display = "X"
* group[=].element[=].target[+].code = #1353039008
* group[=].element[=].target[=].display = "X"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #439
* group[=].element[=].display = "1"
* group[=].element[=].target[+].code = #1353043007
* group[=].element[=].target[=].display = "1"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #440
* group[=].element[=].display = "1a"
* group[=].element[=].target[+].code = #1353046004
* group[=].element[=].target[=].display = "1a"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #441
* group[=].element[=].display = "1b"
* group[=].element[=].target[+].code = #1353048003
* group[=].element[=].target[=].display = "1b"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #442
* group[=].element[=].display = "1c"
* group[=].element[=].target[+].code = #1353044001
* group[=].element[=].target[=].display = "1c"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #443
* group[=].element[=].display = "2"
* group[=].element[=].target[+].code = #1353047008
* group[=].element[=].target[=].display = "2"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #444
* group[=].element[=].display = "2a"
* group[=].element[=].target[+].code = #1353050006
* group[=].element[=].target[=].display = "2a"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #445
* group[=].element[=].display = "2b"
* group[=].element[=].target[+].code = #1353055001
* group[=].element[=].target[=].display = "2b"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #446
* group[=].element[=].display = "2c"
* group[=].element[=].target[+].code = #1353049006
* group[=].element[=].target[=].display = "2c"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #447
* group[=].element[=].display = "3"
* group[=].element[=].target[+].code = #1353053008
* group[=].element[=].target[=].display = "3"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #448
* group[=].element[=].display = "3a"
* group[=].element[=].target[+].code = #1353057009
* group[=].element[=].target[=].display = "3a"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #449
* group[=].element[=].display = "3b"
* group[=].element[=].target[+].code = #1353054002
* group[=].element[=].target[=].display = "3b"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #450
* group[=].element[=].display = "3c"
* group[=].element[=].target[+].code = #1353051005
* group[=].element[=].target[=].display = "3c"
* group[=].element[=].target[=].relationship = #equivalent

// Group 8: CancerRegistryDictionaryCS to CancerCCcMCategoryCS
* group[+].source = Canonical(CancerRegistryDictionaryCS)
* group[=].target = Canonical(CancerCCcMCategoryCS)

* group[=].element[+].code = #451
* group[=].element[=].display = "X"
* group[=].element[=].target[+].code = #cancer-0008-0001
* group[=].element[=].target[=].display = "X"
* group[=].element[=].target[=].relationship = #equivalent

* group[+].source = Canonical(CancerRegistryDictionaryCS)
* group[=].target = $sct

* group[=].element[+].code = #452
* group[=].element[=].display = "0"
* group[=].element[=].target[+].code = #1352512001
* group[=].element[=].target[=].display = "0"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #453
* group[=].element[=].display = "1"
* group[=].element[=].target[+].code = #1352513006
* group[=].element[=].target[=].display = "1"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #454
* group[=].element[=].display = "1a"
* group[=].element[=].target[+].code = #1352517007
* group[=].element[=].target[=].display = "1a"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #455
* group[=].element[=].display = "1b"
* group[=].element[=].target[+].code = #1352514000
* group[=].element[=].target[=].display = "1b"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #456
* group[=].element[=].display = "1c"
* group[=].element[=].target[+].code = #1352516003
* group[=].element[=].target[=].display = "1c"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #457
* group[=].element[=].display = "1d"
* group[=].element[=].target[+].code = #1352510009
* group[=].element[=].target[=].display = "1d"
* group[=].element[=].target[=].relationship = #equivalent


// Group 9: CancerRegistryDictionaryCS to CancerCCpTCategoryCS
* group[+].source = Canonical(CancerRegistryDictionaryCS)
* group[=].target = $sct

* group[=].element[+].code = #461
* group[=].element[=].display = "x"
* group[=].element[=].target[+].code = #1352532000
* group[=].element[=].target[=].display = "X"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #462
* group[=].element[=].display = "in situ"
* group[=].element[=].target[+].code = #1352558000
* group[=].element[=].target[=].display = "is"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #463
* group[=].element[=].display = "0"
* group[=].element[=].target[+].code = #1352552004
* group[=].element[=].target[=].display = "0"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #464
* group[=].element[=].display = "1"
* group[=].element[=].target[+].code = #1352559008
* group[=].element[=].target[=].display = "1"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #465
* group[=].element[=].display = "1a"
* group[=].element[=].target[+].code = #1352560003
* group[=].element[=].target[=].display = "1a"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #466
* group[=].element[=].display = "1b"
* group[=].element[=].target[+].code = #1352543008
* group[=].element[=].target[=].display = "1b"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #467
* group[=].element[=].display = "1c"
* group[=].element[=].target[+].code = #1352537006
* group[=].element[=].target[=].display = "1c"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #468
* group[=].element[=].display = "2"
* group[=].element[=].target[+].code = #1352545001
* group[=].element[=].target[=].display = "2"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #469
* group[=].element[=].display = "2a"
* group[=].element[=].target[+].code = #1352564007
* group[=].element[=].target[=].display = "2a"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #470
* group[=].element[=].display = "2b"
* group[=].element[=].target[+].code = #1352547009
* group[=].element[=].target[=].display = "2b"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #471
* group[=].element[=].display = "2c"
* group[=].element[=].target[+].code = #1352569002
* group[=].element[=].target[=].display = "2c"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #472
* group[=].element[=].display = "2d"
* group[=].element[=].target[+].code = #1352548004
* group[=].element[=].target[=].display = "2d"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #473
* group[=].element[=].display = "3"
* group[=].element[=].target[+].code = #1352533005
* group[=].element[=].target[=].display = "3"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #474
* group[=].element[=].display = "3a"
* group[=].element[=].target[+].code = #1352551006
* group[=].element[=].target[=].display = "3a"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #475
* group[=].element[=].display = "3b"
* group[=].element[=].target[+].code = #1352534004
* group[=].element[=].target[=].display = "3b"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #476
* group[=].element[=].display = "3c"
* group[=].element[=].target[+].code = #1352556001
* group[=].element[=].target[=].display = "3c"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #477
* group[=].element[=].display = "3d"
* group[=].element[=].target[+].code = #1352531007
* group[=].element[=].target[=].display = "3d"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #478
* group[=].element[=].display = "4"
* group[=].element[=].target[+].code = #1352553009
* group[=].element[=].target[=].display = "4"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #479
* group[=].element[=].display = "4a"
* group[=].element[=].target[+].code = #1352538001
* group[=].element[=].target[=].display = "4a"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #480
* group[=].element[=].display = "4b"
* group[=].element[=].target[+].code = #1352561004
* group[=].element[=].target[=].display = "4b"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #481
* group[=].element[=].display = "4c"
* group[=].element[=].target[+].code = #1352540006
* group[=].element[=].target[=].display = "4c"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #482
* group[=].element[=].display = "4d"
* group[=].element[=].target[+].code = #1352557005
* group[=].element[=].target[=].display = "4d"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #879
* group[=].element[=].display = "a"
* group[=].element[=].target[+].code = #1352539009
* group[=].element[=].target[=].display = "a"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #880
* group[=].element[=].display = "1a1"
* group[=].element[=].target[+].code = #1352550007
* group[=].element[=].target[=].display = "1a1"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #881
* group[=].element[=].display = "1a2"
* group[=].element[=].target[+].code = #1352566009
* group[=].element[=].target[=].display = "1a2"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #882
* group[=].element[=].display = "2a1"
* group[=].element[=].target[+].code = #1352546000
* group[=].element[=].target[=].display = "2a1"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #883
* group[=].element[=].display = "2a2"
* group[=].element[=].target[+].code = #1352567000
* group[=].element[=].target[=].display = "2a2"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #884
* group[=].element[=].display = "1b1"
* group[=].element[=].target[+].code = #1352536002
* group[=].element[=].target[=].display = "1b1"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #885
* group[=].element[=].display = "1b2"
* group[=].element[=].target[+].code = #1352554003
* group[=].element[=].target[=].display = "1b2"
* group[=].element[=].target[=].relationship = #equivalent

// Group 10: CancerRegistryDictionaryCS to CancerCCpNCategoryCS
* group[+].source = Canonical(CancerRegistryDictionaryCS)
* group[=].target = $sct

* group[=].element[+].code = #484
* group[=].element[=].display = "X"
* group[=].element[=].target[+].code = #1352605004
* group[=].element[=].target[=].display = "X"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #485
* group[=].element[=].display = "0"
* group[=].element[=].target[+].code = #1352621009
* group[=].element[=].target[=].display = "0"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #486
* group[=].element[=].display = "1"
* group[=].element[=].target[+].code = #1352614009
* group[=].element[=].target[=].display = "1"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #487
* group[=].element[=].display = "1a"
* group[=].element[=].target[+].code = #1352619004
* group[=].element[=].target[=].display = "1a"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #488
* group[=].element[=].display = "1b"
* group[=].element[=].target[+].code = #1352616006
* group[=].element[=].target[=].display = "1b"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #489
* group[=].element[=].display = "1c"
* group[=].element[=].target[+].code = #1352617002
* group[=].element[=].target[=].display = "1c"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #490
* group[=].element[=].display = "2"
* group[=].element[=].target[+].code = #1352610000
* group[=].element[=].target[=].display = "2"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #491
* group[=].element[=].display = "2a"
* group[=].element[=].target[+].code = #1352608002
* group[=].element[=].target[=].display = "2a"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #492
* group[=].element[=].display = "2b"
* group[=].element[=].target[+].code = #1352612008
* group[=].element[=].target[=].display = "2b"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #493
* group[=].element[=].display = "2c"
* group[=].element[=].target[+].code = #1352613003
* group[=].element[=].target[=].display = "2c"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #494
* group[=].element[=].display = "3"
* group[=].element[=].target[+].code = #1352622002
* group[=].element[=].target[=].display = "3"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #495
* group[=].element[=].display = "3a"
* group[=].element[=].target[+].code = #1352618007
* group[=].element[=].target[=].display = "3a"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #496
* group[=].element[=].display = "3b"
* group[=].element[=].target[+].code = #1352623007
* group[=].element[=].target[=].display = "3b"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #497
* group[=].element[=].display = "3c"
* group[=].element[=].target[+].code = #1352606003
* group[=].element[=].target[=].display = "3c"
* group[=].element[=].target[=].relationship = #equivalent


// Group 11: CancerRegistryDictionaryCS to CancerCCpMCategoryCS
* group[+].source = Canonical(CancerRegistryDictionaryCS)
* group[=].target = $sct

* group[=].element[+].code = #500
* group[=].element[=].display = "1"
* group[=].element[=].target[+].code = #1352583000
* group[=].element[=].target[=].display = "1"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #501
* group[=].element[=].display = "1a"
* group[=].element[=].target[+].code = #1352573004
* group[=].element[=].target[=].display = "1a"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #502
* group[=].element[=].display = "1b"
* group[=].element[=].target[+].code = #1352578008
* group[=].element[=].target[=].display = "1b"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #503
* group[=].element[=].display = "1c"
* group[=].element[=].target[+].code = #1229923005
* group[=].element[=].target[=].display = "1c"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #504
* group[=].element[=].display = "1d"
* group[=].element[=].target[+].code = #1352580002
* group[=].element[=].target[=].display = "1d"
* group[=].element[=].target[=].relationship = #equivalent

* group[+].source = Canonical(CancerRegistryDictionaryCS)
* group[=].target = Canonical(CancerCCpMCategoryCS)

* group[=].element[+].code = #498
* group[=].element[=].display = "X"
* group[=].element[=].target[+].code = #cancer-0011-0001
* group[=].element[=].target[=].display = "X"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #499
* group[=].element[=].display = "0"
* group[=].element[=].target[+].code = #cancer-0011-0002
* group[=].element[=].target[=].display = "0"
* group[=].element[=].target[=].relationship = #equivalent

// Group 12: CancerRegistryDictionaryCS to CancerBodyLocationCS
* group[+].source = Canonical(CancerRegistryDictionaryCS)
* group[=].target = $sct

* group[=].element[+].code = #857
* group[=].element[=].display = "Лимфоузлы"
* group[=].element[=].target[+].code = #59441001
* group[=].element[=].target[=].display = "Structure of lymph node"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #858
* group[=].element[=].display = "Кости"
* group[=].element[=].target[+].code = #272673000
* group[=].element[=].target[=].display = "Bone structure"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #859
* group[=].element[=].display = "Печень"
* group[=].element[=].target[+].code = #10200004
* group[=].element[=].target[=].display = "Liver structure"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #860
* group[=].element[=].display = "Легкое (плевра)"
* group[=].element[=].target[+].code = #110549009
* group[=].element[=].target[=].display = "Lung and pleura, CS"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #861
* group[=].element[=].display = "Головной мозг"
* group[=].element[=].target[+].code = #12738006
* group[=].element[=].target[=].display = "Brain structure"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #862
* group[=].element[=].display = "Яичник"
* group[=].element[=].target[+].code = #15497006
* group[=].element[=].target[=].display = "Ovarian structure"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #863
* group[=].element[=].display = "Мягкие ткани"
* group[=].element[=].target[+].code = #87784001
* group[=].element[=].target[=].display = "Soft tissue"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #864
* group[=].element[=].display = "Надпочечник"
* group[=].element[=].target[+].code = #23451007
* group[=].element[=].target[=].display = "Adrenal structure"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #865
* group[=].element[=].display = "Другие органы"
* group[=].element[=].target[+].code = #74964007
* group[=].element[=].target[=].display = "Other"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #866
* group[=].element[=].display = "Брюшина"
* group[=].element[=].target[+].code = #15425007
* group[=].element[=].target[=].display = "Structure of serous membrane of peritoneum"
* group[=].element[=].target[=].relationship = #equivalent


// Group 13: CancerRegistryDictionaryCS to CancerEmergingProcessCS
* group[+].source = Canonical(CancerRegistryDictionaryCS)
* group[=].target = Canonical(CancerEmergingProcessCS)

* group[=].element[+].code = #850
* group[=].element[=].display = "Рецидив"
* group[=].element[=].target[+].code = #cancer-0015-0001
* group[=].element[=].target[=].display = "Рецидив"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #851
* group[=].element[=].display = "Регионарные метастазы"
* group[=].element[=].target[+].code = #cancer-0015-0002
* group[=].element[=].target[=].display = "Регионарные метастазы"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #852
* group[=].element[=].display = "Отдаленные метастазы"
* group[=].element[=].target[+].code = #cancer-0015-0003
* group[=].element[=].target[=].display = "Отдаленные метастазы"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #853
* group[=].element[=].display = "Биохимический рецидив"
* group[=].element[=].target[+].code = #cancer-0015-0004
* group[=].element[=].target[=].display = "Биохимический рецидив"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #854
* group[=].element[=].display = "Прогрессирование процесса"
* group[=].element[=].target[+].code = #cancer-0015-0005
* group[=].element[=].target[=].display = "Прогрессирование процесса"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #855
* group[=].element[=].display = "Местнорапространенный процесс"
* group[=].element[=].target[+].code = #cancer-0015-0006
* group[=].element[=].target[=].display = "Местнорапространенный процесс"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #856
* group[=].element[=].display = "Трансформация"
* group[=].element[=].target[+].code = #cancer-0015-0007
* group[=].element[=].target[=].display = "Трансформация"
* group[=].element[=].target[=].relationship = #equivalent

// Group 14: CancerRegistryDictionaryCS to EncounterDischargeDisposition
* group[+].source = Canonical(CancerRegistryDictionaryCS)
* group[=].target = $v3-ActCode

* group[=].element[+].code = #649
* group[=].element[=].display = "лечился амбулаторно"
* group[=].element[=].target[+].code = #AMB
* group[=].element[=].target[=].display = "ambulatory"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #650
* group[=].element[=].display = "лечился стационарно"
* group[=].element[=].target[+].code = #IMP
* group[=].element[=].target[=].display = "inpatient encounter"
* group[=].element[=].target[=].relationship = #equivalent

// Group 15: CancerRegistryDictionaryCS to CancerTreatmentIntent
* group[+].source = Canonical(CancerRegistryDictionaryCS)
* group[=].target = $sct

* group[=].element[+].code = #651
* group[=].element[=].display = "Не проводилось"
* group[=].element[=].target[+].code = #262008008
* group[=].element[=].target[=].display = "Not performed"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #652
* group[=].element[=].display = "Радикальное"
* group[=].element[=].target[+].code = #373808002
* group[=].element[=].target[=].display = "Curative - procedure intent"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #653
* group[=].element[=].display = "Паллиативное"
* group[=].element[=].target[+].code = #363676003
* group[=].element[=].target[=].display = "Palliative intent"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #654
* group[=].element[=].display = "Симптоматическое"
* group[=].element[=].target[+].code = #264931009
* group[=].element[=].target[=].display = "Symptomatic"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #655
* group[=].element[=].display = "Реабилитационное"
* group[=].element[=].target[+].code = #399707004
* group[=].element[=].target[=].display = "Supportive - procedure intent"
* group[=].element[=].target[=].relationship = #related-to

* group[=].element[+].code = #657
* group[=].element[=].display = "Профилактическое"
* group[=].element[=].target[+].code = #129428001
* group[=].element[=].target[=].display = "Preventive intent"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #658
* group[=].element[=].display = "Обследование"
* group[=].element[=].target[+].code = #261004008
* group[=].element[=].target[=].display = "Diagnostic intent"
* group[=].element[=].target[=].relationship = #equivalent


* group[+].source = Canonical(CancerRegistryDictionaryCS)
* group[=].target = Canonical(CancerTreatmentIntentCS)

* group[=].element[+].code = #656
* group[=].element[=].display = "Радикальное незавершенное"
* group[=].element[=].target[+].code = #cancer-0017-0001
* group[=].element[=].target[=].display = "Tugallanmagan radikal"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #659
* group[=].element[=].display = "По поводу других заболеваний"
* group[=].element[=].target[+].code = #cancer-0017-0002
* group[=].element[=].target[=].display = "Boshqa kasalliklar bo‘yicha"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #660
* group[=].element[=].display = "По поводу осложнений"
* group[=].element[=].target[+].code = #cancer-0017-0003
* group[=].element[=].target[=].display = "Asoratlar bo‘yicha"
* group[=].element[=].target[=].relationship = #equivalent

// Group 16: CancerRegistryDictionaryCS to CancerSpecialTreatmentCS
* group[+].source = Canonical(CancerRegistryDictionaryCS)
* group[=].target = Canonical(CancerSpecialTreatmentCS)

* group[=].element[+].code = #661
* group[=].element[=].display = "Не проводилось"
* group[=].element[=].target[+].code = #cancer-0018-0001
* group[=].element[=].target[=].display = "Не проводилось"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #662
* group[=].element[=].display = "Хирургическое"
* group[=].element[=].target[+].code = #cancer-0018-0002
* group[=].element[=].target[=].display = "Хирургическое"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #663
* group[=].element[=].display = "Дистанционная лучевая терапия"
* group[=].element[=].target[+].code = #cancer-0018-0003
* group[=].element[=].target[=].display = "Дистанционная лучевая терапия"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #664
* group[=].element[=].display = "Короткофокусная рентгенотерапия"
* group[=].element[=].target[+].code = #cancer-0018-0004
* group[=].element[=].target[=].display = "Короткофокусная рентгенотерапия"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #665
* group[=].element[=].display = "Сочетанное лучевое: конт.+дистанц."
* group[=].element[=].target[+].code = #cancer-0018-0005
* group[=].element[=].target[=].display = "Сочетанное лучевое: конт.+дистанц."
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #666
* group[=].element[=].display = "Сочетанное лучевое: конт.+рентген."
* group[=].element[=].target[+].code = #cancer-0018-0006
* group[=].element[=].target[=].display = "Сочетанное лучевое: конт.+рентген."
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #667
* group[=].element[=].display = "Химиотерапевтическое (гормональное)"
* group[=].element[=].target[+].code = #cancer-0018-0007
* group[=].element[=].target[=].display = "Химиотерапевтическое (гормональное)"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #668
* group[=].element[=].display = "Хирургическое+дистанц.лучевая терапия"
* group[=].element[=].target[+].code = #cancer-0018-0008
* group[=].element[=].target[=].display = "Хирургическое+дистанц.лучевая терапия"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #669
* group[=].element[=].display = "Хирургическое+короткофок.рентгенотерапия"
* group[=].element[=].target[+].code = #cancer-0018-0009
* group[=].element[=].target[=].display = "Хирургическое+короткофок.рентгенотерапия"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #670
* group[=].element[=].display = "Хирургическое+сочетанная лучевая терапия"
* group[=].element[=].target[+].code = #cancer-0018-0010
* group[=].element[=].target[=].display = "Хирургическое+сочетанная лучевая терапия"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #671
* group[=].element[=].display = "Хирургическое+контактная лучевая терапия"
* group[=].element[=].target[+].code = #cancer-0018-0011
* group[=].element[=].target[=].display = "Хирургическое+контактная лучевая терапия"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #672
* group[=].element[=].display = "Хирургическое+химиотерапия (гормонотерапия)"
* group[=].element[=].target[+].code = #cancer-0018-0012
* group[=].element[=].target[=].display = "Хирургическое+химиотерапия (гормонотерапия)"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #673
* group[=].element[=].display = "Комплексная химиолучевая терапия"
* group[=].element[=].target[+].code = #cancer-0018-0013
* group[=].element[=].target[=].display = "Комплексная химиолучевая терапия"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #674
* group[=].element[=].display = "Хирургичекое+ лучевое+химиотерапия (гормонотерапия)"
* group[=].element[=].target[+].code = #cancer-0018-0014
* group[=].element[=].target[=].display = "Хирургичекое+ лучевое+химиотерапия (гормонотерапия)"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #675
* group[=].element[=].display = "Радиофармпрепараты"
* group[=].element[=].target[+].code = #cancer-0018-0015
* group[=].element[=].target[=].display = "Радиофармпрепараты"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #676
* group[=].element[=].display = "Контактная лучевая терапия"
* group[=].element[=].target[+].code = #cancer-0018-0016
* group[=].element[=].target[=].display = "Контактная лучевая терапия"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #677
* group[=].element[=].display = "Другие виды воздействия"
* group[=].element[=].target[+].code = #cancer-0018-0017
* group[=].element[=].target[=].display = "Другие виды воздействия"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #678
* group[=].element[=].display = "Хирургическое+радиофармпрепараты"
* group[=].element[=].target[+].code = #cancer-0018-0018
* group[=].element[=].target[=].display = "Хирургическое+радиофармпрепараты"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #679
* group[=].element[=].display = "Сочетанное лучевое:дистанционная лучевая терапия+рентгентерапия"
* group[=].element[=].target[+].code = #cancer-0018-0019
* group[=].element[=].target[=].display = "Сочетанное лучевое:дистанционная лучевая терапия+рентгентерапия"
* group[=].element[=].target[=].relationship = #equivalent


// Group 17: CancerRegistryDictionaryCS to CancerDegreeDifferentiationCS
* group[+].source = Canonical(CancerRegistryDictionaryCS)
* group[=].target = $sct

* group[=].element[+].code = #363
* group[=].element[=].display = "G1 (Высоко дифференцированная)"
* group[=].element[=].target[+].code = #1155701009
* group[=].element[=].target[=].display = "G1: Well differentiated"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #364
* group[=].element[=].display = "G2 (Средне дифференцированная)"
* group[=].element[=].target[+].code = #1155703007
* group[=].element[=].target[=].display = "G2: Moderately differentiated"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #365
* group[=].element[=].display = "G3 (Низко дифференцированная)"
* group[=].element[=].target[+].code = #1155704001
* group[=].element[=].target[=].display = "G3: Poorly differentiated"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #366
* group[=].element[=].display = "G4 (Недифференцированная)"
* group[=].element[=].target[+].code = #1155702002
* group[=].element[=].target[=].display = "G4: Undifferentiated"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #371
* group[=].element[=].display = "Низкая степень / Low grade"
* group[=].element[=].target[+].code = #1155708003
* group[=].element[=].target[=].display = "Low histologic grade"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #372
* group[=].element[=].display = "Высокая степень / High grade"
* group[=].element[=].target[+].code = #1155707008
* group[=].element[=].target[=].display = "High histologic grade"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #373
* group[=].element[=].display = "GX (Не может быть установлена)"
* group[=].element[=].target[+].code = #1155705000
* group[=].element[=].target[=].display = "GX: Histologic grade cannot be assessed"
* group[=].element[=].target[=].relationship = #equivalent

* group[+].source = Canonical(CancerRegistryDictionaryCS)
* group[=].target = $loinc

* group[=].element[+].code = #367
* group[=].element[=].display = "T-клеточная"
* group[=].element[=].target[+].code = #LP14634-7
* group[=].element[=].target[=].display = "T-cell"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #368
* group[=].element[=].display = "B-клеточная"
* group[=].element[=].target[+].code = #LP36861-0
* group[=].element[=].target[=].display = "B-cell"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #369
* group[=].element[=].display = "Нулевая клетка"
* group[=].element[=].target[+].code = #LA4748-5
* group[=].element[=].target[=].display = "Null cell"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #370
* group[=].element[=].display = "NK-клетка"
* group[=].element[=].target[+].code = #LA4573-7
* group[=].element[=].target[=].display = "NK (natural killer) cell"
* group[=].element[=].target[=].relationship = #equivalent