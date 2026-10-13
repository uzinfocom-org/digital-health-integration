CodeSystem: Form111_EducationLevelCS
Id: form111-education-level-cs
Title: "Form 111 Education Level Code"
Description: "Form 111 Education Level Code for clinical documents and other knowledge resources in Uzbekistan integrations. Based on Ministry of Health Order 399."
* insert OriginalCodeSystemDraft(form111-education-level-cs) 

* #chr-0010-00001 "Boshlang'ich umumiy ta'lim"
  * ^designation[0].language = #en
  * ^designation[=].value = "Primary general education"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Начальное общее образование"

* #chr-0010-00002 "Oliy ta'lim — bakalavriat"
  * ^designation[0].language = #en
  * ^designation[=].value = "Higher education - bachelor's degree"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Высшее образование - бакалавриат"

* #chr-0010-00003 "O'rta umumiy ta'lim"
  * ^designation[0].language = #en
  * ^designation[=].value = "Secondary general education"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Среднее общее образование"