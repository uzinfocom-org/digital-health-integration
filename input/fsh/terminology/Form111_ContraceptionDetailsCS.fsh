CodeSystem: Form111_ContraceptionDetailsCS
Id: form111-contraception-details-cs
Title: "Form 111 Contraception Details CodeSystem"
Description: "SNOMED CT supplement containing Uzbek and Russian designations for contraception methods used in Form 111."

* insert SupplementCodeSystemDraft(
    form111-contraception-details-cs,
    $sct,
    2026.1.0
)

* #225370004 "Uses barrier contraception method"
  * ^designation[0].language = #uz
  * ^designation[=].value = "To'siq usuli"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Барьерная"

* #268466006 "Uses spermicidal contraception"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Kimyoviy usul"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Химическая"

* #268463003 "Uses postcoital contraception"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Shoshilinch kontratseptsiya"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Экстренная"

* #60890002 "Female sterilization"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ayollar sterilizatsiyasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Женская стерилизация"

* #1237404009 "Uses hormonal contraception"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Gormonal usul"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Гормональная"

* #312081001 "Uses IUD (intrauterine device) contraception"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bachadon ichi vositasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Внутриматочная"

* #718701005 "Natural family planning method"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Tabiiy usul"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Естественная"

* #22523008 "Vasectomy"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Vazektomiya"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Вазэктомия"