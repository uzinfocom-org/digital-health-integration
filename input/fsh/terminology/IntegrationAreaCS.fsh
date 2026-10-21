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

* #screening "Skrining"
  * ^definition = "Screening as run by the national screening service: cervical and breast cancer screening, and the risk questionnaires the service uses."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Скрининг"
  * ^designation[+].language = #en
  * ^designation[=].value = "Screening"

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

* #hepatitis "Virusli gepatit"
  * ^definition = "Viral hepatitis care, exchanged with the Viral Hepatitis Registration and Monitoring System."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Вирусный гепатит"
  * ^designation[+].language = #en
  * ^designation[=].value = "Viral hepatitis"
