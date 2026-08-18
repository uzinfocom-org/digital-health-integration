CodeSystem: ScreeningP16ResultCS
Id: screening-p16-result-cs
Title: "Screening p16 Result CodeSystem"
Description: "p16 immunohistochemistry result categories for cervical pathology."
* insert OriginalCodeSystemDraft(screening-p16-result-cs)

* #scrn-0085-00001 "p16 manfiy, HPV bilan bog‘liq emas"
  * ^designation[0].language = #ru
  * ^designation[=].value = "p16 отрицательный, HPV-неассоциированный"
  * ^designation[+].language = #en
  * ^designation[=].value = "p16 negative, HPV-independent"
* #scrn-0085-00002 "p16 musbat, HPV bilan bog‘liq"
  * ^designation[0].language = #ru
  * ^designation[=].value = "p16 положительный, HPV-ассоциированный"
  * ^designation[+].language = #en
  * ^designation[=].value = "p16 positive, HPV-associated"
