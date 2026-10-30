CodeSystem: DHISObservationCodeableConceptCS
Id: dhis-observation-codeable-concept-cs
Title: "DHIS Observation Result CodeSystem"
Description: "Local code system of coded tuberculosis test results (smear/culture grades, processing states, identified species and drug-susceptibility outcomes) used as Observation.valueCodeableConcept in the DHIS information system, with Russian and English designations. The DHIS Observation Result to SNOMED CT ConceptMap records the SNOMED CT concept for the species and standard result qualifiers; in resources use the SNOMED CT code directly wherever an exact match exists (see the DHIS Observation Result ValueSet), keeping a local code only where no exact standard match exists."

* insert OriginalCodeSystemDraft(dhis-observation-codeable-concept-cs)

* #tub003-0001 "x – Natija yaroqsiz"
  * ^designation[0].language = #ru
  * ^designation[=].value = "х-Результат недействительный"
  * ^designation[+].language = #en
  * ^designation[=].value = "x – Invalid result"

* #tub003-0002 "Preparat tekshirilmagan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Препарат не тестировался"
  * ^designation[+].language = #en
  * ^designation[=].value = "Drug not tested"

* #tub003-0003 "Izlar aniqlangan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Следы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Trace detected"

* #tub003-0004 "Test xatosi (takrorlash)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ошибка тест (повторить)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Test error (repeat)"

* #tub003-0005 "1–9 KUB / 40 ko‘rish maydoni"
  * ^designation[0].language = #ru
  * ^designation[=].value = "1-9 КУБ /40 Полей зрения"
  * ^designation[+].language = #en
  * ^designation[=].value = "Detect1–9 AFB / 40 fieldsed"

* #tub003-0006 "1+ / 40 ko‘rish maydoni"
  * ^designation[0].language = #ru
  * ^designation[=].value = "1+/40 Полей зрения"
  * ^designation[+].language = #en
  * ^designation[=].value = "1+ / 40 fields"

* #tub003-0007 "2+ / 40 ko‘rish maydoni"
  * ^designation[0].language = #ru
  * ^designation[=].value = "2+/40 Полей зрения"
  * ^designation[+].language = #en
  * ^designation[=].value = "2+ / 40 fields"

* #tub003-0008 "3+ / 40 ko‘rish maydoni"
  * ^designation[0].language = #ru
  * ^designation[=].value = "3+/40 Полей зрения"
  * ^designation[+].language = #en
  * ^designation[=].value = "3+ / 40 fields"

* #tub003-0009 "0 / 40 ko‘rish maydoni"
  * ^designation[0].language = #ru
  * ^designation[=].value = "0/40 Полей зрения"
  * ^designation[+].language = #en
  * ^designation[=].value = "0 / 40 fields"

* #tub003-0010 "NALC usuli – 2% NaOH"
  * ^designation[0].language = #ru
  * ^designation[=].value = "1-9 КУБ /100 Полей зрения"
  * ^designation[+].language = #en
  * ^designation[=].value = "1–9 AFB / 100 fields"

* #tub003-0011 "1+ / 100 ko‘rish maydoni"
  * ^designation[0].language = #ru
  * ^designation[=].value = "1+/100 Полей зрения"
  * ^designation[+].language = #en
  * ^designation[=].value = "1+ / 100 fields"

* #tub003-0012 "2+ / 100 ko‘rish maydoni"
  * ^designation[0].language = #ru
  * ^designation[=].value = "2+/100 Полей зрения"
  * ^designation[+].language = #en
  * ^designation[=].value = "2+ / 100 fields"

* #tub003-0013 "3+ / 100 ko‘rish maydoni"
  * ^designation[0].language = #ru
  * ^designation[=].value = "3+/100 Полей зрения"
  * ^designation[+].language = #en
  * ^designation[=].value = "3+ / 100 fields"

* #tub003-0014 "0 / 100 ko‘rish maydoni"
  * ^designation[0].language = #ru
  * ^designation[=].value = "0/100 Полей зрения"
  * ^designation[+].language = #en
  * ^designation[=].value = "0 / 100 fields"

* #tub003-0015 "1–20 KUB"
  * ^designation[0].language = #ru
  * ^designation[=].value = "1-20 КУБ"
  * ^designation[+].language = #en
  * ^designation[=].value = "1–20 CFU"

* #tub003-0016 "1+ / 20–99 KUB"
  * ^designation[0].language = #ru
  * ^designation[=].value = "1+ /20-99 КУБ"
  * ^designation[+].language = #en
  * ^designation[=].value = "1+ / 20–99 CFU"

* #tub003-0017 "2+ / 100–500 KUB"
  * ^designation[0].language = #ru
  * ^designation[=].value = "2+ /100-500 КУБ"
  * ^designation[+].language = #en
  * ^designation[=].value = "2+ / 100–500 CFU"

* #tub003-0018 "3+ / Hisoblab bo‘lmaydigan KUB"
  * ^designation[0].language = #ru
  * ^designation[=].value = "3+ /Несчетное кол-во КУБ"
  * ^designation[+].language = #en
  * ^designation[=].value = "3+ / Too numerous to count (TNTC)"

* #tub003-0019 "0 – KUB aniqlanmagan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "0 - КУБ не определен"
  * ^designation[+].language = #en
  * ^designation[=].value = "0 – CFU not detected"

* #tub003-0020 "M. tuberculosis kompleksi (MTBC)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "M.Tuberculesis комплекс (MTBC)"
  * ^designation[+].language = #en
  * ^designation[=].value = "M. tuberculosis complex (MTBC)"

* #tub003-0021 "Silga oid bo‘lmagan mikobakteriyalar (NTM)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Нетуберкулезные микобактерии (NTM)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Non-tuberculous mycobacteria (NTM)"

* #tub003-0022 "Aniqlanmagan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Не определен"
  * ^designation[+].language = #en
  * ^designation[=].value = "Not identified"

* #tub003-0023 "M.avium ssp."
  * ^designation[0].language = #ru
  * ^designation[=].value = "M.avium ssp."
  * ^designation[+].language = #en
  * ^designation[=].value = "M.avium ssp."

* #tub003-0024 "M. chelonae"
  * ^designation[0].language = #ru
  * ^designation[=].value = "M. chelonae"
  * ^designation[+].language = #en
  * ^designation[=].value = "M. chelonae"

* #tub003-0025 "M. abscessus"
  * ^designation[0].language = #ru
  * ^designation[=].value = "M. abscessus"
  * ^designation[+].language = #en
  * ^designation[=].value = "M. abscessus"

* #tub003-0026 "M. fortuitum 1"
  * ^designation[0].language = #ru
  * ^designation[=].value = "M. fortuitum 1"
  * ^designation[+].language = #en
  * ^designation[=].value = "M. fortuitum 1"

* #tub003-0027 "M. fortuitum 2"
  * ^designation[0].language = #ru
  * ^designation[=].value = "M. fortuitum 2"
  * ^designation[+].language = #en
  * ^designation[=].value = "M. fortuitum 2"

* #tub003-0028 "M. gordonae"
  * ^designation[0].language = #ru
  * ^designation[=].value = "M. gordonae"
  * ^designation[+].language = #en
  * ^designation[=].value = "M. gordonae"

* #tub003-0029 "M. intracellulare"
  * ^designation[0].language = #ru
  * ^designation[=].value = "M. intracellulare"
  * ^designation[+].language = #en
  * ^designation[=].value = "M. intracellulare"

* #tub003-0030 "M. scrofulaceum"
  * ^designation[0].language = #ru
  * ^designation[=].value = "M. scrofulaceum"
  * ^designation[+].language = #en
  * ^designation[=].value = "M. scrofulaceum"

* #tub003-0031 "M. interjectum"
  * ^designation[0].language = #ru
  * ^designation[=].value = "M. interjectum"
  * ^designation[+].language = #en
  * ^designation[=].value = "M. interjectum"

* #tub003-0032 "M. kansasii"
  * ^designation[0].language = #ru
  * ^designation[=].value = "M. kansasii"
  * ^designation[+].language = #en
  * ^designation[=].value = "M. kansasii"

* #tub003-0033 "M. malmoense"
  * ^designation[0].language = #ru
  * ^designation[=].value = "M. malmoense"
  * ^designation[+].language = #en
  * ^designation[=].value = "M. malmoense"

* #tub003-0034 "M. marinum"
  * ^designation[0].language = #ru
  * ^designation[=].value = "M. marinum"
  * ^designation[+].language = #en
  * ^designation[=].value = "M. marinum"

* #tub003-0035 "M. peregrinum"
  * ^designation[0].language = #ru
  * ^designation[=].value = "M. peregrinum"
  * ^designation[+].language = #en
  * ^designation[=].value = "M. peregrinum"

* #tub003-0036 "M. xenopi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "M. xenopi"
  * ^designation[+].language = #en
  * ^designation[=].value = "M. xenopi"

* #tub003-0037 "Mycobacterium spp"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Mycobacterium spp"
  * ^designation[+].language = #en
  * ^designation[=].value = "Mycobacterium spp"

* #tub003-0038 "Birlamchi namuna"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Первичный образец"
  * ^designation[+].language = #en
  * ^designation[=].value = "Primary sample"

* #tub003-0039 "Chokin"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Осадок"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sediment"

* #tub003-0040 "Makrota namunasi cho'kindisi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Осадок образца макроты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Macrota sample sediment"

* #tub003-0041 "Kultura izolati"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Изолят культуры"
  * ^designation[+].language = #en
  * ^designation[=].value = "Culture isolate"

* #tub003-0042 "R- Ehtimoliy rezistentlik"
  * ^designation[0].language = #ru
  * ^designation[=].value = "R- Вероятная резистентность"
  * ^designation[+].language = #en
  * ^designation[=].value = "R- Probable resistance"

* #tub003-0043 "Bej"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Бежевый"
  * ^designation[+].language = #en
  * ^designation[=].value = "Beige"

* #tub003-0044 "Oq"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Белый"
  * ^designation[+].language = #en
  * ^designation[=].value = "White"

* #tub003-0045 "To‘q sariq"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Оранжевый"
  * ^designation[+].language = #en
  * ^designation[=].value = "Orange"

* #tub003-0046 "Sariq"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Желтый"
  * ^designation[+].language = #en
  * ^designation[=].value = "Yellow"

* #tub003-0047 "Pushti"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Розовый"
  * ^designation[+].language = #en
  * ^designation[=].value = "Pink"

* #tub003-0048 "Qizil"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Красный"
  * ^designation[+].language = #en
  * ^designation[=].value = "Red"

* #tub003-0049 "Kulrang"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Серый"
  * ^designation[+].language = #en
  * ^designation[=].value = "Gray"

* #tub003-0050 "MICga past darajada chidamli"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Низкий МИК резистентный"
  * ^designation[+].language = #en
  * ^designation[=].value = "Low MIC resistant"