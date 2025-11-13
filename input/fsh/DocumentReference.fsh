Profile: DocumentReferenceBirth
Parent: DocumentReference
Id: document-reference-birth
Title: "Document Reference Birth"
Description: "Document reference for Birth profile"
* ^status = #draft

* identifier MS

* status MS
* status ^short = "текущий | замененный | введенный по ошибке"
* status from DocRefStatusVS (required)

* docStatus MS
* docStatus ^short = "зарегистрирован | частичный | предварительный | окончательный | измененный | исправленный | добавленный | отмененный | введенный с ошибкой | устаревший | неизвестный"
* docStatus from DocRefComStatusVS (required)

* subject MS
* subject ^short = "Новорожденный ребенок"
* subject only Reference(PatientBirth)

* context MS
* context ^short = "При encounter с новорожденным ребенком"
* context only Reference(EncounterBirth)

* practiceSetting MS
* practiceSetting ^short = "Дополнительные сведения о месте создания контента (например, клиническая специализация)"
// * practiceSetting from UZCorePractitionerRole

* period MS
* period ^short = "Время обслуживания, которое документируется"

* date MS
* date ^short = "Когда была создана эта ссылка на документ"

* author MS
* author ^short = "Кто и/или что является автором документа"
* author only Reference(UZCorePractitioner or UZCoreOrganization)

* attester MS
* attester ^short = "Подтверждает точность документа."
* attester.mode MS
* attester.mode ^short = "личный | профессиональный | юридический | официальный"
* attester.mode from DocRefComAttVS
* attester.time MS
* attester.time ^short = "Когда документ был заверен"
* attester.party MS
* attester.party ^short = "Кто заверил документ?"
* attester.party only Reference(UZCoreOrganization)

* custodian MS
* custodian ^short = "Организация, которая ведет документ"
* custodian only Reference(UZCoreOrganization)

* relatesTo MS
* relatesTo ^short = "Справка из роддома прилагается."

* relatesTo.target MS
* relatesTo.target ^short = "Цель отношений"

* description MS
* description ^short = "Описание, понятное человеку"

* content.profile MS
* content.profile ^short = "Правила профиля содержимого документа"
* content.profile.value[x] MS
* content.profile.value[x] ^short = "Код|uri|канонический"
* content.profile.value[x] from http://terminology.hl7.org/ValueSet/v3-HL7FormatCodes (required)