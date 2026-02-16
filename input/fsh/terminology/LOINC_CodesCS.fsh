CodeSystem: LOINC_CodesCS
Id: loinc-codes-cs
Title: "Birth Loinc CodeSystem"
Description: "Subset of LOINC codes"
* insert SupplementCodeSystemDraft(loinc-codes-cs, $loinc_code, 5.0.0)

* #9272-6 "Apgar score at 1 minute"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Оценка по шкале Апгар на 1-й минуте"
  * ^designation[0].language = #uz
  * ^designation[=].value = "1-daqiqadagi Apgar shkalasi bahosi"

* #9274-2 "Apgar score at 5 minutes"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Оценка по шкале Апгар на 5-й минуте жизни"
  * ^designation[0].language = #uz
  * ^designation[=].value = "5-daqiqadagi Apgar shkalasi bahosi"

* #8339-4 "Birth weight"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Масса тела при рождении"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Tug'ruqdagi tana vazni"

* #8302-2 "Birth length (height)"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Рост при рождении"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Tug'ruqdagi tana uzunligi"

* #76516-4 "Gestational age at birth (weeks)"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Гестационный возраст при рождении (в неделях)"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Tug'ruq vaqtidagi homiladorlik yoshi (haftalarda)"

* #8287-5 "Head circumference at birth"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Окружность головы при рождении"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Tug'ruqdagi bosh aylanasining o'lchami"
  
* #80616-6 "Time of birth"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Время рождения"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Tug'ilgan vaqti"