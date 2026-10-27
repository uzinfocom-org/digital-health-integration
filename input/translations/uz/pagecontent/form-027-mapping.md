<style>
/* Per-form mapping-table column widths (027: long UZ/RU phrases, codes carry display names). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
.col-12 th:nth-child(1), .col-12 td:nth-child(1) { width: 20%; }
.col-12 th:nth-child(2), .col-12 td:nth-child(2) { width: 20%; }
.col-12 th:nth-child(3), .col-12 td:nth-child(3) { width: 24%; }
.col-12 th:nth-child(4), .col-12 td:nth-child(4) { width: 14%; }
.col-12 th:nth-child(5), .col-12 td:nth-child(5) { width: 22%; }
</style>

> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### 027-shakl - Bemorning tibbiy kartasidan ko'chirma

Ushbu sahifada 027-shakl (Tibbiy muassasadagi bemorning tibbiy kartasidan ko'chirma, ambulator/statsionar) maydonlarining FHIR resurslari bilan moslashtirilishi tavsiflanadi. Shakl Sog'liqni saqlash vazirligining 2025-12-26 dagi 399-son buyrug'i bilan tasdiqlangan; quyidagi band raqamlari (1-26b) rasmiy blankaga mos keladi.

---

### Umumiy ma'lumot

027-shakl - davolovchi shifokor ambulator qabul yoki statsionar davolash yakunida beradigan ko'chirma: bemorni identifikatsiya qilish, yo'llagan muassasa, tashxislar, shikoyatlar va anamnez, ko'rik natijalari, diagnostika, davolash, retseptlar, tavsiyalar, keyingi tadbirlar (kuzatuv, dispanserizatsiya, shifoxonaga yotqazish) va mas'ul shaxslar. Ambulator (`ambulator`) va statsionar (`statsionar`) ko'chirmalar bitta profildan foydalanadi va `Encounter.class` orqali farqlanadi. Shakl ma'lumotlari [Form 027 Composition](StructureDefinition-form-027-composition.html) profiliga mos keluvchi FHIR hujjatiga birlashtirilgan bir nechta FHIR resurslari bilan moslashtiriladi. Imkoni bo'lgan joyda resurslar [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html) profillariga mos keladi.

To'liq namunaviy nusxa uchun [027-shakl misoli](Bundle-example-form-027.html)ga qarang.

027-1-shakl (yomon sifatli o'sma kasalligi bor bemorning tibbiy kartasidan ko'chirma) alohida shakl bo'lib, ushbu profil uni qamrab olmaydi.

---

### Maydonlarni moslashtirish

### Ro'yxatga olish ma'lumotlari

| UZ-027 (band) | RU-027 | FHIR yo'li | Kod / qiymatlar | Misol / izohlar |
|--------|--------|-----------|---------------|-----------------|
| Muassasa nomi (sarlavha) | Наименование учреждения | [Organization](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-organization.html).name, Composition.custodian orqali havola | - | 7-semeynaya poliklinika; Organization.identifier muassasa kodini saqlaydi (`.../sid/uz/organization-code`) |
| Bemorning ro'yxatdan o'tish raqami (1) | Регистрационный номер пациента | [Patient](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html).identifier[healthCardId].value | HC | MED-000123. DMED shakllantiradigan bosma shakl 1- va 6-bandlarda bir xil qiymatni chiqaradi (`patient.number_med_card`); shuning uchun moslashtirish jadvalidagi `Encounter.identifier.value` yo'li ishlatilmaydi - Loyihaviy qarorlarga qarang |
| Bemor turi (2) | Тип пациента | [Encounter](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-encounter.html).class | `AMB` ambulator / `IMP` statsionar | v3-ActCode, UZCoreEncounter'ning majburiy bog'lanishi |
| Chiqarilgan sana (3) | Дата выписки | Encounter.actualPeriod.end | - | 2026-07-14 |
| Murojaat sanasi (4) | Дата обращения | Encounter.actualPeriod.start | - | 2026-07-01 |

### Shaxsiy ma'lumotlar

| UZ-027 (band) | RU-027 | FHIR yo'li | Kod / qiymatlar | Misol / izohlar |
|--------|--------|-----------|---------------|-----------------|
| Bemor JSHSHIR (5) | ПИНФЛ | Patient.identifier[nationalId].value | NI | 41234567890127 |
| Med ID raqami (6) | Медицинский идентификационный номер | Patient.identifier[healthCardId].value | HC | MED-000123 |
| Familiyasi (7) | Фамилия | Patient.name.family | - | Fozilova |
| Ismi (8) | Имя | Patient.name.given[0] | - | Xadicha |
| Otasining ismi (9) | Отчество | Patient.name.given[1] | - | Alisherovna; Patient.name.text to'liq ismni saqlaydi |
| Tug'ilgan sanasi (10) | Дата рождения | Patient.birthDate | - | 1999-04-20 |
| Jinsi (11) | Пол | Patient.gender | `male` Erkak / `female` Ayol | gender-other kengaytmasi faqat qiymat male/female bo'lmaganda ishlatiladi |
| Fuqaroligi (12, 11a) | Гражданство (код / наименование) | Patient.extension[citizenship] | ISO 3166-1 alpha-2 | `UZ`; kod display'i mamlakat nomini saqlaydi (11a). Misolda faqat publisher ISO 3166 kodlarini lokal tekshira olmagani uchun tushirib qoldirilgan |
| Pasport seriyasi va № (13) | Серия и № паспорта (если нет ПИНФЛ) | Patient.identifier[passportLocal] / [passportInternational] / [passportForeign] | PPN | Hujjat turiga bog'liq; faqat JSHSHIR bo'lmaganda |

### Manzil va aloqa

| UZ-027 (band) | RU-027 | FHIR yo'li | Kod / qiymatlar | Misol / izohlar |
|--------|--------|-----------|---------------|-----------------|
| Yashab kelayotgan manzili (14) | Адрес проживания (фактический) | Patient.address[uzAddress].text / .line | - | Kutakaul 228, Ulugnor tumani, Andijon viloyati; DMED uzatganda tuzilmali qismlar (state/district/city) |
| Telefon (15) | Телефон | Patient.telecom (system `phone`).value | - | +998909875679 |
| Email (16) | Email | Patient.telecom (system `email`).value | - | khadicha.fozilova@example.uz |

### Yo'llanma va tashxis

| UZ-027 (band) | RU-027 | FHIR yo'li | Kod / qiymatlar | Misol / izohlar |
|--------|--------|-----------|---------------|-----------------|
| Yo'llagan muassasa kodi (16) | Код направившего учреждения | Encounter.admission.origin -> Organization.identifier | `.../sid/uz/organization-code` | 70 |
| Yo'llagan muassasa nomi (17) | Наименование направившего учреждения | Encounter.admission.origin -> Organization.name | - | Semeynaya poliklinika No. 70 |
| Asosiy tashxis kodi (17) | Код основного диагноза | [Condition](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-condition.html).code.coding.code, section[diagnosis].section[main] | XKT-10 | Z99.8; Condition.category = `diagnosis-role#main` |
| Asosiy tashxis nomi (17a) | Наименование основного диагноза | Condition.code.coding.display | XKT-10 display | Dependence on other enabling machines and devices |
| Asorati (18/18a, 19/19a) | Осложнение | Condition.code.coding.code / .display, section[diagnosis].section[complication] | XKT-10 | Condition.category = `diagnosis-role#complication`; `Procedure.complication` emas, Condition sifatida modellashtirilgan - Loyihaviy qarorlarga qarang |
| Yo'ldosh kasallik (18/18a, 19/19a) | Сопутствующее заболевание | Condition.code.coding.code / .display, section[diagnosis].section[concomitant] | XKT-10 | Z99.9; Condition.category = `diagnosis-role#concomitant` |
| (blankada yo'q) Fon kasallik, Raqobat tashxis | Фоновый, конкурирующий диагноз | section[diagnosis].section[background] / [competing] | XKT-10 | DMED tashxis vidjeti tomonidan qayd etiladi; ma'lumotlar to'liqligi uchun ruxsat etilgan, hech qachon chop etilmaydi |

### Klinik ma'lumotlar

| UZ-027 (band) | RU-027 | FHIR yo'li | Kod / qiymatlar | Misol / izohlar |
|--------|--------|-----------|---------------|-----------------|
| Shikoyatlar (20) | Жалобы | [Observation](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-observation.html).valueString, section[chiefComplaint] | LOINC `10154-3` | Bosh og'rig'i va umumiy holsizlik; xuddi shu Observation Encounter.reason.value dan havola qilinadi |
| Anamnez (20) | Анамнез | Observation.valueString, section[anamnesis] | LOINC `11329-0` | Kasallik 3 kun oldin boshlangan. DMED "Shikoyatlar va anamnez" bandini bitta matn maydoni sifatida saqlaydi (`complaints_anamnesis`); matn ajratilmagan bo'lsa, u to'liq section[chiefComplaint] ga kiradi, section[anamnesis] esa tushirib qoldiriladi |
| Ko'rik (21) | Осмотр | Observation.valueString, section[clinicalExamination] | LOINC `29545-1` | Umumiy holati qoniqarli, tana harorati 36.6 |
| Diagnostik tekshiruv (22) | Диагностическое обследование | DiagnosticReport.conclusion (yoki Observation.valueString), section[diagnostics] | Hisobot/tekshiruvning LOINC kodi | Umumiy qon tahlili me'yorda; ixtiyoriy bo'lim |

### Davolash va tavsiyalar

| UZ-027 (band) | RU-027 | FHIR yo'li | Kod / qiymatlar | Misol / izohlar |
|--------|--------|-----------|---------------|-----------------|
| Davolash (23) | Лечение | CarePlan.activity.performedActivity.concept.text, section[treatmentPlan] | - | Dorivor davo. Jadvaldagi `activity.detail.code` yo'li R4 ga tegishli va R5 da mavjud emas |
| Tavsiyalar (24) | Рекомендации | CarePlan.note.text | - | Kuzatuvda bo'lish, 1 hafta ichida qayta ko'rikka kelish tavsiya etiladi |
| Retsept (24) | Рецепт | MedicationRequest.medication.concept, .dosageInstruction (usul, chastota, doza), .dispenseRequest (miqdor, davr), .note | SNOMED CT / ATC | Paracetamol 500 mg, kuniga 3 marta 5 kun. Manba - qabul ekrani emas, DMED'ning alohida "Retseptlar" moduli - Loyihaviy qarorlarga qarang |

### Keyingi tadbirlar

| UZ-027 (band) | RU-027 | FHIR yo'li | Kod / qiymatlar | Misol / izohlar |
|--------|--------|-----------|---------------|-----------------|
| Kuzatuv (25) | Наблюдение | CarePlan.note.text | - | DMED dagi `follow_up_activities` - bitta erkin matn maydoni; uning mazmuni kuzatuv rejasidir |
| Dispanserizatsiya (25) | Диспансеризация | [EpisodeOfCare](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-episodeofcare.html).type[serviceType] | `episode-of-care-type-cs` | Dispanser hisobi - DMED dagi alohida yozuv ("D-hisob"), matndan ajratib olinmaydi |
| Shifoxonaga yotqazish (25) | Госпитализация | ServiceRequest (code SNOMED CT `306206005` Referral to service), .reason.concept | [HospitalizationPurposeVS](ValueSet-hospitalization-purpose-vs.html) | Shifoxonaga yotqazish - yo'llanmaning o'zi; uning maqsadi (Diagnostika / Konsultativ / Davolash / Ko'rik / D-nazorat / Tug'ruq / Boshqa) blankada chop etilmaydigan DMED yo'llanma maydoni |

### Mas'ul shaxslar

| UZ-027 (band) | RU-027 | FHIR yo'li | Kod / qiymatlar | Misol / izohlar |
|--------|--------|-----------|---------------|-----------------|
| Davolovchi shifokor F.I.O. (26a) | Лечащий врач (Ф.И.О.) | Composition.author -> [PractitionerRole](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner-role.html) -> [Practitioner](https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-practitioner.html).name.text | `position-and-profession-cs` | Talipova Muhlisa, `2211.6` Vrach-mutaxassis |
| Davolovchi shifokor imzosi (26a) | Лечащий врач (подпись) | Provenance.signature, agent.type `author` | ISO-ASTM `1.2.840.10065.1.12.1.1` | Provenance hujjat Bundle'iga yo'naltirilgan; agent.who / signature.who -> PractitionerRole |
| Mas'ul shaxs F.I.O. (26b) | Ответственное лицо (Ф.И.О.) | section[responsiblePersons].entry -> PractitionerRole -> Practitioner.name.text | `position-and-profession-cs` | Karimov Alisher, `1342.18` Bo'lim mudiri; DMED "Bo'lim mudiri" sifatida chop etadi |
| Mas'ul shaxs imzosi (26b) | Ответственное лицо (подпись) | Provenance.signature, agent.type `attester` | ISO-ASTM `1.2.840.10065.1.12.1.5` | Ikkinchi Provenance nusxasi |

### Loyihaviy qarorlar

- **1-band - qabul emas, bemor identifikatori.** Moslashtirish jadvali (2026-08-17 va 2026-09-17 versiyalari) "Bemorning ro'yxatdan o'tish raqami"ni `UZCoreEncounter.identifier.value` ga bog'laydi; DMED real yo'llanma uchun shakllantirgan bosma shakl 1- va 6-bandlarda bir xil qiymatni chiqaradi (`patient.number_med_card`), shuning uchun ikkalasi ham `Patient.identifier[healthCardId]` ga moslashtirilgan. `Encounter.identifier` avvalgidek DMED dagi qabulning tibbiy karta raqamini saqlaydi (`.../sid/doc/uz/medical-record-number`).
- **Asosiy tashxis kodi va nomi.** Jadvalning 2026-08-17 va 2026-09-17 versiyalarida "Asosiy tashxis kodi" (kod) `Condition.code.coding.display` ga, "Asosiy tashxis nomi" (nom) esa `.code.coding.code` ga bog'langan, ya'ni teskari. 2026-07-14 versiyasi va ushbu profil FHIR semantikasiga muvofiq kodni `.code` ga, nomni `.display` ga bog'laydi.
- **Asorat `Procedure.complication` emas, Condition sifatida modellashtirilgan.** Jadval "Asorati"ni `Procedure.complication` ga bog'laydi; rasmiy blanka 18- va 19-bandlarni tashxis ko'rinishidagi maydonlar sifatida beradi (XKT-10 kodi + nomi, "asorat yoki yo'ldosh kasallik, tagiga chizilsin"), ular shakl jihatidan asosiy tashxis bilan bir xil. 066-shakl asoratlarni allaqachon `diagnosis-role#complication` belgili `UZCoreCondition` sifatida modellashtiradi; profil shu yondashuvni qayta ishlatadi.
- **Tashxis kichik bo'limlari faqat 3 ta bosma katakni emas, DMED ning barcha 5 rolini qamrab oladi.** DMED shifoxonaga yotqazish yo'llanmasining tashxis vidjeti main / concomitant / background / complication / competing ni taklif qiladi (2026-09-18 da jonli tekshirilgan). `section[diagnosis].section` 066-shakldagi kabi beshtasiga ham ruxsat beradi; faqat `main` majburiy.
- **Yo'llagan muassasa - `Encounter.admission.origin` orqali.** `Encounter.serviceProvider` (2026-07-14 jadvalidagi yo'l) - joriy qabul tashkiloti; bemorni yo'llagan muassasa (16-17-bandlar) - `admission.origin`, uni UZCoreEncounter UZCoreLocation yoki UZCoreOrganization bilan cheklaydi.
- **Ambulator va statsionar ko'chirma uchun bitta profil.** Blanka ikkalasini ham qamrab oladi (2-band), shuning uchun profil va uning kanonik URL manzili, avvalgi `Form027OutpatientComposition` qoralamasidan farqli o'laroq, ambulator qabulga bog'lanmagan.
- **Hujjat turi LOINC `34133-9` "Summary of episode note".** Tibbiy kartadan ko'chirma yordam epizodini umumlashtiradi; `34764-1` "General medicine Consult note" (avvalgi qoralama) konsultantning yo'llanmaga javobini tavsiflaydi.
- **Muallif va mas'ul shaxs - `UZCorePractitionerRole`**, 066-shakldagi kabi: rol lavozimni (`position-and-profession-cs`) va tashkilotni saqlaydi va aynan unga `Provenance.agent.who` havola qilishi kerak.
- **Retsept ma'lumotlari qabul ekranidan emas, DMED "Retseptlar" modulidan olinadi** (o'z API si, o'z imzolash/bekor qilish jarayoni). Yozuv XNN, chiqarilish shakli, doza, chastota, qo'llash usuli, davomiylik, berish davri va miqdori, izohlarni o'z ichiga oladi - ular `dosageInstruction` va `dispenseRequest` ni to'ldiradi. Retseptning biznes identifikatori bu yerda ataylab modellashtirilmagan: u retsept integratsiyasiga tegishli va ushbu shakldan ikkinchi nomlar makonini olmasligi kerak.
- **`CarePlan.activity.performedActivity.concept`** jadvaldagi `CarePlan.activity.detail.code` o'rnini bosadi - bu yo'l FHIR R5 da olib tashlangan.

- **UZ Core 0.11.1.** Diagnostika hisobotlari va shifoxonaga yotqazish yo'llanmalari `UZCoreDiagnosticReport` va `UZCoreServiceRequest` dan foydalanadi. Misoldagi umumiy qon tahlili LOINC `58410-2` bilan kodlangan; LOINC `30954-2` Composition diagnostika bo'limining kodi bo'lib qoladi.

### Ochiq savollar

- **Shifoxonaga yotqazish maqsadi terminologiyasi.** [HospitalizationPurposeCS](CodeSystem-hospitalization-purpose-cs.html) DMED ning yettita belgilash katakchasi qiymatlarini takrorlaydi; UZ Core ning birorta kod tizimi bu ro'yxatni qamrab olmaydi (`encounter-type-cs` uchta tushunchani, `encounter-purpose-cs` bittasini o'z ichiga oladi). O'zbekcha nomlar repozitoriyning mavjud terminologiyasiga amal qiladi, ammo DHP tomonidan tasdiqlanmagan, shuning uchun kod tizimi draft holatida.
- **Imzoni qayd etish.** FHIR yo'li mavjud (`Provenance.signature`), ammo DMED bosma shakli bo'sh imzo joylarini ko'rsatadi; haqiqiy mexanizm (raqamli imzo, biometriya, skan) noma'lum, shuning uchun misolda umumiy ISO-ASTM imzo turlari (muallif/tasdiqlash) ishlatilgan.
- **Biriktirilgan fayllar.** DMED yo'llanma kartochkasida "Fayllar" bo'limi bor; nomzod - ServiceRequest bilan bog'langan `DocumentReference`; kelishilguncha amalga oshirilmaydi.
- **Shifokorning aloqa telefoni.** DMED yo'llanmasining majburiy maydoni (`phone`) rasmiy 027-shakl blankasida chop etilmaydi va shu sababli ushbu profil doirasiga kirmaydi.
- **DMED da bor, ammo blankada yo'q maydonlar** (`main_contingent`, ish joyi, hayotiy ko'rsatkichlar, `medical_care_form`, `onset_disease_date`, `note`) "faqat rasmiy blankada chop etiladigan narsa" degan kelishilgan tamoyilga ko'ra shakl doirasidan tashqarida; `note` `ServiceRequest.note` sifatida uzatilishi mumkin.

### Bundle tuzilishi

027-shakl hujjati [Form027Composition](StructureDefinition-form-027-composition.html) Composition'ini o'z ichiga olgan FHIR Bundle sifatida tuzilgan:

```
Bundle (hujjat)
├── Composition (Form027Composition)
│   ├── subject         → Patient
│   ├── encounter       → Encounter
│   ├── author          → PractitionerRole (davolovchi shifokor, 26a)
│   ├── custodian       → Organization (muassasa)
│   ├── section[chiefComplaint]        → Observation (shikoyatlar, 20)
│   ├── section[anamnesis]             → Observation (anamnez, 20)
│   ├── section[clinicalExamination]   → Observation (ko'rik, 21)
│   ├── section[diagnosis]             (17-19)
│   │   ├── section[main]              → Condition (asosiy tashxis)
│   │   ├── section[complication]      → Condition (asorati)
│   │   ├── section[concomitant]       → Condition (yo'ldosh kasallik)
│   │   ├── section[background]        → Condition (chop etilmaydi)
│   │   └── section[competing]         → Condition (chop etilmaydi)
│   ├── section[diagnostics]           → DiagnosticReport / Observation (22)
│   ├── section[treatmentPlan]         → CarePlan, MedicationRequest,
│   │                                     EpisodeOfCare, ServiceRequest (23-25)
│   └── section[responsiblePersons]    → PractitionerRole (mas'ul shaxs, 26b)
├── Patient            (UZCorePatient)
├── Encounter          (UZCoreEncounter, admission.origin → yo'llagan Organization)
├── Organization       (UZCoreOrganization - muassasa)
├── Organization       (UZCoreOrganization - yo'llagan muassasa)
├── Practitioner       (UZCorePractitioner - davolovchi shifokor)
├── Practitioner       (UZCorePractitioner - mas'ul shaxs)
├── PractitionerRole   (UZCorePractitionerRole x2)
├── Observation        (UZCoreObservation x3: shikoyatlar, anamnez, ko'rik)
├── Condition          (UZCoreCondition x2: asosiy tashxis, yo'ldosh kasallik)
├── DiagnosticReport   (diagnostik tekshiruv)
├── CarePlan           (davolash, tavsiyalar, kuzatuv)
├── MedicationRequest  (retsept)
├── EpisodeOfCare      (UZCoreEpisodeOfCare - dispanserizatsiya)
├── ServiceRequest     (shifoxonaga yotqazish)
└── Provenance         (x2: muallif va tasdiqlovchi imzolari)
```

### Misol

To'liq FHIR hujjati misoli uchun [027-shakl misoli](Bundle-example-form-027.html)ga qarang.
