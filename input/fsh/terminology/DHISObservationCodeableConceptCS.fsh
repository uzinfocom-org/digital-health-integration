CodeSystem: DHISObservationCodeableConceptCS
Id: dhis-observation-codeable-concept-cs
Title: "DHIS Observation Result CodeSystem"
Description: "Local code system of coded tuberculosis test results (smear/culture grades, processing states, identified species and drug-susceptibility outcomes) used as Observation.valueCodeableConcept in the DHIS information system, with Russian and English designations. The DHIS Observation Result to SNOMED CT ConceptMap records the SNOMED CT concept for the species and standard result qualifiers; in resources use the SNOMED CT code directly wherever an exact match exists (see the DHIS Observation Result ValueSet), keeping a local code only where no exact standard match exists."

* insert OriginalCodeSystemDraft(dhis-observation-codeable-concept-cs)

* #Tub003-0001 "x – Natija yaroqsiz"
  * ^designation[0].language = #ru
  * ^designation[=].value = "х-Результат недействительный"
  * ^designation[+].language = #en
  * ^designation[=].value = "x – Invalid result"

* #Tub003-0002 "Preparat tekshirilmagan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Препарат не тестировался"
  * ^designation[+].language = #en
  * ^designation[=].value = "Drug not tested"

* #Tub003-0003 "Izlar aniqlangan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Следы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Trace detected"

* #Tub003-0004 "Test xatosi (takrorlash)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ошибка тест (повторить)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Test error (repeat)"

* #Tub003-0005 "1–9 KUB / 40 ko‘rish maydoni"
  * ^designation[0].language = #ru
  * ^designation[=].value = "1-9 КУБ /40 Полей зрения"
  * ^designation[+].language = #en
  * ^designation[=].value = "Detect1–9 AFB / 40 fieldsed"

* #Tub003-0006 "1+ / 40 ko‘rish maydoni"
  * ^designation[0].language = #ru
  * ^designation[=].value = "1+/40 Полей зрения"
  * ^designation[+].language = #en
  * ^designation[=].value = "1+ / 40 fields"

* #Tub003-0007 "2+ / 40 ko‘rish maydoni"
  * ^designation[0].language = #ru
  * ^designation[=].value = "2+/40 Полей зрения"
  * ^designation[+].language = #en
  * ^designation[=].value = "2+ / 40 fields"

* #Tub003-0008 "3+ / 40 ko‘rish maydoni"
  * ^designation[0].language = #ru
  * ^designation[=].value = "3+/40 Полей зрения"
  * ^designation[+].language = #en
  * ^designation[=].value = "3+ / 40 fields"

* #Tub003-0009 "0 / 40 ko‘rish maydoni"
  * ^designation[0].language = #ru
  * ^designation[=].value = "0/40 Полей зрения"
  * ^designation[+].language = #en
  * ^designation[=].value = "0 / 40 fields"

* #Tub003-0010 "NALC usuli – 2% NaOH"
  * ^designation[0].language = #ru
  * ^designation[=].value = "1-9 КУБ /100 Полей зрения"
  * ^designation[+].language = #en
  * ^designation[=].value = "1–9 AFB / 100 fields"

* #Tub003-0011 "1+ / 100 ko‘rish maydoni"
  * ^designation[0].language = #ru
  * ^designation[=].value = "1+/100 Полей зрения"
  * ^designation[+].language = #en
  * ^designation[=].value = "1+ / 100 fields"

* #Tub003-0012 "2+ / 100 ko‘rish maydoni"
  * ^designation[0].language = #ru
  * ^designation[=].value = "2+/100 Полей зрения"
  * ^designation[+].language = #en
  * ^designation[=].value = "2+ / 100 fields"

* #Tub003-0013 "3+ / 100 ko‘rish maydoni"
  * ^designation[0].language = #ru
  * ^designation[=].value = "3+/100 Полей зрения"
  * ^designation[+].language = #en
  * ^designation[=].value = "3+ / 100 fields"

* #Tub003-0014 "0 / 100 ko‘rish maydoni"
  * ^designation[0].language = #ru
  * ^designation[=].value = "0/100 Полей зрения"
  * ^designation[+].language = #en
  * ^designation[=].value = "0 / 100 fields"

* #Tub003-0015 "1–20 KUB"
  * ^designation[0].language = #ru
  * ^designation[=].value = "1-20 КУБ"
  * ^designation[+].language = #en
  * ^designation[=].value = "1–20 CFU"

* #Tub003-0016 "1+ / 20–99 KUB"
  * ^designation[0].language = #ru
  * ^designation[=].value = "1+ /20-99 КУБ"
  * ^designation[+].language = #en
  * ^designation[=].value = "1+ / 20–99 CFU"

* #Tub003-0017 "2+ / 100–500 KUB"
  * ^designation[0].language = #ru
  * ^designation[=].value = "2+ /100-500 КУБ"
  * ^designation[+].language = #en
  * ^designation[=].value = "2+ / 100–500 CFU"

* #Tub003-0018 "3+ / Hisoblab bo‘lmaydigan KUB"
  * ^designation[0].language = #ru
  * ^designation[=].value = "3+ /Несчетное кол-во КУБ"
  * ^designation[+].language = #en
  * ^designation[=].value = "3+ / Too numerous to count (TNTC)"

* #Tub003-0019 "0 – KUB aniqlanmagan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "0 - КУБ не определен"
  * ^designation[+].language = #en
  * ^designation[=].value = "0 – CFU not detected"

* #Tub003-0020 "M. tuberculosis kompleksi (MTBC)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "M.Tuberculesis комплекс (MTBC)"
  * ^designation[+].language = #en
  * ^designation[=].value = "M. tuberculosis complex (MTBC)"

* #Tub003-0021 "Silga oid bo‘lmagan mikobakteriyalar (NTM)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Нетуберкулезные микобактерии (NTM)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Non-tuberculous mycobacteria (NTM)"

* #Tub003-0022 "Aniqlanmagan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Не определен"
  * ^designation[+].language = #en
  * ^designation[=].value = "Not identified"

* #Tub003-0023 "M.avium ssp."
  * ^designation[0].language = #ru
  * ^designation[=].value = "M.avium ssp."
  * ^designation[+].language = #en
  * ^designation[=].value = "M.avium ssp."

* #Tub003-0024 "M. chelonae"
  * ^designation[0].language = #ru
  * ^designation[=].value = "M. chelonae"
  * ^designation[+].language = #en
  * ^designation[=].value = "M. chelonae"

* #Tub003-0025 "M. abscessus"
  * ^designation[0].language = #ru
  * ^designation[=].value = "M. abscessus"
  * ^designation[+].language = #en
  * ^designation[=].value = "M. abscessus"

* #Tub003-0026 "M. fortuitum 1"
  * ^designation[0].language = #ru
  * ^designation[=].value = "M. fortuitum 1"
  * ^designation[+].language = #en
  * ^designation[=].value = "M. fortuitum 1"

* #Tub003-0027 "M. fortuitum 2"
  * ^designation[0].language = #ru
  * ^designation[=].value = "M. fortuitum 2"
  * ^designation[+].language = #en
  * ^designation[=].value = "M. fortuitum 2"

* #Tub003-0028 "M. gordonae"
  * ^designation[0].language = #ru
  * ^designation[=].value = "M. gordonae"
  * ^designation[+].language = #en
  * ^designation[=].value = "M. gordonae"

* #Tub003-0029 "M. intracellulare"
  * ^designation[0].language = #ru
  * ^designation[=].value = "M. intracellulare"
  * ^designation[+].language = #en
  * ^designation[=].value = "M. intracellulare"

* #Tub003-0030 "M. scrofulaceum"
  * ^designation[0].language = #ru
  * ^designation[=].value = "M. scrofulaceum"
  * ^designation[+].language = #en
  * ^designation[=].value = "M. scrofulaceum"

* #Tub003-0031 "M. interjectum"
  * ^designation[0].language = #ru
  * ^designation[=].value = "M. interjectum"
  * ^designation[+].language = #en
  * ^designation[=].value = "M. interjectum"

* #Tub003-0032 "M. kansasii"
  * ^designation[0].language = #ru
  * ^designation[=].value = "M. kansasii"
  * ^designation[+].language = #en
  * ^designation[=].value = "M. kansasii"

* #Tub003-0033 "M. malmoense"
  * ^designation[0].language = #ru
  * ^designation[=].value = "M. malmoense"
  * ^designation[+].language = #en
  * ^designation[=].value = "M. malmoense"

* #Tub003-0034 "M. marinum"
  * ^designation[0].language = #ru
  * ^designation[=].value = "M. marinum"
  * ^designation[+].language = #en
  * ^designation[=].value = "M. marinum"

* #Tub003-0035 "M. peregrinum"
  * ^designation[0].language = #ru
  * ^designation[=].value = "M. peregrinum"
  * ^designation[+].language = #en
  * ^designation[=].value = "M. peregrinum"

* #Tub003-0036 "M. xenopi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "M. xenopi"
  * ^designation[+].language = #en
  * ^designation[=].value = "M. xenopi"

* #Tub003-0037 "Mycobacterium spp"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Mycobacterium spp"
  * ^designation[+].language = #en
  * ^designation[=].value = "Mycobacterium spp"

* #Tub003-0038 "Birlamchi namuna"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Первичный образец"
  * ^designation[+].language = #en
  * ^designation[=].value = "Primary sample"

* #Tub003-0039 "Chokin"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Осадок"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sediment"

* #Tub003-0040 "Makrota namunasi cho'kindisi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Осадок образца макроты"
  * ^designation[+].language = #en
  * ^designation[=].value = "Macrota sample sediment"

* #Tub003-0041 "Kultura izolati"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Изолят культуры"
  * ^designation[+].language = #en
  * ^designation[=].value = "Culture isolate"

* #Tub003-0042 "R- Ehtimoliy rezistentlik"
  * ^designation[0].language = #ru
  * ^designation[=].value = "R- Вероятная резистентность"
  * ^designation[+].language = #en
  * ^designation[=].value = "R- Probable resistance"
