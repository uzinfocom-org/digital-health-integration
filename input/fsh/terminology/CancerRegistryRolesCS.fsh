CodeSystem: CancerRegistryRolesCS
Id: cancer-registry-roles-cs
Title: "Cancer Registry Roles CodeSystem"
Description: "Role classification for users within cancer information system."
* insert OriginalCodeSystemDraft(cancer-registry-roles-cs)
* #1 "Tizim administratori"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Системный администратор"
  * ^designation[+].language = #en
  * ^designation[=].value = "System Administrator"
* #3 "Tibbiy ro'yxatdan o'tkazuvchi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Регистратор"
  * ^designation[+].language = #en
  * ^designation[=].value = "registrar"
* #4 "Tadqiqotchi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "исследователь"
  * ^designation[+].language = #en
  * ^designation[=].value = "researcher"
* #7 "Muassasa administratori"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Администратор учреждения"
  * ^designation[+].language = #en
  * ^designation[=].value = "Institution Administrator"