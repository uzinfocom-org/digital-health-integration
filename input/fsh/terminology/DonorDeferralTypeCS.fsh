//after merging BloodDonorDeferralObservation we will remove this code system and use the donor-deferral-type-vs value set instead
CodeSystem: DonorDeferralTypeCS
Id: donor-deferral-type-cs
Title: "Donor deferral type"
Description: "Types of blood donor deferral recorded by the blood service."
* insert OriginalCodeSystemDraft(donor-deferral-type-cs)

* #tmpdf-0001-00001 "Vaqtincha chetlatish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Временный отвод"
  * ^designation[+].language = #en
  * ^designation[=].value = "Temporary deferral"
* #lldf-0001-00001 "Umrbod chetlatish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Пожизненный отвод"
  * ^designation[+].language = #en
  * ^designation[=].value = "Lifelong deferral"
