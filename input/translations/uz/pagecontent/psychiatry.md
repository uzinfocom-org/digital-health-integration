### Bemorning ijtimoiy holatini qayd etish (Observation)

Bemorning ijtimoiy holati [UZ Core Socioeconomic Observation](https://dhp.uz/fhir/core/StructureDefinition/uz-core-socioeconomic-observation) profili yordamida ifodalanadi.

**Misollar:** [`example-psychiatry-socio-economic-observation`](Observation-example-psychiatry-socio-economic-observation.html)

Kuzatuv ijtimoiy holat haqidagi yozuvni SNOMED CT `82996008` konsepti orqali aniqlaydi. Bemorning haqiqiy ijtimoiy holati [SocialStatusVS](https://terminology.dhp.uz/fhir/core/ValueSet/social-status-vs) yordamida `valueCodeableConcept`da qayd etiladi.

| Qayd etiladigan ma'lumot | Qiymatlar to'plami | Kod namunasi | Saqlanadi |
| :--- | :--- | :--- | :--- |
| Kuzatuv holati | ObservationStatus | `final` | `status` |
| Kuzatuv turi | [SocioeconomicObservationCodesVS](https://dhp.uz/fhir/core/ValueSet/socioeconomic-observation-codes-vs) | `SNOMED CT#82996008` | `code` |
| Ijtimoiy holat | [SocialStatusVS](https://terminology.dhp.uz/fhir/core/ValueSet/social-status-vs) | `regis0010.00003` (Band) | `valueCodeableConcept` |
| Bemor | - | [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient)ga havola | `subject` |
| Kuzatuv sanasi | - | `2026-08-15` | `effectiveDateTime` |
| Ijrochi | - | [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role)ga havola | `performer` |

`subject` ijtimoiy holati qayd etilayotgan bemorga havola qiladi.

---

### Bemorni dinamik kuzatuv guruhiga ro'yxatga olish (EpisodeOfCare)

Bemorning psixiatriya hisobiga qo'yilishi va dinamik kuzatuv guruhi [Psychiatry Episode Of Care](StructureDefinition-psychiatry-episode-of-care.html) profili yordamida ifodalanadi.

**Misollar:** [`example-psychiatry-episode-of-care`](EpisodeOfCare-example-psychiatry-episode-of-care.html)

Epizod hisobga olish holatini, xizmat turini, dinamik kuzatuv guruhini, epizod bilan bog'liq tashxislarni, bemorni, boshqaruvchi tashkilotni, ro'yxatga olish davrini va mas'ul amaliyotchi rolini qayd etadi.

| Qayd etiladigan ma'lumot | Qiymatlar to'plami | Kod namunasi | Saqlanadi |
| :--- | :--- | :--- | :--- |
| Identifikator | - | `https://dhp.uz/fhir/core/sid/reg/uz/psychiatry` | `identifier` |
| Hisobga olish holati | [EpisodeOfCareStatusVS](https://terminology.dhp.uz/fhir/core/ValueSet/episode-of-care-status-vs) | `active` | `status` |
| Xizmat turi | Episode Of Care Type | `mserv-0001-00004` (Davolash xizmatlari) | `type[serviceType]` |
| Dinamik kuzatuv guruhi | [NarcologyPsychiatryEpisodeOfCareTypeGroupVS](ValueSet-narcology-psychiatry-episode-of-care-type-group-vs.html) | `psycr0001-00001` | `type[group]` |
| Tashxis | [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs) | `F15.1` | `diagnosis.condition` |
| Tashxisning maqsadi | Encounter Diagnosis Use | `working` | `diagnosis.use` |
| Bemor | - | [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient)ga havola | `patient` |
| Boshqaruvchi tashkilot | - | [UZCoreOrganization](https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization)ga havola | `managingOrganization` |
| Ro'yxatga olingan sana | - | `2026-08-15` | `period.start` |
| Ish boshqaruvchisi | - | [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role)ga havola | `careManager` |

Bemor Psixiatriya reestrida hisobga qo'yilganda, epizod holati `active` bo'ladi.

Bemor hisobdan chiqarilganda, epizod holati `finished`ga o'zgartirilishi kerak.

Dinamik kuzatuv guruhi `EpisodeOfCare.type`dagi `group` bo'lagi orqali ifodalanadi.

Narkologiya va psixiatriya uchun belgilangan episode-of-care guruh kodlari:

| Kod | SNOMED CT kodi | RU | UZ | ENG |
| :--- | :--- | :--- | :--- | :--- |
| `narcr0001-00001` | `302805002` | Профилактическая группа | Profilaktik guruh | Preventive group |
| `narcr0001-00002` | `225419007` | Диспансерная группа | Dispanser guruhi | Dispensary group |
| `psycr0001-00001` | `52748007` | Стационарное принудительное лечение | Majburiy statsionar davolanish | Compulsory inpatient treatment |

SNOMED CT bilan moslashtirish [Narcology and Psychiatry EpisodeOfCare Type Groups to SNOMED CT](ConceptMap-narcology-psychiatry-episode-of-care-type-group-to-snomed.html)da belgilangan.

#### Tashxis kodlari

Psixiatriya epizodi bilan bog'liq tashxisni qayd etishda, amalga oshiruvchilar [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs)dan tegishli kodni ishlatishlari kerak.

Psixiatriya reestri misollarida quyidagi tashxis ishlatiladi:

| Klinik holat | Kodlash tizimi | Kod | Qachon qayd etiladi |
| :--- | :--- | :--- | :--- |
| Kofein ham kiruvchi boshqa stimulyatorlarni zararli iste'mol qilish | ICD-10 | `F15.1` | Ushbu psixiatriya tashxisi bemorga tegishli bo'lganda qayd etiladi |

Epizod bir nechta tashxisni o'z ichiga olishi mumkin. Har bir `diagnosis.condition` tegishli [UZ Core Condition](https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition)ga havola qiladi.

---

### Tibbiy tashrifni qayd etish (Encounter)

Bemorning Psixiatriya reestri doirasidagi tibbiy tashrifi [UZ Core Encounter](https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter) profili yordamida ifodalanadi.

**Misollar:** [`example-psychiatry-encounter`](Encounter-example-psychiatry-encounter.html)

Tashrif tibbiyot xodimi tomonidan qayd etilgan tibbiy tashrifni ifodalaydi va bemorning `PsychiatryEpisodeOfCare`si bilan bog'lanishi mumkin.

| Qayd etiladigan ma'lumot | Qiymatlar to'plami | Kod namunasi | Saqlanadi |
| :--- | :--- | :--- | :--- |
| Tashrif holati | Encounter Status | `completed` | `status` |
| Bemor | - | [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient)ga havola | `subject` |
| Kuzatuv epizodi | - | [PsychiatryEpisodeOfCare](StructureDefinition-psychiatry-episode-of-care.html)ga havola | `episodeOfCare` |
| Haqiqiy tashrif davri | - | `2026-08-15` dan boshlanadi | `actualPeriod` |
| Ishtirokchi turi | Participant Type | `ATND` | `participant.type` |
| Tashrifdagi amaliyotchi | - | [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role)ga havola | `participant.actor` |
| Tashrif turi | - | `mserv-0001-00004` (Davolash xizmatlari) | `type` |
| Tashxis | [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs) | `F15.1` | `diagnosis.condition` |
| Tashxisning maqsadi | Encounter Diagnosis Use | `final` | `diagnosis.use` |

Tashrif holati quyidagicha bo'lishi mumkin:

- `in-progress`
- `on-hold`
- `completed`
- `cancelled`
- `entered-in-error`

`episodeOfCare` havolasi tashrifni bemorning psixiatriya hisobiga qo'yilish epizodi bilan bog'lash uchun ishlatilishi mumkin.

Tashrif bir nechta tashxisni o'z ichiga olishi mumkin. Har bir tashxis [UZ Core Condition](https://dhp.uz/fhir/core/StructureDefinition/uz-core-condition)ga havola qiladi va tashxis maqsadi qiymatiga ega bo'lishi mumkin.

---

### Vrachlik-konsultatsiya komissiyasi qarorini qayd etish (Observation)

Vrachlik-konsultatsiya komissiyasining qarori [PsychiatryCommissionObservation](StructureDefinition-psychiatry-commission-observation.html) profili yordamida ifodalanadi.

**Misollar:** [`example-psychiatry-commission-observation`](Observation-example-psychiatry-commission-observation.html)

Profil vrachlik-konsultatsiya komissiyasining qarorini, jumladan qaror natijasi va, kerak bo'lganda, majburiy davolash qarorini asoslovchi protokol raqami yoki sud nomini qayd etish uchun ishlatiladi.

| Qayd etiladigan ma'lumot | Qiymatlar to'plami | Kod namunasi | Saqlanadi |
| :--- | :--- | :--- | :--- |
| Identifikator | - | `https://dhp.uz/fhir/core/sid/reg/uz/psychiatry` | `identifier` |
| Kuzatuv holati | Observation Status | `final` | `status` |
| Komissiya qarori turi | [TypeResourceCS](CodeSystem-type-resource-cs.html) | `type-res-0002-0001` (qat'iy belgilangan) | `code` |
| Bemor | - | [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient)ga havola | `subject` |
| Tashrif | - | [UZCoreEncounter](https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter)ga havola | `encounter` |
| Komissiya qarori sanasi | - | `2026-08-15` | `effectiveDateTime` |
| Komissiya a'zosi | - | [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role)ga havola | `performer` |
| Komissiya natijasi | - | `Majburiy statsionar davolanish talab etiladi.` | `valueString` |
| Erkin matnli izoh | - | qarorni asoslovchi klinik xulosa | `note` |
| Protokol raqami / sud nomi | - | `123-son Protokol, Toshkent shahar fuqarolik sudi` | `component[protocolNumber].valueString` |

Komissiya qarori turi:

| Kod | SNOMED CT kodi | RU | UZ | ENG |
| :--- | :--- | :--- | :--- | :--- |
| `type-res-0002-0001` | `444804000` | Решение комиссии | Komissiya qarori | The commission's decision |

Tegishli terminologiya [TypeResourceCS](CodeSystem-type-resource-cs.html)da belgilangan, SNOMED CT bilan moslashtirish esa [Type Resource to SNOMED CT ConceptMap](ConceptMap-type-resource-to-snomed.html)da belgilangan.

`protocolNumber` komponenti majburiy davolash qarori bilan bog'liq protokol raqami yoki sud nomini qayd etish uchun ishlatiladi. U `type-resource-cs#type-res-0002-0002` kodidan foydalanadi.

Har bir komissiya a'zosi alohida `performer` havolasi sifatida qayd etiladi.

---

### Bemorning klinik holatini qayd etish (Condition)

Psixiatriyaga oid klinik holat [PsychiatryCondition](StructureDefinition-psychiatry-condition.html) profili yordamida ifodalanadi.

**Misollar:** [`example-psychiatry-condition`](Condition-example-psychiatry-condition.html)

`PsychiatryCondition` profili klinik holatni, tasdiqlash holatini, tashxisni, bemorni, bog'liq tashrifni, boshlanish sanasini, ro'yxatga olingan sanani va ma'lumot beruvchi tashkilotni qayd etadi.

| Qayd etiladigan ma'lumot | Qiymatlar to'plami | Kod namunasi | Saqlanadi |
| :--- | :--- | :--- | :--- |
| Identifikator | - | `https://dhp.uz/fhir/core/sid/reg/uz/psychiatry` | `identifier` |
| Klinik holat | Condition Clinical Status Codes | `active` | `clinicalStatus` |
| Tasdiqlash holati | Condition Verification Status | `confirmed` | `verificationStatus` |
| Tashxis | [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs) | `F15.1` | `code` |
| Bemor | - | [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient)ga havola | `subject` |
| Tashrif | - | [UZCoreEncounter](https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter)ga havola | `encounter` |
| Boshlanish sanasi | - | `2026-08-15` | `onsetDateTime` |
| Ro'yxatga olingan sana | - | `2026-08-15` | `recordedDate` |
| Ma'lumot beruvchi | - | [UZCoreOrganization](https://dhp.uz/fhir/core/StructureDefinition/uz-core-organization)ga havola | `participant.actor` |

Klinik holat majburiy.

Holat hozirda bemorga tegishli bo'lsa, uning holati `active` bo'lishi kerak.

Holat endi tegishli bo'lmasa, holat maqomi FHIR klinik holat semantikasiga muvofiq, masalan tegishli bo'lganda `resolved`ga o'zgartirilishi kerak.

#### Tashxis kodlari

Amalga oshiruvchilar [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs)dan tegishli tashxis kodini ishlatishlari kerak.

Psixiatriya reestri misollarida quyidagi tashxis ishlatiladi:

| Holat | Kodlash tizimi | Kod | Qachon qayd etiladi |
| :--- | :--- | :--- | :--- |
| Kofein ham kiruvchi boshqa stimulyatorlarni zararli iste'mol qilish | ICD-10 | `F15.1` | Ushbu psixiatriya tashxisi bemorga tegishli bo'lganda qayd etiladi |

Har bir holat `subject` orqali bemor bilan bog'lanadi.

Holat ma'lum bir tibbiy tashrif davomida aniqlangan yoki boshqarilgan bo'lsa, `encounter` havolasi to'ldirilishi mumkin.

---

### Ijtimoiy xavflilik va majburiy davolanishni qayd etish (Flag)

Bemorni tekshirish, davolash yoki kuzatish jarayonida tibbiyot xodimlari bilishi kerak bo‘lgan muhim registr ma’lumotlari [NarcologyPsychiatryFlag](StructureDefinition-narcology-psychiatry-flag.html) profili yordamida ifodalanadi.

**Misollar:** [`example-psychiatry-flag`](Flag-example-psychiatry-flag.html)

`Flag` resursi Narkologiya va Psixiatriya registrlari tomonidan birgalikda qo‘llaniladi va ijtimoiy xavflilik, majburiy davolanish, qonuniy vasiylik holati, nogironlik hamda majburiy statsionar davolanish kabi registr ma’lumotlarini qayd etish uchun ishlatiladi.

| Qayd etiladigan ma’lumot | Qiymatlar to‘plami | Namuna kodi | Saqlanadigan element |
| :--- | :--- | :--- | :--- |
| Flag holati | [FlagStatusVS](ValueSet-flag-status-vs.html) | `active` | `status` |
| Registr flag kodi | [NarcologyPsychiatryRegistryFlagVS](ValueSet-narcology-psychiatry-registry-flag-vs.html) | `psycr0001-00001` | `code` |
| Bemor | - | [UZCorePatient](https://dhp.uz/fhir/core/StructureDefinition/uz-core-patient) ga reference | `subject` |
| Amal qilish davri | - | `2026-08-15` | `period` |
| Tibbiy murojaat | - | [UZCoreEncounter](https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter) ga reference | `encounter` |
| Muallif | - | [UZCorePractitionerRole](https://dhp.uz/fhir/core/StructureDefinition/uz-core-practitioner-role) ga reference | `author` |

Flag holati majburiy hisoblanadi va quyidagi qiymatlardan biriga ega bo‘lishi mumkin:

- `active`
- `inactive`
- `entered-in-error`

Narkologiya va Psixiatriya registrlarida qo‘llaniladigan registr flag kodlari:

| Kod | SNOMED CT kodi | SNOMED nomi | RU | UZ | ENG |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `registri0001-00001` | `129707006` | At increased risk for other-directed violence (finding) | Социальная опасность | Ijtimoiy xavflilik | Social danger / Social risk |
| `registri0001-00002` | `303163003` | Treatments administered under the provisions of the law (regime/therapy) | Принудительное лечение | Majburiy davolanish | Compulsory treatment |
| `registri0001-00003` | `303163003` | Treatments administered under the provisions of the law (regime/therapy) | Принудительное амбулаторное лечение | Majburiy ambulatoriya sharoitida davolanish | Compulsory outpatient treatment |
| `registri0001-00005` | `1193838006` | Legal guardian status (observable entity) | Под опекой | Vasiylik ostida | Legal guardian status |
| `registri0001-00006` | `21134002` | Disability (finding) | Инвалидность | Nogironlik | Disability |
| `psycr0001-00001` | `52748007` | Involuntary hospital admission (procedure) | Стационарное принудительное лечение | Majburiy statsionar davolanish | Compulsory inpatient treatment |

`psycr0001-00001` kodi aynan Psixiatriya registriga tegishli. Ushbu kod umumiy `NarcologyPsychiatryEpisodeOfCareTypeGroupCS` CodeSystemida aniqlangan va [NarcologyPsychiatryRegistryFlagVS](ValueSet-narcology-psychiatry-registry-flag-vs.html) ValueSet tarkibiga kiritilgan.

Registr flag kodlarining SNOMED CT tushunchalariga to‘liq mosligi [Narcology and Psychiatry Registry Flags to SNOMED CT](ConceptMap-narcology-psychiatry-registry-flag-to-snomed.html) ConceptMapida belgilangan.

`subject` elementi registr flag qaysi bemorga tegishli ekanini aniqlaydi.

`encounter` elementi flagni muayyan tibbiy murojaat bilan bog‘lash uchun ishlatilishi mumkin.

`author` elementi flagni qayd etish uchun mas’ul bo‘lgan tibbiyot xodimining roliga reference beradi.

---

### Terminologiya xulosasi

Psixiatriya reestri resurslari tomonidan ishlatiladigan terminologiya quyida keltirilgan.

| Terminologiya | Resurs / Element | Maqsad |
| :--- | :--- | :--- |
| [SocialStatusVS](https://terminology.dhp.uz/fhir/core/ValueSet/social-status-vs) | `Observation.valueCodeableConcept` | Bemorning ijtimoiy holati |
| [SocioeconomicObservationCodesVS](https://dhp.uz/fhir/core/ValueSet/socioeconomic-observation-codes-vs) | `Observation.code` | Ijtimoiy holat kuzatuvini aniqlaydi |
| [NarcologyPsychiatryEpisodeOfCareTypeGroupVS](ValueSet-narcology-psychiatry-episode-of-care-type-group-vs.html) | `EpisodeOfCare.type[group]` | Narkologiya bilan umumiy dinamik kuzatuv guruhi |
| [EpisodeOfCareStatusVS](https://terminology.dhp.uz/fhir/core/ValueSet/episode-of-care-status-vs) | `EpisodeOfCare.status` | Psixiatriya hisobiga qo'yilish hayot sikli |
| [TypeResourceCS](CodeSystem-type-resource-cs.html) | `Observation.code` | Vrachlik-konsultatsiya komissiyasi qarori |
| [ConditionCodeVS](https://terminology.dhp.uz/fhir/core/ValueSet/condition-code-vs) | `Condition.code`, `EpisodeOfCare.diagnosis.condition` | Psixiatriya tashxisi |
| [NarcologyPsychiatryRegistryFlagVS](ValueSet-narcology-psychiatry-registry-flag-vs.html) | `Flag.code` | Narkologiya va Psixiatriya reestr belgilari |
| [FlagStatusVS](ValueSet-flag-status-vs.html) | `Flag.status` | Belgi hayot sikli |

---

### Resurslar o'rtasidagi bog'liqlik

Tipik Psixiatriya reestri yozuvi resurslarni quyidagicha bog'lashi mumkin:

- `Patient` — markaziy subyekt.
- [PsychiatryEpisodeOfCare](StructureDefinition-psychiatry-episode-of-care.html) bemorning psixiatriya hisobiga qo'yilishini va dinamik kuzatuv guruhini ifodalaydi.
- [UZCoreEncounter](https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter) tibbiy tashrifni qayd etadi va tegishli `PsychiatryEpisodeOfCare`ga havola qilishi mumkin.
- [PsychiatryCondition](StructureDefinition-psychiatry-condition.html) bemor va tashrif bilan bog'liq tashxislarni qayd etadi.
- [UZ Core Socioeconomic Observation](https://dhp.uz/fhir/core/StructureDefinition/uz-core-socioeconomic-observation) bemorning ijtimoiy holatini qayd etadi.
- [PsychiatryCommissionObservation](StructureDefinition-psychiatry-commission-observation.html) vrachlik-konsultatsiya komissiyasi qarorini, jumladan majburiy davolash qarorini asoslovchi huquqiy protokol yoki sudni qayd etadi.
- [NarcologyPsychiatryFlag](StructureDefinition-narcology-psychiatry-flag.html) Psixiatriyaga tegishli muhim reestr ma'lumotlarini, jumladan `psycr0001-00001` kodi bilan ifodalangan majburiy statsionar davolashni qayd etadi.

<div>{% include psychiatry-model-uz.svg %}</div><br clear="all"/>

Bu resurslar bemor, kuzatuv epizodi, tashrif, tashkilot va amaliyotchi roli havolalari orqali bog'lanib, bemorning psixiatriya hisobiga qo'yilishini, klinik tashxislarni, ijtimoiy holatni, tibbiy tashriflarni, komissiya qarorlarini va muhim reestr belgilarini ifodalaydi.