Profile: ObservationBirth
Parent: UZCoreObservation
Id: observation-birth
Title: "Observation of Birth"
Description: "Assessment of the newborn's condition"
* ^status = #draft

* identifier MS
* identifier ^short = "Идентификатор для наблюдения"

* status MS
* status ^short = "зарегистрированный | образец в процессе обработки | предварительный | окончательный | измененный | исправленный | добавленный | аннулированный | введенный по ошибке | неизвестный | не может быть получен"
* status from DocRefComStatusVS (required)

* category MS
* category ^short = "Классификация видов наблюдения"
* category from https://terminology.dhp.uz/fhir/core/ValueSet/observation-category-vs  (required)

* code MS
* code ^short = "Тип наблюдения (код/тип)"
* code from http://loinc.org (required)

* subject MS
* subject ^short = "о пациенте (ребенок)"
* subject only Reference(PatientBirth)

* effective[x] MS
* effective[x] ^short = "Клинически значимое время/период наблюдения"

* performer MS
* performer ^short = "Врач или специалист, измеривший результат"
* performer only Reference(UZCorePractitioner)

* value[x] MS
* value[x] ^short = "Фактический результат"

* valueQuantity MS
* valueQuantity ^short = "Рост, вес ребенка при рождении"

* valueQuantity.value and valueQuantity.unit and valueQuantity.system and valueQuantity.code MS


* valueQuantity.value ^short = "Числовое значение (с неявной точностью)"
* valueQuantity.unit ^short = "Представление единицы"
* valueQuantity.system ^short = "Система, определяющая форму кодированной единицы"

// * valueQuantity.value from CodeableReference(APGARsocreVS) (required)  // Vadim Could you see that part
* valueQuantity.code from ObservationUCUMVS (required)
