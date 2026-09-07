CodeSystem: ScreeningDiagnosticProcedureCS
Id: screening-diagnostic-procedure-cs
Title: "Screening Diagnostic Procedure Supplement CodeSystem"
Description: "SNOMED CT supplement containing Uzbek and Russian designations for screening and diagnostic procedure codes used in Uzbekistan."

* insert SupplementCodeSystemDraft(
    screening-diagnostic-procedure-cs,
    $sct,
    2026.1.0
)

* #47079000 "Ultrasonography of breast"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ультразвуковое исследование молочной железы"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ko'krak bezining ultratovush tekshiruvi"

* #122548005 "Biopsy of breast"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Биопсия молочной железы"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ko'krak bezi biopsiyasi"

* #65801008 "Excision"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Иссечение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Eksizsiya"

* #71651007 "Mammography"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Маммография"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Mammografiya"

* #54535009 "Cone biopsy of cervix"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Коническая биопсия шейки матки"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bachadon bo'yni konussimon biopsiyasi"

* #392003006 "Colposcopy"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Кольпоскопия"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Kolposkopiya"

* #50796003 "Cervical biopsy"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Биопсия шейки матки"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bachadon bo'yni biopsiyasi"

* #714797009 "Histologic test"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Гистологическое исследование"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Gistologik tekshirish"

* #117617002 "Immunohistochemistry procedure"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Иммуногистохимическое исследование"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Immunogistokimyoviy tekshiruv"

* #394597005 "Histopathology"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Гистопатология"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Gistopatologiya"

* #5880005 "Physical examination"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Физикальный осмотр"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Jismoniy ko'rik"

* #306140002 "Referral to clinical oncology service"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Направление в онкологическую службу"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Onkologiya xizmatiga yo'llanma"

* #703155005 "Referral to maternity service"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Направление в службу охраны материнства"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Onalik xizmatiga yo'llanma"
