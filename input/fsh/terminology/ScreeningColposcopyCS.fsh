CodeSystem: ScreeningColposcopyCS
Id: screening-colposcopy-cs
Title: "Colposcopy Results CodeSystem"
Description: "Local colposcopy conclusion categories without exact SNOMED CT equivalents: atypical change and the combined CIN 2+ category."
* insert OriginalCodeSystemDraft(screening-colposcopy-cs)

* #scrn-0091-00004 "Atipik o'zgarish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Атипичное изменение"
  * ^designation[+].language = #en
  * ^designation[=].value = "Atypical change"

* #scrn-0091-00007 "Bachadon bo'yni intraepitelial neoplaziyasi 2-daraja yoki og'irroq (CIN 2+)" "The combined cervical intraepithelial neoplasia grade 2 or worse (CIN 2+) conclusion category; no specific higher grade is inferred."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цервикальная интраэпителиальная неоплазия 2 степени и выше (CIN 2+)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cervical intraepithelial neoplasia grade 2 or worse (CIN 2+)"
