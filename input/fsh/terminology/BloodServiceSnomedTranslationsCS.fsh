CodeSystem: BloodServiceSnomedTranslationsCS
Id: blood-service-snomed-translations-cs
Title: "Blood service SNOMED CT translations"
Description: "SNOMED CT supplement with Uzbek and Russian translations of the blood service donor category and donation type codes"
* insert SupplementCodeSystemDraft(blood-service-snomed-translations-cs, $sct, 2026.1.0)

* #25179006 "Whole blood unit collection"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цельная кровь"
  * ^designation[+].language = #uz
  * ^designation[=].value = "To'liq qon"

* #20720000 "Plasmapheresis"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Плазмаферез"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Plazmaferez"

* #72541002 "Plateletpheresis"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Тромбоцитаферез"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Trombositaferez"

* #275561000 "Regular blood donor"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Кадровый донор"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Kadr donor"
