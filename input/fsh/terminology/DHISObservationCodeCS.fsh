CodeSystem: DHISObservationCodeCS
Id: dhis-observation-code-cs
Title: "DHIS Observation Code CodeSystem"
Description: "Local code system of tuberculosis diagnostic tests and investigations used by the DHIS information system, with Russian and English designations. The DHIS Observation Code to LOINC ConceptMap records the LOINC concept for every code; in resources use the LOINC code directly wherever an exact match exists (see the DHIS Observation Code ValueSet), keeping a local code only where no exact LOINC match exists."

* insert OriginalCodeSystemDraft(dhis-observation-code-cs)

* #tub002-0001 "Balg'am surtmasi, FL"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Микроскопия мазка мокроты (флуоресцентная)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sputum smear microscopy (fluorescent)"

* #tub002-0002 "Balg'am surtmasi, ZN"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Микроскопия мазка мокроты (Циль–Нильсен)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sputum smear microscopy (Ziehl–Neelsen)"

* #tub002-0003 "Xpert MTB/RIF Ultra"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Xpert MTB/RIF Ultra"
  * ^designation[+].language = #en
  * ^designation[=].value = "Xpert MTB/RIF Ultra"

* #tub002-0004 "Xpert MTB/XDR"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Xpert MTB/XDR"
  * ^designation[+].language = #en
  * ^designation[=].value = "Xpert MTB/XDR"

* #tub002-0005 "LJ muhitida ekish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Культура на среде Левенштейна–Йенсена"
  * ^designation[+].language = #en
  * ^designation[=].value = "Culture on Löwenstein–Jensen medium"

* #tub002-0006 "MGIT muhitida ekish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Культура на среде MGIT BACTEC"
  * ^designation[+].language = #en
  * ^designation[=].value = "MGIT BACTEC culture"

* #tub002-0007 "MGITda fenotipik TLU"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Фенотипический ТЛЧ на среде MGIT"
  * ^designation[+].language = #en
  * ^designation[=].value = "Phenotypic DST on MGIT"

* #tub002-0008 "LPA MTBDR plus"
  * ^designation[0].language = #ru
  * ^designation[=].value = "LPA MTBDR plus (Rif/Inh/Eto-Pto)"
  * ^designation[+].language = #en
  * ^designation[=].value = "LPA MTBDR plus (Rif/Inh/Eto-Pto)"

* #tub002-0009 "LPA MTBDR SL"
  * ^designation[0].language = #ru
  * ^designation[=].value = "LPA MTBDR SL (Fql/SLI)"
  * ^designation[+].language = #en
  * ^designation[=].value = "LPA MTBDRsl"

* #tub002-0010 "Ko'krak qafasi rentgenografiyasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Рентгенография органов грудной клетки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Chest X-ray"

* #tub002-0011 "OIV testi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Обследование на ВИЧ"
  * ^designation[+].language = #en
  * ^designation[=].value = "HIV testing"