CodeSystem: DonationTypeCS
Id: donation-type-cs
Title: "Donation type codes"
Description: "Donation type codes for blood donor registration in Uzbekistan"
* insert OriginalCodeSystemDraft(donation-type-cs)

* #bdtype-0001-00001 "To'liq qon"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цельная кровь"
  * ^designation[+].language = #en
  * ^designation[=].value = "Whole blood"

* #bdtype-0001-00002 "Plazmaferez"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Плазмаферез"
  * ^designation[+].language = #en
  * ^designation[=].value = "Plasmapheresis"

* #bdtype-0001-00003 "Trombositaferez"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Тромбоцитаферез"
  * ^designation[+].language = #en
  * ^designation[=].value = "Thrombocytapheresis"
