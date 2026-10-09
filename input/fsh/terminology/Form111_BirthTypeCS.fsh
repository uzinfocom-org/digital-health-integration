CodeSystem: Form111_BirthTypeCS
Id: form111-birth-type-cs
Title: "Form 111 Birth Type Code"
Description: "Form 111 Birth Type Code for clinical documents and other knowledge resources in Uzbekistan integrations. Based on Ministry of Health Order 399."
* insert OriginalCodeSystemDraft(form111-birth-type-cs)

* #chr-0003-00001 "Tabiiy tug'ruq yo'llari orqali tug'ruq"
  * ^designation[0].language = #en
  * ^designation[=].value = "Vaginal delivery"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Роды через естественные родовые пути"

* #chr-0003-00002 "Akusherlik-jarrohlik amaliyoti"
  * ^designation[0].language = #en
  * ^designation[=].value = "Obstetric surgical practice"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Акушерско-хирургическая практика"