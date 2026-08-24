Instance: cancer-id-status-to-dhp-status-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "Cancer ID Status To DHP Status"
Description: "ConceptMap for mapping Cancer ID status codes to DHP status codes"
* name = "CancerIdStatusToDHPStatusCM"
* url = "https://dhp.uz/fhir/integrations/ConceptMap/cancer-id-status-to-dhp-status-cm"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

* sourceScopeCanonical = Canonical(CancerIdVS)
// * targetScopeCanonical = Canonical()

// Group 1: CancerIdCS to CancerEncounterSubjectStatusCS
* group[+].source = Canonical(CancerIdCS)
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


// Group 2: CancerIdCS to CancerConfirmationMethodCS
* group[+].source = Canonical(CancerIdCS)
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

// Group 3: CancerIdCS to CancerDiagnosisTypeCS
* group[+].source = Canonical(CancerIdCS)
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

// Group 4: CancerIdCS to CancerLaterlityQualifierCS
* group[+].source = Canonical(CancerIdCS)
* group[=].target = Canonical(CancerLaterlityQualifierCS)

* group[=].element[+].code = #335
* group[=].element[=].display = "Нет"
* group[=].element[=].target[+].code = #cancer-0004-0001
* group[=].element[=].target[=].display = "Нет"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #336
* group[=].element[=].display = "Слева"
* group[=].element[=].target[+].code = #cancer-0004-0002
* group[=].element[=].target[=].display = "Слева"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #337
* group[=].element[=].display = "Справа"
* group[=].element[=].target[+].code = #cancer-0004-0003
* group[=].element[=].target[=].display = "Справа"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #338
* group[=].element[=].display = "Оба органа"
* group[=].element[=].target[+].code = #cancer-0004-0004
* group[=].element[=].target[=].display = "Оба органа"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #339
* group[=].element[=].display = "Неизвестно"
* group[=].element[=].target[+].code = #cancer-0004-0005
* group[=].element[=].target[=].display = "Неизвестно"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #340
* group[=].element[=].display = "Основная"
* group[=].element[=].target[+].code = #cancer-0004-0006
* group[=].element[=].target[=].display = "Основная"
* group[=].element[=].target[=].relationship = #equivalent

// Group 4: CancerIdCS to CancerDetectionCircumstanceCS
* group[+].source = Canonical(CancerIdCS)
* group[=].target = Canonical(CancerDetectionCircumstanceCS)

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


// Group 5: CancerIdCS to CancerCCCtCategoryCS
* group[+].source = Canonical(CancerIdCS)
* group[=].target = Canonical(CancerCCCtCategoryCS)

* group[=].element[+].code = #412
* group[=].element[=].display = "X"
* group[=].element[=].target[+].code = #cancer-0006-0001
* group[=].element[=].target[=].display = "X"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #413
* group[=].element[=].display = "in situ"
* group[=].element[=].target[+].code = #cancer-0006-0002
* group[=].element[=].target[=].display = "in situ"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #415
* group[=].element[=].display = "1"
* group[=].element[=].target[+].code = #cancer-0006-0003
* group[=].element[=].target[=].display = "1"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #416
* group[=].element[=].display = "1a"
* group[=].element[=].target[+].code = #cancer-0006-0004
* group[=].element[=].target[=].display = "1a"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #417
* group[=].element[=].display = "1b"
* group[=].element[=].target[+].code = #cancer-0006-0005
* group[=].element[=].target[=].display = "1b"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #418
* group[=].element[=].display = "1c"
* group[=].element[=].target[+].code = #cancer-0006-0006
* group[=].element[=].target[=].display = "1c"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #419
* group[=].element[=].display = "1d"
* group[=].element[=].target[+].code = #cancer-0006-0007
* group[=].element[=].target[=].display = "1d"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #420
* group[=].element[=].display = "2"
* group[=].element[=].target[+].code = #cancer-0006-0008
* group[=].element[=].target[=].display = "2"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #421
* group[=].element[=].display = "2a"
* group[=].element[=].target[+].code = #cancer-0006-0009
* group[=].element[=].target[=].display = "2a"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #422
* group[=].element[=].display = "2b"
* group[=].element[=].target[+].code = #cancer-0006-0010
* group[=].element[=].target[=].display = "2b"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #423
* group[=].element[=].display = "2c"
* group[=].element[=].target[+].code = #cancer-0006-0011
* group[=].element[=].target[=].display = "2c"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #424
* group[=].element[=].display = "2d"
* group[=].element[=].target[+].code = #cancer-0006-0012
* group[=].element[=].target[=].display = "2d"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #425
* group[=].element[=].display = "3"
* group[=].element[=].target[+].code = #cancer-0006-0013
* group[=].element[=].target[=].display = "3"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #426
* group[=].element[=].display = "3a"
* group[=].element[=].target[+].code = #cancer-0006-0014
* group[=].element[=].target[=].display = "3a"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #427
* group[=].element[=].display = "3b"
* group[=].element[=].target[+].code = #cancer-0006-0015
* group[=].element[=].target[=].display = "3b"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #428
* group[=].element[=].display = "3c"
* group[=].element[=].target[+].code = #cancer-0006-0016
* group[=].element[=].target[=].display = "3c"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #429
* group[=].element[=].display = "3d"
* group[=].element[=].target[+].code = #cancer-0006-0017
* group[=].element[=].target[=].display = "3d"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #430
* group[=].element[=].display = "3e"
* group[=].element[=].target[+].code = #cancer-0006-0018
* group[=].element[=].target[=].display = "3e"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #431
* group[=].element[=].display = "4"
* group[=].element[=].target[+].code = #cancer-0006-0019
* group[=].element[=].target[=].display = "4"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #432
* group[=].element[=].display = "4a"
* group[=].element[=].target[+].code = #cancer-0006-0020
* group[=].element[=].target[=].display = "4a"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #433
* group[=].element[=].display = "4b"
* group[=].element[=].target[+].code = #cancer-0006-0021
* group[=].element[=].target[=].display = "4b"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #434
* group[=].element[=].display = "4c"
* group[=].element[=].target[+].code = #cancer-0006-0022
* group[=].element[=].target[=].display = "4c"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #435
* group[=].element[=].display = "4d"
* group[=].element[=].target[+].code = #cancer-0006-0023
* group[=].element[=].target[=].display = "4d"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #436
* group[=].element[=].display = "4e"
* group[=].element[=].target[+].code = #cancer-0006-0024
* group[=].element[=].target[=].display = "4e"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #872
* group[=].element[=].display = "a"
* group[=].element[=].target[+].code = #cancer-0006-0025
* group[=].element[=].target[=].display = "a"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #873
* group[=].element[=].display = "1a1"
* group[=].element[=].target[+].code = #cancer-0006-0026
* group[=].element[=].target[=].display = "1a1"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #874
* group[=].element[=].display = "1a2"
* group[=].element[=].target[+].code = #cancer-0006-0027
* group[=].element[=].target[=].display = "1a2"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #875
* group[=].element[=].display = "2a1"
* group[=].element[=].target[+].code = #cancer-0006-0028
* group[=].element[=].target[=].display = "2a1"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #876
* group[=].element[=].display = "2a2"
* group[=].element[=].target[+].code = #cancer-0006-0029
* group[=].element[=].target[=].display = "2a2"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #877
* group[=].element[=].display = "1b1"
* group[=].element[=].target[+].code = #cancer-0006-0030
* group[=].element[=].target[=].display = "1b1"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #878
* group[=].element[=].display = "1b2"
* group[=].element[=].target[+].code = #cancer-0006-0031
* group[=].element[=].target[=].display = "1b2"
* group[=].element[=].target[=].relationship = #equivalent

// Group 6: CancerIdCS to CancerCCcNCategoryCS
* group[+].source = Canonical(CancerIdCS)
* group[=].target = Canonical(CancerCCcNCategoryCS)

* group[=].element[+].code = #871
* group[=].element[=].display = "0"
* group[=].element[=].target[+].code = #cancer-0007-0001
* group[=].element[=].target[=].display = "0"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #438
* group[=].element[=].display = "X"
* group[=].element[=].target[+].code = #cancer-0007-0002
* group[=].element[=].target[=].display = "X"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #439
* group[=].element[=].display = "1"
* group[=].element[=].target[+].code = #cancer-0007-0003
* group[=].element[=].target[=].display = "1"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #440
* group[=].element[=].display = "1a"
* group[=].element[=].target[+].code = #cancer-0007-0004
* group[=].element[=].target[=].display = "1a"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #441
* group[=].element[=].display = "1b"
* group[=].element[=].target[+].code = #cancer-0007-0005
* group[=].element[=].target[=].display = "1b"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #442
* group[=].element[=].display = "1c"
* group[=].element[=].target[+].code = #cancer-0007-0006
* group[=].element[=].target[=].display = "1c"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #443
* group[=].element[=].display = "2"
* group[=].element[=].target[+].code = #cancer-0007-0007
* group[=].element[=].target[=].display = "2"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #444
* group[=].element[=].display = "2a"
* group[=].element[=].target[+].code = #cancer-0007-0008
* group[=].element[=].target[=].display = "2a"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #445
* group[=].element[=].display = "2b"
* group[=].element[=].target[+].code = #cancer-0007-0009
* group[=].element[=].target[=].display = "2b"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #446
* group[=].element[=].display = "2c"
* group[=].element[=].target[+].code = #cancer-0007-0010
* group[=].element[=].target[=].display = "2c"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #447
* group[=].element[=].display = "3"
* group[=].element[=].target[+].code = #cancer-0007-0011
* group[=].element[=].target[=].display = "3"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #448
* group[=].element[=].display = "3a"
* group[=].element[=].target[+].code = #cancer-0007-0012
* group[=].element[=].target[=].display = "3a"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #449
* group[=].element[=].display = "3b"
* group[=].element[=].target[+].code = #cancer-0007-0013
* group[=].element[=].target[=].display = "3b"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #450
* group[=].element[=].display = "3c"
* group[=].element[=].target[+].code = #cancer-0007-0014
* group[=].element[=].target[=].display = "3c"
* group[=].element[=].target[=].relationship = #equivalent

// Group 7: CancerIdCS to CancerCCcMCategoryCS
* group[+].source = Canonical(CancerIdCS)
* group[=].target = Canonical(CancerCCcMCategoryCS)

* group[=].element[+].code = #452
* group[=].element[=].display = "0"
* group[=].element[=].target[+].code = #cancer-0008-0001
* group[=].element[=].target[=].display = "0"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #451
* group[=].element[=].display = "X"
* group[=].element[=].target[+].code = #cancer-0008-0002
* group[=].element[=].target[=].display = "X"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #453
* group[=].element[=].display = "1"
* group[=].element[=].target[+].code = #cancer-0008-0003
* group[=].element[=].target[=].display = "1"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #454
* group[=].element[=].display = "1a"
* group[=].element[=].target[+].code = #cancer-0008-0004
* group[=].element[=].target[=].display = "1a"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #455
* group[=].element[=].display = "1b"
* group[=].element[=].target[+].code = #cancer-0008-0005
* group[=].element[=].target[=].display = "1b"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #456
* group[=].element[=].display = "1c"
* group[=].element[=].target[+].code = #cancer-0008-0006
* group[=].element[=].target[=].display = "1c"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #457
* group[=].element[=].display = "1d"
* group[=].element[=].target[+].code = #cancer-0008-0007
* group[=].element[=].target[=].display = "1d"
* group[=].element[=].target[=].relationship = #equivalent

// Group 8: CancerIdCS to CancerCCpTCategoryCS
* group[+].source = Canonical(CancerIdCS)
* group[=].target = Canonical(CancerCCpTCategoryCS)

* group[=].element[+].code = #461
* group[=].element[=].display = "x"
* group[=].element[=].target[+].code = #cancer-0009-0001
* group[=].element[=].target[=].display = "X"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #462
* group[=].element[=].display = "in situ"
* group[=].element[=].target[+].code = #cancer-0009-0002
* group[=].element[=].target[=].display = "in situ"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #464
* group[=].element[=].display = "1"
* group[=].element[=].target[+].code = #cancer-0009-0003
* group[=].element[=].target[=].display = "1"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #465
* group[=].element[=].display = "1a"
* group[=].element[=].target[+].code = #cancer-0009-0004
* group[=].element[=].target[=].display = "1a"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #466
* group[=].element[=].display = "1b"
* group[=].element[=].target[+].code = #cancer-0009-0005
* group[=].element[=].target[=].display = "1b"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #467
* group[=].element[=].display = "1c"
* group[=].element[=].target[+].code = #cancer-0009-0006
* group[=].element[=].target[=].display = "1c"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #468
* group[=].element[=].display = "2"
* group[=].element[=].target[+].code = #cancer-0009-0007
* group[=].element[=].target[=].display = "2"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #469
* group[=].element[=].display = "2a"
* group[=].element[=].target[+].code = #cancer-0009-0008
* group[=].element[=].target[=].display = "2a"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #470
* group[=].element[=].display = "2b"
* group[=].element[=].target[+].code = #cancer-0009-0009
* group[=].element[=].target[=].display = "2b"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #471
* group[=].element[=].display = "2c"
* group[=].element[=].target[+].code = #cancer-0009-0010
* group[=].element[=].target[=].display = "2c"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #472
* group[=].element[=].display = "2d"
* group[=].element[=].target[+].code = #cancer-0009-0011
* group[=].element[=].target[=].display = "2d"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #473
* group[=].element[=].display = "3"
* group[=].element[=].target[+].code = #cancer-0009-0012
* group[=].element[=].target[=].display = "3"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #474
* group[=].element[=].display = "3a"
* group[=].element[=].target[+].code = #cancer-0009-0013
* group[=].element[=].target[=].display = "3a"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #475
* group[=].element[=].display = "3b"
* group[=].element[=].target[+].code = #cancer-0009-0014
* group[=].element[=].target[=].display = "3b"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #476
* group[=].element[=].display = "3c"
* group[=].element[=].target[+].code = #cancer-0009-0015
* group[=].element[=].target[=].display = "3c"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #477
* group[=].element[=].display = "3d"
* group[=].element[=].target[+].code = #cancer-0009-0016
* group[=].element[=].target[=].display = "3d"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #478
* group[=].element[=].display = "4"
* group[=].element[=].target[+].code = #cancer-0009-0017
* group[=].element[=].target[=].display = "4"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #479
* group[=].element[=].display = "4a"
* group[=].element[=].target[+].code = #cancer-0009-0018
* group[=].element[=].target[=].display = "4a"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #480
* group[=].element[=].display = "4b"
* group[=].element[=].target[+].code = #cancer-0009-0019
* group[=].element[=].target[=].display = "4b"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #481
* group[=].element[=].display = "4c"
* group[=].element[=].target[+].code = #cancer-0009-0020
* group[=].element[=].target[=].display = "4c"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #482
* group[=].element[=].display = "4d"
* group[=].element[=].target[+].code = #cancer-0009-0021
* group[=].element[=].target[=].display = "4d"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #879
* group[=].element[=].display = "a"
* group[=].element[=].target[+].code = #cancer-0009-0022
* group[=].element[=].target[=].display = "a"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #880
* group[=].element[=].display = "1a1"
* group[=].element[=].target[+].code = #cancer-0009-0023
* group[=].element[=].target[=].display = "1a1"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #881
* group[=].element[=].display = "1a2"
* group[=].element[=].target[+].code = #cancer-0009-0024
* group[=].element[=].target[=].display = "1a2"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #882
* group[=].element[=].display = "2a1"
* group[=].element[=].target[+].code = #cancer-0009-0025
* group[=].element[=].target[=].display = "2a1"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #883
* group[=].element[=].display = "2a2"
* group[=].element[=].target[+].code = #cancer-0009-0026
* group[=].element[=].target[=].display = "2a2"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #884
* group[=].element[=].display = "1b1"
* group[=].element[=].target[+].code = #cancer-0009-0027
* group[=].element[=].target[=].display = "1b1"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #885
* group[=].element[=].display = "1b2"
* group[=].element[=].target[+].code = #cancer-0009-0028
* group[=].element[=].target[=].display = "1b2"
* group[=].element[=].target[=].relationship = #equivalent

// Group 9: CancerIdCS to CancerCCpNCategoryCS
* group[+].source = Canonical(CancerIdCS)
* group[=].target = Canonical(CancerCCpNCategoryCS)

* group[=].element[+].code = #485
* group[=].element[=].display = "0"
* group[=].element[=].target[+].code = #cancer-0010-0001
* group[=].element[=].target[=].display = "0"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #484
* group[=].element[=].display = "X"
* group[=].element[=].target[+].code = #cancer-0010-0002
* group[=].element[=].target[=].display = "X"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #486
* group[=].element[=].display = "1"
* group[=].element[=].target[+].code = #cancer-0010-0003
* group[=].element[=].target[=].display = "1"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #487
* group[=].element[=].display = "1a"
* group[=].element[=].target[+].code = #cancer-0010-0004
* group[=].element[=].target[=].display = "1a"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #488
* group[=].element[=].display = "1b"
* group[=].element[=].target[+].code = #cancer-0010-0005
* group[=].element[=].target[=].display = "1b"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #489
* group[=].element[=].display = "1c"
* group[=].element[=].target[+].code = #cancer-0010-0006
* group[=].element[=].target[=].display = "1c"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #490
* group[=].element[=].display = "2"
* group[=].element[=].target[+].code = #cancer-0010-0007
* group[=].element[=].target[=].display = "2"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #491
* group[=].element[=].display = "2a"
* group[=].element[=].target[+].code = #cancer-0010-0008
* group[=].element[=].target[=].display = "2a"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #492
* group[=].element[=].display = "2b"
* group[=].element[=].target[+].code = #cancer-0010-0009
* group[=].element[=].target[=].display = "2b"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #493
* group[=].element[=].display = "2c"
* group[=].element[=].target[+].code = #cancer-0010-0010
* group[=].element[=].target[=].display = "2c"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #494
* group[=].element[=].display = "3"
* group[=].element[=].target[+].code = #cancer-0010-0011
* group[=].element[=].target[=].display = "3"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #495
* group[=].element[=].display = "3a"
* group[=].element[=].target[+].code = #cancer-0010-0012
* group[=].element[=].target[=].display = "3a"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #496
* group[=].element[=].display = "3b"
* group[=].element[=].target[+].code = #cancer-0010-0013
* group[=].element[=].target[=].display = "3b"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #497
* group[=].element[=].display = "3c"
* group[=].element[=].target[+].code = #cancer-0010-0014
* group[=].element[=].target[=].display = "3c"
* group[=].element[=].target[=].relationship = #equivalent

// Group 10: CancerIdCS to CancerCCpMCategoryCS
* group[+].source = Canonical(CancerIdCS)
* group[=].target = Canonical(CancerCCpMCategoryCS)

* group[=].element[+].code = #499
* group[=].element[=].display = "0"
* group[=].element[=].target[+].code = #cancer-0011-0001
* group[=].element[=].target[=].display = "0"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #498
* group[=].element[=].display = "X"
* group[=].element[=].target[+].code = #cancer-0011-0002
* group[=].element[=].target[=].display = "X"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #500
* group[=].element[=].display = "1"
* group[=].element[=].target[+].code = #cancer-0011-0003
* group[=].element[=].target[=].display = "1"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #501
* group[=].element[=].display = "1a"
* group[=].element[=].target[+].code = #cancer-0011-0004
* group[=].element[=].target[=].display = "1a"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #502
* group[=].element[=].display = "1b"
* group[=].element[=].target[+].code = #cancer-0011-0005
* group[=].element[=].target[=].display = "1b"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #503
* group[=].element[=].display = "1c"
* group[=].element[=].target[+].code = #cancer-0011-0006
* group[=].element[=].target[=].display = "1c"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #504
* group[=].element[=].display = "1d"
* group[=].element[=].target[+].code = #cancer-0011-0007
* group[=].element[=].target[=].display = "1d"
* group[=].element[=].target[=].relationship = #equivalent

// Group 11: CancerIdCS to CancerStageCS
* group[+].source = Canonical(CancerIdCS)
* group[=].target = Canonical(CancerStageCS)

* group[=].element[+].code = #385
* group[=].element[=].display = "0"
* group[=].element[=].target[+].code = #cancer-0012-0001
* group[=].element[=].target[=].display = "0"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #386
* group[=].element[=].display = "I"
* group[=].element[=].target[+].code = #cancer-0012-0002
* group[=].element[=].target[=].display = "I"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #387
* group[=].element[=].display = "II"
* group[=].element[=].target[+].code = #cancer-0012-0003
* group[=].element[=].target[=].display = "II"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #388
* group[=].element[=].display = "III"
* group[=].element[=].target[+].code = #cancer-0012-0004
* group[=].element[=].target[=].display = "III"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #389
* group[=].element[=].display = "IV"
* group[=].element[=].target[+].code = #cancer-0012-0005
* group[=].element[=].target[=].display = "IV"
* group[=].element[=].target[=].relationship = #equivalent

// Group 12: CancerIdCS to CancerSubStageCS
* group[+].source = Canonical(CancerIdCS)
* group[=].target = Canonical(CancerSubStageCS)

* group[=].element[+].code = #391
* group[=].element[=].display = "a"
* group[=].element[=].target[+].code = #cancer-0013-0001
* group[=].element[=].target[=].display = "a"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #392
* group[=].element[=].display = "b"
* group[=].element[=].target[+].code = #cancer-0013-0002
* group[=].element[=].target[=].display = "b"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #393
* group[=].element[=].display = "c"
* group[=].element[=].target[+].code = #cancer-0013-0003
* group[=].element[=].target[=].display = "c"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #394
* group[=].element[=].display = "d"
* group[=].element[=].target[+].code = #cancer-0013-0004
* group[=].element[=].target[=].display = "d"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #395
* group[=].element[=].display = "E"
* group[=].element[=].target[+].code = #cancer-0013-0005
* group[=].element[=].target[=].display = "E"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #396
* group[=].element[=].display = "S"
* group[=].element[=].target[+].code = #cancer-0013-0006
* group[=].element[=].target[=].display = "S"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #886
* group[=].element[=].display = "a1"
* group[=].element[=].target[+].code = #cancer-0013-0007
* group[=].element[=].target[=].display = "a1"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #887
* group[=].element[=].display = "a2"
* group[=].element[=].target[+].code = #cancer-0013-0008
* group[=].element[=].target[=].display = "a2"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #888
* group[=].element[=].display = "b1"
* group[=].element[=].target[+].code = #cancer-0013-0009
* group[=].element[=].target[=].display = "b1"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #889
* group[=].element[=].display = "b2"
* group[=].element[=].target[+].code = #cancer-0013-0010
* group[=].element[=].target[=].display = "b2"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #890
* group[=].element[=].display = "c1"
* group[=].element[=].target[+].code = #cancer-0013-0011
* group[=].element[=].target[=].display = "c1"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #891
* group[=].element[=].display = "c2"
* group[=].element[=].target[+].code = #cancer-0013-0012
* group[=].element[=].target[=].display = "c2"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #892
* group[=].element[=].display = "a3"
* group[=].element[=].target[+].code = #cancer-0013-0013
* group[=].element[=].target[=].display = "a3"
* group[=].element[=].target[=].relationship = #equivalent

// Group 13: CancerIdCS to CancerDamageAreaCS
* group[+].source = Canonical(CancerIdCS)
* group[=].target = Canonical(CancerDamageAreaCS)

* group[=].element[+].code = #857
* group[=].element[=].display = "Лимфоузлы"
* group[=].element[=].target[+].code = #cancer-0014-0001
* group[=].element[=].target[=].display = "Лимфоузлы"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #858
* group[=].element[=].display = "Кости"
* group[=].element[=].target[+].code = #cancer-0014-0002
* group[=].element[=].target[=].display = "Кости"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #859
* group[=].element[=].display = "Печень"
* group[=].element[=].target[+].code = #cancer-0014-0003
* group[=].element[=].target[=].display = "Печень"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #860
* group[=].element[=].display = "Легкое (плевра)"
* group[=].element[=].target[+].code = #cancer-0014-0004
* group[=].element[=].target[=].display = "Легкое (плевра)"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #861
* group[=].element[=].display = "Головной мозг"
* group[=].element[=].target[+].code = #cancer-0014-0005
* group[=].element[=].target[=].display = "Головной мозг"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #862
* group[=].element[=].display = "Яичник"
* group[=].element[=].target[+].code = #cancer-0014-0006
* group[=].element[=].target[=].display = "Яичник"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #863
* group[=].element[=].display = "Мягкие ткани"
* group[=].element[=].target[+].code = #cancer-0014-0007
* group[=].element[=].target[=].display = "Мягкие ткани"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #864
* group[=].element[=].display = "Надпочечник"
* group[=].element[=].target[+].code = #cancer-0014-0008
* group[=].element[=].target[=].display = "Надпочечник"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #865
* group[=].element[=].display = "Другие органы"
* group[=].element[=].target[+].code = #cancer-0014-0009
* group[=].element[=].target[=].display = "Другие органы"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #866
* group[=].element[=].display = "Брюшина"
* group[=].element[=].target[+].code = #cancer-0014-0010
* group[=].element[=].target[=].display = "Брюшина"
* group[=].element[=].target[=].relationship = #equivalent


// Group 15: CancerIdCS to CancerEmergingProcessCS
* group[+].source = Canonical(CancerIdCS)
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
* group[=].element[=].display = "Местнораспространенный процесс"
* group[=].element[=].target[+].code = #cancer-0015-0006
* group[=].element[=].target[=].display = "Местнораспространенный процесс"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #856
* group[=].element[=].display = "Трансформация"
* group[=].element[=].target[+].code = #cancer-0015-0007
* group[=].element[=].target[=].display = "Трансформация"
* group[=].element[=].target[=].relationship = #equivalent

// Group 16: CancerIdCS to CancerEncounterClassCS
* group[+].source = Canonical(CancerIdCS)
* group[=].target = Canonical(CancerEncounterClassCS)

* group[=].element[+].code = #648
* group[=].element[=].display = "нет сведений"
* group[=].element[=].target[+].code = #cancer-0016-0001
* group[=].element[=].target[=].display = "нет сведений"
* group[=].element[=].target[=].relationship = #equivalent

* group[+].source = Canonical(CancerIdCS)
* group[=].target = $v3-ActCode

* group[=].element[+].code = #649
* group[=].element[=].display = "лечился амбулаторно"
* group[=].element[=].target[+].code = #IMP
* group[=].element[=].target[=].display = "inpatient encounter"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #650
* group[=].element[=].display = "лечился стационарно"
* group[=].element[=].target[+].code = #AMB
* group[=].element[=].target[=].display = "ambulatory"
* group[=].element[=].target[=].relationship = #equivalent

// Group 17: CancerIdCS to CancerCharacterTreatmentCS
* group[+].source = Canonical(CancerIdCS)
* group[=].target = Canonical(CancerCharacterTreatmentCS)

* group[=].element[+].code = #651
* group[=].element[=].display = "Не проводилось"
* group[=].element[=].target[+].code = #cancer-0017-0001
* group[=].element[=].target[=].display = "Не проводилось"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #652
* group[=].element[=].display = "Радикальное"
* group[=].element[=].target[+].code = #cancer-0017-0002
* group[=].element[=].target[=].display = "Радикальное"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #653
* group[=].element[=].display = "Паллиативное"
* group[=].element[=].target[+].code = #cancer-0017-0003
* group[=].element[=].target[=].display = "Паллиативное"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #654
* group[=].element[=].display = "Симптоматическое"
* group[=].element[=].target[+].code = #cancer-0017-0004
* group[=].element[=].target[=].display = "Симптоматическое"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #655
* group[=].element[=].display = "Реабилитационное"
* group[=].element[=].target[+].code = #cancer-0017-0005
* group[=].element[=].target[=].display = "Реабилитационное"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #656
* group[=].element[=].display = "Радикальное незавершенное"
* group[=].element[=].target[+].code = #cancer-0017-0006
* group[=].element[=].target[=].display = "Радикальное незавершенное"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #657
* group[=].element[=].display = "Профилактическое"
* group[=].element[=].target[+].code = #cancer-0017-0007
* group[=].element[=].target[=].display = "Профилактическое"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #658
* group[=].element[=].display = "Обследование"
* group[=].element[=].target[+].code = #cancer-0017-0008
* group[=].element[=].target[=].display = "Обследование"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #659
* group[=].element[=].display = "По поводу других заболеваний"
* group[=].element[=].target[+].code = #cancer-0017-0009
* group[=].element[=].target[=].display = "По поводу других заболеваний"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #660
* group[=].element[=].display = "По поводу осложнений"
* group[=].element[=].target[+].code = #cancer-0017-0010
* group[=].element[=].target[=].display = "По поводу осложнений"
* group[=].element[=].target[=].relationship = #equivalent


// Group 18: CancerIdCS to CancerCharacterTreatmentCS
* group[+].source = Canonical(CancerIdCS)
* group[=].target = Canonical(CancerCharacterTreatmentCS)

* group[=].element[+].code = #651
* group[=].element[=].display = "Не проводилось"
* group[=].element[=].target[+].code = #cancer-0017-0001
* group[=].element[=].target[=].display = "Не проводилось"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #652
* group[=].element[=].display = "Радикальное"
* group[=].element[=].target[+].code = #cancer-0017-0002
* group[=].element[=].target[=].display = "Радикальное"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #653
* group[=].element[=].display = "Паллиативное"
* group[=].element[=].target[+].code = #cancer-0017-0003
* group[=].element[=].target[=].display = "Паллиативное"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #654
* group[=].element[=].display = "Симптоматическое"
* group[=].element[=].target[+].code = #cancer-0017-0004
* group[=].element[=].target[=].display = "Симптоматическое"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #655
* group[=].element[=].display = "Реабилитационное"
* group[=].element[=].target[+].code = #cancer-0017-0005
* group[=].element[=].target[=].display = "Реабилитационное"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #656
* group[=].element[=].display = "Радикальное незавершенное"
* group[=].element[=].target[+].code = #cancer-0017-0006
* group[=].element[=].target[=].display = "Радикальное незавершенное"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #657
* group[=].element[=].display = "Профилактическое"
* group[=].element[=].target[+].code = #cancer-0017-0007
* group[=].element[=].target[=].display = "Профилактическое"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #658
* group[=].element[=].display = "Обследование"
* group[=].element[=].target[+].code = #cancer-0017-0008
* group[=].element[=].target[=].display = "Обследование"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #659
* group[=].element[=].display = "По поводу других заболеваний"
* group[=].element[=].target[+].code = #cancer-0017-0009
* group[=].element[=].target[=].display = "По поводу других заболеваний"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #660
* group[=].element[=].display = "По поводу осложнений"
* group[=].element[=].target[+].code = #cancer-0017-0010
* group[=].element[=].target[=].display = "По поводу осложнений"
* group[=].element[=].target[=].relationship = #equivalent

// Group 19: CancerIdCS to CancerSpecialTreatmentCS
* group[+].source = Canonical(CancerIdCS)
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


// Group 20: CancerIdCS to CancerTumorBehaviorCS
* group[+].source = Canonical(CancerIdCS)
* group[=].target = Canonical(CancerTumorBehaviorCS)

* group[=].element[+].code = #867
* group[=].element[=].display = "Доброкачественная"
* group[=].element[=].target[+].code = #cancer-0019-0001
* group[=].element[=].target[=].display = "Доброкачественная"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #868
* group[=].element[=].display = "Неопределенная"
* group[=].element[=].target[+].code = #cancer-0019-0002
* group[=].element[=].target[=].display = "Неопределенная"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #869
* group[=].element[=].display = "In situ"
* group[=].element[=].target[+].code = #cancer-0019-0003
* group[=].element[=].target[=].display = "In situ"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #870
* group[=].element[=].display = "Злокачественная"
* group[=].element[=].target[+].code = #cancer-0019-0004
* group[=].element[=].target[=].display = "Злокачественная"
* group[=].element[=].target[=].relationship = #equivalent


// Group 21: CancerIdCS to CancerDegreeDifferentiationCS
* group[+].source = Canonical(CancerIdCS)
* group[=].target = Canonical(CancerDegreeDifferentiationCS)

* group[=].element[+].code = #363
* group[=].element[=].display = "G1 (Высоко дифференцированная)"
* group[=].element[=].target[+].code = #cancer-0020-0001
* group[=].element[=].target[=].display = "G1 (Высоко дифференцированная)"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #364
* group[=].element[=].display = "G2 (Средне дифференцированная)"
* group[=].element[=].target[+].code = #cancer-0020-0002
* group[=].element[=].target[=].display = "G2 (Средне дифференцированная)"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #365
* group[=].element[=].display = "G3 (Низко дифференцированная)"
* group[=].element[=].target[+].code = #cancer-0020-0003
* group[=].element[=].target[=].display = "G3 (Низко дифференцированная)"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #366
* group[=].element[=].display = "G4 (Недифференцированная)"
* group[=].element[=].target[+].code = #cancer-0020-0004
* group[=].element[=].target[=].display = "G4 (Недифференцированная)"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #367
* group[=].element[=].display = "T-клеточная"
* group[=].element[=].target[+].code = #cancer-0020-0005
* group[=].element[=].target[=].display = "T-клеточная"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #368
* group[=].element[=].display = "B-клеточная"
* group[=].element[=].target[+].code = #cancer-0020-0006
* group[=].element[=].target[=].display = "B-клеточная"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #369
* group[=].element[=].display = "Нулевая клетка"
* group[=].element[=].target[+].code = #cancer-0020-0007
* group[=].element[=].target[=].display = "Нулевая клетка"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #370
* group[=].element[=].display = "NK-клетка"
* group[=].element[=].target[+].code = #cancer-0020-0008
* group[=].element[=].target[=].display = "NK-клетка"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #371
* group[=].element[=].display = "Низкая степень / Low grade"
* group[=].element[=].target[+].code = #cancer-0020-0009
* group[=].element[=].target[=].display = "Низкая степень / Low grade"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #372
* group[=].element[=].display = "Высокая степень / High grade"
* group[=].element[=].target[+].code = #cancer-0020-0010
* group[=].element[=].target[=].display = "Высокая степень / High grade"
* group[=].element[=].target[=].relationship = #equivalent

* group[=].element[+].code = #373
* group[=].element[=].display = "GX (Не может быть установлена)"
* group[=].element[=].target[+].code = #cancer-0020-0011
* group[=].element[=].target[=].display = "GX (Не может быть установлена)"
* group[=].element[=].target[=].relationship = #equivalent