//after merging BloodDonorDeferralObservation we will remove this code system and use the donor-deferral-reason-vs value set instead
CodeSystem: DonorDeferralReasonCS
Id: donor-deferral-reason-cs
Title: "Donor deferral reason"
Description: "Local blood service categories used to record reasons for donor deferral."
* insert OriginalCodeSystemDraft(donor-deferral-reason-cs)

* #donrsn-0001-00001 "Tatuirovka, piercing yoki akupunktura"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Татуировка, пирсинг или иглоукалывание"
  * ^designation[+].language = #en
  * ^designation[=].value = "Tattoo, piercing or acupuncture"
* #donrsn-0001-00002 "Endoskopiya, biopsiya yoki tish sug‘urish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эндоскопия, биопсия или удаление зуба"
  * ^designation[+].language = #en
  * ^designation[=].value = "Endoscopy, biopsy or tooth extraction"
* #donrsn-0001-00003 "Qon yoki uning komponentlarini quyish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Переливание крови или её компонентов"
  * ^designation[+].language = #en
  * ^designation[=].value = "Blood or blood component transfusion"
* #donrsn-0001-00004 "Gripp, O‘RVI yoki angina"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Грипп, ОРВИ или ангина"
  * ^designation[+].language = #en
  * ^designation[=].value = "Flu, ARVI or tonsillitis"
* #donrsn-0001-00005 "Dori qabul qilish yoki doimiy davolanish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Приём лекарств или постоянное лечение"
  * ^designation[+].language = #en
  * ^designation[=].value = "Medication use or ongoing treatment"
* #donrsn-0001-00006 "Oxirgi qon topshirish sanasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Дата последней сдачи крови"
  * ^designation[+].language = #en
  * ^designation[=].value = "Date of most recent blood donation"
* #donrsn-0001-00007 "Homiladorlik"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Беременность"
  * ^designation[+].language = #en
  * ^designation[=].value = "Pregnancy"
* #donrsn-0001-00008 "Emizish davri"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Грудное вскармливание"
  * ^designation[+].language = #en
  * ^designation[=].value = "Breastfeeding"
* #donrsn-0001-00009 "Surunkali kasallik"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Хроническое заболевание"
  * ^designation[+].language = #en
  * ^designation[=].value = "Chronic disease"
* #donrsn-0001-00010 "Stomatologik muolaja"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Стоматологическая процедура"
  * ^designation[+].language = #en
  * ^designation[=].value = "Dental procedure"
* #donrsn-0001-00011 "Bezgak xavfi bo‘lgan hududga tashrif yoki bezgak bilan bog‘liq holat"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Посещение региона риска малярии или связанное с малярией состояние"
  * ^designation[+].language = #en
  * ^designation[=].value = "Travel to a malaria-risk area or malaria-related condition"
* #donrsn-0001-00012 "Jarrohlik yoki tibbiy aralashuv"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Хирургическое или медицинское вмешательство"
  * ^designation[+].language = #en
  * ^designation[=].value = "Surgery or medical intervention"
* #donrsn-0001-00013 "OIV testi ijobiy natijasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Положительный результат теста на ВИЧ"
  * ^designation[+].language = #en
  * ^designation[=].value = "Positive HIV test result"
* #donrsn-0001-00014 "Gepatit B testi ijobiy natijasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Положительный результат теста на гепатит B"
  * ^designation[+].language = #en
  * ^designation[=].value = "Positive hepatitis B test result"
* #donrsn-0001-00015 "Gepatit C testi ijobiy natijasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Положительный результат теста на гепатит C"
  * ^designation[+].language = #en
  * ^designation[=].value = "Positive hepatitis C test result"
* #donrsn-0001-00016 "Sifilis testi ijobiy natijasi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Положительный результат теста на сифилис"
  * ^designation[+].language = #en
  * ^designation[=].value = "Positive syphilis test result"
* #donrsn-0001-00017 "Tug‘ruq yoki homila tushishidan keyingi davr"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Период после родов или выкидыша"
  * ^designation[+].language = #en
  * ^designation[=].value = "Postpartum period or period after miscarriage"
* #donrsn-0001-00018 "Avval gepatit yoki brutsellyoz bilan kasallanganlik"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Перенесённый гепатит или бруцеллёз"
  * ^designation[+].language = #en
  * ^designation[=].value = "History of hepatitis or brucellosis"
* #donrsn-0001-00019 "Emlash"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Вакцинация"
  * ^designation[+].language = #en
  * ^designation[=].value = "Vaccination"
* #donrsn-0001-00020 "So‘nggi 3 oyda tungi terlash, vazn yo‘qotish, titroq, diareya yoki limfa tugunlari kattalashishi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ночная потливость, потеря веса, озноб, диарея или увеличение лимфоузлов за последние 3 месяца"
  * ^designation[+].language = #en
  * ^designation[=].value = "Night sweats, weight loss, chills, diarrhea or enlarged lymph nodes in the last 3 months"
* #donrsn-0001-00021 "OIV yoki gepatit bilan kasallangan shaxs bilan aloqa"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Контакт с человеком, инфицированным ВИЧ или гепатитом"
  * ^designation[+].language = #en
  * ^designation[=].value = "Contact with a person infected with HIV or hepatitis"
* #donrsn-0001-00022 "Himoyalanmagan tasodifiy jinsiy aloqa"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Случайный незащищённый половой контакт"
  * ^designation[+].language = #en
  * ^designation[=].value = "Casual unprotected sexual contact"
* #donrsn-0001-00023 "Jinsiy yo‘l bilan yuqadigan infeksiyalarni davolash"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лечение инфекций, передающихся половым путём"
  * ^designation[+].language = #en
  * ^designation[=].value = "Treatment for sexually transmitted infections"
* #donrsn-0001-00024 "Umumiy igna yoki shpritslardan foydalanish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Использование общих игл или шприцев"
  * ^designation[+].language = #en
  * ^designation[=].value = "Sharing needles or syringes"
* #donrsn-0001-00025 "Ozodlikdan mahrum etish joylarida bo‘lish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Пребывание в местах лишения свободы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Incarceration"
* #donrsn-0001-00026 "Bugun o‘zini yomon his qilish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Плохое самочувствие в день визита"
  * ^designation[+].language = #en
  * ^designation[=].value = "Feeling unwell on the day of visit"
* #donrsn-0001-00027 "Qonni tekshirishga rozilik bermaslik"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отказ от согласия на тестирование крови"
  * ^designation[+].language = #en
  * ^designation[=].value = "Refusal to consent to blood testing"
* #donrsn-0001-00028 "Deklaratsiyani tasdiqlamaslik"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Декларация не подтверждена"
  * ^designation[+].language = #en
  * ^designation[=].value = "Declaration not confirmed"
