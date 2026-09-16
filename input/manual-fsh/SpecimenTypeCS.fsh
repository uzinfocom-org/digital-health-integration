CodeSystem: SpecimenTypeCS
Id: specimen-type-cs
Title: "DHIS Specimen Type CodeSystem"
Description: "Local code system of specimen types collected for tuberculosis testing (sputum, bronchial fluid, pleural fluid, CSF, and others) used in the DHIS information system, with Russian and English designations. The DHIS Specimen Type to SNOMED CT ConceptMap records the SNOMED CT concept for every code; in resources use the SNOMED CT code directly wherever an exact match exists (see the DHIS Specimen Type ValueSet), keeping a local code only where no exact SNOMED CT match exists."

* insert OriginalCodeSystemDraft(specimen-type-cs)

* #Spec001-0001 "O'pka"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Легочный"
  * ^designation[+].language = #en
  * ^designation[=].value = "Pulmonary"

* #Spec001-0002 "Makrota"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Макрота"
  * ^designation[+].language = #en
  * ^designation[=].value = "Macrota"

* #Spec001-0003 "Induktsiyalangan makrota"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Индуцированная макрота"
  * ^designation[+].language = #en
  * ^designation[=].value = "Induced macrota"

* #Spec001-0004 "Bronxial sekretlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Бронхиальный секрет"
  * ^designation[+].language = #en
  * ^designation[=].value = "Bronchial secretions"

* #Spec001-0005 "Bronxoalveolyar lavaj"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Бронхоальвеолярный лаваж"
  * ^designation[+].language = #en
  * ^designation[=].value = "Bronchoalveolar lavage"

* #Spec001-0006 "Ekstrapulmoner"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Внелегочный"
  * ^designation[+].language = #en
  * ^designation[=].value = "Extrapulmonary"

* #Spec001-0007 "Plevra suyuqligi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Плевральная жидкость"
  * ^designation[+].language = #en
  * ^designation[=].value = "Pleural fluid"

* #Spec001-0008 "Miya orqa miya suyuqligi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ликвор"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cerebrospinal fluid"

* #Spec001-0009 "Yiring"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Гной"
  * ^designation[+].language = #en
  * ^designation[=].value = "Pus"

* #Spec001-0010 "Jarrohlik namunasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Операционный материал"
  * ^designation[+].language = #en
  * ^designation[=].value = "Surgical specimen"

* #Spec001-0011 "Qon"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Кровь"
  * ^designation[+].language = #en
  * ^designation[=].value = "Blood"

* #Spec001-0012 "Askista suyuqligi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Асцистическая жидкость"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ascystic fluid"

* #Spec001-0013 "Punktura"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Пунктат"
  * ^designation[+].language = #en
  * ^designation[=].value = "Puncture"

* #Spec001-0014 "Siydik"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Моча"
  * ^designation[+].language = #en
  * ^designation[=].value = "Urine"

* #Spec001-0015 "Najas"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Кал"
  * ^designation[+].language = #en
  * ^designation[=].value = "Feces"

* #Spec001-0016 "Qin oqindi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Выделение из влагилще"
  * ^designation[+].language = #en
  * ^designation[=].value = "Vacuum secretion"

* #Spec001-0017 "Sinoviy suyuqlik"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Синовиальная жидкость"
  * ^designation[+].language = #en
  * ^designation[=].value = "Synovial fluid"

* #Spec001-0018 "Ekssudat"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Экссудат"
  * ^designation[+].language = #en
  * ^designation[=].value = "Exudate"

* #Spec001-0019 "Trassudat"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Трассудат"
  * ^designation[+].language = #en
  * ^designation[=].value = "Trassudate"

* #Spec001-0020 "Sperma"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Сперма"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sperm"

* #Spec001-0021 "Ajratish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Выделение"
  * ^designation[+].language = #en
  * ^designation[=].value = "Excretion"

* #Spec001-0022 "Kultura"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Култура"
  * ^designation[+].language = #en
  * ^designation[=].value = "Culture"

* #Spec001-0023 "Qattiq muhit LY"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Твердая среда ЛЙ"
  * ^designation[+].language = #en
  * ^designation[=].value = "Solid medium LY"

* #Spec001-0024 "Suyuq muhit MGIT"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Жидкая среда MGIT"
  * ^designation[+].language = #en
  * ^designation[=].value = "Liquid medium MGIT"

* #Spec001-0025 "Birlamchi namuna"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Первичный образец"
  * ^designation[+].language = #en
  * ^designation[=].value = "Primary sample"

* #Spec001-0026 "Chokin"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Осадок"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sediment"

* #Spec001-0027 "Makrota namunasi cho'kindisi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Осадок образца макроты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Macrota sample sediment"

* #Spec001-0028 "Kultura izolati"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Изолят культуры"
  * ^designation[+].language = #en
  * ^designation[=].value = "Culture isolate"
