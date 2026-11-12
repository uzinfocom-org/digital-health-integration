CodeSystem: DonorCategoryCS
Id: donor-category-cs
Title: "Donor category codes"
Description: "Donor category codes for blood donor registration in Uzbekistan"
* insert OriginalCodeSystemDraft(donor-category-cs)

* #bdcat-0001-00001 "Kadr donor"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Кадровый донор"
  * ^designation[+].language = #en
  * ^designation[=].value = "Staff donor"

* #bdcat-0001-00002 "Zaxira donor"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Резервный донор"
  * ^designation[+].language = #en
  * ^designation[=].value = "Reserve donor"
