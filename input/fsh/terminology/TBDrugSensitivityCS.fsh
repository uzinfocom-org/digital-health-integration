CodeSystem: TBDrugSensitivityCS
Id: tb-drug-sensitivity
Title: "Tuberculosis Drug Susceptibility Code System"
Description: "A code system representing drug susceptibility and resistance categories in tuberculosis (uz/ru/en)"
* insert OriginalCodeSystemDraft(tb-drug-sensitivity)

* #Tub-004-001 "Sezgir"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Чувствительный"
  * ^designation[+].language = #en
  * ^designation[=].value = "Drug-sensitive"

* #Tub-004-002 "Monorezistentlik"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Монорезистентность"
  * ^designation[+].language = #en
  * ^designation[=].value = "Mono-resistant"

* #Tub-004-003 "Polirezistentlik"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Полирезистентность"
  * ^designation[+].language = #en
  * ^designation[=].value = "Poly-resistant"

* #Tub-004-004 "Multirezistentlik (MDR-TB)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Множественная лекарственная устойчивость (МЛУ-ТБ)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Multidrug-resistant (MDR-TB)"

* #Tub-004-005 "O‘ta rezistentlik (XDR-TB)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Широкая лекарственная устойчивость (ШЛУ-ТБ)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Extensively drug-resistant (XDR-TB)"