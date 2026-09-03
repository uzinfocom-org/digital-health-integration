// The integration areas this guide covers - one per page under the Integrations menu.
// A knowledge resource carries its area in a program useContext, so a client can tell
// which integration published it without parsing identifiers or canonical URLs:
// GET [base]/Questionnaire?context-type-value=program$https://terminology.dhp.uz/fhir/integrations/CodeSystem/integration-area-cs|screening
// program is the usage-context-type code for "the program for which this artifact is
// applicable", which is what an integration area is: a service whose forms these are.
CodeSystem: IntegrationAreaCS
Id: integration-area-cs
Title: "Integration Area"
Description: "Areas of integration covered by this guide. Each code names one integrating system or service whose resources this guide specifies."
* insert OriginalCodeSystemDraft(integration-area-cs)

* #screening "Ko'krak bezi va bachadon bo'yni saratoni skriningi"
  * ^definition = "Cervical and breast cancer screening, as run by the national screening service."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Скрининг рака молочной железы и шейки матки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cervical and breast cancer screening"

* #sick-leave "Kasallik varaqasi"
  * ^definition = "Issuing and managing sick leave certificates."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лист нетрудоспособности"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sick leave"

* #tuberculosis "Sil kasalligi (DHIS)"
  * ^definition = "Tuberculosis care and surveillance, exchanged with DHIS2."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Туберкулёз (DHIS)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Tuberculosis (DHIS)"

* #narcology "Narkologiya"
  * ^definition = "Narcology service, including its registry of patients under observation."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Наркология"
  * ^designation[+].language = #en
  * ^designation[=].value = "Narcology"

* #psychiatry "Psixiatriya"
  * ^definition = "Psychiatric service, including its registry of patients under observation."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Психиатрия"
  * ^designation[+].language = #en
  * ^designation[=].value = "Psychiatry"
