CodeSystem: DiagnosisRoleCS
Id: diagnosis-role
Title: "Diagnosis Role Code System"
Description: "Roles a diagnosis can play within a clinical document (e.g. main, competing, concomitant, background, complication, and causes of death). Used to make each diagnosis self-identifying so a source form can be reconstructed without relying on the order of entries. Reusable across MoH forms (uz/ru/en). Currently used in [Form 066 - Hospital Discharge Statistical Card](StructureDefinition-form-066-hospital-discharge-composition.html) and [Form 066-1 - Psychiatric/Narcological Discharge Statistical Card](StructureDefinition-form-066-1-psychiatric-discharge-composition.html)."
* insert OriginalCodeSystemDraft(diagnosis-role)

* #referral "Yo'llagan muassasa tashxisi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Диагноз направившего учреждения"
  * ^designation[+].language = #en
  * ^designation[=].value = "Referring institution diagnosis"

* #admission "Qabul bo'limi tashxisi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Диагноз при поступлении"
  * ^designation[+].language = #en
  * ^designation[=].value = "Admission diagnosis"

* #main "Asosiy tashxis"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Основной диагноз"
  * ^designation[+].language = #en
  * ^designation[=].value = "Main diagnosis"

* #competing "Raqobat tashxis"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Конкурирующий диагноз"
  * ^designation[+].language = #en
  * ^designation[=].value = "Competing diagnosis"

* #concomitant "Yondosh tashxis"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Сопутствующий диагноз"
  * ^designation[+].language = #en
  * ^designation[=].value = "Concomitant diagnosis"

* #background "Fon tashxis"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Фоновый диагноз"
  * ^designation[+].language = #en
  * ^designation[=].value = "Background diagnosis"

* #complication "Asorat"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Осложнение"
  * ^designation[+].language = #en
  * ^designation[=].value = "Complication"

* #immediate-cause-of-death "O'limga olib kelgan bevosita sabab"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Непосредственная причина смерти"
  * ^designation[+].language = #en
  * ^designation[=].value = "Immediate cause of death"

* #underlying-cause-of-death "O'lim sababini bevosita chaqiruvchi kasallik"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Заболевание, вызвавшее непосредственную причину смерти"
  * ^designation[+].language = #en
  * ^designation[=].value = "Underlying cause of death"

* #main-disease-death "Asosiy kasallik"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Основное заболевание"
  * ^designation[+].language = #en
  * ^designation[=].value = "Main disease (cause of death)"

* #other-significant-death "Boshqa muhim kasalliklar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другие значимые заболевания"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other significant diseases"
