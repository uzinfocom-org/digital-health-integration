ValueSet: DonorCategoryVS
Id: donor-category-vs
Title: "Donor category"
Description: "Donor categories"
* insert IntegrationsValueSet(donor-category-vs)
* ^status = #draft
* ^experimental = true
* include codes from system DonorCategoryCS
* include $sct#275561000 "Regular blood donor"
