CodeSystem: DeviceClassificationCS
Id: device-classification-cs
Title: "Medical equipment classification"
Description: "Three-level classification of medical equipment (classification, section, item) used in the JihozMed system. Source: classification of medical equipment of 28.02.2025."
* insert OriginalCodeSystemDraft(device-classification-cs)
* ^hierarchyMeaning = #grouped-by
* ^count = 673

* ^property[0].code = #parent
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#parent"
* ^property[=].type = #code

// ===== meq-0001-00001 =====
* #meq-0001-00001 "Diagnostika apparaturasi va monitoring tizimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Диагностическая аппаратура и системы мониторинга"
  * ^designation[+].language = #en
  * ^designation[=].value = "Diagnostic equipment and monitoring systems"

* #meq-0002-00001 "Endoskopiya asboblari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Приборы для эндоскопии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Endoscopy devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00001

* #meq-0003-00001 "Gastrofibroskoplar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Гастрофиброскопы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Gastrofiberscopes"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00001

* #meq-0003-00002 "Rektoskoplar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ректоскопы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Rectoscopes"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00001

* #meq-0003-00003 "Sigmoskoplar (sigmoidoskoplar)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Сигмоскопы (сигмоидоскопы)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sigmoidoscopes"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00001

* #meq-0003-00004 "Bronxoskoplar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Бронхоскопы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Bronchoscopes"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00001

* #meq-0003-00005 "Bronxofibroskoplar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Бронхофиброскопы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Bronchofiberscopes"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00001

* #meq-0003-00006 "Kolonofibroskoplar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Колонофиброскопы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Colonofiberscopes"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00001

* #meq-0003-00007 "Videogastroskoplar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Видеогастроскопы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Video gastroscopes"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00001

* #meq-0003-00008 "Rezektoskoplar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Резектоскопы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Resectoscopes"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00001

* #meq-0003-00009 "Videodermatoskoplar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Видеодерматоскопы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Video dermatoscopes"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00001

* #meq-0003-00010 "Laringoskoplar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ларингоскопы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Laryngoscopes"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00001

* #meq-0003-00011 "Ekotomoskoplar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Экотомоскопы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Echotomoscopes"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00001

* #meq-0003-00012 "Laparoskoplar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лапароскопы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Laparoscopes"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00001

* #meq-0003-00013 "Otoskoplar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отоскопы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Otoscopes"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00001

* #meq-0003-00014 "Kolposkoplar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Кольпоскопы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Colposcopes"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00001

* #meq-0003-00015 "Gisteroskoplar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Гистероскопы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hysteroscopes"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00001

* #meq-0003-00016 "Sistoskoplar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цистоскопы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cystoscopes"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00001

* #meq-0003-00017 "Uretroskoplar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Уретроскопы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Urethroscopes"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00001

* #meq-0003-00018 "Nefroskoplar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Нефроскопы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Nephroscopes"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00001

* #meq-0003-00019 "Rinoskoplar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Риноскопы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Rhinoscopes"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00001

* #meq-0003-00020 "Faringoskoplar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Фарингоскопы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Pharyngoscopes"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00001

* #meq-0003-00021 "Ezofagoskoplar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эзофагоскопы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Esophagoscopes"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00001

* #meq-0003-00022 "Xoledoxoskoplar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Холедохоскопы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Choledochoscopes"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00001

* #meq-0003-00023 "Duodenoskoplar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Дуоденоскопы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Duodenoscopes"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00001

* #meq-0003-00024 "Endoskopik UTT apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эндоскопические УЗИ-аппараты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Endoscopic ultrasound devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00001

* #meq-0003-00025 "Artroskoplar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Артроскопы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Arthroscopes"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00001

* #meq-0002-00002 "Magnit-rezonans tomograflar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Магнитно-резонансные томографы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Magnetic resonance imaging scanners"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00001

* #meq-0003-00026 "Magnit-rezonans tomograflar (MRT)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Магнитно-резонансные томографы (МРТ)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Magnetic resonance imaging scanners (MRI)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00002

* #meq-0002-00003 "Ultratovush diagnostika apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты ультразвуковые диагностические"
  * ^designation[+].language = #en
  * ^designation[=].value = "Diagnostic ultrasound systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00001

* #meq-0003-00027 "Koʻchma"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Передвижные"
  * ^designation[+].language = #en
  * ^designation[=].value = "Mobile"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00003

* #meq-0003-00028 "Portativ"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Портативные"
  * ^designation[+].language = #en
  * ^designation[=].value = "Portable"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00003

* #meq-0003-00029 "Choʻntak (handheld)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Карманные (handheld)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Handheld"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00003

* #meq-0002-00004 "Densitometrlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Денситометры"
  * ^designation[+].language = #en
  * ^designation[=].value = "Densitometers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00001

* #meq-0003-00030 "Rentgen densitometri"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Рентгеновский денситометр"
  * ^designation[+].language = #en
  * ^designation[=].value = "X-ray densitometer"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00004

* #meq-0003-00031 "Ultratovush densitometrlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ультразвуковые денситометры"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ultrasound densitometers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00004

* #meq-0002-00005 "Elektrokardiograflar (EKG)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Электрокардиографы (ЭКГ)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Electrocardiographs (ECG)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00001

* #meq-0003-00032 "3 kanalli"
  * ^designation[0].language = #ru
  * ^designation[=].value = "3-канальные"
  * ^designation[+].language = #en
  * ^designation[=].value = "3-channel"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00005

* #meq-0003-00033 "6 kanalli"
  * ^designation[0].language = #ru
  * ^designation[=].value = "6-канальные"
  * ^designation[+].language = #en
  * ^designation[=].value = "6-channel"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00005

* #meq-0003-00034 "12 kanalli"
  * ^designation[0].language = #ru
  * ^designation[=].value = "12-канальные"
  * ^designation[+].language = #en
  * ^designation[=].value = "12-channel"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00005

* #meq-0003-00035 "15–18 kanalli"
  * ^designation[0].language = #ru
  * ^designation[=].value = "15-18-канальные"
  * ^designation[+].language = #en
  * ^designation[=].value = "15–18-channel"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00005

* #meq-0002-00006 "Xolter monitoring tizimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Холтеровские системы для мониторинга"
  * ^designation[+].language = #en
  * ^designation[=].value = "Holter monitoring systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00001

* #meq-0003-00036 "Bir kanalli"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Одноканальные"
  * ^designation[+].language = #en
  * ^designation[=].value = "Single-channel"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00006

* #meq-0003-00037 "Koʻp kanalli (3–12 kanal)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Многоканальные (3-12 каналов)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Multichannel (3–12 channels)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00006

* #meq-0003-00038 "Kombinatsiyalangan (arterial bosim monitoringi bilan)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Комбинированные (с мониторингом артериального давления)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Combined (with blood pressure monitoring)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00006

* #meq-0002-00007 "Bemor monitorlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Мониторы пациента"
  * ^designation[+].language = #en
  * ^designation[=].value = "Patient monitors"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00001

* #meq-0003-00039 "Portativ"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Портативные"
  * ^designation[+].language = #en
  * ^designation[=].value = "Portable"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00007

* #meq-0003-00040 "Statsionar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Стационарные"
  * ^designation[+].language = #en
  * ^designation[=].value = "Stationary"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00007

* #meq-0003-00041 "Implantatsiya qilinadigan kardiomonitorlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Имплантируемые кардиомониторы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Implantable cardiac monitors"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00007

* #meq-0003-00042 "Markazlashtirilgan monitoring tizimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Централизованные системы мониторинга"
  * ^designation[+].language = #en
  * ^designation[=].value = "Central monitoring systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00007

* #meq-0002-00008 "Fetal monitorlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Фетальные мониторы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Fetal monitors"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00001

* #meq-0003-00043 "Bir kanalli"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Одноканальные"
  * ^designation[+].language = #en
  * ^designation[=].value = "Single-channel"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00008

* #meq-0003-00044 "Ikki kanalli"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Двухканальные"
  * ^designation[+].language = #en
  * ^designation[=].value = "Dual-channel"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00008

* #meq-0003-00045 "Koʻp kanalli"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Многоканальные"
  * ^designation[+].language = #en
  * ^designation[=].value = "Multichannel"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00008

* #meq-0002-00009 "Elektroensefalograflar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Электроэнцефалографы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Electroencephalographs"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00001

* #meq-0003-00046 "Portativ"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Портативные"
  * ^designation[+].language = #en
  * ^designation[=].value = "Portable"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00009

* #meq-0003-00047 "Statsionar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Стационарные"
  * ^designation[+].language = #en
  * ^designation[=].value = "Stationary"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00009

* #meq-0003-00048 "Xolter EEG"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Холтеровские ЭЭГ"
  * ^designation[+].language = #en
  * ^designation[=].value = "Holter EEG"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00009

* #meq-0003-00049 "Chaqiruv potensiallari bilan EEG"
  * ^designation[0].language = #ru
  * ^designation[=].value = "ЭЭГ с вызванными потенциалами"
  * ^designation[+].language = #en
  * ^designation[=].value = "EEG with evoked potentials"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00009

* #meq-0002-00010 "Exoensefalograflar (Exo-EG)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эхоэнцефалографы (Эхо-ЭГ)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Echoencephalographs (Echo-EG)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00001

* #meq-0003-00050 "Bir kanalli exoensefalograflar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Одноканальные эхоэнцефалографы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Single-channel echoencephalographs"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00010

* #meq-0003-00051 "Koʻp kanalli exoensefalograflar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Многоканальные эхоэнцефалографы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Multichannel echoencephalographs"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00010

* #meq-0002-00011 "Miograflar (EMG)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Миографы (ЭМГ)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Electromyographs (EMG)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00001

* #meq-0003-00052 "Yuzaki EMG"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Поверхностная ЭМГ"
  * ^designation[+].language = #en
  * ^designation[=].value = "Surface EMG"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00011

* #meq-0003-00053 "Igna EMG"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Игольчатая ЭМГ"
  * ^designation[+].language = #en
  * ^designation[=].value = "Needle EMG"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00011

* #meq-0002-00012 "Reograflar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Реографы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Rheographs"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00001

* #meq-0003-00054 "Reoensefalograflar (REG)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Реоэнцефалографы (РЭГ)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Rheoencephalographs (REG)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00012

* #meq-0003-00055 "Reovazograflar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Реовазографы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Rheovasographs"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00012

* #meq-0002-00013 "Pletizmograflar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Реплетизмографы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Plethysmographs"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00001

* #meq-0003-00056 "Venoz"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Венозные"
  * ^designation[+].language = #en
  * ^designation[=].value = "Venous"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00013

* #meq-0003-00057 "Arterial"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Артериальные"
  * ^designation[+].language = #en
  * ^designation[=].value = "Arterial"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00013

* #meq-0002-00014 "Reabilitatsiyani baholash asboblari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Приборы для оценки реабилитации"
  * ^designation[+].language = #en
  * ^designation[=].value = "Rehabilitation assessment devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00001

* #meq-0003-00058 "Mushak kuchini oʻlchash qurilmalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Устройства для измерения мышечной силы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Muscle strength measurement devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00014

* #meq-0003-00059 "Muvozanatni baholash platformalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Платформы для оценки равновесия"
  * ^designation[+].language = #en
  * ^designation[=].value = "Balance assessment platforms"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00014

* #meq-0002-00015 "Kalla ichi bosimini monitoring qilish asboblari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Приборы для мониторинга внутричерепного давления"
  * ^designation[+].language = #en
  * ^designation[=].value = "Intracranial pressure monitoring devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00001

* #meq-0003-00060 "Likvor bosimini oʻlchash tizimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Системы измерения ликворного давления"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cerebrospinal fluid pressure measurement systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00015

* #meq-0003-00061 "Nerv tizimi holatining portativ monitorlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Портативные мониторы состояния нервной системы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Portable nervous system monitors"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00015

* #meq-0002-00016 "Nafas tizimini baholash apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для оценки дыхательной системы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Respiratory system assessment devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00001

* #meq-0003-00062 "Tashqi nafas funksiyasini tekshirish apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для исследования функции дыхания"
  * ^designation[+].language = #en
  * ^designation[=].value = "Pulmonary function testing devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00016

* #meq-0003-00063 "Gaz almashinuvini oʻlchash apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для измерения газообмена"
  * ^designation[+].language = #en
  * ^designation[=].value = "Gas exchange measurement devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00016

* #meq-0002-00017 "Pulsoksimetrlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Пульсоксиметры"
  * ^designation[+].language = #en
  * ^designation[=].value = "Pulse oximeters"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00001

* #meq-0003-00064 "Statsionar va portativ modellar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Стационарные и портативные модели"
  * ^designation[+].language = #en
  * ^designation[=].value = "Stationary and portable models"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00017

* #meq-0002-00018 "Vena vizualizatorlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Визуализаторы вен"
  * ^designation[+].language = #en
  * ^designation[=].value = "Vein visualizers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00001

* #meq-0003-00065 "Venaga kirishni osonlashtiruvchi tizimlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Системы для облегчения венозного доступа"
  * ^designation[+].language = #en
  * ^designation[=].value = "Venous access aid systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00018

* #meq-0002-00019 "Qon oqimi tezligini oʻlchash asboblari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Приборы для измерения скорости кровотока"
  * ^designation[+].language = #en
  * ^designation[=].value = "Blood flow velocity measurement devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00001

* #meq-0003-00066 "Doppler qurilmalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Доплеровские устройства"
  * ^designation[+].language = #en
  * ^designation[=].value = "Doppler devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00019

* #meq-0003-00067 "Qon aylanishini baholash apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для оценки кровообращения"
  * ^designation[+].language = #en
  * ^designation[=].value = "Blood circulation assessment devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00019

* #meq-0002-00020 "Reaksiya vaqtini tekshirish asboblari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Приборы для исследования временных реакций"
  * ^designation[+].language = #en
  * ^designation[=].value = "Reaction time testing devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00001

* #meq-0003-00068 "Nerv impulslarini monitoring qilish qurilmalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Устройства для мониторинга нервных импульсов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Nerve impulse monitoring devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00020

* #meq-0003-00069 "Reflekslarni tekshirish apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для тестирования рефлексов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Reflex testing devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00020

* #meq-0002-00021 "Arterial bosimni monitoring qilish asboblari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Приборы для мониторинга артериального давления"
  * ^designation[+].language = #en
  * ^designation[=].value = "Blood pressure monitoring devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00001

* #meq-0003-00070 "Elektron tonometrlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Электронные тонометры"
  * ^designation[+].language = #en
  * ^designation[=].value = "Electronic blood pressure monitors"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00021

* #meq-0003-00071 "Bosimni sutkalik monitoring qilish tizimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Системы суточного мониторинга давления"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ambulatory blood pressure monitoring systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00021

* #meq-0002-00022 "Tibbiy termometrlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Термометры медицинские"
  * ^designation[+].language = #en
  * ^designation[=].value = "Medical thermometers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00001

* #meq-0003-00072 "Infraqizil kontaktsiz termometrlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Инфракрасные бесконтактные термометры"
  * ^designation[+].language = #en
  * ^designation[=].value = "Infrared non-contact thermometers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00022

* #meq-0003-00073 "Raqamli kontaktli qurilmalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цифровые контактные устройства"
  * ^designation[+].language = #en
  * ^designation[=].value = "Digital contact thermometers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00022

* #meq-0002-00023 "Tibbiy printerlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Медицинские принтеры"
  * ^designation[+].language = #en
  * ^designation[=].value = "Medical printers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00001

* #meq-0003-00074 "Diagnostik tasvirlarni chop etish printerlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Принтеры для печати диагностических изображений"
  * ^designation[+].language = #en
  * ^designation[=].value = "Diagnostic imaging printers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00023

* #meq-0003-00075 "Laboratoriya natijalari uchun printerlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Принтеры для лабораторных результатов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Laboratory result printers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00023

* #meq-0002-00024 "Rentgen diagnostika uskunalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Рентген-диагностическое оборудование"
  * ^designation[+].language = #en
  * ^designation[=].value = "X-ray diagnostic equipment"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00001

* #meq-0003-00076 "Angiografiya tizimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ангиографические системы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Angiography systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00024

* #meq-0003-00077 "Umumiy diagnostik rentgen apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Общие диагностические рентген аппараты"
  * ^designation[+].language = #en
  * ^designation[=].value = "General diagnostic X-ray systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00024

* #meq-0003-00078 "Mammograflar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Маммографы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Mammography systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00024

* #meq-0003-00079 "Flyuorograflar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Флюорографы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Fluorography systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00024

* #meq-0003-00080 "Kompyuter tomograflar (KT)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Компьютерные томографы (КТ)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Computed tomography scanners (CT)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00024

* #meq-0003-00081 "BFEKT/KT bir fotonli emission kompyuter tomograflar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "ОФЭКТ/КТ однофотонные эмиссионные компьютерные томографы"
  * ^designation[+].language = #en
  * ^designation[=].value = "SPECT/CT single-photon emission computed tomography scanners"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00024

* #meq-0003-00082 "Pozitron-emission tomograflar (PET)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Позитронно-эмиссионные томографы (ПЭТ)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Positron emission tomography scanners (PET)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00024

* #meq-0003-00083 "Rentgen tomograflar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Рентгеновские томографы"
  * ^designation[+].language = #en
  * ^designation[=].value = "X-ray tomographs"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00024

* #meq-0002-00025 "Boshqa diagnostika apparaturasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Прочая диагностическая аппаратура"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other diagnostic equipment"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00001

* #meq-0003-00084 "Molekulyar diagnostika tizimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Системы для молекулярной диагностики"
  * ^designation[+].language = #en
  * ^designation[=].value = "Molecular diagnostic systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00025

* #meq-0003-00085 "Kombinatsiyalangan diagnostika komplekslari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Комбинированные комплексы диагностики"
  * ^designation[+].language = #en
  * ^designation[=].value = "Combined diagnostic systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00025

* #meq-0003-00086 "Kasalliklarning individual xavfini baholash qurilmalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Устройства для оценки индивидуальных рисков заболеваний"
  * ^designation[+].language = #en
  * ^designation[=].value = "Individual disease risk assessment devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00025

* #meq-0003-00087 "Negatoskoplar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Негатоскопы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Negatoscopes"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00025

// ===== meq-0001-00002 =====
* #meq-0001-00002 "Anesteziologiya va reanimatsiya apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для анестезиологии и реанимации"
  * ^designation[+].language = #en
  * ^designation[=].value = "Anesthesia and resuscitation equipment"

* #meq-0002-00026 "Defibrillyatorlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Дефибрилляторы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Defibrillators"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00002

* #meq-0003-00088 "Avtomatik tashqi defibrillyatorlar (AED)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Автоматические внешние дефибрилляторы (AED)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Automated external defibrillators (AED)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00026

* #meq-0003-00089 "Monitorli professional defibrillyatorlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Профессиональные дефибрилляторы с монитором"
  * ^designation[+].language = #en
  * ^designation[=].value = "Professional defibrillators with monitor"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00026

* #meq-0003-00090 "Implantatsiya qilinadigan defibrillyatorlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Имплантируемые дефибрилляторы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Implantable defibrillators"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00026

* #meq-0002-00027 "Algezimetrlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Алгезиметры"
  * ^designation[+].language = #en
  * ^designation[=].value = "Algesimeters"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00002

* #meq-0003-00091 "Ogʻriq boʻsagʻasini baholash qurilmalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Устройства для оценки болевых порогов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Pain threshold assessment devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00027

* #meq-0003-00092 "Ogʻriq sezuvchanligini tekshirish dasturiy komplekslari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Программные комплексы для тестирования болевой чувствительности"
  * ^designation[+].language = #en
  * ^designation[=].value = "Pain sensitivity testing software systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00027

* #meq-0002-00028 "Narkoz-nafas apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты наркозно-дыхательные"
  * ^designation[+].language = #en
  * ^designation[=].value = "Anesthesia machines"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00002

* #meq-0003-00093 "Universal anesteziya apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Универсальные аппараты анестезии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Universal anesthesia machines"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00028

* #meq-0003-00094 "Kattalar anesteziyasi apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для взрослой анестезии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Adult anesthesia machines"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00028

* #meq-0003-00095 "Bolalar anesteziyasi apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для детской анестезии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Pediatric anesthesia machines"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00028

* #meq-0002-00029 "Sunʼiy qon aylanish apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты искусственного кровообращения"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cardiopulmonary bypass machines"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00002

* #meq-0003-00096 "Perfuziya nasoslari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Перфузионные насосы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Perfusion pumps"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00029

* #meq-0003-00097 "Membranali oksigenatsiya tizimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Системы мембранного оксигенирования"
  * ^designation[+].language = #en
  * ^designation[=].value = "Membrane oxygenation systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00029

* #meq-0003-00098 "Ekstrakorporal membranali oksigenatsiya (EKMO) apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для экстракорпоральной мембранной оксигенации (ЭКМО)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Extracorporeal membrane oxygenation (ECMO) machines"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00029

* #meq-0002-00030 "Havo va suyuqlik haydash apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для нагнетания воздуха и жидкостей"
  * ^designation[+].language = #en
  * ^designation[=].value = "Air and fluid delivery devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00002

* #meq-0003-00099 "Tibbiy havo kompressorlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Воздушные компрессоры медицинского назначения"
  * ^designation[+].language = #en
  * ^designation[=].value = "Medical air compressors"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00030

* #meq-0003-00100 "Steril suyuqlik uzatish tizimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Системы подачи стерильных жидкостей"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sterile fluid delivery systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00030

* #meq-0002-00031 "Oʻpkani sunʼiy ventilyatsiya qilish (OʻSV) apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для искусственной вентиляции лёгких (ИВЛ)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Mechanical ventilators"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00002

* #meq-0003-00101 "Reanimatsion OʻSV apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Реанимационные аппараты ИВЛ"
  * ^designation[+].language = #en
  * ^designation[=].value = "Intensive care ventilators"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00031

* #meq-0003-00102 "Portativ OʻSV apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Портативные аппараты ИВЛ"
  * ^designation[+].language = #en
  * ^designation[=].value = "Portable ventilators"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00031

* #meq-0003-00103 "Uzoq muddatli ventilyatsiya apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для длительной вентиляции"
  * ^designation[+].language = #en
  * ^designation[=].value = "Long-term ventilators"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00031

* #meq-0002-00032 "Anesteziya va nafas gazlari analizatorlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Анализаторы анестезиологических и респираторных газов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Anesthetic and respiratory gas analyzers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00002

* #meq-0003-00104 "CO2, O2 va anestetiklarni monitoring qilish gaz analizatorlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Газоанализаторы для мониторинга CO2, O2 и анестетиков"
  * ^designation[+].language = #en
  * ^designation[=].value = "Gas analyzers for CO2, O2 and anesthetic monitoring"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00032

* #meq-0003-00105 "Nafas aralashmasini tahlil qilish apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для анализа дыхательной смеси"
  * ^designation[+].language = #en
  * ^designation[=].value = "Breathing gas mixture analyzers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00032

* #meq-0002-00033 "Infuziya apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для вливаний"
  * ^designation[+].language = #en
  * ^designation[=].value = "Infusion devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00002

* #meq-0003-00106 "Infuziya nasoslari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Инфузионные насосы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Infusion pumps"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00033

* #meq-0003-00107 "Shprits dozatorlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Шприцевые дозаторы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Syringe pumps"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00033

* #meq-0003-00108 "Eritmalarni aniq uzatish uchun kristall nasoslar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Кристаллические насосы для точной подачи растворов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Crystal pumps for precise solution delivery"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00033

* #meq-0002-00034 "Elektroxirurgik detoksikatsiya apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты детоксикации электрохирургические"
  * ^designation[+].language = #en
  * ^designation[=].value = "Electrosurgical detoxification devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00002

* #meq-0003-00109 "Qondan toksinlarni chiqarish qurilmalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Устройства для удаления токсинов из крови"
  * ^designation[+].language = #en
  * ^designation[=].value = "Blood toxin removal devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00034

* #meq-0003-00110 "Elektrokimyoviy detoksikatsiya apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Электрохимические аппараты детоксикации"
  * ^designation[+].language = #en
  * ^designation[=].value = "Electrochemical detoxification devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00034

* #meq-0002-00035 "Oksigenatorlar va kislorod konsentratorlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Оксигенаторы и концентраторы кислорода"
  * ^designation[+].language = #en
  * ^designation[=].value = "Oxygenators and oxygen concentrators"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00002

* #meq-0003-00111 "Statsionar kislorod konsentratorlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Стационарные концентраторы кислорода"
  * ^designation[+].language = #en
  * ^designation[=].value = "Stationary oxygen concentrators"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00035

* #meq-0003-00112 "Portativ kislorod konsentratorlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Портативные концентраторы кислорода"
  * ^designation[+].language = #en
  * ^designation[=].value = "Portable oxygen concentrators"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00035

* #meq-0002-00036 "Apnoeni davolash uchun CPAP va BiPAP apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты СПАП и БПАП для лечения апноэ"
  * ^designation[+].language = #en
  * ^designation[=].value = "CPAP and BiPAP devices for sleep apnea treatment"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00002

* #meq-0003-00113 "Avtomatik CPAP qurilmalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Автоматические устройства СПАП"
  * ^designation[+].language = #en
  * ^designation[=].value = "Automatic CPAP devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00036

* #meq-0003-00114 "Apnoening murakkab holatlari uchun BiPAP apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "БПАП аппараты для сложных случаев апноэ"
  * ^designation[+].language = #en
  * ^designation[=].value = "BiPAP devices for complex sleep apnea"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00036

* #meq-0002-00037 "Chaqaloqlar uchun kuvezlar va neonatal stollar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Кувезы для новорождённых и неонатальные столы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Infant incubators and neonatal tables"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00002

* #meq-0003-00115 "Intensiv terapiya inkubatorlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Инкубаторы интенсивной терапии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Intensive care incubators"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00037

* #meq-0003-00116 "Ochiq neonatal tizimlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Открытые неонатальные системы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Open neonatal care systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00037

* #meq-0003-00117 "Termoregulyatsiyani saqlash apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для поддержания терморегуляции"
  * ^designation[+].language = #en
  * ^designation[=].value = "Thermoregulation support devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00037

* #meq-0002-00038 "Insuflyatorlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Инсуфляторы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Insufflators"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00002

* #meq-0003-00118 "Steril gaz uzatish apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для подачи стерильного газа"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sterile gas delivery devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00038

* #meq-0003-00119 "Laparoskopik operatsiyalar uchun insuflyatorlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Инсуфляторы для лапароскопических операций"
  * ^designation[+].language = #en
  * ^designation[=].value = "Laparoscopic insufflators"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00038

* #meq-0002-00039 "Endoflyatorlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эндофляторы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Endoflators"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00002

* #meq-0003-00120 "Jarrohlik aralashuvlarida karbonat angidrid haydash apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для нагнетания углекислого газа при хирургических вмешательствах"
  * ^designation[+].language = #en
  * ^designation[=].value = "Carbon dioxide insufflation devices for surgery"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00039

* #meq-0002-00040 "Boshqa apparatlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Прочие аппараты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00002

* #meq-0003-00121 "Suyuqliklarni chiqarish uchun aspiratorlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аспираторы для удаления жидкостей"
  * ^designation[+].language = #en
  * ^designation[=].value = "Fluid suction aspirators"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00040

* #meq-0003-00122 "Anestetiklarni aerozol shaklida yuborish qurilmalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Устройства для подачи анестетиков в виде аэрозолей"
  * ^designation[+].language = #en
  * ^designation[=].value = "Aerosol anesthetic delivery devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00040

* #meq-0003-00123 "Anesteziya va reanimatsiya uchun hayotiy koʻrsatkichlar monitorlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Мониторы жизненно важных показателей для анестезии и реанимации"
  * ^designation[+].language = #en
  * ^designation[=].value = "Vital signs monitors for anesthesia and resuscitation"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00040

// ===== meq-0001-00003 =====
* #meq-0001-00003 "Dializ, gemodializ va aferez apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для диализа, гемодиализа и афереза"
  * ^designation[+].language = #en
  * ^designation[=].value = "Dialysis, hemodialysis and apheresis equipment"

* #meq-0002-00041 "Dializ apparatlari («sunʼiy buyrak»)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для диализа («искусственная почка»)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Dialysis machines (artificial kidney)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00003

* #meq-0003-00124 "Onlayn monitoring funksiyali gemodializ apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для гемодиализа с функцией онлайн-мониторинга"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hemodialysis machines with online monitoring"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00041

* #meq-0003-00125 "Dializ eritmalarini tayyorlashning avtomatlashtirilgan tizimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Автоматизированные системы подготовки диализирующих растворов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Automated dialysis solution preparation systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00041

* #meq-0003-00126 "Uyda tungi gemodializ oʻtkazish tizimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Системы для проведения ночного домашнего гемодиализа"
  * ^designation[+].language = #en
  * ^designation[=].value = "Nocturnal home hemodialysis systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00041

* #meq-0002-00042 "Peritoneal dializ apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для перитониального диализа"
  * ^designation[+].language = #en
  * ^designation[=].value = "Peritoneal dialysis machines"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00003

* #meq-0003-00127 "Avtomatik peritoneal dializ (APD) tizimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Системы для автоматического перитониального диализа (АПД)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Automated peritoneal dialysis (APD) systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00042

* #meq-0003-00128 "Qoʻlda peritoneal dializ toʻplamlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Наборы для мануального перитониального диализа"
  * ^designation[+].language = #en
  * ^designation[=].value = "Manual peritoneal dialysis sets"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00042

* #meq-0002-00043 "Ichak dializi apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для кишечного диализа"
  * ^designation[+].language = #en
  * ^designation[=].value = "Intestinal dialysis devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00003

* #meq-0003-00129 "Enterosorbsiya va ichak lavaji uskunalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Оборудование для энтеросорбции и кишечного лаважа"
  * ^designation[+].language = #en
  * ^designation[=].value = "Enterosorption and intestinal lavage equipment"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00043

* #meq-0002-00044 "Plazmaferez apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для плазмафереза"
  * ^designation[+].language = #en
  * ^designation[=].value = "Plasmapheresis machines"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00003

* #meq-0003-00130 "Avtomatik plazmaferez tizimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Автоматические плазмаферезные системы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Automated plasmapheresis systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00044

* #meq-0003-00131 "Yarim avtomatik plazmaferez apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Полуавтоматические аппараты для плазмафереза"
  * ^designation[+].language = #en
  * ^designation[=].value = "Semi-automated plasmapheresis machines"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00044

* #meq-0002-00045 "Sitoferez apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для цитофереза"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cytapheresis machines"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00003

* #meq-0003-00132 "Qonning hujayra komponentlarini ajratish va qayta ishlash qurilmalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Устройства для извлечения и обработки клеточных компонентов крови"
  * ^designation[+].language = #en
  * ^designation[=].value = "Blood cell component separation and processing devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00045

* #meq-0003-00133 "Selektiv sitoferez uskunalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Оборудование для селективного цитофереза"
  * ^designation[+].language = #en
  * ^designation[=].value = "Selective cytapheresis equipment"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00045

* #meq-0002-00046 "Sitoplazmaferez apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для цитоплазмафереза"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cytoplasmapheresis machines"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00003

* #meq-0003-00134 "Plazma va hujayralarni filtrlash va qayta ishlash imkoniyatli tizimlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Системы с возможностью фильтрации и обработки плазмы и клеток"
  * ^designation[+].language = #en
  * ^designation[=].value = "Plasma and cell filtration and processing systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00046

* #meq-0002-00047 "Immunosorbsiya apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты иммуносорбции"
  * ^designation[+].language = #en
  * ^designation[=].value = "Immunoadsorption machines"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00003

* #meq-0003-00135 "Antitelalar va immun komplekslarni selektiv chiqarish qurilmalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Установки для селективного удаления антител и иммунных комплексов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Selective antibody and immune complex removal systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00047

* #meq-0003-00136 "Immunosorbsiya filtrlari va kartrijlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Фильтры и картриджи для иммуносорбции"
  * ^designation[+].language = #en
  * ^designation[=].value = "Immunoadsorption filters and cartridges"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00047

* #meq-0002-00048 "Gemofiltratsiya va gemoperfuziya apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для гемофильтрации и гемоперфузии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hemofiltration and hemoperfusion machines"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00003

* #meq-0003-00137 "Uzluksiz buyrak oʻrnini bosuvchi terapiya (CRRT) tizimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Системы для непрерывной заместительной почечной терапии (CRRT)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Continuous renal replacement therapy (CRRT) systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00048

* #meq-0003-00138 "Toksinlarni sorbsiya qilish funksiyali apparatlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты с функцией сорбции токсинов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Toxin sorption devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00048

* #meq-0002-00049 "Ekstrakorporal detoksikatsiya apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для экстракорпоральной детоксикации"
  * ^designation[+].language = #en
  * ^designation[=].value = "Extracorporeal detoxification machines"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00003

* #meq-0003-00139 "Toksik moddalarni chiqarish uchun gemoperfuziya tizimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Системы гемоперфузии для удаления токсических веществ"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hemoperfusion systems for toxin removal"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00049

* #meq-0003-00140 "Koʻmir va ion almashinuv filtrli apparatlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты с угольными и ионообменными фильтрами"
  * ^designation[+].language = #en
  * ^designation[=].value = "Devices with charcoal and ion-exchange filters"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00049

* #meq-0002-00050 "Boshqa apparatlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Прочие аппараты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00003

* #meq-0003-00141 "Kombinatsiyalangan dializ va aferez tizimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Системы комбинированного диализа и афереза"
  * ^designation[+].language = #en
  * ^designation[=].value = "Combined dialysis and apheresis systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00050

* #meq-0003-00142 "Shoshilinch terapiya uchun mobil stansiyalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Мобильные станции для экстренной терапии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Mobile emergency therapy stations"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00050

// ===== meq-0001-00004 =====
* #meq-0001-00004 "Klinik-diagnostik laboratoriyalar uchun asboblar va uskunalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Приборы и оборудование для клинико-диагностических лабораторий"
  * ^designation[+].language = #en
  * ^designation[=].value = "Clinical diagnostic laboratory instruments and equipment"

* #meq-0002-00051 "Analizatorlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Анализаторы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Analyzers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00004

* #meq-0003-00143 "Gematologik"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Гематологические"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hematology"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00051

* #meq-0003-00144 "Bioximik"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Биохимические"
  * ^designation[+].language = #en
  * ^designation[=].value = "Biochemistry"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00051

* #meq-0003-00145 "Immunoferment"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Иммуноферментные"
  * ^designation[+].language = #en
  * ^designation[=].value = "Enzyme immunoassay"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00051

* #meq-0003-00146 "Gaz analizatorlari, elektrolit analizatorlari, kombinatsiyalangan analizatorlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Газоанализаторы, электролитные анализаторы, Комбинированные анализаторы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Blood gas, electrolyte and combined analyzers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00051

* #meq-0003-00147 "Koagulometrlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Коагулометры"
  * ^designation[+].language = #en
  * ^designation[=].value = "Coagulometers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00051

* #meq-0003-00148 "Siydik analizatorlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Анализаторы мочи"
  * ^designation[+].language = #en
  * ^designation[=].value = "Urine analyzers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00051

* #meq-0003-00149 "Organik suyuqliklarda glyukoza darajasini nazorat qilish asboblari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Приборы для контроля уровня глюкозы в органических жидкостях"
  * ^designation[+].language = #en
  * ^designation[=].value = "Glucose analyzers for body fluids"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00051

* #meq-0003-00150 "Bakteriologik"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Бактериологические"
  * ^designation[+].language = #en
  * ^designation[=].value = "Bacteriology"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00051

* #meq-0003-00151 "Teri analizatori"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Анализатор кожи"
  * ^designation[+].language = #en
  * ^designation[=].value = "Skin analyzer"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00051

* #meq-0003-00152 "Gistologik analizatorlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Гистологические анализаторы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Histology analyzers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00051

* #meq-0002-00052 "Molekulyar diagnostika uskunalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Оборудование для молекулярной диагностики"
  * ^designation[+].language = #en
  * ^designation[=].value = "Molecular diagnostic equipment"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00004

* #meq-0003-00153 "Patogenlarning genetik materialini aniqlash uchun PZR test-tizimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "ПЦР-тест-системы для выявления генетического материала патогенов"
  * ^designation[+].language = #en
  * ^designation[=].value = "PCR test systems for pathogen genetic material detection"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00052

* #meq-0003-00154 "Yangi avlod sekvenatorlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Секвенаторы нового поколения"
  * ^designation[+].language = #en
  * ^designation[=].value = "Next-generation sequencers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00052

* #meq-0003-00155 "Izotermik amplifikatsiya apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для изотермической амплификации"
  * ^designation[+].language = #en
  * ^designation[=].value = "Isothermal amplification instruments"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00052

* #meq-0002-00053 "YoRT (yordamchi reproduktiv texnologiyalar) uskunalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Оборудование для ВРТ (вспомогательной репродуктивной терапии)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Assisted reproductive technology (ART) equipment"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00004

* #meq-0003-00156 "Embrion inkubatorlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Инкубаторы для эмбрионов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Embryo incubators"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00053

* #meq-0003-00157 "Spermatozoidni sitoplazma ichiga inyeksiya qilish (IKSI) uchun mikromanipulyatorlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Микроманипуляторы для интрацитоплазматической инъекции сперматозоидов (ИКСИ)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Micromanipulators for intracytoplasmic sperm injection (ICSI)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00053

* #meq-0003-00158 "Sperma va oositlar sifatini baholash uskunalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Оборудование для оценки качества спермы и ооцитов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sperm and oocyte quality assessment equipment"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00053

* #meq-0002-00054 "Namunalarni tayyorlash uskunalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Оборудование для подготовки образцов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sample preparation equipment"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00004

* #meq-0003-00159 "I va II himoya sinfidagi biologik xavfsizlik shkaflari (laminarlar)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Шкафы биологической безопасности (ламинары) I и II класса защиты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Class I and II biological safety cabinets (laminar flow)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00054

* #meq-0003-00160 "Toʻqimalarning yupqa kesmalarini tayyorlash uchun mikrotomlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Микротомы для приготовления тонких срезов тканей"
  * ^designation[+].language = #en
  * ^designation[=].value = "Microtomes for thin tissue sections"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00054

* #meq-0003-00161 "Yuqori va past aylanishli sentrifugalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Центрифуги высокого и низкого оборота"
  * ^designation[+].language = #en
  * ^designation[=].value = "High-speed and low-speed centrifuges"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00054

* #meq-0003-00162 "Nuklein kislotalarni ekstraksiya qilish avtomatik stansiyalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Автоматические станции для экстракции нуклеиновых кислот"
  * ^designation[+].language = #en
  * ^designation[=].value = "Automated nucleic acid extraction stations"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00054

* #meq-0003-00163 "Gistologik namunalarni tayyorlash uskunalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Оборудование для подготовки гистологических образцов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Histology sample preparation equipment"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00054

* #meq-0003-00164 "Termostatlar (inkubatorlar)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Термостаты (инкубаторы)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Thermostats (incubators)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00054

* #meq-0002-00055 "Namunalar va reagentlarni saqlash"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Хранение образцов и реагентов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sample and reagent storage"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00004

* #meq-0003-00165 "Reagentlarni saqlash uchun tibbiy muzlatgichlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Холодильники медицинские для хранения реагентов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Medical refrigerators for reagent storage"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00055

* #meq-0003-00166 "Bionamunalarni uzoq muddat saqlash uchun muzlatish kameralari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Морозильные камеры для длительного хранения биообразцов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Freezers for long-term biospecimen storage"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00055

* #meq-0002-00056 "Sifat nazorati va monitoring"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Контроль качества и мониторинг"
  * ^designation[+].language = #en
  * ^designation[=].value = "Quality control and monitoring"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00004

* #meq-0003-00167 "Qonda glyukoza darajasini nazorat qilish asboblari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Приборы для контроля уровня глюкозы в крови"
  * ^designation[+].language = #en
  * ^designation[=].value = "Blood glucose meters"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00056

* #meq-0003-00168 "Namunalarning optik xususiyatlarini tahlil qilish spektrofotometrlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Спектрофотометры для анализа оптических характеристик образцов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Spectrophotometers for optical sample analysis"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00056

* #meq-0003-00169 "Avtomatik sitogenetik tahlil tizimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Системы для автоматического цитогенетического анализа"
  * ^designation[+].language = #en
  * ^designation[=].value = "Automated cytogenetic analysis systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00056

* #meq-0002-00057 "Laboratoriya jarayonlarini avtomatlashtirish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Автоматизация лабораторных процессов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Laboratory process automation"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00004

* #meq-0003-00170 "Namunalarni tayyorlash va tahlil qilish uchun robotlashtirilgan tizimlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Роботизированные системы для пробоподготовки и анализа"
  * ^designation[+].language = #en
  * ^designation[=].value = "Robotic sample preparation and analysis systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00057

* #meq-0003-00171 "Namunalar oqimini optimallashtirish uchun laboratoriya konveyerlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лабораторные конвейеры для оптимизации потоков проб"
  * ^designation[+].language = #en
  * ^designation[=].value = "Laboratory conveyor systems for sample flow"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00057

* #meq-0003-00172 "Laboratoriya maʼlumotlarini boshqarish dasturiy taʼminoti (LIMS)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Программное обеспечение для управления лабораторными данными (LIMS)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Laboratory information management software (LIMS)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00057

* #meq-0002-00058 "Boshqa uskunalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Прочее оборудование"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other equipment"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00004

* #meq-0003-00173 "Hujayralarni tahlil qilish uchun oqimli sitoflyuorometrlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цитофлуорометры проточные для анализа клеток"
  * ^designation[+].language = #en
  * ^designation[=].value = "Flow cytometers for cell analysis"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00058

* #meq-0003-00174 "Qonning kislota-ishqor holati analizatorlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Анализаторы кислотно-щелочного состояния крови"
  * ^designation[+].language = #en
  * ^designation[=].value = "Blood acid-base analyzers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00058

* #meq-0003-00175 "Oqsillar va nuklein kislotalar elektroforezi apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для электрофореза белков и нуклеиновых кислот"
  * ^designation[+].language = #en
  * ^designation[=].value = "Protein and nucleic acid electrophoresis systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00058

// ===== meq-0001-00005 =====
* #meq-0001-00005 "Laboratoriya uskunalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лабораторное оборудование"
  * ^designation[+].language = #en
  * ^designation[=].value = "Laboratory equipment"

* #meq-0002-00059 "Sheykerlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Шейкеры"
  * ^designation[+].language = #en
  * ^designation[=].value = "Shakers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00005

* #meq-0003-00176 "Oddiy laboratoriya sheykerlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Обычные лабораторные шейкеры"
  * ^designation[+].language = #en
  * ^designation[=].value = "Standard laboratory shakers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00059

* #meq-0003-00177 "Inkubatsion sheykerlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Инкубационные шейкеры"
  * ^designation[+].language = #en
  * ^designation[=].value = "Incubator shakers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00059

* #meq-0003-00178 "Vorteks-sheykerlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Вортекс-шейкеры"
  * ^designation[+].language = #en
  * ^designation[=].value = "Vortex mixers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00059

* #meq-0002-00060 "Mikroskoplar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Микроскопы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Microscopes"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00005

* #meq-0003-00179 "Mexanik (optik) mikroskoplar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Механические (оптические) микроскопы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Mechanical (optical) microscopes"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00060

* #meq-0003-00180 "Elektron mikroskoplar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Электронные микроскопы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Electron microscopes"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00060

* #meq-0003-00181 "Lazer mikroskoplar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лазерные микроскопы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Laser microscopes"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00060

* #meq-0002-00061 "Distillyatorlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Дистилляторы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Distillers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00005

* #meq-0003-00182 "Suv distillyatorlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Водяные дистилляторы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Water distillers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00061

* #meq-0003-00183 "Bug distillyatorlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Паровые дистилляторы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Steam distillers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00061

* #meq-0003-00184 "Kvars distillyatorlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Кварцевые дистилляторы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Quartz distillers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00061

* #meq-0003-00185 "Ultratovush distillyatorlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ультразвуковые дистилляторы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ultrasonic distillers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00061

* #meq-0002-00062 "Suv hammomlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Водяные бани"
  * ^designation[+].language = #en
  * ^designation[=].value = "Water baths"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00005

* #meq-0003-00186 "Oddiy suv hammomlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Обычные водяные бани"
  * ^designation[+].language = #en
  * ^designation[=].value = "Standard water baths"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00062

* #meq-0003-00187 "Sheykerli suv hammomlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Шейкерные водяные бани"
  * ^designation[+].language = #en
  * ^designation[=].value = "Shaking water baths"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00062

* #meq-0003-00188 "Moy hammomlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Масляные бани"
  * ^designation[+].language = #en
  * ^designation[=].value = "Oil baths"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00062

* #meq-0002-00063 "Xromatograflar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Хроматографы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Chromatographs"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00005

* #meq-0003-00189 "Gaz xromatograflari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Газовые хроматографы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Gas chromatographs"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00063

* #meq-0003-00190 "Suyuqlik xromatograflari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Жидкостные хроматографы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Liquid chromatographs"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00063

* #meq-0003-00191 "Ion xromatograflari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ионные хроматографы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ion chromatographs"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00063

* #meq-0003-00192 "Yupqa qatlamli xromatograflar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Тонкослойные хроматографы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Thin-layer chromatographs"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00063

* #meq-0002-00064 "Spektrofotometrlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Спектрофотометры"
  * ^designation[+].language = #en
  * ^designation[=].value = "Spectrophotometers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00005

* #meq-0003-00193 "UB-koʻrinadigan spektrofotometrlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "УФ-Видимые спектрофотометры"
  * ^designation[+].language = #en
  * ^designation[=].value = "UV-visible spectrophotometers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00064

* #meq-0003-00194 "Infraqizil spektrofotometrlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Инфракрасные спектрофотометры"
  * ^designation[+].language = #en
  * ^designation[=].value = "Infrared spectrophotometers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00064

* #meq-0002-00065 "Namlik oʻlchagichlar (namlik analizatorlari)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Влагомеры (анализаторы влажности)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Moisture meters (moisture analyzers)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00005

* #meq-0003-00195 "Gravimetrik namlik oʻlchagichlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Гравиметрические влагомер"
  * ^designation[+].language = #en
  * ^designation[=].value = "Gravimetric moisture meters"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00065

* #meq-0003-00196 "Elektron namlik oʻlchagichlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Электронные влагомер"
  * ^designation[+].language = #en
  * ^designation[=].value = "Electronic moisture meters"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00065

* #meq-0002-00066 "Laboratoriya muzlatgichlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лабораторные морозильники"
  * ^designation[+].language = #en
  * ^designation[=].value = "Laboratory freezers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00005

* #meq-0003-00197 "Past haroratli muzlatgichlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Низкотемпературные морозильники"
  * ^designation[+].language = #en
  * ^designation[=].value = "Low-temperature freezers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00066

* #meq-0003-00198 "Oʻta past haroratli muzlatgichlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ультранизкотемпературные морозильники"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ultra-low temperature freezers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00066

* #meq-0003-00199 "Kriogen muzlatgichlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Криогенные морозильники"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cryogenic freezers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00066

* #meq-0002-00067 "Laboratoriya muflellari (mufel pechlari)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лабораторные муфели (Печи муфельные)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Laboratory muffle furnaces"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00005

* #meq-0003-00200 "Past haroratli muflellar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Муфели с низкой температурой"
  * ^designation[+].language = #en
  * ^designation[=].value = "Low-temperature muffle furnaces"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00067

* #meq-0003-00201 "Yuqori haroratli muflellar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Муфели высокотемпературные"
  * ^designation[+].language = #en
  * ^designation[=].value = "High-temperature muffle furnaces"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00067

* #meq-0002-00068 "Laboratoriya degazatorlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лабораторные дегазаторы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Laboratory degassers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00005

* #meq-0003-00202 "Vakuum degazatorlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Вакуумные дегазаторы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Vacuum degassers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00068

* #meq-0003-00203 "Ultratovush degazatorlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ультразвуковые дегазаторы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ultrasonic degassers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00068

* #meq-0002-00069 "Suvni tozalash kolonkasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Колонка для очистки воды"
  * ^designation[+].language = #en
  * ^designation[=].value = "Water purification column"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00005

* #meq-0003-00204 "Ion almashinuv tizimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ионообменные системы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ion-exchange systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00069

* #meq-0003-00205 "Teskari osmos tizimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Обратноосмотические системы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Reverse osmosis systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00069

* #meq-0002-00070 "Zichlik analizatorlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Анализаторы плотности"
  * ^designation[+].language = #en
  * ^designation[=].value = "Density analyzers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00005

* #meq-0003-00206 "Gaz piknometrlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Газовые пикнометры"
  * ^designation[+].language = #en
  * ^designation[=].value = "Gas pycnometers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00070

* #meq-0003-00207 "Suyuqlik piknometrlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Жидкостные пикнометры"
  * ^designation[+].language = #en
  * ^designation[=].value = "Liquid pycnometers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00070

// ===== meq-0001-00006 =====
* #meq-0001-00006 "Tibbiy terapevtik uskunalar va apparatura"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Медицинское терапевтическое оборудование и аппаратура"
  * ^designation[+].language = #en
  * ^designation[=].value = "Medical therapeutic equipment"

* #meq-0002-00071 "Radioterapiya uskunalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Радиотерапевтическое оборудование"
  * ^designation[+].language = #en
  * ^designation[=].value = "Radiotherapy equipment"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00006

* #meq-0003-00208 "Radioterapiya uchun chiziqli tezlatgichlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Линейные ускорители для радиотерапии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Linear accelerators for radiotherapy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00071

* #meq-0002-00072 "Kardiologik terapevtik apparatlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Кардиологические терапевтические аппараты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cardiac therapy devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00006

* #meq-0003-00209 "Kardiostimulyatorlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Кардиостимуляторы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Pacemakers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00072

* #meq-0003-00210 "Defibrillyatorlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Дефибрилляторы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Defibrillators"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00072

// ===== meq-0001-00007 =====
* #meq-0001-00007 "Sterilizatsiya va dezinfeksiya uskunalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Оборудование для стерилизации и дезинфекции"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sterilization and disinfection equipment"

* #meq-0002-00073 "Avtoklavlar va sterilizatorlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Автоклавы и стерилизаторы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Autoclaves and sterilizers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00007

* #meq-0003-00211 "Turli quvvatdagi bug avtoklavlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Паровые автоклавы различной мощности"
  * ^designation[+].language = #en
  * ^designation[=].value = "Steam autoclaves of various capacities"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00073

* #meq-0003-00212 "Quruq issiqlik sterilizatorlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Стерилизаторы сухожаровые"
  * ^designation[+].language = #en
  * ^designation[=].value = "Dry heat sterilizers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00073

* #meq-0003-00213 "Plazmali va gazli sterilizatorlar (etilen oksidi asosida)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Стерилизаторы плазменные и газовые (на основе оксида этилена)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Plasma and gas (ethylene oxide) sterilizers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00073

* #meq-0003-00214 "Kichik tibbiyot muassasalari uchun portativ sterilizatorlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Портативные стерилизаторы для малых медицинских учреждений"
  * ^designation[+].language = #en
  * ^designation[=].value = "Portable sterilizers for small medical facilities"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00073

* #meq-0002-00074 "Bakteritsid nurlatgichlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Облучатели бактерицидные"
  * ^designation[+].language = #en
  * ^designation[=].value = "Germicidal irradiators"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00007

* #meq-0003-00215 "Ochiq va yopiq turdagi kvars nurlatgichlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Кварцевые облучатели открытого и закрытого типа"
  * ^designation[+].language = #en
  * ^designation[=].value = "Open and closed quartz irradiators"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00074

* #meq-0003-00216 "Ultrabinafsha havo retsirkulyatorlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ультрафиолетовые рециркуляторы воздуха"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ultraviolet air recirculators"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00074

* #meq-0003-00217 "Yuzalarni dezinfeksiya qilish uchun infraqizil nurlatgichlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Инфракрасные облучатели для дезинфекции поверхностей"
  * ^designation[+].language = #en
  * ^designation[=].value = "Infrared irradiators for surface disinfection"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00074

* #meq-0002-00075 "Sterilizatsiya konteynerlari va aksessuarlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Контейнеры и аксессуары для стерилизации"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sterilization containers and accessories"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00007

* #meq-0003-00218 "Filtrlovchi qopqoqli tibbiy bikslar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Биксы медицинские с фильтрующими крышками"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sterilization drums with filter lids"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00075

* #meq-0003-00219 "Koʻp martalik va bir martalik konteynerlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Контейнеры многоразового и одноразового использования"
  * ^designation[+].language = #en
  * ^designation[=].value = "Reusable and single-use containers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00075

* #meq-0003-00220 "Sterilizatsiya jarayoni indikatorlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Индикаторы процесса стерилизации"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sterilization process indicators"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00075

* #meq-0003-00221 "Sterilizatsiya uchun qadoqlash materiallari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Упаковочные материалы для стерилизации"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sterilization packaging materials"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00075

* #meq-0002-00076 "Dezinfeksiya uskunalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Оборудование для дезинфекции"
  * ^designation[+].language = #en
  * ^designation[=].value = "Disinfection equipment"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00007

* #meq-0003-00222 "Endoskoplarni dezinfeksiya qilish avtomatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Автоматы для дезинфекции эндоскопов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Automated endoscope reprocessors"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00076

* #meq-0003-00223 "Jarrohlik asboblarini dezinfeksiya qilish qurilmalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Устройства для дезинфекции хирургических инструментов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Surgical instrument disinfection devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00076

* #meq-0003-00224 "Xonalarni zararsizlantirish uchun ozon generatorlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Генераторы озона для обеззараживания помещений"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ozone generators for room decontamination"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00076

* #meq-0003-00225 "Tibbiy buyumlarni avtomatik yuvish va dezinfeksiya qilish mashinalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Машины для автоматической мойки и дезинфекции медицинских изделий"
  * ^designation[+].language = #en
  * ^designation[=].value = "Automated washer-disinfectors for medical devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00076

* #meq-0002-00077 "Qoʻshimcha uskunalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Дополнительное оборудование"
  * ^designation[+].language = #en
  * ^designation[=].value = "Auxiliary equipment"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00007

* #meq-0003-00226 "Sterilizatsiya samaradorligini monitoring qilish tizimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Системы мониторинга эффективности стерилизации"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sterilization efficacy monitoring systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00077

* #meq-0003-00227 "Sterilizatsiya uskunalari uchun suvni tozalash va tayyorlash qurilmalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Установки для очистки и подготовки воды для стерилизационного оборудования"
  * ^designation[+].language = #en
  * ^designation[=].value = "Water treatment systems for sterilization equipment"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00077

* #meq-0003-00228 "Xonalarni aerozol dezinfeksiya qilish uchun tuman generatorlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Туманы генераторы для аэрозольной дезинфекции помещений"
  * ^designation[+].language = #en
  * ^designation[=].value = "Fog generators for aerosol room disinfection"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00077

// ===== meq-0001-00008 =====
* #meq-0001-00008 "Shifoxona uskunalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Оборудование для больниц"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hospital equipment"

* #meq-0002-00078 "Operatsiya stollari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Столы операционные"
  * ^designation[+].language = #en
  * ^designation[=].value = "Operating tables"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00008

* #meq-0003-00229 "Holatini sozlash mumkin boʻlgan mexanik stollar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Механические столы с регулировкой положения"
  * ^designation[+].language = #en
  * ^designation[=].value = "Mechanical tables with position adjustment"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00078

* #meq-0003-00230 "Elektr yuritmali va holatni eslab qoluvchi stollar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Столы с электроприводом и функцией памяти положений"
  * ^designation[+].language = #en
  * ^designation[=].value = "Electric tables with position memory"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00078

* #meq-0003-00231 "Neyroxirurgiya va travmatologiya uchun maxsus operatsiya stollari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Специализированные операционные столы для нейрохирургии и травматологии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Specialized operating tables for neurosurgery and traumatology"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00078

* #meq-0002-00079 "Funksional karavotlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Кровати функциональные"
  * ^designation[+].language = #en
  * ^designation[=].value = "Functional beds"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00008

* #meq-0003-00232 "Reanimatsiya palatalari uchun elektr yuritmali karavotlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Кровати с электроприводом для реанимационных палат"
  * ^designation[+].language = #en
  * ^designation[=].value = "Electric beds for intensive care units"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00079

* #meq-0003-00233 "Balandligini oʻzgartirish funksiyali mexanik karavotlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Механические кровати с функцией изменения высоты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Mechanical height-adjustable beds"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00079

* #meq-0003-00234 "Oʻrnatilgan tarozi va bemorni joylashtirish tizimli karavotlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Кровати с встроенными весами и системой позиционирования пациента"
  * ^designation[+].language = #en
  * ^designation[=].value = "Beds with built-in scales and patient positioning system"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00079

* #meq-0002-00080 "Reanimatsiya aravachalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Тележки реанимационные"
  * ^designation[+].language = #en
  * ^designation[=].value = "Resuscitation trolleys"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00008

* #meq-0003-00235 "Balandlikni avtomatik sozlash funksiyali aravachalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Тележки с функцией автоматического регулирования высоты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Trolleys with automatic height adjustment"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00080

* #meq-0003-00236 "Monitoring tizimli bemor tashish aravachalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Тележки для транспортировки пациентов с системой мониторинга"
  * ^designation[+].language = #en
  * ^designation[=].value = "Patient transport trolleys with monitoring system"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00080

* #meq-0002-00081 "Tibbiy tarozilar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Весы медицинские"
  * ^designation[+].language = #en
  * ^designation[=].value = "Medical scales"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00008

* #meq-0003-00237 "Harakati cheklangan bemorlar uchun elektron tarozilar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Электронные весы для пациентов с ограниченной подвижностью"
  * ^designation[+].language = #en
  * ^designation[=].value = "Electronic scales for patients with limited mobility"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00081

* #meq-0003-00238 "Tana massasi indeksini oʻlchash imkoniyatli tarozilar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Весы с возможностью измерения индекса массы тела"
  * ^designation[+].language = #en
  * ^designation[=].value = "Scales with body mass index measurement"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00081

* #meq-0002-00082 "Operatsiya va koʻrik chiroqlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Светильники операционные и смотровые"
  * ^designation[+].language = #en
  * ^designation[=].value = "Surgical and examination lights"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00008

* #meq-0003-00239 "Yorugʻlik intensivligi sozlanadigan LED operatsiya chiroqlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Светодиодные операционные светильники с регулировкой интенсивности"
  * ^designation[+].language = #en
  * ^designation[=].value = "LED surgical lights with adjustable intensity"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00082

* #meq-0003-00240 "Devorga va shiftga oʻrnatiladigan koʻrik chiroqlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Настенные и потолочные смотровые светильники"
  * ^designation[+].language = #en
  * ^designation[=].value = "Wall and ceiling examination lights"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00082

* #meq-0002-00083 "Infuziya shtativlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Штативы для вливаний"
  * ^designation[+].language = #en
  * ^designation[=].value = "Infusion stands"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00008

* #meq-0003-00241 "Gʻildirakli mobil shtativlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Мобильные штативы на колесах"
  * ^designation[+].language = #en
  * ^designation[=].value = "Mobile stands on wheels"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00083

* #meq-0003-00242 "Balandligi sozlanadigan va holati qotiriladigan shtativlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Штативы с регулировкой высоты и фиксацией положения"
  * ^designation[+].language = #en
  * ^designation[=].value = "Height-adjustable stands with position lock"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00083

* #meq-0002-00084 "Boʻy oʻlchagichlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ростомеры"
  * ^designation[+].language = #en
  * ^designation[=].value = "Stadiometers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00008

* #meq-0003-00243 "Boʻyni avtomatik aniqlovchi elektron boʻy oʻlchagichlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Электронные ростомеры с автоматическим определением роста"
  * ^designation[+].language = #en
  * ^designation[=].value = "Electronic stadiometers with automatic height detection"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00084

* #meq-0003-00244 "Bolalar va kattalar uchun mexanik boʻy oʻlchagichlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Механические ростомеры для детей и взрослых"
  * ^designation[+].language = #en
  * ^designation[=].value = "Mechanical stadiometers for children and adults"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00084

* #meq-0002-00085 "Nogironlar aravachalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Кресла инвалидные"
  * ^designation[+].language = #en
  * ^designation[=].value = "Wheelchairs"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00008

* #meq-0003-00245 "Mexanik nogironlar aravachalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Механические инвалидные кресла"
  * ^designation[+].language = #en
  * ^designation[=].value = "Manual wheelchairs"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00085

* #meq-0003-00246 "Egilish va suyanchiqni sozlash funksiyali elektr aravachalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Электрические кресла с функцией наклона и регулировкой спинки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Electric wheelchairs with tilt and backrest adjustment"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00085

* #meq-0003-00247 "Muassasa ichida bemorlarni tashish aravachalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Кресла для транспортировки пациентов внутри учреждения"
  * ^designation[+].language = #en
  * ^designation[=].value = "In-facility patient transport chairs"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00085

* #meq-0002-00086 "Boshqa uskunalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Прочее оборудование"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other equipment"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00008

* #meq-0003-00248 "Karavot yonidagi stolchalar va tumbochkalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Прикроватные столики и тумбочки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Bedside tables and cabinets"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00086

* #meq-0003-00249 "Intensiv terapiya palatalari uchun hayotiy funksiyalar monitorlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Мониторы жизненно важных функций для палат интенсивной терапии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Vital signs monitors for intensive care units"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00086

* #meq-0003-00250 "Infuziya eritmalari va adyollarni isitish qurilmalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Устройства для подогрева инфузионных растворов и одеял"
  * ^designation[+].language = #en
  * ^designation[=].value = "Infusion fluid and blanket warmers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00086

* #meq-0003-00251 "Tibbiy xodimlarni chaqirish tizimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Системы вызова медицинского персонала"
  * ^designation[+].language = #en
  * ^designation[=].value = "Nurse call systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00086

// ===== meq-0001-00009 =====
* #meq-0001-00009 "Fizioterapiya apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Физиотерапевтические аппараты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Physiotherapy equipment"

* #meq-0002-00087 "Elektroterapiya uskunalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Электротерапевтическое оборудование"
  * ^designation[+].language = #en
  * ^designation[=].value = "Electrotherapy equipment"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00009

* #meq-0003-00252 "Galvanizatsiya va elektroforez apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для гальванизации и электрофореза"
  * ^designation[+].language = #en
  * ^designation[=].value = "Galvanization and electrophoresis devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00087

* #meq-0003-00253 "Diadinamoterapiya (DDT) apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для диадинамотерапии (ДДТ)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Diadynamic therapy (DDT) devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00087

* #meq-0003-00254 "Amplipulsterapiya apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для амплипульстерапии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Amplipulse therapy devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00087

* #meq-0003-00255 "Interferension terapiya apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для интерференционной терапии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Interferential therapy devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00087

* #meq-0003-00256 "Darsonvalizatsiya apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для дарсонвализации"
  * ^designation[+].language = #en
  * ^designation[=].value = "Darsonvalization devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00087

* #meq-0003-00257 "Elektrostimulyatsiya apparatlari (miostimulyatorlar)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для электростимуляции (миостимуляторы)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Electrical stimulation devices (muscle stimulators)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00087

* #meq-0002-00088 "Ozonoterapiya apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для озонотерапии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ozone therapy devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00009

* #meq-0003-00258 "Teri kasalliklarini davolash uchun ozon generatorlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Генераторы озона для обработки кожных заболеваний"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ozone generators for skin disease treatment"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00088

* #meq-0003-00259 "Toʻqima ichiga ozonoterapiya apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для внутритканевой озонотерапии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Intra-tissue ozone therapy devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00088

* #meq-0002-00089 "Gidrokolonoterapiya apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для гидроколонотерапии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Colon hydrotherapy devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00009

* #meq-0003-00260 "Ichakni tozalash qurilmalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Установки для очистки кишечника"
  * ^designation[+].language = #en
  * ^designation[=].value = "Colon cleansing systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00089

* #meq-0002-00090 "Traksion uskunalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Оборудование тракционное"
  * ^designation[+].language = #en
  * ^designation[=].value = "Traction equipment"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00009

* #meq-0003-00261 "Umurtqa pogʻonasini tortish tizimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Системы для вытяжения позвоночника"
  * ^designation[+].language = #en
  * ^designation[=].value = "Spinal traction systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00090

* #meq-0003-00262 "Umurtqa pogʻonasining boʻyin qismi uchun traksion apparatlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Тракционные аппараты для шейного отдела позвоночника"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cervical traction devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00090

* #meq-0002-00091 "Yorugʻlik bilan davolash va lazer terapiyasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Светолечение и лазерная терапия"
  * ^designation[+].language = #en
  * ^designation[=].value = "Light therapy and laser therapy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00009

* #meq-0003-00263 "Ultrabinafsha (UB) nurlantirish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ультрафиолетовое (УФ) облучение"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ultraviolet (UV) irradiation"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00091

* #meq-0003-00264 "Infraqizil (IQ) nurlanish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Инфракрасное (ИК) излучение"
  * ^designation[+].language = #en
  * ^designation[=].value = "Infrared (IR) radiation"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00091

* #meq-0003-00265 "Koʻrinadigan yorugʻlik (bioptron-terapiya)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Видимый свет (биоптрон-терапия)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Visible light (Bioptron therapy)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00091

* #meq-0003-00266 "Past intensivlikdagi lazer terapiyasi (PILT)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Низкоинтенсивная лазерная терапия (НИЛТ)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Low-level laser therapy (LLLT)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00091

* #meq-0003-00267 "Yuqori intensivlikdagi lazer terapiyasi (YuILT)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Высокоинтенсивная лазерная терапия (ВИЛТ)"
  * ^designation[+].language = #en
  * ^designation[=].value = "High-intensity laser therapy (HILT)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00091

* #meq-0003-00268 "Qonni tomir ichida lazer bilan nurlantirish (QTLN)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Внутрисосудистое лазерное облучение крови (ВЛОК)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Intravascular laser blood irradiation (ILBI)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00091

* #meq-0002-00092 "Ultratovush terapiyasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ультразвуковая терапия"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ultrasound therapy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00009

* #meq-0003-00269 "Fonoforez (dori vositali ultratovush)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Фонофорез (лекарственный ультразвук)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Phonophoresis (drug ultrasound)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00092

* #meq-0003-00270 "Impulsli ultratovush terapiyasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Импульсная ультразвуковая терапия"
  * ^designation[+].language = #en
  * ^designation[=].value = "Pulsed ultrasound therapy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00092

* #meq-0003-00271 "Uzluksiz ultratovush terapiyasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Непрерывная ультразвуковая терапия"
  * ^designation[+].language = #en
  * ^designation[=].value = "Continuous ultrasound therapy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00092

* #meq-0002-00093 "Magnitoterapiya"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Магнитотерапия"
  * ^designation[+].language = #en
  * ^designation[=].value = "Magnetotherapy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00009

* #meq-0003-00272 "Past chastotali magnitoterapiya"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Низкочастотная магнитотерапия"
  * ^designation[+].language = #en
  * ^designation[=].value = "Low-frequency magnetotherapy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00093

* #meq-0003-00273 "Yuqori chastotali magnitoterapiya (magnit-lazer terapiyasi)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Высокочастотная магнитотерапия (магнитно-лазерная терапия)"
  * ^designation[+].language = #en
  * ^designation[=].value = "High-frequency magnetotherapy (magnetic laser therapy)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00093

* #meq-0003-00274 "Pulsatsiyalanuvchi magnitoterapiya"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Пульсирующая магнитотерапия"
  * ^designation[+].language = #en
  * ^designation[=].value = "Pulsed magnetotherapy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00093

* #meq-0002-00094 "Vibroterapiya"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Вибротерапия"
  * ^designation[+].language = #en
  * ^designation[=].value = "Vibration therapy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00009

* #meq-0003-00275 "Past chastotali vibroterapiya (100 Gs gacha)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Низкочастотная вибротерапия (до 100 Гц)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Low-frequency vibration therapy (up to 100 Hz)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00094

* #meq-0003-00276 "Yuqori chastotali vibroterapiya (100 Gs va undan yuqori)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Высокочастотная вибротерапия (100 Гц и выше)"
  * ^designation[+].language = #en
  * ^designation[=].value = "High-frequency vibration therapy (100 Hz and above)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00094

* #meq-0002-00095 "Issiqlik bilan davolash (termoterapiya)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Теплолечение (термотерапия)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Heat therapy (thermotherapy)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00009

* #meq-0003-00277 "Parafinoterapiya va ozokerit bilan davolash"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Парафинотерапия и озокеритолечение"
  * ^designation[+].language = #en
  * ^designation[=].value = "Paraffin and ozokerite therapy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00095

* #meq-0003-00278 "Loy bilan davolash (peloidoterapiya)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Грязелечение (пелоидотерапия)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Mud therapy (peloid therapy)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00095

* #meq-0003-00279 "Infraqizil (IQ) isitish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Инфракрасное (ИК) прогревание"
  * ^designation[+].language = #en
  * ^designation[=].value = "Infrared (IR) heating"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00095

* #meq-0003-00280 "Suv bilan davolash (gidrotermoterapiya)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Водолечение (гидротермотерапия)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hydrothermotherapy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00095

* #meq-0003-00281 "UYuCh-terapiya (ultra yuqori chastotali terapiya)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "УВЧ-терапия (ультравысокочастотная терапия)"
  * ^designation[+].language = #en
  * ^designation[=].value = "UHF therapy (ultra-high frequency therapy)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00095

* #meq-0002-00096 "Krioterapiya (sovuq bilan davolash)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Криотерапия (лечение холодом)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cryotherapy (cold therapy)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00009

* #meq-0003-00282 "Mahalliy krioterapiya"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Локальная криотерапия"
  * ^designation[+].language = #en
  * ^designation[=].value = "Local cryotherapy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00096

* #meq-0003-00283 "Umumiy krioterapiya (kriosaunalar, kriokameralar)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Общая криотерапия (криосауны, криокамеры)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Whole-body cryotherapy (cryosaunas, cryochambers)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00096

* #meq-0003-00284 "Kontaktli krioterapiya (kriodestruksiya)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Контактная криотерапия (криодеструкция)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Contact cryotherapy (cryodestruction)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00096

* #meq-0003-00285 "Kriomassaj"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Криомассаж"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cryomassage"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00096

* #meq-0002-00097 "Baroterapiya (bosimni oʻzgartirish bilan davolash)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Баротерапия (лечение изменением давления)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Barotherapy (pressure therapy)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00009

* #meq-0003-00286 "Giperbarik oksigenatsiya (GBO)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Гипербарическая оксигенация (ГБО)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hyperbaric oxygenation (HBO)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00097

* #meq-0003-00287 "Gipobarik terapiya (siyraklashtirilgan bosim)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Гипобарическая терапия (разреженное давление)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hypobaric therapy (reduced pressure)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00097

* #meq-0003-00288 "Mahalliy baroterapiya (vakuum terapiyasi)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Локальная баротерапия (вакуумная терапия)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Local barotherapy (vacuum therapy)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00097

* #meq-0002-00098 "Suv bilan davolash (gidroterapiya, balneoterapiya)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Водолечение (гидротерапия, бальнеотерапия)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Water therapy (hydrotherapy, balneotherapy)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00009

* #meq-0003-00289 "Gidroterapiya (chuchuk suv bilan davolash)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Гидротерапия (лечение пресной водой)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hydrotherapy (fresh water)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00098

* #meq-0003-00290 "Balneoterapiya (mineral suvlar bilan davolash)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Бальнеотерапия (лечение минеральными водами)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Balneotherapy (mineral water)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00098

* #meq-0003-00291 "Dush muolajalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Душевые процедуры"
  * ^designation[+].language = #en
  * ^designation[=].value = "Shower treatments"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00098

* #meq-0003-00292 "Termal suvlar va shifobaxsh buloqlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Термальные воды и лечебные источники"
  * ^designation[+].language = #en
  * ^designation[=].value = "Thermal waters and healing springs"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00098

* #meq-0002-00099 "Ingalyatsion terapiya"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ингаляционная терапия"
  * ^designation[+].language = #en
  * ^designation[=].value = "Inhalation therapy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00009

* #meq-0003-00293 "Bugʻ ingalyatsiyalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Паровые ингаляции"
  * ^designation[+].language = #en
  * ^designation[=].value = "Steam inhalation"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00099

* #meq-0003-00294 "Aerozol ingalyatsiyalari (nebulayzer terapiyasi)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аэрозольные ингаляции (небулайзерная терапия)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Aerosol inhalation (nebulizer therapy)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00099

* #meq-0003-00295 "Ultratovush ingalyatsiyalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ультразвуковые ингаляции"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ultrasonic inhalation"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00099

* #meq-0003-00296 "Kompressorli ingalyatsiyalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Компрессорные ингаляции"
  * ^designation[+].language = #en
  * ^designation[=].value = "Compressor inhalation"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00099

* #meq-0003-00297 "Elektron-toʻrli (mesh) ingalyatorlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Электронно-сетчатые (меш-ингаляторы)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Electronic mesh inhalers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00099

* #meq-0002-00100 "Mexanoterapiya"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Механотерапия"
  * ^designation[+].language = #en
  * ^designation[=].value = "Mechanotherapy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00009

* #meq-0003-00298 "Harakat faolligini tiklash trenajyorlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Тренажеры для восстановления двигательной активности"
  * ^designation[+].language = #en
  * ^designation[=].value = "Motor activity rehabilitation trainers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00100

* #meq-0003-00299 "Passiv mexanoterapiya apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для пассивной механотерапии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Passive mechanotherapy devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00100

* #meq-0003-00300 "Faol mexanoterapiya apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для активной механотерапии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Active mechanotherapy devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00100

* #meq-0003-00301 "Vibroplatformalar va massaj qurilmalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Виброплатформы и массажные устройства"
  * ^designation[+].language = #en
  * ^designation[=].value = "Vibration platforms and massage devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00100

* #meq-0002-00101 "Zarba-toʻlqinli terapiya (ZTT)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ударно-волновая терапия (УВТ)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Shock wave therapy (SWT)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00009

* #meq-0003-00302 "Radial zarba-toʻlqinli terapiya"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Радиальная ударно-волновая терапия"
  * ^designation[+].language = #en
  * ^designation[=].value = "Radial shock wave therapy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00101

* #meq-0003-00303 "Fokuslangan zarba-toʻlqinli terapiya"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Фокусированная ударно-волновая терапия"
  * ^designation[+].language = #en
  * ^designation[=].value = "Focused shock wave therapy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00101

* #meq-0003-00304 "Planar (yassi) zarba-toʻlqinli terapiya"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Планарная (плоская) ударно-волновая терапия"
  * ^designation[+].language = #en
  * ^designation[=].value = "Planar shock wave therapy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00101

* #meq-0003-00305 "Aylanma-impulsli (torsion) zarba-toʻlqinli terapiya"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Вращятельно-импульсная (торсионная) ударно-волновая терапия"
  * ^designation[+].language = #en
  * ^designation[=].value = "Rotational-pulse (torsion) shock wave therapy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00101

// ===== meq-0001-00010 =====
* #meq-0001-00010 "Oftalmologiya uchun asboblar va apparatlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Приборы и аппараты для офтальмологии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ophthalmology instruments and equipment"

* #meq-0002-00102 "Koʻzning old qismi va koʻz tubini tekshirish apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для исследования переднего отдела глаза и глазного дна"
  * ^designation[+].language = #en
  * ^designation[=].value = "Anterior segment and fundus examination devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00010

* #meq-0003-00306 "Turli modeldagi tirqishli lampalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Щелевые лампы различных моделей"
  * ^designation[+].language = #en
  * ^designation[=].value = "Slit lamps of various models"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00102

* #meq-0003-00307 "Toʻr pardani diagnostika qilish uchun fundus-kameralar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Фундус-камеры для диагностики сетчатки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Fundus cameras for retinal diagnostics"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00102

* #meq-0003-00308 "Biomikroskoplar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Биомикроскопы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Biomicroscopes"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00102

* #meq-0002-00103 "Koʻrish funksiyalarini tekshirish asboblari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Приборы для исследования функций зрения"
  * ^designation[+].language = #en
  * ^designation[=].value = "Visual function testing devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00010

* #meq-0003-00309 "Koʻrish maydonini aniqlash uchun perimetrlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Периметры для определения поля зрения"
  * ^designation[+].language = #en
  * ^designation[=].value = "Perimeters for visual field testing"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00103

* #meq-0003-00310 "Rang sezuvchanligini tekshirish apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для исследования цветовой чувствительности"
  * ^designation[+].language = #en
  * ^designation[=].value = "Color vision testing devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00103

* #meq-0003-00311 "Refraksiya uchun optometrlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Оптометры для рефракции"
  * ^designation[+].language = #en
  * ^designation[=].value = "Optometers for refraction"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00103

* #meq-0002-00104 "Koʻrish korreksiyasini tanlash va nazorat qilish asboblari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Приборы для подбора и контроля коррекции зрения"
  * ^designation[+].language = #en
  * ^designation[=].value = "Vision correction selection and control devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00010

* #meq-0003-00312 "Avtorefkeratometrlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Авторефкератометры"
  * ^designation[+].language = #en
  * ^designation[=].value = "Autorefkeratometers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00104

* #meq-0003-00313 "Koʻzoynak va kontakt linzalarni tanlash uchun foropterlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Фороптеры для подбора очков и контактных линз"
  * ^designation[+].language = #en
  * ^designation[=].value = "Phoropters for spectacle and contact lens fitting"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00104

* #meq-0003-00314 "Linzometrlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Линзометры"
  * ^designation[+].language = #en
  * ^designation[=].value = "Lensmeters"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00104

* #meq-0002-00105 "Operatsiya asboblari va apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Операционные приборы и аппараты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Surgical instruments and devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00010

* #meq-0003-00315 "Oftalmologik jarrohlik mikroskoplari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Микроскопы хирургические офтальмологические"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ophthalmic surgical microscopes"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00105

* #meq-0003-00316 "Vitreoretinal operatsiyalar uchun apparatlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для витреоретинальных операций"
  * ^designation[+].language = #en
  * ^designation[=].value = "Vitreoretinal surgery systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00105

* #meq-0003-00317 "Koʻzni lazer bilan operatsiya qilish qurilmalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Устройства для лазерной хирургии глаза"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ophthalmic laser surgery devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00105

* #meq-0003-00318 "Oftalmoxirurgiya apparatlari (vitreoretinal, fakoemulsifikatorlar va boshq.)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для офтальмохирургии (витреоретинальные, факоэмульсификаторы и др.)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ophthalmic surgery systems (vitreoretinal, phacoemulsification, etc.)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00105

* #meq-0002-00106 "Elektr va ultratovush tekshiruvlari uchun asboblar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Приборы для электро- и ультразвуковых исследований"
  * ^designation[+].language = #en
  * ^designation[=].value = "Electrophysiological and ultrasound examination devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00010

* #meq-0003-00319 "Ultratovush biometrlari (A/B skanerlar)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ультразвуковые биометры (A/B сканеры)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ultrasound biometers (A/B scanners)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00106

* #meq-0003-00320 "Shox parda qalinligini oʻlchash apparatlari (paximetrlar)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для измерения толщины роговицы (пахиметры)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Corneal thickness measurement devices (pachymeters)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00106

* #meq-0003-00321 "Elektroretinograflar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Электроретинографы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Electroretinographs"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00106

* #meq-0002-00107 "Fundus-kameralar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Фундус-камеры"
  * ^designation[+].language = #en
  * ^designation[=].value = "Fundus cameras"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00010

* #meq-0003-00322 "Koʻz tubining yuqori aniqlikdagi tasvirlarini olish tizimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Системы для получения изображений глазного дна высокого разрешения"
  * ^designation[+].language = #en
  * ^designation[=].value = "High-resolution fundus imaging systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00107

* #meq-0002-00108 "Tirqishli lampalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лампы щелевые"
  * ^designation[+].language = #en
  * ^designation[=].value = "Slit lamps"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00010

* #meq-0003-00323 "Raqamli funksiyali koʻchma va statsionar modellar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Переносные и стационарные модели с цифровыми функциями"
  * ^designation[+].language = #en
  * ^designation[=].value = "Portable and stationary models with digital functions"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00108

* #meq-0002-00109 "Avtorefkeratometrlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Авторефкератометры"
  * ^designation[+].language = #en
  * ^designation[=].value = "Autorefkeratometers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00010

* #meq-0003-00324 "Refraksiya va shox parda egriligini avtomatik oʻlchash apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для автоматического измерения рефракции и кривизны роговицы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Automatic refraction and corneal curvature measurement devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00109

* #meq-0002-00110 "Keratometrlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Кератометры"
  * ^designation[+].language = #en
  * ^designation[=].value = "Keratometers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00010

* #meq-0003-00325 "Shox parda old yuzasi egriligini oʻlchash asboblari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Приборы для измерения кривизны передней поверхности роговицы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Anterior corneal curvature measurement devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00110

* #meq-0002-00111 "Paximetrlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Пахиметры"
  * ^designation[+].language = #en
  * ^designation[=].value = "Pachymeters"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00010

* #meq-0003-00326 "Shox parda qalinligini oʻlchash apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для измерения толщины роговицы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Corneal thickness measurement devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00111

* #meq-0002-00112 "Oftalmologik perimetrlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Периметры офтальмологические"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ophthalmic perimeters"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00010

* #meq-0003-00327 "Statik va kinetik perimetrlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Статические и кинетические периметры"
  * ^designation[+].language = #en
  * ^designation[=].value = "Static and kinetic perimeters"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00112

* #meq-0002-00113 "Koʻrish oʻtkirligini aniqlash proyektorlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Проекторы для определения остроты зрения"
  * ^designation[+].language = #en
  * ^designation[=].value = "Visual acuity chart projectors"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00010

* #meq-0003-00328 "Stol usti va devorga oʻrnatiladigan modellar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Настольные и настенные модели"
  * ^designation[+].language = #en
  * ^designation[=].value = "Tabletop and wall-mounted models"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00113

* #meq-0003-00329 "Raqamli boshqaruvli proyektorlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Проекторы с цифровым управлением"
  * ^designation[+].language = #en
  * ^designation[=].value = "Digitally controlled projectors"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00113

* #meq-0002-00114 "Oftalmolog ish joylari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Рабочие места офтальмолога"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ophthalmologist workstations"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00010

* #meq-0003-00330 "Kompleks diagnostika ish stansiyalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Комплексные диагностические рабочие станции"
  * ^designation[+].language = #en
  * ^designation[=].value = "Integrated diagnostic workstations"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00114

* #meq-0003-00331 "Asboblar integratsiyalangan modulli tizimlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Модульные системы с интеграцией приборов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Modular systems with integrated devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00114

* #meq-0002-00115 "Oftalmoxirurgiya asboblari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Инструменты для офтальмохирургии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ophthalmic surgical instruments"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00010

* #meq-0003-00332 "Koʻz mikroxirurgiyasi toʻplamlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Наборы для микрохирургии глаза"
  * ^designation[+].language = #en
  * ^designation[=].value = "Eye microsurgery sets"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00115

* #meq-0003-00333 "Lazer skalpellar va koagulyatorlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лазерные скальпели и коагуляторы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Laser scalpels and coagulators"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00115

* #meq-0002-00116 "Boshqa asboblar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Прочие приборы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00010

* #meq-0003-00334 "Akkomodatsiyani mashq qildirish apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для тренировки аккомодации"
  * ^designation[+].language = #en
  * ^designation[=].value = "Accommodation training devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00116

* #meq-0003-00335 "Koʻz ichi bosimini monitoring qilish tizimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Системы для мониторинга внутриглазного давления"
  * ^designation[+].language = #en
  * ^designation[=].value = "Intraocular pressure monitoring systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00116

* #meq-0003-00336 "Tungi sharoitda koʻrish funksiyasini tekshirish uskunalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Оборудование для тестирования зрительной функции при ночных условиях"
  * ^designation[+].language = #en
  * ^designation[=].value = "Night vision function testing equipment"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00116

// ===== meq-0001-00011 =====
* #meq-0001-00011 "Stomatologiya uchun asboblar va apparatlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Приборы и аппараты для стоматологии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Dental instruments and equipment"

* #meq-0002-00117 "Stomatologik qurilmalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Стоматологические установки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Dental units"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00011

* #meq-0003-00337 "Terapiya va jarrohlik uchun integratsiyalangan asbobli qurilmalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Установки с интегрированными инструментами для терапии и хирургии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Units with integrated instruments for therapy and surgery"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00117

* #meq-0003-00338 "Avtomatik dezinfeksiya funksiyali uskunalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Оборудование с функцией автоматической дезинфекции"
  * ^designation[+].language = #en
  * ^designation[=].value = "Equipment with automatic disinfection"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00117

* #meq-0002-00118 "Bormashinalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Бормашины"
  * ^designation[+].language = #en
  * ^designation[=].value = "Dental drills"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00011

* #meq-0003-00339 "Yuqori tezlikli turbinali qurilmalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Высокоскоростные турбинные установки"
  * ^designation[+].language = #en
  * ^designation[=].value = "High-speed turbine units"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00118

* #meq-0003-00340 "Tezligi sozlanadigan mikromotorli tizimlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Микромоторные системы с регулируемой скоростью"
  * ^designation[+].language = #en
  * ^designation[=].value = "Variable-speed micromotor systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00118

* #meq-0003-00341 "Choʻtkasiz motorli qurilmalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Устройства с бесщеточными моторами"
  * ^designation[+].language = #en
  * ^designation[=].value = "Brushless motor devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00118

* #meq-0002-00119 "Plombalarni yorugʻlik bilan qotirish qurilmalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Установки для светоотверждения пломб"
  * ^designation[+].language = #en
  * ^designation[=].value = "Dental curing lights"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00011

* #meq-0003-00342 "LED lampalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Светодиодные лампы"
  * ^designation[+].language = #en
  * ^designation[=].value = "LED lamps"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00119

* #meq-0003-00343 "Galogen qurilmalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Галогенные установки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Halogen units"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00119

* #meq-0003-00344 "Toʻlqin uzunligini sozlash funksiyali qurilmalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Устройства с функцией регулирования длины волны"
  * ^designation[+].language = #en
  * ^designation[=].value = "Devices with adjustable wavelength"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00119

* #meq-0002-00120 "Stomatologik kreslolar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Кресла стоматологические"
  * ^designation[+].language = #en
  * ^designation[=].value = "Dental chairs"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00011

* #meq-0003-00345 "Elektr yuritmali gidravlik kreslolar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Гидравлические кресла с электроприводом"
  * ^designation[+].language = #en
  * ^designation[=].value = "Electric hydraulic chairs"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00120

* #meq-0003-00346 "Holatni eslab qoluvchi kreslolar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Кресла с функцией памяти положений"
  * ^designation[+].language = #en
  * ^designation[=].value = "Chairs with position memory"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00120

* #meq-0003-00347 "Isitish va oʻrnatilgan yoritgichli modellar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Модели с подогревом и встроенным освещением"
  * ^designation[+].language = #en
  * ^designation[=].value = "Models with heating and built-in lighting"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00120

* #meq-0002-00121 "Fiziodispenserlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Физиодиспенсеры"
  * ^designation[+].language = #en
  * ^designation[=].value = "Physiodispensers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00011

* #meq-0003-00348 "Eritmalarni aniq dozalash apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для точного дозирования растворов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Precision solution dosing devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00121

* #meq-0003-00349 "Implantlar bilan ishlash qurilmalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Устройства для работы с имплантами"
  * ^designation[+].language = #en
  * ^designation[=].value = "Dental implant motors"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00121

* #meq-0002-00122 "Jarrohlik stomatologiyasi asboblari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Инструменты для хирургической стоматологии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Oral surgery instruments"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00011

* #meq-0003-00350 "Elektroxirurgik apparatlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Электрохирургические аппараты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Electrosurgical units"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00122

* #meq-0003-00351 "Yumshoq toʻqimalar uchun lazerlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лазеры для мягких тканей"
  * ^designation[+].language = #en
  * ^designation[=].value = "Soft tissue lasers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00122

* #meq-0003-00352 "Tish implantatsiyasi toʻplamlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Наборы для имплантации зубов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Dental implantation sets"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00122

* #meq-0002-00123 "Diagnostika apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для диагностики"
  * ^designation[+].language = #en
  * ^designation[=].value = "Diagnostic devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00011

* #meq-0003-00353 "Viziograflar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Визиографы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Dental radiovisiographs"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00123

* #meq-0003-00354 "Ortopantomograflar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ортопантомографы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Orthopantomographs"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00123

* #meq-0003-00355 "Konus-nurli kompyuter tomograflar (KNKT)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Конусно-лучевые компьютерные томографы (КЛКТ)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cone-beam computed tomography scanners (CBCT)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00123

* #meq-0002-00124 "Boshqa asboblar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Прочие приборы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00011

* #meq-0003-00356 "Aspiratsiya tizimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Системы аспирации"
  * ^designation[+].language = #en
  * ^designation[=].value = "Suction systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00124

* #meq-0003-00357 "Tishlarni pardozlash qurilmalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Установки для полировки зубов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Tooth polishing units"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00124

* #meq-0003-00358 "Mayda asboblarni sterilizatsiya qilish apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для стерилизации мелкого инструмента"
  * ^designation[+].language = #en
  * ^designation[=].value = "Small instrument sterilizers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00124

// ===== meq-0001-00012 =====
* #meq-0001-00012 "LOR amaliyoti uchun asboblar va apparatlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Приборы и аппараты для ЛОР-практики"
  * ^designation[+].language = #en
  * ^designation[=].value = "ENT instruments and equipment"

* #meq-0002-00125 "Eshitish apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Слуховые аппараты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hearing aids"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00012

* #meq-0003-00359 "Quloq orqasi va quloq ichi modellari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Заушные и внутриушные модели"
  * ^designation[+].language = #en
  * ^designation[=].value = "Behind-the-ear and in-the-ear models"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00125

* #meq-0003-00360 "Shovqinni bostiruvchi raqamli eshitish apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цифровые слуховые аппараты с шумоподавлением"
  * ^designation[+].language = #en
  * ^designation[=].value = "Digital hearing aids with noise reduction"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00125

* #meq-0003-00361 "Bluetooth ulanish funksiyali apparatlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты с функцией Bluetooth подключения"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hearing aids with Bluetooth connectivity"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00125

* #meq-0002-00126 "Audiometrlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аудиометры"
  * ^designation[+].language = #en
  * ^designation[=].value = "Audiometers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00012

* #meq-0003-00362 "Tonal audiometrlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Тональные аудиометры"
  * ^designation[+].language = #en
  * ^designation[=].value = "Pure-tone audiometers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00126

* #meq-0003-00363 "Nutq audiometrlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Речевые аудиометры"
  * ^designation[+].language = #en
  * ^designation[=].value = "Speech audiometers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00126

* #meq-0003-00364 "Otoakustik emissiyani qayd etish imkoniyatli audiometrlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аудиометры с возможностью регистрации отоакустической эмиссии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Audiometers with otoacoustic emission recording"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00126

* #meq-0002-00127 "Peshonaga taqiladigan reflektorlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Налобные рефлекторы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Head mirrors"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00012

* #meq-0003-00365 "Galogen yorugʻlik manbali reflektorlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Рефлекторы с галогенными источниками света"
  * ^designation[+].language = #en
  * ^designation[=].value = "Head mirrors with halogen light source"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00127

* #meq-0003-00366 "LED peshona reflektorlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Светодиодные налобные рефлекторы"
  * ^designation[+].language = #en
  * ^designation[=].value = "LED headlights"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00127

* #meq-0002-00128 "Koʻrik yoritgichlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Смотровые осветители"
  * ^designation[+].language = #en
  * ^designation[=].value = "Examination lights"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00012

* #meq-0003-00367 "Devorga oʻrnatiladigan va portativ modellar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Настенные и портативные модели"
  * ^designation[+].language = #en
  * ^designation[=].value = "Wall-mounted and portable models"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00128

* #meq-0003-00368 "Yorugʻlik intensivligi sozlanadigan yoritgichlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Осветители с регулируемой интенсивностью света"
  * ^designation[+].language = #en
  * ^designation[=].value = "Lights with adjustable intensity"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00128

* #meq-0002-00129 "Mexanik va elektr aspiratorlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аспираторы механические и электрические"
  * ^designation[+].language = #en
  * ^designation[=].value = "Manual and electric aspirators"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00012

* #meq-0003-00369 "Koʻchma aspiratorlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Переносные аспираторы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Portable aspirators"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00129

* #meq-0003-00370 "Statsionar yuqori quvvatli modellar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Стационарные высокомощные модели"
  * ^designation[+].language = #en
  * ^designation[=].value = "Stationary high-power models"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00129

* #meq-0003-00371 "Endoskopik muolajalar uchun aspiratorlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аспираторы для эндоскопических процедур"
  * ^designation[+].language = #en
  * ^designation[=].value = "Aspirators for endoscopic procedures"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00129

* #meq-0002-00130 "Tibbiy kamerton asboblari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Медицинские камертонные приборы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Medical tuning fork devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00012

* #meq-0003-00372 "Eshitishni tekshirish uchun kamertonlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Камертоны для тестирования слуха"
  * ^designation[+].language = #en
  * ^designation[=].value = "Tuning forks for hearing tests"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00130

* #meq-0003-00373 "Turli chastotali toʻplamlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Комплекты с различными частотами"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sets of various frequencies"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00130

* #meq-0002-00131 "LOR qurilmalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "ЛОР-установки"
  * ^designation[+].language = #en
  * ^designation[=].value = "ENT units"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00012

* #meq-0003-00374 "Kompleks diagnostika tizimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Комплексные диагностические системы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Integrated diagnostic systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00131

* #meq-0003-00375 "Integratsiyalangan endoskop va aspiratorli qurilmalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Установки с интегрированными эндоскопами и аспираторами"
  * ^designation[+].language = #en
  * ^designation[=].value = "Units with integrated endoscopes and aspirators"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00131

* #meq-0003-00376 "Mikroskopiya va asboblarni ishlov berish qurilmalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Установки для микроскопии и обработки инструментов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Units for microscopy and instrument processing"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00131

* #meq-0002-00132 "LOR kreslolari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "ЛОР-кресла"
  * ^designation[+].language = #en
  * ^designation[=].value = "ENT chairs"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00012

* #meq-0003-00377 "Gidravlik yoki elektr yuritmali kreslolar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Кресла с гидравлическим или электрическим приводом"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hydraulic or electric chairs"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00132

* #meq-0003-00378 "Egilishi va balandligi sozlanadigan modellar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Модели с регулировкой наклона и высоты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Tilt and height adjustable models"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00132

* #meq-0003-00379 "Bemorni anatomik qoʻllab-quvvatlovchi kreslolar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Кресла с анатомической поддержкой пациента"
  * ^designation[+].language = #en
  * ^designation[=].value = "Chairs with anatomical patient support"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00132

* #meq-0002-00133 "LOR asboblari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "ЛОР-инструменты"
  * ^designation[+].language = #en
  * ^designation[=].value = "ENT instruments"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00012

* #meq-0003-00380 "Begona jismlarni olib tashlash toʻplamlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Наборы для удаления инородных тел"
  * ^designation[+].language = #en
  * ^designation[=].value = "Foreign body removal sets"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00133

* #meq-0003-00381 "Burun boʻshliqlarida operatsiya qilish uchun jarrohlik asboblari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Хирургические инструменты для операций на носовых пазухах"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sinus surgery instruments"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00133

* #meq-0003-00382 "Nozik muolajalar uchun mikroasboblar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Микроинструменты для деликатных процедур"
  * ^designation[+].language = #en
  * ^designation[=].value = "Microinstruments for delicate procedures"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00133

* #meq-0002-00134 "Tovushni yaxshilash asboblari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Приборы для улучшения звука"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sound enhancement devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00012

* #meq-0003-00383 "Eshitish qisman yoʻqolgan bemorlar uchun tovush kuchaytirgichlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Усилители звука для пациентов с частичной потерей слуха"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sound amplifiers for patients with partial hearing loss"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00134

* #meq-0003-00384 "Ovozni kuchaytirish apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для усиления голоса"
  * ^designation[+].language = #en
  * ^designation[=].value = "Voice amplification devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00134

* #meq-0002-00135 "Boshqa asboblar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Прочие приборы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00012

* #meq-0003-00385 "LOR kasalliklarini diagnostika qilish va davolash uchun endoskopik tizimlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эндоскопические системы для диагностики и лечения ЛОР-заболеваний"
  * ^designation[+].language = #en
  * ^designation[=].value = "Endoscopic systems for ENT diagnosis and treatment"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00135

* #meq-0003-00386 "LOR jarrohligi uchun lazer apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лазерные аппараты для ЛОР-хирургии"
  * ^designation[+].language = #en
  * ^designation[=].value = "ENT surgical lasers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00135

* #meq-0003-00387 "Burunni chayish va yuvish qurilmalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Устройства для орошения и промывания носа"
  * ^designation[+].language = #en
  * ^designation[=].value = "Nasal irrigation and rinsing devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00135

// ===== meq-0001-00013 =====
* #meq-0001-00013 "Urologiya uchun asboblar va apparatlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Приборы и аппараты для урологии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Urology instruments and equipment"

* #meq-0002-00136 "Ultratovush tizimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ультразвуковые системы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ultrasound systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00013

* #meq-0003-00388 "Siydik-tanosil tizimini diagnostika qilish uchun ultratovush skanerlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ультразвуковые сканеры для диагностики мочеполовой системы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ultrasound scanners for genitourinary diagnostics"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00136

* #meq-0003-00389 "Kichik chanoq aʼzolarida qon oqimini baholash uchun doppler apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Доплеровские аппараты для оценки кровотока в органах малого таза"
  * ^designation[+].language = #en
  * ^designation[=].value = "Doppler devices for pelvic organ blood flow assessment"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00136

* #meq-0002-00137 "Urodinamik tizimlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Урологические динамические системы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Urodynamic systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00013

* #meq-0003-00390 "Urodinamik tekshiruv apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для уродинамического исследования"
  * ^designation[+].language = #en
  * ^designation[=].value = "Urodynamic testing devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00137

* #meq-0003-00391 "Sistometriya va profilometriya tizimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Системы для цистометрии и профилометрии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cystometry and profilometry systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00137

* #meq-0002-00138 "Urofloumetrlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Урофлоуриметры"
  * ^designation[+].language = #en
  * ^designation[=].value = "Uroflowmeters"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00013

* #meq-0003-00392 "Siydik ajralish tezligi va hajmini oʻlchash apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для измерения скорости и объёма мочеиспускания"
  * ^designation[+].language = #en
  * ^designation[=].value = "Urine flow rate and volume measurement devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00138

* #meq-0003-00393 "Portativ va statsionar urofloumetrlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Портативные и стационарные урофлоуриметры"
  * ^designation[+].language = #en
  * ^designation[=].value = "Portable and stationary uroflowmeters"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00138

* #meq-0002-00139 "Litotriptorlar va litoekstraktorlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Литотрипторы и литоэкстракторы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Lithotripters and stone extractors"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00013

* #meq-0003-00394 "Kontaktli va masofaviy litotriptorlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Контактные и дистанционные литотрипторы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Contact and extracorporeal lithotripters"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00139

* #meq-0002-00140 "Zarba-toʻlqinli apparatlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ударно-волновые аппараты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Shock wave devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00013

* #meq-0003-00395 "Prostata bezining surunkali kasalliklarini davolash apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для терапии хронических заболеваний предстательной железы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Devices for chronic prostate disease therapy"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00140

* #meq-0003-00396 "Kichik chanoq aʼzolarida qon aylanishini yaxshilash qurilmalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Устройства для улучшения кровообращения органов малого таза"
  * ^designation[+].language = #en
  * ^designation[=].value = "Pelvic circulation improvement devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00140

* #meq-0002-00141 "Urologik asboblar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Урологические инструменты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Urological instruments"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00013

* #meq-0003-00397 "Transuretral operatsiyalar uchun rezektoskoplar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Резектоскопы для трансуретральных операций"
  * ^designation[+].language = #en
  * ^designation[=].value = "Resectoscopes for transurethral surgery"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00141

* #meq-0003-00398 "Prostata biopsiyasi toʻplamlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Наборы для биопсии простаты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Prostate biopsy sets"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00141

* #meq-0003-00399 "Sistoskoplar va uretroskoplar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цистоскопы и уретроскопы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cystoscopes and urethroscopes"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00141

* #meq-0002-00142 "Termoterapiya apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для термотерапии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Thermotherapy devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00013

* #meq-0003-00400 "Prostata bezini mikrotoʻlqinli va radiochastotali terapiya qilish tizimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Системы микроволновой и радиочастотной терапии предстательной железы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Microwave and radiofrequency prostate therapy systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00142

* #meq-0002-00143 "Boshqa asboblar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Прочие приборы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00013

* #meq-0003-00401 "Vakuumli erektil terapiya apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для вакуумной эректильной терапии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Vacuum erection devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00143

* #meq-0003-00402 "Siydik chiqarish funksiyasini reabilitatsiya qilish qurilmalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Устройства для реабилитации функции мочеиспускания"
  * ^designation[+].language = #en
  * ^designation[=].value = "Urinary function rehabilitation devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00143

// ===== meq-0001-00014 =====
* #meq-0001-00014 "Akusherlik va ginekologiya uchun asboblar va apparatlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Приборы и аппараты для акушерства и гинекологии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Obstetrics and gynecology instruments and equipment"

* #meq-0002-00144 "Ginekologik kreslolar va stollar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Гинекологические кресла и столы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Gynecological chairs and tables"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00014

* #meq-0003-00403 "Holati sozlanadigan elektr kreslolar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Электрические кресла с регулируемым положением"
  * ^designation[+].language = #en
  * ^designation[=].value = "Electric chairs with adjustable position"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00144

* #meq-0003-00404 "Akusherlik muolajalari uchun gidravlik kreslolar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Гидравлические кресла для акушерских манипуляций"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hydraulic chairs for obstetric procedures"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00144

* #meq-0003-00405 "Koʻp funksiyali akusherlik stollari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Многофункциональные акушерские столы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Multifunctional obstetric tables"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00144

* #meq-0002-00145 "Vakuum-ekstraksiya va kyuretaj asboblari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Приборы для вакуумэкстракции и кюретажа"
  * ^designation[+].language = #en
  * ^designation[=].value = "Vacuum extraction and curettage devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00014

* #meq-0003-00406 "Vakuum aspiratsiya apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для вакуумной аспирации"
  * ^designation[+].language = #en
  * ^designation[=].value = "Vacuum aspiration devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00145

* #meq-0003-00407 "Elektron kyuretaj tizimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Электронные кюретажные системы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Electronic curettage systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00145

* #meq-0003-00408 "Bachadon ichidagilarni chiqarish uchun mexanik qurilmalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Механические устройства для удаления содержимого матки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Mechanical uterine evacuation devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00145

* #meq-0002-00146 "Akusherlik va ginekologiya asboblari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Инструменты для акушерства и гинекологии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Obstetric and gynecological instruments"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00014

* #meq-0003-00409 "Diagnostik muolajalar (kolposkopiya, biopsiya) uchun toʻplamlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Наборы для проведения диагностических процедур (кольпоскопия, биопсия)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Diagnostic procedure sets (colposcopy, biopsy)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00146

* #meq-0003-00410 "Turli oʻlchamdagi spekulumlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Спекулы различных размеров"
  * ^designation[+].language = #en
  * ^designation[=].value = "Specula of various sizes"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00146

* #meq-0003-00411 "Bachadon boʻshligʻini tekshirish uchun gisteroskoplar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Гистероскопы для обследования полости матки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hysteroscopes for uterine cavity examination"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00146

* #meq-0003-00412 "Ginekologik operatsiyalar uchun laparoskopik uskunalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лапароскопическое оборудование для гинекологических операций"
  * ^designation[+].language = #en
  * ^designation[=].value = "Laparoscopic equipment for gynecological surgery"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00146

* #meq-0002-00147 "Homiladorlik va tugʻruqni monitoring qilish apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для мониторинга беременности и родов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Pregnancy and labor monitoring devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00014

* #meq-0003-00413 "Kardiotokograflar (KTG)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Кардиотокографы (КТГ)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cardiotocographs (CTG)"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00147

* #meq-0003-00414 "Homilani monitoring qilish uchun ultratovush doppler apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ультразвуковые допплеровские аппараты для мониторинга плода"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ultrasound Doppler fetal monitors"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00147

* #meq-0003-00415 "Tugʻayotgan ayol holatini kuzatish monitorlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Мониторы для наблюдения за состоянием роженицы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Maternal monitors during labor"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00147

* #meq-0002-00148 "Davolash va diagnostika apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для лечения и диагностики"
  * ^designation[+].language = #en
  * ^designation[=].value = "Treatment and diagnostic devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00014

* #meq-0003-00416 "Bachadon boʻyni patologiyalarini davolash uchun lazer qurilmalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лазерные установки для лечения патологий шейки матки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Laser systems for cervical pathology treatment"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00148

* #meq-0003-00417 "Ogʻriqsiz muolajalar uchun radiotoʻlqinli apparatlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Радиоволновые аппараты для безболезненных процедур"
  * ^designation[+].language = #en
  * ^designation[=].value = "Radiowave devices for painless procedures"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00148

* #meq-0003-00418 "Elektroxirurgik generatorlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Электрохирургические генераторы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Electrosurgical generators"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00148

* #meq-0002-00149 "Boshqa asboblar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Прочие приборы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00014

* #meq-0003-00419 "Chanoq tubini reabilitatsiya qilish qurilmalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Устройства для реабилитации тазового дна"
  * ^designation[+].language = #en
  * ^designation[=].value = "Pelvic floor rehabilitation devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00149

* #meq-0003-00420 "Ginekologik muolajalar uchun issiqlik applikatorlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Тепловые аппликаторы для гинекологических процедур"
  * ^designation[+].language = #en
  * ^designation[=].value = "Heat applicators for gynecological procedures"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00149

// ===== meq-0001-00015 =====
* #meq-0001-00015 "Jarrohlik uchun asboblar va apparatlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Приборы и аппараты для хирургии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Surgical instruments and equipment"

* #meq-0002-00150 "Operatsiya mikroskoplari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Микроскопы операционные"
  * ^designation[+].language = #en
  * ^designation[=].value = "Surgical microscopes"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00015

* #meq-0003-00421 "Neyroxirurgiya mikroskoplari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Микроскопы для нейрохирургии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Neurosurgical microscopes"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00150

* #meq-0003-00422 "Oftalmologik jarrohlik mikroskoplari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Микроскопы для офтальмологической хирургии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ophthalmic surgical microscopes"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00150

* #meq-0003-00423 "Universal operatsiya mikroskoplari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Универсальные операционные микроскопы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Universal surgical microscopes"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00150

* #meq-0002-00151 "Operatsiya xonalari uchun mebel"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Мебель для операционных"
  * ^designation[+].language = #en
  * ^designation[=].value = "Operating room furniture"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00015

* #meq-0003-00424 "Gidravlik va elektr yuritmali operatsiya stollari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Операционные столы с гидравлическим и электрическим приводом"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hydraulic and electric operating tables"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00151

* #meq-0003-00425 "Laparoskopik va kardioxirurgik operatsiyalar uchun stollar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Столы для лапароскопических и кардиохирургических операций"
  * ^designation[+].language = #en
  * ^designation[=].value = "Tables for laparoscopic and cardiac surgery"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00151

* #meq-0003-00426 "Operatsiya stullari va oyoq tagliklari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Операционные стулья и подставки для ног"
  * ^designation[+].language = #en
  * ^designation[=].value = "Surgical stools and footrests"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00151

* #meq-0002-00152 "Elektrokoagulyatorlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Электрокоагуляторы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Electrocoagulators"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00015

* #meq-0003-00427 "Bipolyar va monopolyar koagulyatsiya apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для биполярной и монополярной коагуляции"
  * ^designation[+].language = #en
  * ^designation[=].value = "Bipolar and monopolar coagulation devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00152

* #meq-0003-00428 "Quvvatni sozlash funksiyali qurilmalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Устройства с функцией регулировки мощности"
  * ^designation[+].language = #en
  * ^designation[=].value = "Devices with power adjustment"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00152

* #meq-0003-00429 "Shoshilinch operatsiyalar uchun mobil modellar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Мобильные модели для экстренных операций"
  * ^designation[+].language = #en
  * ^designation[=].value = "Mobile models for emergency surgery"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00152

* #meq-0002-00153 "Elektroxirurgik generatorlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Электрохирургические генераторы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Electrosurgical generators"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00015

* #meq-0003-00430 "Minimal invaziv muolajalar uchun yuqori chastotali generatorlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Высокочастотные генераторы для минимально инвазивных процедур"
  * ^designation[+].language = #en
  * ^designation[=].value = "High-frequency generators for minimally invasive procedures"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00153

* #meq-0003-00431 "Lazer texnologiyalari integratsiyalangan apparatlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты с интеграцией лазерных технологий"
  * ^designation[+].language = #en
  * ^designation[=].value = "Devices with integrated laser technology"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00153

* #meq-0002-00154 "Jarrohlik uchun lazer qurilmalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лазерные установки для хирургии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Surgical laser systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00015

* #meq-0003-00432 "Yumshoq toʻqimalar bilan ishlash uchun CO2 lazerlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лазеры CO2 для работы с мягкими тканями"
  * ^designation[+].language = #en
  * ^designation[=].value = "CO2 lasers for soft tissue"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00154

* #meq-0003-00433 "Qon tomir jarrohligi uchun diod lazerlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Диодные лазеры для сосудистой хирургии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Diode lasers for vascular surgery"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00154

* #meq-0003-00434 "Oʻsma va yangi hosilalarni olib tashlash uchun lazerlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лазеры для удаления опухолей и новообразований"
  * ^designation[+].language = #en
  * ^designation[=].value = "Lasers for tumor and neoplasm removal"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00154

* #meq-0002-00155 "Kontaktli va kontaktsiz litotriptorlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Литотрипторы контактные и бесконтактные"
  * ^designation[+].language = #en
  * ^designation[=].value = "Contact and non-contact lithotripters"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00015

* #meq-0003-00435 "Buyrak va siydik yoʻllaridagi toshlarni maydalash apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для дробления камней в почках и мочевыводящих путях"
  * ^designation[+].language = #en
  * ^designation[=].value = "Kidney and urinary tract stone fragmentation devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00155

* #meq-0003-00436 "Ultratovush va lazer texnologiyali qurilmalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Устройства с ультразвуковой и лазерной технологией"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ultrasonic and laser lithotripsy devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00155

* #meq-0002-00156 "Soʻrgʻichlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отсасыватели"
  * ^designation[+].language = #en
  * ^designation[=].value = "Suction devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00015

* #meq-0003-00437 "Suyuqliklarni chiqarish uchun statsionar va mobil soʻrgʻichlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Стационарные и мобильные отсасыватели для удаления жидкостей"
  * ^designation[+].language = #en
  * ^designation[=].value = "Stationary and mobile fluid suction devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00156

* #meq-0003-00438 "Murakkab operatsiyalar uchun yuqori quvvatli tizimlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Высокомощные системы для сложных операций"
  * ^designation[+].language = #en
  * ^designation[=].value = "High-power systems for complex surgery"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00156

* #meq-0002-00157 "Adenotomlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аденотомы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Adenotomes"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00015

* #meq-0003-00439 "Adenoidlarni olib tashlash asboblari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Инструменты для удаления аденоидов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Adenoid removal instruments"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00157

* #meq-0003-00440 "Elektr va mexanik modellar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Электрические и механические модели"
  * ^designation[+].language = #en
  * ^designation[=].value = "Electric and mechanical models"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00157

* #meq-0002-00158 "Aspiratorlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аспираторы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Aspirators"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00015

* #meq-0003-00441 "Operatsiya vaqtida qon va suyuqliklarni chiqarish aspiratorlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аспираторы для удаления крови и жидкостей во время операций"
  * ^designation[+].language = #en
  * ^designation[=].value = "Surgical blood and fluid aspirators"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00158

* #meq-0003-00442 "Bosimni avtomatik nazorat qilish funksiyali qurilmalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Устройства с функцией автоматического контроля давления"
  * ^designation[+].language = #en
  * ^designation[=].value = "Devices with automatic pressure control"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00158

* #meq-0002-00159 "Boshqa asboblar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Прочие приборы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00015

* #meq-0003-00443 "Robotlashtirilgan jarrohlik assistentlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Роботизированные хирургические ассистенты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Robotic surgical assistants"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00159

* #meq-0003-00444 "Minimal invaziv jarrohlik asboblari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Инструменты для минимально инвазивной хирургии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Minimally invasive surgical instruments"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00159

* #meq-0003-00445 "Jarrohlik asboblarini sterilizatsiya qilish apparatlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Аппараты для стерилизации хирургических инструментов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Surgical instrument sterilizers"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00159

* #meq-0003-00446 "Ossillyatsion arralar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Осциллирующие пилы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Oscillating saws"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00159

// ===== meq-0001-00016 =====
* #meq-0001-00016 "Yadro tibbiyoti uskunalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Оборудование для ядерной медицины"
  * ^designation[+].language = #en
  * ^designation[=].value = "Nuclear medicine equipment"

* #meq-0002-00160 "Gamma-kameralar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Гамма-камеры"
  * ^designation[+].language = #en
  * ^designation[=].value = "Gamma cameras"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00016

* #meq-0003-00447 "Statik va dinamik ssintigrafiya tizimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Системы для статической и динамической сцинтиграфии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Static and dynamic scintigraphy systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00160

* #meq-0003-00448 "Onkologik tekshiruvlar uchun koʻp funksiyali gamma-kameralar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Многофункциональные гамма-камеры для онкологических исследований"
  * ^designation[+].language = #en
  * ^designation[=].value = "Multifunctional gamma cameras for oncology"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00160

* #meq-0002-00161 "Ssintillyatsion tizimlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Сцинтилляционные системы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Scintillation systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00016

* #meq-0003-00449 "Radioizotop diagnostikasi uchun detektorlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Детекторы для радиоизотопной диагностики"
  * ^designation[+].language = #en
  * ^designation[=].value = "Radioisotope diagnostic detectors"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00161

* #meq-0003-00450 "Raqamli maʼlumotlarni qayta ishlash tizimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Системы с цифровой обработкой данных"
  * ^designation[+].language = #en
  * ^designation[=].value = "Systems with digital data processing"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00161

* #meq-0002-00162 "Chiziqli tezlatgichlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Линейные ускорители"
  * ^designation[+].language = #en
  * ^designation[=].value = "Linear accelerators"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00016

* #meq-0003-00451 "Nuqtali radioterapiya qurilmalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Устройства для точечной радиотерапии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Stereotactic radiotherapy devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00162

* #meq-0003-00452 "Onkologik kasalliklarni davolash uchun yuqori energiyali tezlatgichlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Высокоэнергетические ускорители для лечения онкологических заболеваний"
  * ^designation[+].language = #en
  * ^designation[=].value = "High-energy accelerators for cancer treatment"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00162

* #meq-0002-00163 "Radiofarmatsevtik uskunalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Радиофармоборудование"
  * ^designation[+].language = #en
  * ^designation[=].value = "Radiopharmaceutical equipment"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00016

* #meq-0003-00453 "Radiofarmatsevtik preparatlarni ishlab chiqarish va nazorat qilish tizimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Системы для производства и контроля радиофармацевтических препаратов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Radiopharmaceutical production and quality control systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00163

* #meq-0003-00454 "Radiofarmpreparatlar uchun avtomatik dozimetrlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Автоматические дозиметры для радиофармпрепаратов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Automatic radiopharmaceutical dose calibrators"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00163

* #meq-0002-00164 "Boshqa asboblar va tizimlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Прочие приборы и системы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other devices and systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00016

* #meq-0003-00455 "Toʻqima ichi terapiyasi uchun robotlashtirilgan tizimlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Роботизированные системы для внутритканевой терапии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Robotic interstitial therapy systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00164

* #meq-0003-00456 "Nurlanish dozalarini monitoring qilish qurilmalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Устройства для мониторинга доз облучения"
  * ^designation[+].language = #en
  * ^designation[=].value = "Radiation dose monitoring devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00164

// ===== meq-0001-00017 =====
* #meq-0001-00017 "Robotlashtirilgan jarrohlik uskunalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Оборудование для роботизированной хирургии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Robotic surgery equipment"

* #meq-0002-00165 "Jarrohlik robot tizimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Хирургические роботизированные системы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Surgical robotic systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00017

* #meq-0003-00457 "Laparoskopik operatsiyalar uchun robotlashtirilgan komplekslar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Роботизированные комплексы для лапароскопических операций"
  * ^designation[+].language = #en
  * ^designation[=].value = "Robotic systems for laparoscopic surgery"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00165

* #meq-0003-00458 "Murakkab koʻp tarmoqli operatsiyalar uchun modulli tizimlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Модульные системы для сложных многопрофильных операций"
  * ^designation[+].language = #en
  * ^designation[=].value = "Modular systems for complex multidisciplinary surgery"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00165

* #meq-0002-00166 "Manipulyatorlar va asboblar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Манипуляторы и инструменты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Manipulators and instruments"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00017

* #meq-0003-00459 "Minimal invaziv jarrohlik uchun yuqori aniqlikdagi manipulyatorlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Манипуляторы с высокой степенью точности для минимально инвазивной хирургии"
  * ^designation[+].language = #en
  * ^designation[=].value = "High-precision manipulators for minimally invasive surgery"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00166

* #meq-0003-00460 "Sensorli teskari aloqali asboblar toʻplamlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Наборы инструментов с сенсорной обратной связью"
  * ^designation[+].language = #en
  * ^designation[=].value = "Instrument sets with haptic feedback"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00166

* #meq-0002-00167 "Robotlashtirilgan jarrohlik uchun vizualizatsiya tizimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Системы визуализации для роботизированной хирургии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Visualization systems for robotic surgery"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00017

* #meq-0003-00461 "3D vizualizatsiya platformalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "3D-визуализационные платформы"
  * ^designation[+].language = #en
  * ^designation[=].value = "3D visualization platforms"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00167

* #meq-0003-00462 "Kengaytirilgan reallikni qoʻllab-quvvatlovchi tizimlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Системы с поддержкой дополненной реальности"
  * ^designation[+].language = #en
  * ^designation[=].value = "Augmented reality systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00167

* #meq-0003-00463 "Assistentli operatsiyalar uchun yuqori aniqlikdagi videoplatformalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Видеоплатформы с высоким разрешением для ассистируемых операций"
  * ^designation[+].language = #en
  * ^designation[=].value = "High-definition video platforms for assisted surgery"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00167

* #meq-0002-00168 "Navigatsiya tizimlari va dasturiy taʼminot"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Навигационные системы и программное обеспечение"
  * ^designation[+].language = #en
  * ^designation[=].value = "Navigation systems and software"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00017

* #meq-0003-00464 "Operatsiyadan oldingi rejalashtirish dasturiy taʼminoti"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Программное обеспечение для предоперационного планирования"
  * ^designation[+].language = #en
  * ^designation[=].value = "Preoperative planning software"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00168

* #meq-0003-00465 "Asboblarni monitoring qilish uchun navigatsiya tizimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Навигационные системы для мониторинга инструментов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Instrument tracking navigation systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00168

* #meq-0002-00169 "Boshqa komponentlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Прочие компоненты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other components"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00017

* #meq-0003-00466 "Jarrohlikdan keyingi reabilitatsiya uchun robotlashtirilgan tizimlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Роботизированные системы для реабилитации после хирургии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Robotic post-surgical rehabilitation systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00169

* #meq-0003-00467 "Robotlashtirilgan muolajalarni oʻqitish va simulyatsiya qilish qurilmalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Устройства для обучения и симуляции роботизированных процедур"
  * ^designation[+].language = #en
  * ^designation[=].value = "Robotic procedure training and simulation devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00169

// ===== meq-0001-00018 =====
* #meq-0001-00018 "Telemeditsina uskunalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Оборудование для телемедицины"
  * ^designation[+].language = #en
  * ^designation[=].value = "Telemedicine equipment"

* #meq-0002-00170 "Videokonferensiya tizimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Видеоконференц-системы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Video conferencing systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00018

* #meq-0003-00468 "Video va audio qoʻllab-quvvatlanadigan konsultatsiya platformalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Платформы для проведения консультаций с поддержкой видео и аудио"
  * ^designation[+].language = #en
  * ^designation[=].value = "Video and audio consultation platforms"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00170

* #meq-0003-00469 "Seanslarni yozib olish va arxivlash funksiyali tizimlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Системы с функцией записи и архивирования сеансов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Systems with session recording and archiving"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00170

* #meq-0003-00470 "Koʻp nuqtali ulanishlar uchun komplekslar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Комплексы для многоточечных соединений"
  * ^designation[+].language = #en
  * ^designation[=].value = "Multipoint connection systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00170

* #meq-0002-00171 "Masofaviy kirish imkoniyatli diagnostika qurilmalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Диагностические устройства с удалённым доступом"
  * ^designation[+].language = #en
  * ^designation[=].value = "Remote-access diagnostic devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00018

* #meq-0003-00471 "Yurak va oʻpkani masofadan eshitish uchun raqamli stetoskoplar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цифровые стетоскопы для дистанционного прослушивания сердца и лёгких"
  * ^designation[+].language = #en
  * ^designation[=].value = "Digital stethoscopes for remote heart and lung auscultation"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00171

* #meq-0003-00472 "Maʼlumot uzatish funksiyali arterial bosim va EKG oʻlchash qurilmalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Устройства для измерения артериального давления и ЭКГ с передачей данных"
  * ^designation[+].language = #en
  * ^designation[=].value = "Blood pressure and ECG devices with data transmission"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00171

* #meq-0003-00473 "Masofaviy tahlil imkoniyatli portativ ultratovush skanerlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Портативные ультразвуковые сканеры с возможностью удалённого анализа"
  * ^designation[+].language = #en
  * ^designation[=].value = "Portable ultrasound scanners with remote analysis"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00171

* #meq-0003-00474 "Simsiz maʼlumot uzatuvchi oksimetrlar va glyukometrlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Оксиметры и глюкометры с беспроводной передачей данных"
  * ^designation[+].language = #en
  * ^designation[=].value = "Oximeters and glucometers with wireless data transmission"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00171

* #meq-0002-00172 "Telemeditsina uchun dasturiy platformalar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Программные платформы для телемедицины"
  * ^designation[+].language = #en
  * ^designation[=].value = "Telemedicine software platforms"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00018

* #meq-0003-00475 "Elektron tibbiy karta (ETK) bilan integratsiya yechimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Решения для интеграции с электронной медицинской картой (ЭМК)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Electronic health record (EHR) integration solutions"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00172

* #meq-0003-00476 "Bemorlar holatini real vaqtda monitoring qilish platformalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Платформы для мониторинга состояния пациентов в режиме реального времени"
  * ^designation[+].language = #en
  * ^designation[=].value = "Real-time patient monitoring platforms"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00172

* #meq-0003-00477 "Konsultatsiyaga yozilish va xizmat koʻrsatish jarayonlarini avtomatlashtirish ilovalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Приложения для записи на консультации и автоматизации процессов обслуживания"
  * ^designation[+].language = #en
  * ^designation[=].value = "Appointment booking and service automation applications"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00172

* #meq-0002-00173 "Telemetriya va monitoring uskunalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Оборудование для телеметрии и мониторинга"
  * ^designation[+].language = #en
  * ^designation[=].value = "Telemetry and monitoring equipment"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00018

* #meq-0003-00478 "Hayotiy muhim koʻrsatkichlarni monitoring qilish qurilmalari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Устройства для мониторинга жизненно важных показателей"
  * ^designation[+].language = #en
  * ^designation[=].value = "Vital signs monitoring devices"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00173

* #meq-0003-00479 "Statsionarda va uy sharoitida bemorlar holatini masofadan nazorat qilish tizimlari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Системы удалённого контроля за состоянием пациентов в стационарах и домашних условиях"
  * ^designation[+].language = #en
  * ^designation[=].value = "Remote patient monitoring systems for hospital and home"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00173

* #meq-0002-00174 "Boshqa qurilmalar va tizimlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Прочие устройства и системы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other devices and systems"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0001-00018

* #meq-0003-00480 "Mobil telemeditsina komplekslari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Мобильные телемедицинские комплексы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Mobile telemedicine units"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00174

* #meq-0003-00481 "Tibbiy oʻqitish va simulyatsiya uchun interaktiv panellar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Интерактивные панели для медицинского обучения и симуляции"
  * ^designation[+].language = #en
  * ^designation[=].value = "Interactive panels for medical training and simulation"
  * ^property[0].code = #parent
  * ^property[=].valueCode = #meq-0002-00174

