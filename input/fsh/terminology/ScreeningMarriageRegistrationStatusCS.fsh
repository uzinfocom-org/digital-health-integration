CodeSystem: ScreeningMarriageRegistrationStatusCS
Id: screening-marriage-registration-status-cs
Title: "Screening Marriage Registration Status CodeSystem"
Description: "CodeSystem for Screening Marriage Registration Status"
* insert OriginalCodeSystemDraft(screening-marriage-registration-status-cs)

* #scrn-0036-00001 "Ro‘yxatdan o‘tgan nikoh"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Зарегистрирован"
  * ^designation[+].language = #en
  * ^designation[=].value = "Registered marriage"

* #scrn-0036-00002 "Ro‘yxatdan o‘tmagan nikoh"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Незарегистрирован"
  * ^designation[+].language = #en
  * ^designation[=].value = "Unregistered marriage"

* #scrn-0036-00003 "Ajrashgan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Развод"
  * ^designation[+].language = #en
  * ^designation[=].value = "Divorced"

* #scrn-0036-00004 "Beva"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Вдова"
  * ^designation[+].language = #en
  * ^designation[=].value = "Widow"

* #scrn-0036-00005 "Bokira"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Virgo"
  * ^designation[+].language = #en
  * ^designation[=].value = "Virgin"
