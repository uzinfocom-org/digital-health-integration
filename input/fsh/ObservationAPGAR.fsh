Profile: ObservationAPGAR
Parent: UZCoreObservation
Id: observation-apgar
Title: "Observation APGAR of Birth"
Description: "Assessment of the newborn's condition"
* ^status = #draft

* identifier MS
* identifier ^short = "Оценка состояния новорожденного"

* status MS
* status ^short = "«окончательный» (потому что результаты по шкале Апгар уже закончились)"
* status from DocRefComStatusVS (required)

* category MS
* category ^short = "Категория: обследование или показатели жизнедеятельности"
* category from https://terminology.dhp.uz/fhir/core/ValueSet/observation-category-vs  (required)

* code MS
* code ^short = "Тип наблюдения (код/тип)"
* code from http://loinc.org (required) //need have to add LOINC codes here(in link)

* subject MS
* subject ^short = "о пациенте (ребенок)"
* subject only Reference(PatientBirth)

* performer MS
* performer ^short = "Специалист, который проверял по шкале Апгар"
* performer only Reference(UZCorePractitioner)

* value[x] MS
* value[x] ^short = "Оценка по шкале Апгар: 1 - 10 результат"

* valueQuantity MS
* valueQuantity ^short = "Рост, вес ребенка при рождении"

* valueQuantity.value and valueQuantity.unit and valueQuantity.system and valueQuantity.code MS


* valueQuantity.value ^short = "Числовое значение (с неявной точностью)"
* valueQuantity.unit ^short = "Представление единицы"
* valueQuantity.system ^short = "Система, определяющая форму кодированной единицы"

// * valueQuantity.value from CodeableReference(APGARsocreVS) (required)  // Vadim Could you see that part
* valueQuantity.code from ObservationUCUMVS (required)
