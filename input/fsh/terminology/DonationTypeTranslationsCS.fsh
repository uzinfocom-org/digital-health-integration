CodeSystem: DonationTypeTranslationsCS
Id: donation-type-translations-cs
Title: "Donation type translations"
Description: "Donation type supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(donation-type-translations-cs, $sct, 2026.1.0)

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
