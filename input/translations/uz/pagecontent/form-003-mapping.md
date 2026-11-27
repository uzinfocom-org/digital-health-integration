<style>
/* Per-form mapping-table column widths (003: long UZ/RU phrases, codes carry display names). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
.col-12 th:nth-child(1), .col-12 td:nth-child(1) { width: 23%; }
.col-12 th:nth-child(2), .col-12 td:nth-child(2) { width: 23%; }
.col-12 th:nth-child(3), .col-12 td:nth-child(3) { width: 18%; }
.col-12 th:nth-child(4), .col-12 td:nth-child(4) { width: 19%; }
.col-12 th:nth-child(5), .col-12 td:nth-child(5) { width: 17%; }
</style>

> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### 003-shakl - Statsionar bemorning tibbiy kartasi

Ushbu sahifada [003-shakl](forms-volume-01-inpatient.html) (Statsionar bemorning tibbiy kartasi / Медицинская карта стационарного больного) maydonlarining FHIR resurslari bilan moslashtirilishi tavsiflanadi.

---

### Umumiy ma'lumot

003-shakl - butun statsionarda yotish davomida yuritiladigan to'liq tibbiy karta: yotqizish, birlamchi ko'rik, tashxislar, dori va muolaja varaqalari, harorat jadvali, kundalik hamda chiqarishdagi natija. Shakl ma'lumotlari [Form 003 Inpatient Medical Record Card Composition](StructureDefinition-form-003-inpatient-medical-record-composition.html) profiliga mos keluvchi FHIR hujjatiga birlashtirilgan bir nechta FHIR resurslari bilan moslashtiriladi. Imkoni bo'lgan joyda resurslar [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html) profillariga mos keladi.

Qog'oz shaklda qiymat sana maydoni va vaqt maydoniga ajratilgan joylarda ular bitta FHIR [`dateTime`](https://hl7.org/fhir/R5/datatypes.html#dateTime) ga birlashtiriladi. Imzolar [Provenance](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-provenance.html) resurslari bilan ifodalanadi; imzolovchi mas'ul shaxslar «Mas'ul shaxslar» bo'limida PractitionerRole havolalari sifatida keltiriladi.

To'liq namunaviy nusxa uchun [003-shakl statsionar bemorning tibbiy kartasi misoli](Bundle-example-form-003-inpatient-medical-record.html)ga qarang.

---

### DMED qiymatlarini moslashtirish

DMED 003-shakl titul varag'i qiymatlarini o'z tokenlari bilan yuboradi. Ushbu ConceptMap'lar har bir token uchun yuboriladigan kodni beradi; qon guruhi va Rezus mansubligi 111-shakldagi tokenlardan foydalanadi va uning xaritalarini qayta ishlatadi.

| DMED maydoni | ConceptMap | Maqsad |
|----|----|----|
| `blood_group` | [dmed-form-111-blood-group-cm](ConceptMap-dmed-form-111-blood-group-cm.html) | qon guruhi Observation qiymati (LOINC `883-9`) |
| `rh_factor` | [dmed-form-111-rhesus-factor-cm](ConceptMap-dmed-form-111-rhesus-factor-cm.html) | Rezus mansubligi Observation qiymati (LOINC `10331-7`) |
| `transporting_method` | [dmed-form-003-transporting-method-cm](ConceptMap-dmed-form-003-transporting-method-cm.html) | bemorni tashish usuli Observation qiymati |
| `result_treatment` | [dmed-form-003-result-treatment-discharge-disposition-cm](ConceptMap-dmed-form-003-result-treatment-discharge-disposition-cm.html) | Encounter.admission.dischargeDisposition |
| `result_treatment` | [dmed-form-003-result-treatment-death-cm](ConceptMap-dmed-form-003-result-treatment-death-cm.html) | vafot etish holati Observation qiymati: mahalliy kod yoki tug'ruqdan oldin yoki keyin onalar o'limi uchun SNOMED CT |
| `disease-codes[].type` (yakuniy tashxislar) | [dmed-form-027-diagnosis-type-cm](ConceptMap-dmed-form-027-diagnosis-type-cm.html) | Condition.category, yakuniy tashxis kichik bo'limi; 027 va 066-shakllardagi tokenlar bilan bir xil |
| `working_capacity` | [dmed-form-003-working-capacity-cm](ConceptMap-dmed-form-003-working-capacity-cm.html) | mehnat qobiliyati holati Observation qiymati |
| `analyses[].title` | [dmed-form-003-analyses-cm](ConceptMap-dmed-form-003-analyses-cm.html) | qabulda tekshiruv Observation yoki DiagnosticReport kodi |

Encounter - shu gospitalizatsiya bo'yicha 066-shakl yuboradigan Encounter, DMED gospitalizatsiya identifikatori bilan. Shoshilinchlik, qabul manbai, takroriy yotqizish va klinik holat (`Encounter.priority`, `admission.admitSource`, `admission.reAdmission`, `subjectStatus`) shu gospitalizatsiyaning 066-shakl kartasidan 066-shakl qoidalari bo'yicha olinadi, shuning uchun ikkala hujjat bir xil qiymatlarni yuboradi. Titul varag'idagi `quickly_taken` va `readmission_same_reason` maydonlari Encounter ga yozilmaydi.

To'lov turi ham 066-shakl kartasidan (`payment_type`) olinadi: u ma'muriy ma'lumotlar bo'limida `Coverage` sifatida (`type` - `coverage-type-cs` dan, oluvchi - bemor) 066-shakl to'lov turi xaritasi bo'yicha yuboriladi. Titul varag'idagi `price_list` yuborilmaydi.

### 2026-yil 23–24-noyabrda tekshirilgan DMED manbalari

Kelishilgan DMED eksportida faqat DMED 003-shaklining o'zidagi maydonlar hamda oldin kelishilgan 066-shaklning umumiy Encounter va to'lov ma'lumotlari uzatiladi. Quyidagi jadvallar qog'oz shaklni ham tavsiflaydi; ular DMEDdan qo'shimcha ma'lumot yig'ish talablari emas. Alohida davolash kursi modulidan dori buyurish va bajarish yozuvlari ushbu hujjat uchun olinmaydi. To'liq qog'oz shakl namunasi umumiy profilni ko'rsatadi, DMED eksporti tarkibini emas.

Titul varag'ida Selsiy darajasidagi bitta `temperature` maydoni bor, ertalab/kechqurun o'lchovlar qatori emas. Qiymat shaxsiy ma'lumotlarda quyidagi sanasiz ko'rsatkich qoidasiga ko'ra saqlanadi. `treatment` (Boshqa davolash turlari) va `comment` erkin matndir. `treatment` `section[surgicalProcedures].text` da saqlanadi; muolaja kodi, holati yoki bajarish vaqti o'ylab topilmaydi. Har bir `analyses[]` yozuvi o'z `title`, matnli `result` va faqat sanadan iborat `date_of_conduct` ni saqlaydi; vaqt yoki vaqt zonasi qo'shilmaydi. Bu maydonlarni saqlash va qayta o'qish test UI orqali tekshirildi. Davomiylik va yillik jami to'ldirilmaganida API nol qaytarishi, UI esa bo'sh qiymat ko'rsatishi mumkin; nolning o'zi maydon to'ldirilganini tasdiqlamaydi. Bu standart qiymatlar qayd etilgan nol davomiylik yoki nol gospitalizatsiyaga aylantirilmaydi.

Tekshirilgan manbada titul varag'idagi `height`, `weight` va `temperature` ning o'z o'lchov sanasi yo'q. Sanasiz qiymatlar va birliklar `section[personalInformation].text` da saqlanadi. Tuzilmaviy hayotiy ko'rsatkich Observation faqat o'lchov sanasi manbada tasdiqlanganda yaratiladi; uning o'rniga qabul, hujjat yaratish yoki saqlash vaqti qo'yilmaydi. Standart [hayotiy ko'rsatkichlar profillari](https://hl7.org/fhir/R5/observation-vitalsigns.html) `effective[x]` ni talab qiladi. Rasmiy ValidationEngine sanasiz bo'y, vazn va harorat Observationlarini rad etadi, ammo shu qiymatlar matnda saqlangan qisman hujjatni qabul qiladi. Matnli davolash bo'limi va faqat sanali `effectiveDateTime` bilan laboratoriya natijasi ham o'ylab topilgan aniqliksiz tekshiruvdan o'tadi.

Titul varag'idagi boshqa matnli maydonlar ham asl ma'noda saqlanadi. `side_effects_medications` dori va uning nojo'ya ta'sirlari uchun bitta birlashgan maydon: u `section[personalInformation].text` da saqlanadi, kodlangan allergiya, dori yoki reaksiya avtomatik ajratilmaydi. `working_place` ish, o'qish, kasb yoki nogironlik haqidagi birlashgan matndir, alohida kodlangan javoblar emas. Matn shaxsiy ma'lumotlarda saqlanadi, alohida kasb yoki nogironlik kodlari o'ylab topilmaydi. `report` tibbiy ekspertizaga yuborish xulosasi (`section[expertiseReferralConclusion].text`), vafotdan keyingi xulosa emas. `additional_signs` `section[specialMarks].text` da, umumiy `comment` esa `section[administrativeInformation].text` da uzatiladi. Operatsiyaning matnli nomi ICHI kodini belgilamaydi; ushbu eksport uchun kod olish maqsadida alohida operatsiya yozuvi so'ralmaydi.

DMED hujjati faqat mavjud ma'lumotlarni saqlaydi. Barcha 20 nomlangan bo'lim va yakuniy tashxis rollari ixtiyoriy. Yuborilgan bo'lim uchun sarlavha, kod, havola turlari va FHIR mazmun qoidalari saqlanadi; matn, yozuvlar va ichki bo'limlar tegishli bo'lim qoidalari bo'yicha beriladi. Hujjat sarlavhasi va UZ Core talablari saqlanadi. Mavjud bo'lmagan klinik qiymat yoki imzo yaratilmaydi. [Qisman hujjat namunasi](Bundle-example-form-003-partial-inpatient-medical-record.html). Profil qog'oz shakldagi har bir rozilik, konsilium bayonnomasi va batafsil neonatal/soatlik varaqni alohida tuzilmaviy qamrab olishni da'vo qilmaydi.

Titul varag'i `GET /api/mis/v2/hospitalizations/{id}/title-page` orqali olinadi. Sahifa gospitalizatsiya va tibbiy holatni ham oladi. Titul varag'i javobi to'liq statsionar kartaning bir qismidir. UI da ko'riklar, epikrizlar, tekshiruv rejasi, tahlillar va davolash kurslari alohida bo'limlarda mavjud. Bo'limning UI da borligi uning barcha maydonlarini eksport qilish shartnomasini tasdiqlamaydi.

Statsionar karta raqami — `hospitalization.number` (masalan, `38-2026`); u `section[administrativeInformation].text` da saqlanadi. Encounter texnik identifikatori 066 bilan umumiy `https://dhp.uz/fhir/core/sid/doc/uz/medical-record-number` tizimidagi `hospitalization.id` bo'lib qoladi. Bemor Med ID — `patient.number_med_card`; titul varag'idagi `number` — `Shartnoma №`. Bu qiymatlar bir-birining o'rniga ishlatilmaydi.

`analyses[]` elementi `title`, `result`, `date_of_conduct` maydonlarini saqlaydi. Natija erkin matn bilan kiritiladi. `date_of_conduct` kuzatuvning samarali sanasiga manba aniqligida uzatiladi. `rw-1`, `rw-2` va `hiv`, `hiv_II`, `hiv_express` alohida tahlil yozuvlaridir. Najas bakposevining amaldagi tokeni — `stool-culture`. Eski ma'lumotlar uchun `blood`, `feces_back_seeding`, `abstract_disease` manba kod tizimida saqlangan.

Har bir tahlil yozuvining o'z natijasi bor. Eski birlashtirilgan `blood` nomi RW hamda OIV natijalarini birgalikda tasdiqlamaydi. RW nomlari LOINC `22461-8` uchun analit va qon zardobi namunasini tasdiqlamaydi. OIV nomlari LOINC `56888-1` dagi antitana/antigen tarkibi va usulini tasdiqlamaydi; aniq LOINC hali belgilanmagan. Aniqlashtirilguncha kuzatuv manba kod tizimi bilan ifodalanishi mumkin. Musbat va manfiy natijalar manba matni buni aniq tasdiqlasa `positive-negative-result-vs` bilan kodlanadi va asl matn saqlanadi. Boshqa matnli natijalar `Observation.valueString` orqali yuborilishi mumkin.

DMED og'riqsizlantirish usulini `surgical_operations[].method_anesthesia` matnida saqlaydi. 23-noyabr qaroriga ko'ra u tegishli operatsiyaning `Procedure.note.text` maydonida uzatiladi. Titul varag'idagi operatsiyalar tahrirlanadigan matnli nusxalardir; ICHI kodi uchun kodlangan aralashuv manbai alohida aniqlanishi kerak. Mavjud [Anesthesia Method](ValueSet-anesthesia-method-vs.html) ma'lumotnomasi saqlanadi, ammo u DMED erkin matn maydoni uchun kodlangan qiymatni tasdiqlamaydi.

`permanent_residence_areas` shahar/qishloq belgisi kelishilgan payloadga kirmaydi; bemor manzili saqlanadi. `hospitalization_reason` alohida Observation: kodi [003 kuzatuv kodlari](CodeSystem-form-003-observation-code-cs.html) dan `hospitalization-reason`, qiymati [DMED yotqizish sabablari](ValueSet-dmed-form-003-hospitalization-reason-vs.html) dan olinadi. [Manba kod tizimi](CodeSystem-dmed-form-003-hospitalization-reason-cs.html) `disease`, `injury`, `car_accident`, `planned` ni saqlaydi. Bu 066 dan olinadigan shoshilinchlikni o'zgartirmaydi.

Yillik jami shu kasallik bo'yicha joriy kalendar yildagi, joriy gospitalizatsiyani ham o'z ichiga oladigan sondir (Ernest, 2026-yil 24-noyabr). [003 kuzatuv kodlari](CodeSystem-form-003-observation-code-cs.html) dan `same-condition-hospitalizations-this-year` va `valueInteger` ishlatiladi. Joriy holat ayirilmaydi, yo'q qiymatga standart son qo'yilmaydi. Titul varag'idagi birlamchi/takroriy javobi `section[hospitalizationSummary].text` da saqlanadi; umumiy Encounter takroriyligi 066 dan olinadi.

Qog'oz shakl birlamchi ko'rikning o'z sanasi va vaqtini saqlaydi. Ular `section[primaryExamination].text` da ko'rik matni bilan uzatiladi. Bu Condition birinchi yozilgan vaqtini bildiruvchi `Condition.recordedDate` emas. DMED tashxis jadvali `disease-codes[].date` ni o'qiydi; birinchi qayd etish bilan mosligi tasdiqlanmaguncha shifoxona tashxisi sanasi `section[admissionInformation].text` da saqlanadi. Tekshirilgan API javobida shifoxona tashxislari bo'lmagan.

DMED yotoq-kunlarni ikkala sana mavjud bo'lganda `ceil((hospitalization_end_date - hospitalization_start_date) / 24 soat)` sifatida hisoblaydi. Kelishilgan DMED xaritasida yaxlitlangan son `Encounter.length` da UCUM `d` bilan uzatiladi. Qabul qilish va chiqarishning manba sana/vaqtlari `Encounter.actualPeriod` da saqlanadi; ular yaxlitlanmaydi va sondan qayta hisoblanmaydi. Bu yerda `length` DMED davomiyligining kunlargacha yuqoriga yaxlitlangan qiymati, shuning uchun u `actualPeriod` dagi aniq oraliqdan farq qilishi mumkin. Manba sanalari bo'lmasa, son yuborilmaydi. Kundalikning manba sana/vaqti mazmuni bilan `section[diary].text` da saqlanadi. Frontend `start_at`, u yo'q bo'lsa `created_at` ni ko'rsatadi; tekshirilgan kundalik API javobi bo'sh edi. To'ldirilgan javob hali tekshirilishi kerak. Muharrir qo'ygan joriy vaqt ko'rik yoki kundalik vaqti sifatida eksport qilinmaydi.

Ernestning 2026-yil 23-noyabrdagi tasdig'iga ko'ra hujjat 066-shakl bilan bir xil usulda imzolanadi. Provenance imzosini to'ldirish uchun haqiqiy imzo ma'lumotlari zarur.


---

### Maydonlarni moslashtirish

### UZ-003 Statsionar bemorning tibbiy kartasi - FHIR bilan moslashtirish

---

### Hujjat ma'lumotlari

| UZ | RU | FHIR yo'li | Kod | Misol |
|----|----|------------|------|---------|
| Hujjat instansiyasi UUID | Идентификатор документа | Composition.identifier | `urn:ietf:rfc:3986` | urn:uuid:861f9511-f30c-52e5-b827-557766550003 |
| Shakl raqami | Номер формы | Composition.identifier | `https://dhp.uz/fhir/core/sid/doc/uz/form-number` | 003 |
| Hujjat versiyasi UUID | Идентификатор версии документа | Bundle.identifier | `urn:ietf:rfc:3986` | urn:uuid:760e8400-e29b-41d4-a716-446655440003 |
| Hujjat holati | Статус документа | Composition.status | [Hujjat holatlari](document-statuses.html): `preliminary` statsionarda bo'lgan paytda, `final` karta yopilgach | final |
| Hujjat turi | Тип документа | Composition.type | [Composition Type](https://terminology.dhp.uz/fhir/core/ValueSet/composition-type-vs) `emdoc-0010-0003` "Patient Medical Record №", plus LOINC `34112-3` "Hospital Note" | - |
| Hujjat kategoriyasi | Категория документа | Composition.category | [Composition Category](https://terminology.dhp.uz/fhir/core/ValueSet/composition-category-vs) `Comp-001-0001` "Medical record" va [Document Category](CodeSystem-document-category-cs.html) `form-003` "Statsionar bemorning tibbiy kartasi" | - |
| Bemor | Пациент | Composition.subject | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html) | Tursunov Alisher Valiyevich |
| Statsionarda yotish | Пребывание в стационаре | Composition.encounter | [Encounter](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-encounter.html) | Statsionarda yotish |
| Davolovchi shifokor | Лечащий врач | Composition.author | [PractitionerRole](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner-role.html) | Rasulov B.B. |
| Hujjat sanasi | Дата документа | Composition.date | - | 2026-02-18T09:00:00+05:00 |
| Hujjat egasi | Организация-хранитель документа | Composition.custodian | [Organization](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-organization.html) | Toshkent shahar klinik shifoxonasi |
| Muassasa STIR | ИНН учреждения | Organization.identifier[taxId] | `https://dhp.uz/fhir/core/sid/org/uz/soliq`, type `TAX` | 202345678 |
| Hujjat sarlavhasi | Заголовок документа | Composition.title | - | Form 003 - Inpatient Medical Record Card |

---

### Ma'muriy ma'lumotlar

| UZ | RU | FHIR yo'li | Kod | Misol |
|----|----|------------|------|---------|
| Muassasa nomi | Наименование учреждения | Organization.name | - | Toshkent shahar klinik shifoxonasi |
| Statsionar bemorning tibbiy karta raqami | Медицинская карта стационарного больного | section[administrativeInformation].text | DMED `hospitalization.number` | 38-2026 |
| Kasalxonaga yotqizilgan kun va vaqti | Дата и время поступления в стационар | Encounter.actualPeriod.start | - | 2026-02-08T10:00:00+05:00 |
| Kasalxonadan chiqarilgan kun va vaqti | Дата и время выписки из стационара | Encounter.actualPeriod.end | - | 2026-02-18T09:00:00+05:00 |
| Statsionar bo'limi | Отделение стационара | Encounter.location.location → [Location](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-location.html) | - | Therapeutic department |
| Statsionar xona raqami | Номер палаты | Location.identifier[unit].value | `type` [Location Kinds](https://dhp.uz/fhir/core/en/CodeSystem-location-kinds-cs.html) `Ward` "Palata" | 214 |
| Ko'chirilgan bo'lim | Переведён в отделение | Encounter.location (repeat) + Encounter.location.period | - | - |
| Yotib davolangan kunlar soni | Количество проведённых койко-дней | Encounter.length | DMED rounded-up day count; UCUM `d` | 10 d |

---

### Shaxsiy ma'lumotlar

| UZ | RU | FHIR yo'li | Kod | Misol |
|----|----|------------|------|---------|
| Bemorning F.I.Sh. | ФИО пациента | Patient.name:official | - | Tursunov Alisher Valiyevich |
| Bemorning tug'ilgan sanasi | Дата рождения пациента | Patient.birthDate | - | 1990-04-12 |
| Bemorning jinsi | Пол пациента | Patient.gender; Patient.gender.extension[gender-other] | [Administrative Gender](https://dhp.uz/fhir/core/en/ValueSet-administrative-gender-vs.html); `other` requires the [Gender Other](https://dhp.uz/fhir/core/en/StructureDefinition-gender-other.html) extension | male |
| Med ID raqami | Med ID пациента | Patient.identifier[healthCardId].value | DMED `patient.number_med_card` | HC-2026-00042 |
| Bemorning yashash joyi | Место жительства пациента | Patient.address:uzAddress (use = home) | - | Toshkent, Yunusobod, 12-mavze, 15-uy |
| Qon guruhi | Группа крови | [Observation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-observation.html).valueCodeableConcept | `code` LOINC `883-9` "ABO group [Type] in Blood"<br>`value` [Blood Group](https://terminology.dhp.uz/fhir/core/ValueSet/blood-group-vs) | A (II) (`112144000`) |
| Rezus mansubligi | Резус-фактор | Observation.valueCodeableConcept | `code` LOINC `10331-7` "Rh [Type] in Blood"<br>`value` [Blood Rh](https://terminology.dhp.uz/fhir/core/ValueSet/blood-rh-vs) | Rh positive (`165747007`) |
| Bemorning bo'yi | Рост пациента | section[personalInformation].text; Observation.valueQuantity only with a source measurement date | LOINC `8302-2` "Body height" | 178 cm |
| Bemorning vazni | Вес пациента | section[personalInformation].text; Observation.valueQuantity only with a source measurement date | LOINC `29463-7` "Body weight" | 82 kg |
| Bemorning harorati | Температура пациента | section[personalInformation].text; Observation.valueQuantity only with a source measurement date | LOINC `8310-5` "Body temperature" | 38.4 Cel |
| Dori vositasining nomi | Наименование лекарственного препарата | [AllergyIntolerance](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-allergy-intolerance.html).code | SNOMED CT / INN | Penicillin |
| Nojo'ya ta'sirining ko'rinishi | Проявление побочного действия | AllergyIntolerance.reaction.manifestation.concept.text | free text | Generalised urticaria |
| Yaqin qarindoshning yashash joyi | Место жительства близких родственников | [RelatedPerson](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-relatedperson.html).address | - | Toshkent, Yunusobod |
| Yaqin qarindoshning telefon raqami | Номер телефона близких родственников | RelatedPerson.telecom[phone].value | - | +998901112233 |


---

### Ijtimoiy-iqtisodiy ma'lumotlar

Qog'oz shaklning 27-32-qatorlari bitta tanlov maydonidir. Har bir to'ldirilgan variant bitta Observation. Kodlanadigan variantlar (kasb, nogironlik) - SNOMED CT kuzatiladigan obyekti va tegishli milliy ValueSet'dan olingan qiymatli [UZCoreSocioeconomicObservation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-socioeconomic-observation.html). Ish joyi, o'qish joyi va bolalar muassasasi erkin matn, shuning uchun ular `valueString` bilan oddiy Observation.

| UZ | RU | FHIR yo'li | Kod | Misol |
|----|----|------------|------|---------|
| Ish joyi | Место работы | Observation.valueString | LOINC `80427-8` "Employer name [Identifier]" | Yunusobod avtoservis |
| Kasbi yoki lavozimi | Профессия или должность | [UZCoreSocioeconomicObservation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-socioeconomic-observation.html).valueCodeableConcept | `code` SNOMED `14679004` "Occupation", as in Form 111<br>`value` [Position and Profession](https://dhp.uz/fhir/core/en/ValueSet-position-and-profession-vs.html) | Car mechanic (`7231.1`) |
| O'qish joyi | Место учёбы | Observation.valueString | LOINC `66280-9` "School Name" | - |
| Bolalar muassasasi | Детское учреждение | Observation.valueString | [Form 003 Observation Code](CodeSystem-form-003-observation-code-cs.html) `children-institution` "Children's institution" | - |
| Nogironlik turi | Вид инвалидности | UZCoreSocioeconomicObservation.valueCodeableConcept | [Benefits](https://dhp.uz/fhir/core/en/ValueSet-benefits-vs.html) | - |
| Nogironlik guruhi | Группа инвалидности | UZCoreSocioeconomicObservation.valueCodeableConcept | [Disability Levels](https://dhp.uz/fhir/core/en/ValueSet-disability-vs.html) | - |
| Urush nogironi | Инвалид войны | UZCoreSocioeconomicObservation.valueCodeableConcept | [Benefits](https://dhp.uz/fhir/core/en/CodeSystem-benefits-cs.html) `regis0004.00004` "Disabled persons and war participants of 1941-1945, as well as persons treated as such" | - |

---

### Yotqizish haqida ma'lumot

| UZ | RU | FHIR yo'li | Kod | Misol |
|----|----|------------|------|---------|
| Bemor yuborilgan shifoxona nomi | Кем направлен больной | Encounter.admission.origin → Organization | - | Yunusobod tuman oilaviy poliklinikasi |
| Kasalxonaga shoshilinch tarzda keltirilgan | Пациент доставлен экстренно | Encounter.priority | [ActPriority](https://terminology.hl7.org/ValueSet-v3-ActPriority.html) `EM` "emergency" / `R` "routine" | Emergency |
| Tez tibbiy yordam transportida keldi | Доставлен транспортом скорой помощи | Observation.valueBoolean | LOINC `LP97912-7` "Ambulance transport" | true |
| Kasalxonaga yotqizish sababi | Причина госпитализации | Observation.valueCodeableConcept | `code` [Form 003](CodeSystem-form-003-observation-code-cs.html) `hospitalization-reason`; `value` [DMED reasons](ValueSet-dmed-form-003-hospitalization-reason-vs.html) | disease |
| Kasallik/jarohatdan keyin yotqizishgacha o'tgan vaqt | Время от начала заболевания/травмы до госпитализации | Observation.valueQuantity | LOINC `77977-7` | 390 |
| Bemorni kelish usuli | Метод прибытия пациента | Encounter.admission.admitSource | [Admit Source Local](https://dhp.uz/fhir/core/en/CodeSystem-admit-source-local-cs.html) | `mserv-0006-00004` "Emergency medical service" |
| Bemor yo'llanmasidagi tashxis | Диагноз в направлении | [Condition](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-condition.html).code; Condition.category | `code` ICD-10<br>`category` [Diagnosis Role](CodeSystem-diagnosis-role-integration.html) `referral` "Referring institution diagnosis" | `J18.9` "Pneumonia, unspecified" |
| Qabulxonada qo'yilgan tashxis | Диагноз в приёмном отделении | Condition.code; Condition.category | `code` ICD-10<br>`category` [Diagnosis Role](CodeSystem-diagnosis-role-integration.html) `admission` "Admission diagnosis" | `J18.9` "Pneumonia, unspecified" |
| Kasalxonada qo'yilgan tashxis | Больничный диагноз (строка 39) | Condition.code; section[admissionInformation].text | ICD-10; DMED komponenti `clinical_diagnosis_justification_epicrisis` va `landmark_epicrisis` manbalaridan tashxislarni tanlaydi | - |
| Tashxis qo'yilgan sana | Дата установления диагноза | section[admissionInformation].text | - | 2026-02-08 |

---

### Qabulda tekshiruv

Birlashtirilgan «qabulda tekshiruv» bloki har bir tekshiruv uchun alohida resursga yoyiladi.

| UZ | RU | FHIR yo'li | Kod | Misol |
|----|----|------------|------|---------|
| Qon RW | RW — отдельные записи DMED | Observation.code; Observation.value[x] | `code` [DMED Form 003 analyses](CodeSystem-dmed-form-003-analyses-cs.html): `rw-1`, `rw-2`; LOINC `22461-8` uchun analit va qon zardobi namunasi tasdiqlanishi kerak<br>`value` [Positive / Negative Result](ValueSet-positive-negative-result-vs.html) manba aniq tasdiqlasa; aks holda asl matn | `260385009` "Negative" |
| OITS | ВИЧ — отдельные записи DMED | Observation.code; Observation.value[x] | `code` [DMED Form 003 analyses](CodeSystem-dmed-form-003-analyses-cs.html): `hiv`, `hiv_II`, `hiv_express`; aniq LOINC uchun tahlil usulini aniqlashtirish kerak<br>`value` [Positive / Negative Result](ValueSet-positive-negative-result-vs.html) manba aniq tasdiqlasa; aks holda asl matn | `260385009` "Negative" |
| Axlat poshevi | Посев кала | [DiagnosticReport](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-diagnostic-report.html).code | LOINC `625-4` "Bacteria identified in Stool by Culture" | - |
| Pedikulyoz | Педикулёз | Observation.code; Observation.valueCodeableConcept | `code` [DMED Form 003 analyses](CodeSystem-dmed-form-003-analyses-cs.html) `pediculosis` (screening item)<br>`value` [Positive / Negative Result](ValueSet-positive-negative-result-vs.html) | Negative |
| Mavhum kasalliklar | Прочие заболевания | Observation.valueString | [Form 003 Observation Code](CodeSystem-form-003-observation-code-cs.html) `other-diseases` "Other diseases" | - |

---

### Birlamchi ko'rik varaqasi

| UZ | RU | FHIR yo'li | Kod | Misol |
|----|----|------------|------|---------|
| Bemorni tekshirish sanasi va vaqti | Дата и время осмотра пациента | section[primaryExamination].text | - | 2026-02-08T10:15:00+05:00 |
| Bemorning yoshi | Возраст пациента | derived from Patient.birthDate and the examination date | - | 35 |
| Shikoyatlar / Boshqa shikoyatlar | Жалобы / Другие жалобы | Observation.valueString | LOINC `8661-1` "Chief complaint - Reported" | Cough, fever, dyspnoea |
| Joylashuvi | Локализация | *(same Observation).bodySite* | [Body Site](https://dhp.uz/fhir/core/en/ValueSet-body-site-vs.html) | `266005` "Structure of lower lobe of right lung" |
| Xususiyati | Характер | *(same Observation).note.text* | free text | Acute onset, productive cough |
| Og'riqli xuruj boshlanishi | Начало приступа | *(same Observation).effectivePeriod.start* | - | 2026-02-04T20:00:00+05:00 |
| Anamnez | Анамнез | section[anamnesis].text | LOINC `11329-0` "History general Narrative - Reported" | narrative |
| Umumiy hozirgi holat | Общее текущее состояние | section[statusPraesens].text | LOINC `10210-3` "Physical findings of General status Narrative" | narrative |
| Mahalliy holat | Местное состояние | section[statusLocalis].text | [Form 003 Composition Section Codes](CodeSystem-form-003-section-cs.html) `status-localis` "Status localis" | narrative |
| Tahminiy tashxis | Предварительный диагноз | Condition.code; Condition.category; Condition.verificationStatus | `code` ICD-10<br>`category` [Diagnosis Role](CodeSystem-diagnosis-role-integration.html) `main` "Main diagnosis"<br>`verificationStatus` `provisional` "Provisional" | `J18.9` "Pneumonia, unspecified" |

---

### Tekshiruv rejasi

| UZ | RU | FHIR yo'li | Kod | Misol |
|----|----|------------|------|---------|
| Tekshiruv rejasi | План обследования | Composition.section[examinationPlan].entry → [ServiceRequest](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-servicerequest.html); the result points back with `DiagnosticReport.basedOn` | LOINC `18776-5` "Plan of care note" | - |

---

### Diagnostik tekshiruv natijalari

| UZ | RU | FHIR yo'li | Kod | Misol |
|----|----|------------|------|---------|
| Qonning umumiy tahlili | Общий анализ крови | DiagnosticReport.code | [Lab Report Types](https://dhp.uz/fhir/core/en/CodeSystem-lab-report-types-cs.html) `lab-rep-01` "CBC panel" | - |
| Umumiy peshob tahlili | Общий анализ мочи | DiagnosticReport.code | [Lab Report Types](https://dhp.uz/fhir/core/en/CodeSystem-lab-report-types-cs.html) `lab-rep-05` "Urinalysis macro (dipstick) panel" | - |
| Biokimyoviy tahlil | Биохимический анализ | DiagnosticReport.code | [Lab Report Types](https://dhp.uz/fhir/core/en/CodeSystem-lab-report-types-cs.html) `lab-rep-07` "Comprehensive metabolic panel" | - |
| Koagulogramma | Коагулограмма | DiagnosticReport.code | [Lab Report Types](https://dhp.uz/fhir/core/en/CodeSystem-lab-report-types-cs.html) `lab-rep-02` "Coagulation panel" | - |
| EKG | ЭКГ | DiagnosticReport.code + conclusion | LOINC `11524-6` "EKG study" | Sinus tachycardia |
| Rentgenologik tekshiruv | Рентгенологическое исследование | DiagnosticReport.code | LOINC `18782-3` "Radiology Study observation (narrative)" | Right lower-lobe consolidation |
| UZI | УЗИ | DiagnosticReport.code | LOINC `25061-3` "US unspecified body region" | - |
| EFDGS | ЭФГДС | DiagnosticReport.code | SNOMED CT `76009000` "Esophagogastroduodenoscopy" | - |
| MSKT / MRT | МСКТ / МРТ | DiagnosticReport.code | LOINC `25045-6` "CT Unspecified body region" (CT) / `25056-3` "MR Unspecified body region" (MR) | - |
| Mutaxassis maslahati | Консультация специалиста | ServiceRequest.code | SNOMED CT `11429006` "Consultation" | - |

---

### Bo'lim shifokori ko'rigi

| UZ | RU | FHIR yo'li | Kod | Misol |
|----|----|------------|------|---------|
| Bo'lim shifokori ko'rigi (tekshiruv va davolash rejasi) | Осмотр врача отделения (план обследования и лечения) | Composition.section[departmentExamination].text (+ entry) | [Form 003 Composition Section Codes](CodeSystem-form-003-section-cs.html) `department-examination` "Department doctor examination" | narrative |

---

### Yakuniy tashxis

Har bir tashxis - bitta Condition. Uning roli `Condition.category`da [Diagnosis Role](CodeSystem-diagnosis-role-integration.html) kodi bilan ko'rsatiladi, Condition esa [Composition'ning shu rolga mos quyi bo'limiga](StructureDefinition-form-003-inpatient-medical-record-composition.html#k-Composition.section:finalDiagnosis) qo'yiladi: Asosiy → `main`, Asosiy kasallikning asorati → `complication`, Aniqlangan yo'ldosh kasalliklar → `concomitant`, Raqobat → `competing`, Fon → `background`.

| UZ | RU | FHIR yo'li | Kod | Misol |
|----|----|------------|------|---------|
| Asosiy | Основное заболевание | Condition.code; Condition.verificationStatus | `code` ICD-10<br>`verificationStatus` `confirmed` "Confirmed" | `J15.9` "Bacterial pneumonia, unspecified" |
| Asosiy kasallikning asorati | Осложнение основного заболевания | Condition.code | ICD-10 | `J90` "Pleural effusion, not elsewhere classified" |
| Aniqlangan yo'ldosh kasalliklar | Выявленные сопутствующие заболевания | Condition.code | ICD-10 | `I10` "Essential (primary) hypertension" |

---

### Jarrohlik amaliyotlari

| UZ | RU | FHIR yo'li | Kod | Misol |
|----|----|------------|------|---------|
| Jarrohlik operatsiyasi nomi | Наименование хирургической операции | [Form 066 Surgical Procedure](StructureDefinition-form-066-surgical-procedure.html).code | [ICHI Codes Accepted by DMED](https://terminology.dhp.uz/fhir/integrations/ValueSet/dmed-ichi-vs) | `JCB.JB.AE` "Percutaneous drainage of pleural cavity" |
| Jarrohlik operatsiyasi sanasi va vaqti | Дата и время хирургической операции | Procedure.occurrenceDateTime | - | 2026-02-10T11:30:00+05:00 |
| Og'riqsizlantirish usullari | Метод анестезии | Procedure.note.text | DMED `surgical_operations[].method_anesthesia`, erkin matn | Local anesthesia |
| Operatsiyadan keyingi asoratlar | Послеоперационные осложнения | Procedure.complication / Condition | SNOMED CT / ICD-10 | - |
| Shifokor F.I.Sh. | ФИО врача-хирурга | Procedure.performer.actor → PractitionerRole | - | Rasulov B.B. |
| Boshqa davolash turlari nomi | Наименование других видов лечения | section[surgicalProcedures].text | DMED `treatment`, free text | - |

---

### Dori vositalarini buyurish varaqasi

Faqat qog'oz shakl uchun ma'lumotnoma. Tekshirilgan DMED 003-shaklida bu varaq yo'q va u kelishilgan DMED eksportiga kirmaydi. Alohida davolash kursi modulidan to'ldirilmaydi.

| UZ | RU | FHIR yo'li | Kod | Misol |
|----|----|------------|------|---------|
| Dori-darmonlarni buyurish sanasi | Дата назначения лекарства | [MedicationRequest](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-medicationrequest.html).authoredOn | - | 2026-02-08T11:00:00+05:00 |
| Buyurilgan dori vositalari nomi | Название назначенного препарата | MedicationRequest.medication.concept | SNOMED CT / ATC / INN | `372670001` "Ceftriaxone" |
| Buyurilgan dori vositalari miqdori | Количество назначенного препарата | MedicationRequest.dosageInstruction.doseAndRate.doseQuantity | UCUM | 2 g |
| Buyurilgan dori vositalari yuborish uslubi | Способ введения | MedicationRequest.dosageInstruction.route | [Route Code](https://dhp.uz/fhir/core/en/ValueSet-route-code-vs.html) | `47625008` "Intravenous route" |
| Muolajani bajarish vaqti | Время выполнения лечения | MedicationRequest.dosageInstruction.timing | - | 1x/24h |
| Muolajani bajarish sanasi | Дата исполнения лечения | [MedicationAdministration](https://hl7.org/fhir/R5/medicationadministration.html).occurenceDateTime | - | 2026-02-08T12:00:00+05:00 |
| Natija (shifokor / hamshira) | Результат (врач / медсестра) | MedicationAdministration.note.text + note.authorReference | - | First dose tolerated well |
| Dori-darmon va tibbiy buyum manbasi | Источник лекарств и медицинских изделий | MedicationRequest.insurance → [Coverage](https://hl7.org/fhir/R5/coverage.html) | [Coverage Type](https://dhp.uz/fhir/core/en/ValueSet-coverage-type-vs.html) | State Health Insurance treated case |
| Parhez stoli raqami | Назначение диетического стола № | Observation.valueCodeableConcept | `code` LOINC `81663-7` "Diet [Type]"<br>`value` [Hospital Diet Type](ValueSet-hospital-diet-type-vs.html) | `chr-0042-0024` "Diet table No. 15 (general table, no special restriction)" |

---

### Muolajalar varaqasi

| UZ | RU | FHIR yo'li | Kod | Misol |
|----|----|------------|------|---------|
| Tayinlangan / buyurilgan tekshiruv | Назначенное исследование | Composition.section[procedureSheet].entry → ServiceRequest / DiagnosticReport | [Service Request Code](https://dhp.uz/fhir/core/en/ValueSet-service-request-code-vs.html) | - |
| O'tkazilgan tekshiruv sanasi | Дата проведённого исследования | DiagnosticReport.effectiveDateTime | - | - |
| Buyurilgan muolajalar | Назначенные процедуры | ServiceRequest.code | [Service Request Code](https://dhp.uz/fhir/core/en/ValueSet-service-request-code-vs.html) | - |
| Bajarilgan muolajalar sanasi | Дата проведённой процедуры | Procedure.occurrenceDateTime | - | - |
| Ishlatiladigan materiallar | Используемые материалы | Procedure.used.concept / .reference | SNOMED CT / registry reference | - |

---

### Harorat jadvali

Quyidagi vaqt qatorlari qog'oz shaklga tegishli. Tekshirilgan DMED 003-shaklida antropometriyadagi bitta harorat bor, alohida bunday jadval yo'q. Bu eksport uchun puls, nafas va suyuqlik qatorlari boshqa modullardan talab qilinmaydi va yig'ilmaydi.

Ertalabki va kechqurungi o'lchovlar bir xil LOINC kuzatuvi bo'lib, `Observation.effectiveDateTime` bo'yicha farqlanadi.

| UZ | RU | FHIR yo'li | Kod | Misol |
|----|----|------------|------|---------|
| Bemorning kasallik kuni | День болезни пациента | Observation.valueInteger | [Form 003 Observation Code](CodeSystem-form-003-observation-code-cs.html) `day-of-illness` "Day of illness" | 6 |
| Bemorning kasalxonada bo'lgan kunlari | Дни пребывания в стационаре | derived from Encounter.actualPeriod.start | - | 1..31 |
| Yurak urishi (ertalab / kechqurun) | Пульс (утро / вечер) | Observation.valueQuantity | LOINC `8867-4` "Heart rate" | 96 /min |
| Qon bosimi (ertalab / kechqurun) | Артериальное давление (утро / вечер) | Observation.component.valueQuantity | LOINC `85354-9` "Blood pressure panel" + `component` LOINC `8480-6` "Systolic blood pressure" / `8462-4` "Diastolic blood pressure" in `mm[Hg]` | 134 / 84 |
| Harorat (ertalab / kechqurun) | Температура (утро / вечер) | Observation.valueQuantity | LOINC `8310-5` "Body temperature" | 37.6 Cel |
| Nafas olish tezligi | Частота дыхания | Observation.valueQuantity | LOINC `9279-1` "Respiratory rate" | 20 /min |
| Og'irligi | Вес | Observation.valueQuantity | LOINC `29463-7` "Body weight" | 82 kg |
| Qabul qilingan suyuqlik miqdori | Количество принятой жидкости | section[temperatureChart].text | Source amount and interval, if recorded; no assumed 12-hour interval | 600 mL |
| Bir kunlik siydik miqdori | Суточное количество мочи | Observation.valueQuantity | LOINC `9192-6` "Urine output 24 hour" | 1650 mL/(24.h) |

---

### Kasallik kechishi

| UZ | RU | FHIR yo'li | Kod | Misol |
|----|----|------------|------|---------|
| Dinamikadagi ahvoli | Состояние в динамике | section[clinicalCourse].text | LOINC `8648-8` "Hospital course note" | Afebrile from day 5, resolving |
| Shifokor tavsiyalari | Рекомендации врача | [CarePlan](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-careplan.html).description | - | Oral antibiotics, GP review in 3 days |
| Kundalik / Shifokor yozuvlari | Дневник / Записи врача | section[diary].text | LOINC `11506-3` "Progress note" | Source date/time + narrative |

---

### Gospitalizatsiya yakunlari

| UZ | RU | FHIR yo'li | Kod | Misol |
|----|----|------------|------|---------|
| Mazkur yil davomida shu kasallik bo'yicha kasalxonaga yotishi | Госпитализация по данному заболеванию в текущем году | section[hospitalizationSummary].text | DMED `readmission_same_reason`; Encounter re-admission follows Form 066 | primary |
| Yillik kasalxonaga yotqizilganlarning umumiy soni | Общее количество госпитализаций за год | Observation.valueInteger | [Form 003 Observation Code](CodeSystem-form-003-observation-code-cs.html) `same-condition-hospitalizations-this-year`; includes current stay, same condition | 1 |

---

### Davolash natijasi

| UZ | RU | FHIR yo'li | Kod | Misol |
|----|----|------------|------|---------|
| Davolash natijasi (chiqarish) | Результат лечения (выписка) | Encounter.admission.dischargeDisposition | [Encounter Discharge Disposition](https://dhp.uz/fhir/core/en/ValueSet-encounter-discharge-disposition-vs.html): discharged `mserv-0004-00004` "Discharged", transferred `other-hcf` "Other healthcare facility", died `exp` "Expired" | `mserv-0004-00004` "Discharged" |
| Davolash natijasi (klinik holat) | Результат лечения (клинический исход) | Encounter.subjectStatus | [Patient status when receiving care inpatient](https://dhp.uz/fhir/core/en/CodeSystem-encounter-local-subject-status-cs.html) | `loc-cs-002` "Improved" |
| Vafot etish holati | Контекст смерти | Observation.valueCodeableConcept | `code` [Form 003 Observation Code](CodeSystem-form-003-observation-code-cs.html) `death-context` "Death context"<br>`value` [Death Context](ValueSet-death-context-vs.html), shu jumladan tug'ruqdan oldin yoki keyin onalar o'limi uchun SNOMED CT `31868001` / `5866003`. Vafot faqat hujjatda qayd etiladi: Patient yangilanmaydi va `deceased[x]`ni o'z ichiga olmaydi | - |
| Boshqa muassasaga o'tkazilgan | Переведён в другое учреждение | Encounter.admission.destination → Organization | - | - |
| Ish qobiliyatining holati | Состояние трудоспособности | Observation.valueCodeableConcept | [Work Capacity Status](CodeSystem-work-capacity-status-cs.html) | `chr-0036-0001` "Work capacity fully restored" |
| Ekspertizaga yuborish uchun xulosa | Заключение для направления на экспертизу | section[expertiseReferralConclusion].text | [Form 003 Composition Section Codes](CodeSystem-form-003-section-cs.html) `expertise-referral-conclusion` "Conclusion for referral to medical expertise" | narrative |
| Alohida belgilar | Особые признаки | section[specialMarks].text | [Form 003 Composition Section Codes](CodeSystem-form-003-section-cs.html) `special-marks` "Special marks" | narrative |

---

### Vaqtinchalik mehnatga layoqatsizlik

| UZ | RU | FHIR yo'li | Kod | Misol |
|----|----|------------|------|---------|
| Mehnatga yaroqsizlik varog'i raqami | Идентификатор больничного листа | [SickLeaveCarePlan](StructureDefinition-sick-leave-careplan.html).identifier | `system` `https://dhp.uz/fhir/core/sid/doc/uz/sickleave` | SL-2026-778812 |
| Ochilgan sana | Дата открытия | CarePlan.period.start | - | 2026-02-08 |
| Yopilgan sana | Дата закрытия | CarePlan.period.end | - | 2026-02-20 |
| Varaqa turi | Вид листка нетрудоспособности | CarePlan.category | [Sick Leave Category](CodeSystem-sick-leave-category-cs.html) | `mserv-0005-00001` "Sick Leave Certificate" |
| Mehnatga layoqatsizlik sababi | Причина нетрудоспособности | CarePlan.addresses[reason].concept | [Care Plan Reason](CodeSystem-care-plan-reason-cs.html) | `emdoc-0001-0001` "disease" |

---

### O'limdan keyingi tibbiy xulosa

Faqat o'lim yuz berganda mavjud bo'ladi. Har bir o'lim sababi - bitta Condition, uning roli `Condition.category`da [Diagnosis Role](CodeSystem-diagnosis-role-integration.html) kodi bilan ko'rsatiladi, Condition esa [Composition'ning shu rolga mos quyi bo'limiga](StructureDefinition-form-003-inpatient-medical-record-composition.html#k-Composition.section:postmortemConclusion) qo'yiladi: O'limning bevosita sababi → `immediate-cause-of-death`, uni keltirib chiqargan kasallik → `underlying-cause-of-death`, Asosiy kasallik → `main-disease-death`, Boshqa muhim kasalliklar → `other-significant-death`.

| UZ | RU | FHIR yo'li | Kod | Misol |
|----|----|------------|------|---------|
| Kasallik haqidagi yakuniy tibbiy xulosa | Окончательное медицинское заключение о заболевании | section[postmortemConclusion].text | LOINC `47046-8` "Summary of Death Note" | narrative |
| O'limga olib kelgan bevosita sabab | Непосредственная причина смерти | Condition.code | ICD-10 | - |
| Asosiy kasallik | Основное заболевание | Condition.code | ICD-10 | - |

---

### Mas'ul shaxslar

| UZ | RU | FHIR yo'li | Kod | Misol |
|----|----|------------|------|---------|
| Davolovchi shifokor | Лечащий врач | PractitionerRole.practitioner | [Position and Profession](https://dhp.uz/fhir/core/en/CodeSystem-position-and-profession-cs.html) | Rasulov B.B. |
| Bo'lim boshlig'i | Заведующий отделением | PractitionerRole.practitioner | [Position and Profession](https://dhp.uz/fhir/core/en/CodeSystem-position-and-profession-cs.html) `1342.18` "Head of department (health institution)" | Qodirov A.A. |
| Bosh shifokor muovini | Заместитель главного врача | PractitionerRole.practitioner | [Position and Profession](https://dhp.uz/fhir/core/en/CodeSystem-position-and-profession-cs.html) `1120.185` "Deputy chief physician" | Yusupova N.N. |
| Kompleks uchun mas'ul shaxs | Ответственное лицо за комплекс | PractitionerRole (section[responsiblePersons]) | - | - |
| Shifokor imzosi | Подпись врача | [Provenance](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-provenance.html).signature | [Signature Type](https://dhp.uz/fhir/core/en/ValueSet-signature-type-vs.html) | - |

---

### Bundle tuzilishi

003-shakl hujjati [Form003InpatientMedicalRecordComposition](StructureDefinition-form-003-inpatient-medical-record-composition.html) Composition'ini o'z ichiga olgan FHIR Bundle sifatida tuzilgan:

```
Bundle (hujjat)
├── Composition (Form003InpatientMedicalRecordComposition)
├── Patient (bemorning demografik ma'lumotlari)
├── Encounter (statsionarga yotqizish va chiqarish)
├── Organization[] (shifoxona, yo'llagan muassasa)
├── Location[] (bo'lim, palata)
├── Practitioner[] (davolovchi shifokor, bo'lim boshlig'i, bosh shifokor muovini)
├── PractitionerRole[] (mas'ul shaxslar)
├── Condition[] (yo'llanma, qabul, tahminiy va yakuniy tashxislar)
├── Observation[] (hayotiy ko'rsatkichlar, qon guruhi, ijtimoiy-iqtisodiy, qabulda tekshiruv, harorat jadvali, parhez stoli, mehnat qobiliyati)
├── AllergyIntolerance (dori reaksiyasi)
├── RelatedPerson (yaqin qarindosh)
├── DiagnosticReport[] (laboratoriya va instrumental tekshiruvlar)
├── ServiceRequest[] (buyurilgan tekshiruv va muolajalar)
├── Procedure[] (operatsiya, anesteziya, boshqa davolash turlari)
├── MedicationRequest[] / MedicationAdministration[] (buyuruvlar varaqasi)
├── Coverage (dori / moliyalashtirish manbai)
├── CarePlan[] (shifokor tavsiyalari, mehnatga layoqatsizlik varaqalari)
└── Provenance[] (imzolar, yozuv muallifligi)
```

### Misol

To'liq FHIR hujjati misoli uchun [003-shakl statsionar bemorning tibbiy kartasi misoli](Bundle-example-form-003-inpatient-medical-record.html)ga qarang.
