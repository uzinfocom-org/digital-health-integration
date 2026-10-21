<style>
/* Even, full-width mapping tables (sections vary in column count). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td {
  overflow-wrap: anywhere;
  word-break: break-word;
  vertical-align: top;
}
</style>

### Bemorning ijtimoiy holatini qayd etish (Observation)

Bemorning ijtimoiy holati [UZ Core Socioeconomic Observation](https://dhp.uz/fhir/core/StructureDefinition/uz-core-socioeconomic-observation) profili yordamida ifodalanadi.

**Examples:** [`example-narcology-socioeconomic`](Observation-example-narcology-socioeconomic.html)

| Qayd etiladigan ma'lumot | Value set | Misol kodi | Saqlanadi |
| :--- | :--- | :--- | :--- |
| Kuzatuv holati | ObservationStatus | `final` | `status` |
| Kuzatuv turi | [SocioeconomicObservationCodesVS](https://dhp.uz/fhir/core/ValueSet/socioeconomic-observation-codes-vs) | `SNOMED CT#82996008` | `code` |
| Ijtimoiy holat | [SocialStatusVS](https://terminology.dhp.uz/fhir/core/ValueSet/social-status-vs) | `regis0010.00003` (Ishlaydi) | `valueCodeableConcept` |
| Bemor | - | [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) ga reference | `subject` |
| Kuzatuv sanasi | - | `2026-03-12` | `effectiveDateTime` |
| Bajaruvchi | - | UZCorePractitionerRole ga reference | `performer` |

Narkologiya registrida quyidagi ijtimoiy holat kodlari qo‘llanadi:

| Kod | Tavsif |
| :--- | :--- |
| `regis0010.00001` | O‘quvchi |
| `regis0010.00003` | Ishlaydigan |
| `regis0010.00004` | Ishlamaydigan |
| `regis0010.00006` | Nafaqaxo‘r |

`subject` elementi ijtimoiy holati qayd etilayotgan bemorga reference saqlaydi.

---

### Bemorni dinamik kuzatuv guruhiga ro‘yxatga olish (EpisodeOfCare)

Bemorning Narkologiya registridagi ro‘yxati va dinamik kuzatuv guruhi [Narcology Episode Of Care](StructureDefinition-narcology-episode-of-care.html) profili yordamida ifodalanadi.

**Examples:** [`example-narcology-episode-of-care`](EpisodeOfCare-example-narcology-episode-of-care.html)

Episode bemorning ro‘yxatga olish holati, dinamik kuzatuv guruhi, epizod bilan bog‘liq tashxislar, bemor, mas'ul tashkilot, ro‘yxatga olish davri va mas'ul mutaxassisni o‘z ichiga oladi.

| Qayd etiladigan ma'lumot | Value set | Misol kodi | Saqlanadi |
| :--- | :--- | :--- | :--- |
| Identifikator | - | `https://dhp.uz/fhir/core/sid/reg/uz/narco` | `identifier` |
| Ro‘yxatga olish holati | [EpisodeOfCareStatusVS](https://terminology.dhp.uz/fhir/core/ValueSet/episode-of-care-status-vs) | `active` | `status` |
| Dinamik kuzatuv guruhi | [NarcologyPsychiatryEpisodeOfCareTypeGroupVS](ValueSet-narcology-psychiatry-episode-of-care-type-group-vs.html) | `narcr0001-00001` | `type[group]` |
| Tashxis | [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs) | `F15.1` | `diagnosis.condition` |
| Tashxisdan foydalanish turi | Encounter Diagnosis Use | `working` | `diagnosis.use` |
| Bemor | - | [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) ga reference | `patient` |
| Mas'ul tashkilot | - | [UZCoreOrganization](https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization) ga reference | `managingOrganization` |
| Ro‘yxatga olingan sana | - | `2026-03-10` | `period.start` |
| Mas'ul mutaxassis | - | UZCorePractitionerRole ga reference | `careManager` |

Bemor Narkologiya registriga ro‘yxatga olinganda episode holati `active` bo‘lishi kerak.

Bemor registrdan chiqarilganda episode holati `finished` ga o‘zgartirilishi kerak.

Dinamik kuzatuv guruhi `EpisodeOfCare.type` elementidagi `group` slice orqali ifodalanadi.

Narkologiya va Psixiatriya registrlari uchun quyidagi guruh kodlari belgilangan:

| Kod | SNOMED CT kodi | RU | UZ | ENG |
| :--- | :--- | :--- | :--- | :--- |
| `narcr0001-00001` | `302805002` | Профилактическая группа | Profilaktik guruh | Preventive group |
| `narcr0001-00002` | `225419007` | Диспансерная группа | Dispanser guruhi | Dispensary group |
| `psycr0001-00001` | `52748007` | Стационарное принудительное лечение | Majburiy statsionar davolanish | Compulsory inpatient treatment |

SNOMED CT mappinglari [Narcology and Psychiatry EpisodeOfCare Type Groups to SNOMED CT](ConceptMap-narcology-psychiatry-episode-of-care-type-group-to-snomed.html) orqali aniqlangan.

#### Tashxis kodlari

Narkologik episode bilan bog‘liq tashxisni qayd etishda [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs) tarkibidagi tegishli koddan foydalanish kerak.

Belgilangan tashxis kodlari:

| Klinik holat | Kodlash tizimi | Kod | Qachon qayd etiladi |
| :--- | :--- | :--- | :--- |
| Boshqa stimulyatorlar, shu jumladan kofeinni zararli iste'mol qilish bilan bog‘liq ruhiy va xulq-atvor buzilishlari | ICD-10 | `F15.1` | Ushbu narkologik tashxis bemorga tegishli bo‘lganda |
| Boshqa holatlarga olib keluvchi OIV kasalligi | ICD-10 | `B23` | OIV Narkologiya registrida tanlangan yoki aniqlangan bo‘lsa, alohida `Condition` sifatida |
| Nafas olish tizimi tuberkulyozi | ICD-10 | `A15.7` | Tuberkulyoz Narkologiya registrida tanlangan yoki aniqlangan bo‘lsa, alohida `Condition` sifatida |
| Nogironlik | SNOMED CT | `21134002` | Nogironlik mavjud bo‘lsa, alohida `Condition` sifatida |

`diagnosis.condition` tegishli [UZ Core Condition](https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition) ga reference qilishi kerak.

Bitta episode bir nechta tashxisni o‘z ichiga olishi mumkin.

---

### Tibbiy tashrifni qayd etish (Encounter)

Bemorning Narkologiya registridagi tibbiy tashrifi [UZ Core Encounter](https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter) profili yordamida ifodalanadi.

**Examples:** [`example-narcology-encounter`](Encounter-example-narcology-encounter.html)

Encounter tibbiyot xodimi tomonidan qayd etilgan tibbiy tashrifni ifodalaydi va tegishli `EpisodeOfCare` bilan bog‘lanishi mumkin.

| Qayd etiladigan ma'lumot | Value set | Misol kodi | Saqlanadi |
| :--- | :--- | :--- | :--- |
| Tashrif holati | Encounter Status | `completed` | `status` |
| Bemor | - | [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) ga reference | `subject` |
| Tibbiy yordam epizodi | - | [NarcologyEpisodeOfCare](StructureDefinition-narcology-episode-of-care.html) ga reference | `episodeOfCare` |
| Tashrif davri | - | `2026-03-10T10:00:00Z` – `2026-03-10T11:00:00Z` | `actualPeriod` |
| Ishtirokchi turi | Participant Type | `ATND` | `participant.type` |
| Tibbiyot xodimi | - | UZCorePractitionerRole ga reference | `participant.actor` |
| Tashrif turi | - | `mserv-0001-00004` (Davolash xizmatlari) | `type[nationalType]` |
| Tashxis | [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs) | `F15.1` | `diagnosis.condition` |
| Tashxisdan foydalanish turi | Encounter Diagnosis Use | `final` | `diagnosis.use` |

Encounter uchun quyidagi holatlar ishlatilishi mumkin:

- `in-progress`
- `on-hold`
- `completed`
- `cancelled`
- `entered-in-error`

`episodeOfCare` reference tibbiy tashrifni bemorning tegishli narkologik ro‘yxat epizodi bilan bog‘laydi.

Encounter bir nechta tashxisni o‘z ichiga olishi mumkin. Har bir tashxis tegishli [UZ Core Condition](https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition) ga reference qiladi.

---

### Tibbiy-konsultativ komissiya qarorini qayd etish (Observation)

Tibbiy-konsultativ komissiyaning qarori [NarcologyObservation](StructureDefinition-narcology-observation.html) profili yordamida ifodalanadi.

**Examples:** [`example-narcology-commission`](Observation-example-narcology-commission.html)

Profil tibbiy-konsultativ komissiya tomonidan berilgan xulosa, natija va tavsiyalarni saqlash uchun ishlatiladi.

| Qayd etiladigan ma'lumot | Value set | Misol kodi | Saqlanadi |
| :--- | :--- | :--- | :--- |
| Kuzatuv holati | Observation Status | `final` | `status` |
| Komissiya qarori turi | [NarcologyTypeResourceVS](ValueSet-narcology-type-resource-vs.html) | `type-res-0002-0001` | `code` |
| Bemor | - | [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) ga reference | `subject` |
| Tibbiy tashrif | - | [UZCoreEncounter](https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter) ga reference | `encounter` |
| Komissiya qarori sanasi | - | `2026-03-12` | `effectiveDateTime` |
| Komissiya a'zosi | - | UZCorePractitionerRole ga reference | `performer` |
| Komissiya natijasi | - | `Dispensary observation is required. The patient is to be reviewed again in six months.` | `valueString` |

Komissiya qarori turi:

| Kod | SNOMED CT kodi | RU | UZ | ENG |
| :--- | :--- | :--- | :--- | :--- |
| `type-res-0002-0001` | `444804000` | Решение комиссии | Komissiya qarori | The commission's decision |

Tegishli terminologiya [TypeResourceCS](CodeSystem-type-resource-cs.html) da, SNOMED CT mapping esa [Type Resource to SNOMED CT ConceptMap](ConceptMap-type-resource-to-snomed.html) da aniqlangan.

Har bir komissiya a'zosi alohida `performer` reference sifatida qayd etiladi. Komissiya qabul qilgan qaror `valueString` elementida saqlanadi va ushbu profilda majburiy hisoblanadi.

---

### Bemorning klinik holatini qayd etish (Condition)

Narkologiya bilan bog‘liq klinik holat [UZ Core Condition](https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition) profili yordamida ifodalanadi.

**Examples:** [`example-narcology-condition`](Condition-example-narcology-condition.html)

`Condition` klinik holat, tashxis, bemor, tegishli tibbiy tashrif, qayd sanasi va ma'lumotni taqdim etgan tashkilotni o‘z ichiga oladi.

| Qayd etiladigan ma'lumot | Value set | Misol kodi | Saqlanadi |
| :--- | :--- | :--- | :--- |
| Klinik holat | Condition Clinical Status Codes | `active` | `clinicalStatus` |
| Nogironlik darajasi | [DisabilityVS](https://terminology.dhp.uz/fhir/core/ValueSet/disability-vs) | tegishli nogironlik darajasi | `severity` |
| Tashxis | [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs) | `F15.1` | `code` |
| Bemor | - | [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) ga reference | `subject` |
| Tibbiy tashrif | - | [UZCoreEncounter](https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter) ga reference | `encounter` |
| Qayd sanasi | - | `2026-03-10` | `recordedDate` |
| Ma'lumot taqdim etuvchi tashkilot | - | [UZCoreOrganization](https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization) ga reference | `participant.actor` |

#### Tashxis kodlari

Tegishli tashxis [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs) tarkibidan olinishi kerak.

Narkologiya registrida quyidagi tashxis kodlari belgilangan:

| Holat | Kodlash tizimi | Kod | Qachon qayd etiladi |
| :--- | :--- | :--- | :--- |
| Boshqa stimulyatorlarni, shu jumladan kofeinni zararli iste'mol qilish | ICD-10 | `F15.1` | Ushbu narkologik tashxis mavjud bo‘lganda |
| Boshqa holatlarga olib keluvchi OIV kasalligi | ICD-10 | `B23` | OIV tanlangan yoki aniqlangan bo‘lsa, alohida `Condition` sifatida |
| Nafas olish tizimi tuberkulyozi | ICD-10 | `A15.7` | Tuberkulyoz tanlangan yoki aniqlangan bo‘lsa, alohida `Condition` sifatida |
| Nogironlik | SNOMED CT | `21134002` | Nogironlik mavjud bo‘lsa, alohida `Condition` sifatida |

Agar OIV yoki tuberkulyoz Narkologiya registrida tanlanmagan yoki aniqlanmagan bo‘lsa, tegishli qo‘shimcha `Condition` yaratilmasligi kerak.

Har bir `Condition` `subject` orqali bemor bilan bog‘lanadi.

Agar holat ma'lum bir tibbiy tashrif vaqtida aniqlangan yoki davolangan bo‘lsa, `encounter` to‘ldirilishi mumkin.

#### Nogironlik

Nogironlik uchun quyidagi qoidalar qo‘llanadi:

1. `severity` faqat nogironlik mavjud bo‘lganda va uning darajasi ma'lum bo‘lsa to‘ldiriladi.
2. Nogironlik mavjud bo‘lganda alohida `Condition` yaratiladi.
3. Alohida nogironlik `Condition` uchun SNOMED CT `21134002` (`Disability`) kodi ishlatiladi.
4. Nogironlik holati `subject` orqali bemor bilan bog‘lanadi.

---

### Ijtimoiy xavflilik va majburiy davolanishni qayd etish (Flag)

Tibbiyot xodimlari bemorni baholash va davolashda bilishi kerak bo‘lgan Narkologiya registrining muhim ma'lumotlari [NarcologyPsychiatryFlag](StructureDefinition-narcology-psychiatry-flag.html) profili yordamida ifodalanadi.

**Examples:** [`example-narcology-flag`](Flag-example-narcology-flag.html)

`Flag` resursi ijtimoiy xavflilik va majburiy davolanish kabi registr belgilarini qayd etish uchun ishlatiladi.

| Qayd etiladigan ma'lumot | Value set | Misol kodi | Saqlanadi |
| :--- | :--- | :--- | :--- |
| Flag holati | [FlagStatusVS](ValueSet-flag-status-vs.html) | `active` | `status` |
| Registr flag kodi | [NarcologyPsychiatryRegistryFlagVS](ValueSet-narcology-psychiatry-registry-flag-vs.html) | `registri0001-00002` | `code` |
| Bemor | - | [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) ga reference | `subject` |
| Amal qilish davri | - | `2026-03-12` | `period` |
| Tibbiy tashrif | - | [UZCoreEncounter](https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter) ga reference | `encounter` |
| Muallif | - | UZCorePractitionerRole ga reference | `author` |

Flag holati majburiy bo‘lib, quyidagi qiymatlardan birini olishi mumkin:

- `active`
- `inactive`
- `entered-in-error`

Registr flag kodlari:

| Kod | SNOMED CT kodi | SNOMED nomi | RU | UZ | ENG |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `registri0001-00001` | `129707006` | At increased risk for other-directed violence (finding) | Социальная опасность | Ijtimoiy xavflilik | Social danger / Social risk |
| `registri0001-00002` | `303163003` | Treatments administered under the provisions of the law (regime/therapy) | Принудительное лечение | Majburiy davolanish | Compulsory treatment |
| `registri0001-00003` | `303163003` | Treatments administered under the provisions of the law (regime/therapy) | Принудительное амбулаторное лечение | Majburiy ambulatoriya sharoitida davolanish | Compulsory outpatient treatment |
| `registri0001-00005` | `1193838006` | Legal guardian status (observable entity) | Под опекой | Vasiylik ostida | Legal guardian status |
| `registri0001-00006` | `21134002` | Disability (finding) | Инвалидность | Nogironlik | Disability |
| `psycr0001-00001` | `52748007` | Involuntary hospital admission (procedure) | Стационарное принудительное лечение | Majburiy statsionar davolanish | Compulsory inpatient treatment |

To‘liq mapping [Narcology and Psychiatry Registry Flags to SNOMED CT](ConceptMap-narcology-psychiatry-registry-flag-to-snomed.html) da aniqlangan.

`subject` registr flag qaysi bemorga tegishli ekanini ko‘rsatadi.

`encounter` flagni muayyan tibbiy tashrif bilan bog‘lash uchun ishlatilishi mumkin.

`author` flagni qayd etish uchun mas'ul tibbiyot xodimining roliga reference saqlaydi.

---

### Terminologiya xulosasi

| Terminologiya | Resurs / element | Maqsadi |
| :--- | :--- | :--- |
| [SocialStatusVS](https://terminology.dhp.uz/fhir/core/ValueSet/social-status-vs) | `Observation.valueCodeableConcept` | Bemorning ijtimoiy holati |
| [SocioeconomicObservationCodesVS](https://dhp.uz/fhir/core/ValueSet/socioeconomic-observation-codes-vs) | `Observation.code` | Ijtimoiy holat kuzatuvini aniqlash |
| [NarcologyPsychiatryEpisodeOfCareTypeGroupVS](ValueSet-narcology-psychiatry-episode-of-care-type-group-vs.html) | `EpisodeOfCare.type[group]` | Dinamik kuzatuv guruhi |
| [EpisodeOfCareStatusVS](https://terminology.dhp.uz/fhir/core/ValueSet/episode-of-care-status-vs) | `EpisodeOfCare.status` | Ro‘yxatga olish hayotiy sikli |
| [NarcologyTypeResourceVS](ValueSet-narcology-type-resource-vs.html) | `Observation.code` | Tibbiy-konsultativ komissiya qarori |
| [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs) | `Condition.code` | Narkologik tashxis |
| [DisabilityVS](https://terminology.dhp.uz/fhir/core/ValueSet/disability-vs) | `Condition.severity` | Nogironlik darajasi |
| [NarcologyPsychiatryRegistryFlagVS](ValueSet-narcology-psychiatry-registry-flag-vs.html) | `Flag.code` | Narkologiya registri flaglari |
| [FlagStatusVS](ValueSet-flag-status-vs.html) | `Flag.status` | Flag hayotiy sikli |

---

### Resurslar o‘rtasidagi bog‘lanishlar

Narkologiya registrining odatiy yozuvi resurslarni quyidagicha bog‘lashi mumkin:

- `Patient` markaziy subyekt hisoblanadi.
- [NarcologyEpisodeOfCare](StructureDefinition-narcology-episode-of-care.html) bemorning Narkologiya registridagi ro‘yxatini va dinamik kuzatuv guruhini ifodalaydi.
- [UZ Core Encounter](https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter) tibbiy tashrifni qayd etadi va tegishli `EpisodeOfCare` ga reference qilishi mumkin.
- [UZ Core Condition](https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition) bemor, tibbiy tashrif yoki episode bilan bog‘liq tashxislarni qayd etadi.
- [UZ Core Socioeconomic Observation](https://dhp.uz/fhir/core/StructureDefinition/uz-core-socioeconomic-observation) bemorning ijtimoiy holatini qayd etadi.
- [NarcologyObservation](StructureDefinition-narcology-observation.html) tibbiy-konsultativ komissiya qarorini qayd etadi va tegishli `Encounter` ga reference qilishi mumkin.
- [NarcologyPsychiatryFlag](StructureDefinition-narcology-psychiatry-flag.html) ijtimoiy xavflilik yoki majburiy davolanish kabi muhim Narkologiya registri ma'lumotlarini qayd etadi.

<div>{% include narcology-model-uz.svg %}</div><br clear="all"/>

Ushbu resurslar bemor, episode, tibbiy tashrif, tashkilot va tibbiyot xodimi roli orqali bog‘lanib, bemorning Narkologiya registridagi ro‘yxati, klinik tashxislari, ijtimoiy holati, tibbiy tashriflari, komissiya qarorlari va muhim registr flaglarini to‘liq ifodalash imkonini beradi.