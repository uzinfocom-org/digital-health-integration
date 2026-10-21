CodeSystem: CancerBodyLocationCS
Id: cancer-body-location-cs
Title: "Cancer Body Location SNOMED CT Supplement"
Description: "SNOMED CT supplement containing Uzbek and Russian designations for cancer body location concepts used in the Uzbekistan healthcare system."

* insert SupplementCodeSystemDraft(
    cancer-body-location-cs,
    $sct,
    2026.1.0
)

* #59441001 "Structure of lymph node"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лимфоузлы"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Limfa tugunlari"

* #272673000 "Bone structure"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Кости"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Suyaklar"

* #10200004 "Liver structure"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Печень"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Jigar"

* #110549009 "Lung and pleura, CS"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Легкое (плевра)"
  * ^designation[+].language = #uz
  * ^designation[=].value = "O'pka (plevra)"

* #12738006 "Brain structure"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Головной мозг"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bosh miya"

* #15497006 "Ovarian structure"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Яичник"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tuxumdon"

* #87784001 "Soft tissue"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Мягкие ткани"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Yumshoq to'qimalar"

* #23451007 "Adrenal structure"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Надпочечник"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Buyrak usti bezi"

* #15425007 "Structure of serous membrane of peritoneum"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Брюшина"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Qorin pardasi"

* #74964007  "Other"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другие органы"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Boshqa a'zolar"


