CodeSystem: ScreeningImageQualityCS
Id: screening-image-quality-cs
Title: "Image Quality CodeSystem"
Description: "Local terminology for assessing the quality of medical images (mammography)"
* insert OriginalCodeSystemDraft(screening-image-quality-cs)

* #src-img-quality-1 "Ideal (P)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Идеальное (P)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Perfect"

* #src-img-quality-2 "Yaxshi (G)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Хорошее (G)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Good"

* #src-img-quality-3 "Qoniqarli (M)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Удовлетворительное (M)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Moderate"

* #src-img-quality-4 "Qoniqarsiz (I)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неудовлетворительное (I)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Inadequate"

* #src-img-quality-5 "Yaroqsiz (Brak)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Брак"
  * ^designation[+].language = #en
  * ^designation[=].value = "Bad (Reject/Reject)"