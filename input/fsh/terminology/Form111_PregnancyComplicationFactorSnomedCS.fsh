CodeSystem: Form111_PregnancyComplicationFactorSnomedCS
Id: form111-pregnancy-complication-factor-snomed-cs
Title: "Form 111 Pregnancy Complication Factor SNOMED CT CodeSystem"
Description: "SNOMED CT supplement containing Uzbek and Russian designations for pregnancy complication factors used in Form 111."

* insert SupplementCodeSystemDraft(
    form111-pregnancy-complication-factor-snomed-cs,
    $sct,
    2026.1.0
)

* #871005 "Contracted pelvis"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Anatomik tor chanoq"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Анатомически узкий таз"

* #271737000 "Anemia"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Anemiya"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Анемия"

* #34842007 "Antepartum hemorrhage"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Homiladorlikning birinchi yoki ikkinchi yarmida qon ketishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Кровотечение в первой или второй половине беременности"

* #40733004 "Infectious disease"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Virusli infeksiyaning zo'rayishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Обострение вирусной инфекции"

* #80002007 "Malpresentation of fetus"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Homilaning noto'g'ri joylashuvi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Неправильное положение плода"

* #16356006 "Multiple pregnancy"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ko'p homilali homiladorlik"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Многоплодная беременность"

* #59566000 "Oligohydramnios"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Kam suvlik"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Маловодие"

* #237292005 "Placental insufficiency"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Platsentar yetishmovchilik"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Плацентарная недостаточность"

* #86203003 "Polyhydramnios"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ko'p suvlik"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Многоводие"

* #90968009 "Post-term pregnancy"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Muddati o'tgan homiladorlik"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Переношенная беременность"

* #237300009 "Pregnancy with isoimmunization"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Rh va ABO izoimmunizatsiyasi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Rh- и ABO-изоиммунизация"

* #54048003 "Threatened miscarriage"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Homiladorlikni to'xtatish xavfi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Угроза прерывания беременности"

* #90325002 "Vomiting of pregnancy"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Homiladorlikdagi qusish"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Рвота беременных"