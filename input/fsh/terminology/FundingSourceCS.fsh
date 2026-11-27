CodeSystem: FundingSourceCS
Id: funding-source-cs
Title: "Funding source"
Description: "Sources of funds used to finance the acquisition of medical supplies and products, used in the DMED Sklad integration"
* insert OriginalCodeSystemDraft(funding-source-cs)
* ^language = #uz

* #fund-0001-00001 "Xalqaro moliya instituti krediti" 
  * ^designation[0].language = #ru
  * ^designation[=].value = "Кредит международного финансового института"
  * ^designation[+].language = #en
  * ^designation[=].value = "International Financial Institution Loan"

* #fund-0001-00002 "Markazlashtirilgan xarid" 
  * ^designation[0].language = #ru
  * ^designation[=].value = "Централизованная закупка"
  * ^designation[+].language = #en
  * ^designation[=].value = "Centralized Procurement"

* #fund-0001-00003 "Homiylik"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Спонсорство"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sponsorship"

* #fund-0001-00004 "Mahalliy byudjet" 
  * ^designation[0].language = #ru
  * ^designation[=].value = "Местный бюджет"
  * ^designation[+].language = #en
  * ^designation[=].value = "Local Budget"

* #fund-0001-00005 "Openbudget" 
  * ^designation[0].language = #ru
  * ^designation[=].value = "Инициативный бюджет (Open Budget)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Open Budget (Participatory Budgeting)"

* #fund-0001-00006 "Moddiy rivojlanish fondi" 
  * ^designation[0].language = #ru
  * ^designation[=].value = "Фонд материального развития"
  * ^designation[+].language = #en
  * ^designation[=].value = "Material Development Fund"