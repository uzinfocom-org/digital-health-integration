CodeSystem: NewbornCareLocationCS
Id: newborn-care-location-cs
Title: "Form097 Newborn Care Location"
Description: "Local codes for newborn care location, Form097 newborn development record."

* insert OriginalCodeSystemDraft(newborn-care-location-cs)

* #chr-0104-0001 "Tug'ruqxona"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Родильный дом"
  * ^designation[+].language = #en
  * ^designation[=].value = "Maternity hospital"

* #chr-0104-0002 "Oilaviy shifokor punkti"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Семейный врачебный пункт"
  * ^designation[+].language = #en
  * ^designation[=].value = "Family doctor point"

* #chr-0104-0003 "Oilaviy poliklinika"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Семейная поликлиника"
  * ^designation[+].language = #en
  * ^designation[=].value = "Family polyclinic"