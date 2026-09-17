CodeSystem: DHISConditionCodeCS
Id: dhis-condition-code-cs
Title: "DHIS Condition Code CodeSystem"
Description: "Local code system of tuberculosis diagnoses and comorbidities used by the DHIS information system, with Russian and English designations. The DHIS Condition Code to SNOMED CT ConceptMap records the SNOMED CT concept for every code; in resources use the SNOMED CT code directly wherever an exact match exists (see the DHIS Condition Code ValueSet), keeping a local code only where no exact SNOMED CT match exists."

* insert OriginalCodeSystemDraft(dhis-condition-code-cs)

* #tub001-0001 "Birlamchi sil kompleksi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Первичный туберкулёзный комплекс"
  * ^designation[+].language = #en
  * ^designation[=].value = "Primary respiratory tuberculosis"

* #tub001-0002 "Disseminatsiyalangan sil"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Диссеминированный туберкулёз"
  * ^designation[+].language = #en
  * ^designation[=].value = "Acute miliary tuberculosis of multiple sites"

* #tub001-0003 "Miliyar sil"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Милиарный туберкулёз"
  * ^designation[+].language = #en
  * ^designation[=].value = "Acute miliary tuberculosis of a single specified site"

* #tub001-0004 "O‘choqli o‘pka sili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Очаговый туберкулёз"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other respiratory tuberculosis"

* #tub001-0005 "Infiltrativ o‘pka sili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Инфильтративный туберкулёз"
  * ^designation[+].language = #en
  * ^designation[=].value = "Pulmonary tuberculosis, bacteriologically confirmed"

* #tub001-0006 "Kazeoz pnevmoniya"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Казеозная пневмония"
  * ^designation[+].language = #en
  * ^designation[=].value = "Caseous pneumonia (pulmonary tuberculosis)"

* #tub001-0007 "O‘pka tuberkulomasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Туберкулёма лёгких"
  * ^designation[+].language = #en
  * ^designation[=].value = "Tuberculoma of lung"

* #tub001-0008 "Kaverna bilan o‘pka sili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Кавернозный туберкулёз"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cavitary pulmonary tuberculosis"

* #tub001-0009 "Fibroz-kavernoz o‘pka sili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Фиброзно-кавернозный туберкулёз"
  * ^designation[+].language = #en
  * ^designation[=].value = "Fibro-cavitary pulmonary tuberculosis"

* #tub001-0010 "Tsirrotik o‘pka sili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цирротический туберкулёз"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cirrhotic pulmonary tuberculosis"

* #tub001-0011 "Bronx, traxeya va yuqori nafas yo‘llari sili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Туберкулёз бронхов, трахеи и ВДП"
  * ^designation[+].language = #en
  * ^designation[=].value = "Tuberculosis of larynx, trachea and bronchus"

* #tub001-0012 "Ko‘krak ichi limfa tugunlari sili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "ТБ внутригрудных лимфоузлов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Tuberculosis of intrathoracic lymph nodes"

* #tub001-0013 "Sil plevriti (empiema)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "ТБ плеврит (эмпиема)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Tuberculous pleurisy"

* #tub001-0014 "Sil meningiti"
  * ^designation[0].language = #ru
  * ^designation[=].value = "ТБ мозговых оболочек и ЦНС"
  * ^designation[+].language = #en
  * ^designation[=].value = "Tuberculous meningitis"

* #tub001-0015 "Ichak, qorin parda va mezenterial limfa tugunlari sili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "ТБ кишечника, брюшины и брыжеечных л/у"
  * ^designation[+].language = #en
  * ^designation[=].value = "Tuberculosis of intestines, peritoneum and mesenteric lymph nodes"

* #tub001-0016 "Suyak va bo‘g‘imlar sili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "ТБ костей и суставов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Tuberculosis of bones and joints"

* #tub001-0017 "Siydik-jinsiy tizim sili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "ТБ мочевых и половых органов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Tuberculosis of genitourinary system"

* #tub001-0018 "Teri va teri osti to‘qimalari sili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "ТБ кожи и подкожной клетчатки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Tuberculosis of skin and subcutaneous tissue"

* #tub001-0019 "Periferik limfa tugunlari sili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "ТБ периферических лимфоузлов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Tuberculosis of peripheral lymph nodes"

* #tub001-0020 "Ko‘z sili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "ТБ глаза"
  * ^designation[+].language = #en
  * ^designation[=].value = "Tuberculosis of eye"

* #tub001-0021 "Boshqa a’zolar sili"
  * ^designation[0].language = #ru
  * ^designation[=].value = "ТБ прочих органов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Tuberculosis of other specified organs"

* #tub001-0022 "Qandli diabet"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Сахарный диабет"
  * ^designation[+].language = #en
  * ^designation[=].value = "Diabetes"

* #tub001-0023 "Yurak ishemik kasalligi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "ИБС"
  * ^designation[+].language = #en
  * ^designation[=].value = "Coronary heart disease"

* #tub001-0024 "Gipertenziya"
  * ^designation[0].language = #ru
  * ^designation[=].value = "ГБ"
  * ^designation[+].language = #en
  * ^designation[=].value = "hypertension"

* #tub001-0025 "Surunkali nonspesifik o'pka kasalliklari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Хронические неспецифические заболевания легких"
  * ^designation[+].language = #en
  * ^designation[=].value = "Chronic obstructive lung disease"

* #tub001-0026 "Yara"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Язва"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ulcer"

* #tub001-0027 "Ruhiy kasallik"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Психическое заболевание"
  * ^designation[+].language = #en
  * ^designation[=].value = "Mental illness"

* #tub001-0028 "Onkologiya"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Онкология"
  * ^designation[+].language = #en
  * ^designation[=].value = "Oncology"
