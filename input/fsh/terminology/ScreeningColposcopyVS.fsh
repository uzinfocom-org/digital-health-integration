ValueSet: ScreeningColposcopyVS
Id: screening-colposcopy-vs
Title: "Colposcopy Results ValueSet"
Description: "Screening colposcopy conclusion values: SNOMED CT concepts where equivalent and local codes for atypical change and the combined CIN 2+ category."
* insert IntegrationsValueSet(screening-colposcopy-vs)
* ^experimental = true

* include $sct#373887005 "Negative for intraepithelial lesion or malignancy"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Интраэпителиальное поражение или злокачественная опухоль не выявлены"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Intraepitelial zararlanish yoki xavfli o'sma aniqlanmadi"
* include $sct#416030007 "Cervicovaginal cytology: Low grade squamous intraepithelial lesion"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цервиковагинальная цитология: плоскоклеточное интраэпителиальное поражение низкой степени"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Servikovaginal sitologiya: past darajali yassi hujayrali intraepitelial zararlanish"
* include $sct#22725004 "High-grade squamous intraepithelial lesion"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Плоскоклеточное интраэпителиальное поражение высокой степени"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Yuqori darajali yassi hujayrali intraepitelial zararlanish"
* include $sct#373878001 "Atypical squamous cells, cannot exclude high-grade squamous intraepithelial lesion"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Атипичные плоские клетки, нельзя исключить поражение высокой степени"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Atipik yassi hujayralar, yuqori darajali zararlanishni istisno qilib bo'lmaydi"
* include $sct#285836003 "Cervical intraepithelial neoplasia grade 1"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цервикальная интраэпителиальная неоплазия 1 степени"
  * ^designation[+].language = #uz
  * ^designation[=].value = "1-darajali servikal intraepitelial neoplaziya"
* include codes from system screening-colposcopy-cs
