CodeSystem: SickLeaveCategoryCS
Id: sick-leave-category-cs
Title: "Sick Leave Category CodeSystem"
Description: "Code system for Sick Leave categories in Uzbekistan, with the document type codes of the DHP sick leave API"
* insert SickLeaveContact
* insert OriginalCodeSystemDraft(sick-leave-category-cs)

* #SL "Mehnatga layoqatsizlik varaqasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Листок нетрудоспособности"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sick Leave"

* #CC "Kasallangan bolaga qarash uchun mehnatga layoqatsizlik ma'lumotnomasi (138/x)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Справка о нетрудоспособности по уходу за больным ребёнком (138/х)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Child Care"

* #ED "Ta'lim olayotgan shaxslar uchun mehnatga layoqatsizlik ma'lumotnomasi (095/x)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Справка о нетрудоспособности для лиц, получающих образование (095/х)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Education"

* #IT "Alkogol mastligi sababli mehnatga layoqatsizlik ma'lumotnomasi (094/x)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Справка о нетрудоспособности по состоянию алкогольного опьянения (094/х)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Intoxication"

* #MSEC "TMEKga yo'llanma"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Направление в МСЭК"
  * ^designation[+].language = #en
  * ^designation[=].value = "Medical Social Expert Commission"
