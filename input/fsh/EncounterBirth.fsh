Profile: EncounterBirth
Parent: UZCoreEncounter
Id: encounter-birth
Title: "Encounter of Birth"
Description: "Uzbekistan Birth Encounter profile, used to represent patients administrative information"
* ^status = #draft
* ^experimental = true

* serviceType MS
* serviceType ^short = "Конкретный тип услуги"

* subject MS
* subject only Reference(PatientBirth) //(Patient - Child Vital Records)
* subject ^short = "Младенец, связанный с этой встречей"

* partOf MS
* partOf ^short = "Ссылка на мать(Encounter)"

* serviceProvider MS
* serviceProvider ^short = "Организация (учреждение), ответственная за этот Encounter"

* participant MS
* participant ^short = "Врач (фельдшер или акушер), выдавший медицинское свидетельство о рождении"
* participant.actor MS
* participant.actor ^short = "Личность, участвующая во встрече"
* participant.period MS
* participant.period ^short = "Период времени во время встречи, в котором участвовал участник"
* participant
  * type MS
  * ^short = "Роль участника встречи"

* actualPeriod MS
* actualPeriod ^short = "Фактическое время начала и окончания встречи"

* plannedStartDate MS
* plannedStartDate ^short = "Планируемая дата/время начала (или дата поступления) встречи"

* plannedEndDate MS
* plannedEndDate ^short = "Планируемая дата/время окончания (или дата выписки) встречи"

* diagnosis MS
* diagnosis.condition MS
* diagnosis.condition ^short = "Наблюдаемые врожденные проблемы (например, желтуха, врожденные аномалии)
Диагностические состояния при рождении (например, низкий вес при рождении, респираторный дистресс)
Клинические оценки, связанные с рождением (например, признаки инфекции, аномальные результаты по шкале Апгар)"

* location MS
* location.location 1..1 MS
* location.location ^short = "Место, где родился младенец"