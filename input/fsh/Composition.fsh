Profile: CompositionBirth
Parent: Composition
Id: composition-birth
Title: "Bith Composition"
Description: "Composition foor Birth profile"
* ^experimental = true
* ^status = #draft
* ^publisher = "Uzinfocom"

* identifier MS
* identifier ^short = "Уникальный идентификатор документа"

* status MS
* status ^short = "Статус документа"
* status from  http://hl7.org/fhir/ValueSet/composition-status (required)

* type MS
* type ^short = "Тип документа"
* type from  http://hl7.org/fhir/ValueSet/doc-typecodes (required)

* date MS
* date ^short = "Дата составления документа"

* title MS
* title ^short = "Название документа"

* subject MS
* subject ^short = "Основной пациент (ребёнок)"
* subject only Reference(Patient)

* author MS
* author ^short = "Кто оформил (фельдшер, врач)"
* author only Reference(PractitionerRole)

* custodian MS
* custodian ^short = "Организация, ответственная за документ"
* custodian only Reference(Organization)

* section MS
* section ^short = "Секции с вложенными данными"

* section.title MS
* section.title ^short = "Метка для раздела"

* section.entry
* section.entry ^short = "Ссылка на данные, подтверждающие этот раздел"