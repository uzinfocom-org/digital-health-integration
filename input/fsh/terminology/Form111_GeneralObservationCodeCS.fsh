CodeSystem: Form111_GeneralObservationCodeCS
Id: form111-general-observation-code-cs
Title: "Form 111 General Observation Code"
Description: "Form 111 General Observation Code for clinical documents and other knowledge resources in Uzbekistan integrations. Based on Ministry of Health Order 399."
* insert OriginalCodeSystemDraft(form111-general-observation-code-cs)

* #chr-0035-00001 "Ro'yxatga olingan kun"
  * ^designation[0].language = #en
  * ^designation[=].value = "Registration date"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Дата регистрации"

* #chr-0035-00002 "Chanoq o'lchovlari"
  * ^designation[0].language = #en
  * ^designation[=].value = "Pelvis measurements"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Размеры таза"

* #chr-0035-00003 "Distantia spinarum (D.sp)"
  * ^designation[0].language = #en
  * ^designation[=].value = "Distantia spinarum (D.sp)"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Distantia spinarum (D.sp)"

* #chr-0035-00004 "Distantia cristarum (D.Cr)"
  * ^designation[0].language = #en
  * ^designation[=].value = "Distantia cristarum (D.Cr)"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Distantia cristarum (D.Cr)"

* #chr-0035-00005 "Distantia trochanterica (D.troch)"
  * ^designation[0].language = #en
  * ^designation[=].value = "Distantia trochanterica (D.troch)"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Distantia trochanterica (D.troch)"

* #chr-0035-00006 "Conjugata externa (C.ext)"
  * ^designation[0].language = #en
  * ^designation[=].value = "Conjugata externa (C.ext)"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Conjugata externa (C.ext)"

* #chr-0035-00007 "Conjugata diagonalis (C.diag)"
  * ^designation[0].language = #en
  * ^designation[=].value = "Conjugata diagonalis (C.diag)"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Conjugata diagonalis (C.diag)"

* #chr-0035-00008 "Conjugata vera (C.vera)"
  * ^designation[0].language = #en
  * ^designation[=].value = "Conjugata vera (C.vera)"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Conjugata vera (C.vera)"

* #chr-0035-00009 "Oxirgi xayz ko'rish sanasi (tugash)"
  * ^designation[0].language = #en
  * ^designation[=].value = "Last menstrual period date (end)"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Дата последней менструации (окончание)"

* #chr-0035-00010 "Jinsiy hayoti necha yoshdan boshlangani"
  * ^designation[0].language = #en
  * ^designation[=].value = "Age at onset of sexual activity"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Возраст начала половой жизни"

* #chr-0035-00011 "Xayz ko'rish xususiyatlari"
  * ^designation[0].language = #en
  * ^designation[=].value = "Menstrual characteristics"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Особенности менструации"

* #chr-0035-00012 "Tug'ruqning alohida xususiyatlari"
  * ^designation[0].language = #en
  * ^designation[=].value = "Special features of delivery"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Особенности родов"

* #chr-0035-00013 "Bola tirik / o'lik tug'ilgani"
  * ^designation[0].language = #en
  * ^designation[=].value = "Live/stillbirth status"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Ребёнок родился живым/мёртвым"

* #chr-0035-00014 "Bola tirikligi (hozirgi holati)"
  * ^designation[0].language = #en
  * ^designation[=].value = "Child's current vital status"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Текущее состояние ребёнка (жив)"

* #chr-0035-00015 "Tug'ruq turi (muddati bo'yicha)"
  * ^designation[0].language = #en
  * ^designation[=].value = "Type of delivery (by term)"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Вид родов (по сроку)"

* #chr-0035-00016 "Avvalgi homiladorliklarning o'ziga xosligi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Characteristics of previous pregnancies"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Особенности предыдущих беременностей"

* #chr-0035-00017 "Homiladorlik bo'yicha ta'til"
  * ^designation[0].language = #en
  * ^designation[=].value = "Pregnancy leave"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Отпуск по беременности"

* #chr-0035-00018 "Tug'ruqdan keyingi ta'til"
  * ^designation[0].language = #en
  * ^designation[=].value = "Postpartum leave"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Послеродовой отпуск"

* #chr-0035-00019 "Shifoxonaga yotqizildi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Hospitalized"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Госпитализирована"

* #chr-0035-00020 "Boshqa a'zolari"
  * ^designation[0].language = #en
  * ^designation[=].value = "Other organs"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Другие органы"

* #chr-0035-00021 "Muddatdan farq (kun)"
  * ^designation[0].language = #en
  * ^designation[=].value = "Difference from due date (days)"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Разница со сроком (дни)"

// chr-0035-00022/00023: superseded by chr-0027-00006/00005 (Risk Factor Observation Code),
// which are section 14-specific and keep perinatal risk codes together with the other risk-factor
// codes. Kept defined (not removed) since this CodeSystem is #draft, but not used in the example.
* #chr-0035-00022 "Ballar yig'indisi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Sum of points"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Сумма баллов"

* #chr-0035-00023 "Xavf darajasi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Risk level"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Уровень риска"

* #chr-0035-00024 "Arterial qon bosimi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Blood pressure"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Артериальное давление"

* #chr-0035-00025 "O'tgan operatsiyalar"
  * ^designation[0].language = #en
  * ^designation[=].value = "Past surgeries"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Перенесённые операции"

* #chr-0035-00026 "O'tgan operatsiya sanasi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Past surgery date"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Дата перенесённой операции"

* #chr-0035-00027 "Avvalgi homiladorlik yili"
  * ^designation[0].language = #en
  * ^designation[=].value = "Previous pregnancy year"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Год предыдущей беременности"

* #chr-0035-00028 "Ish joyi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Workplace"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Место работы"
