<style>
/* Even, full-width mapping tables (sections vary in column count). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
</style>

Ushbu sahifada tug‘ilish va o‘limni ro‘yxatdan o‘tkazish ma'lumotlarining FHIR resurslariga moslashtirilishi tavsiflangan.

### Umumiy ma'lumot

Tug‘ilish va o‘lim moduli O‘zbekistonda tibbiy tug‘ilish va o‘limni ro‘yxatdan o‘tkazish uchun zarur bo‘lgan klinik va ma'muriy ma'lumotlarni qamrab oladi. Ma'lumotlar yangi tug‘ilgan chaqaloqlarni, vafot etgan bemorlarni, klinik uchrashuvlarni, kuzatuvlarni va klinik hujjatlarni tavsiflovchi FHIR resurslari yordamida ifodalanadi.

Har bir bo‘lim ma'lum bir maqsad uchun ishlatiladigan resursni, zarur hollarda terminologiya bog‘lanishlarini, tegishli profilni va resurs namunalarini tavsiflaydi. Tug‘ilish hujjatlari tug‘ruq uchrashuvi, APGAR bahosi va tug‘ilish o‘lchovlarini birlashtiruvchi Composition resursi orqali ifodalanadi. O‘lim hujjatlari esa o‘lim holati va o‘lim sababini o‘z ichiga olgan kuzatuvni birlashtiruvchi Composition resursi orqali ifodalanadi.

---

# Tug‘ilishni ro‘yxatdan o‘tkazish

### Tibbiy tug‘ilganlik guvohnomasi (Composition)

Tibbiy tug‘ilganlik guvohnomasi Composition resursi yordamida ifodalanadi. U tug‘ruq uchrashuvi, APGAR bahosi va tug‘ilish o‘lchovlarini yagona klinik hujjatga birlashtiradi.

Profil: [CompositionOfBirth](StructureDefinition-composition-of-birth.html)

Namuna: [composition-of-birth-example](Composition-composition-of-birth-example.html)

| Kiritiladigan ma'lumot | Qiymatlar to‘plami | Misol kodi | Saqlanadigan joy |
| :--- | :--- | :--- | :--- |
| Hujjat turi | LOINC | `LOINC#57075-4` (Yangi tug‘ilgan chaqaloq tug‘ilishi haqida ma'lumot) | `Composition.type` |
| Hujjat identifikatori | Shakl raqami | `103-shakl` | `Composition.identifier` |
| Hujjat holati | Composition Status | `preliminary` | `Composition.status` |
| Tug‘ruq uchrashuvi | EncounterOfBirth | `encounter-of-birth-example` | `Composition.section` |
| APGAR bahosi | ObservationOfAPGAR | `observation-of-apgar-example` | `Composition.section` |
| Tug‘ilish o‘lchovlari | ObservationOfBirth | `observation-of-birth-example` | `Composition.section` |

---

### Yangi tug‘ilgan bemor

Tug‘ilishi hujjatlashtirilayotgan yangi tug‘ilgan chaqaloqni ifodalaydi. Standart demografik ma'lumotlardan tashqari profil tug‘ilgan vaqt, ko‘p homilali tug‘ilish, vasiylar, mas'ul tibbiyot tashkiloti va davolovchi shifokor haqidagi ma'lumotlarni ham o‘z ichiga oladi.

Profil: [NewbornPatient](StructureDefinition-newborn-patient.html)

Namuna: [newborn-patient-example](Patient-newborn-patient-example.html)

| Kiritiladigan ma'lumot | Saqlanadigan joy |
| :--- | :--- |
| Tug‘ilganlik guvohnomasi raqami | `Patient.identifier` |
| Bemorning F.I.Sh. | `Patient.name` |
| Jinsi | `Patient.gender` |
| Tug‘ilgan sana | `Patient.birthDate` |
| Tug‘ilgan vaqt | `Patient.birthDate.extension(birthTime)` |
| Ko‘p homilali tug‘ilish | `Patient.multipleBirth[x]` |
| Vasiy / Aloqa shaxsi | `Patient.contact` |
| Tibbiyot tashkiloti | `Patient.managingOrganization` |
| Davolovchi shifokor | `Patient.generalPractitioner` |

---

### Bog‘liq shaxs

Yangi tug‘ilgan chaqaloqning ota-onasi yoki qonuniy vakilini ifodalaydi.

Profil: [RelatedPersonOfBirth](StructureDefinition-related-person-of-birth.html)

Namuna: [related-person-of-birth-example](RelatedPerson-related-person-of-birth-example.html)

| Kiritiladigan ma'lumot | Saqlanadigan joy |
| :--- | :--- |
| Pasport identifikatori | `RelatedPerson.identifier` |
| Bog‘langan chaqaloq | `RelatedPerson.patient` |
| Qarindoshlik turi | `RelatedPerson.relationship` |
| F.I.Sh. | `RelatedPerson.name` |
| Jinsi | `RelatedPerson.gender` |
| Tug‘ilgan sana | `RelatedPerson.birthDate` |
| Telefon | `RelatedPerson.telecom` |

---

### Tug‘ruq uchrashuvi

Bola tug‘ilgan klinik uchrashuvni ifodalaydi. Unda tug‘ruq uchun mas'ul tibbiyot tashkiloti, tibbiyot xodimlari, tug‘ruq joyi va tug‘ilish vaqtida aniqlangan tashxislar qayd etiladi.

Profil: [EncounterOfBirth](StructureDefinition-encounter-of-birth.html)

Namuna: [encounter-of-birth-example](Encounter-encounter-of-birth-example.html)

| Kiritiladigan ma'lumot | Misol | Saqlanadigan joy |
| :--- | :--- | :--- |
| Uchrashuv holati | `completed` | `Encounter.status` |
| Uchrashuv klassi | `IMP` | `Encounter.class` |
| Yangi tug‘ilgan chaqaloq | `newborn-patient-example` | `Encounter.subject` |
| Tibbiyot tashkiloti | `organization1-example` | `Encounter.serviceProvider` |
| Onaning uchrashuvi | `encounter-mother-delivery-example` | `Encounter.partOf` |
| Tug‘ruqni qabul qilgan tibbiyot xodimi | `LOINC#87286-1` | `Encounter.participant` |
| Guvohnomani rasmiylashtirgan shifokor | `LOINC#87287-9` | `Encounter.participant` |
| Tug‘ilish tashxisi | `condition-neonatal-jaundice-example` | `Encounter.diagnosis` |
| Tug‘ruq joyi | `location-delivery-room-example` | `Encounter.location` |

---

### APGAR bahosi

Tug‘ilgandan so‘ng qisqa vaqt ichida berilgan APGAR bahosini qayd etadi.

Profil: [ObservationOfAPGAR](StructureDefinition-observation-of-apgar.html)

Namuna: [observation-of-apgar-example](Observation-observation-of-apgar-example.html)

| Kiritiladigan ma'lumot | Qiymatlar to‘plami | Misol | Saqlanadigan joy |
| :--- | :--- | :--- | :--- |
| Kuzatuv turi | LOINCBirthVS | `LOINC#9274-2` (5 daqiqalik APGAR bahosi) | `Observation.code` |
| APGAR bali | Raqamli qiymat | `8` | `Observation.valueQuantity` |
| Baholash vaqti | — | `2026-04-01T10:08:00+05:00` | `Observation.effectiveDateTime` |
| Bajargan shaxs | Practitioner | `practitioner-003` | `Observation.performer` |

---

### Tug‘ilish o‘lchovlari

Tug‘ilgandan so‘ng darhol qayd etilgan o‘lchovlar va hayot mezonlarini o‘z ichiga oladi. Har bir kuzatuv tug‘ilish vazni, bo‘yi yoki gestatsion yosh kabi alohida klinik ko‘rsatkichni ifodalaydi.

Profil: [ObservationOfBirth](StructureDefinition-observation-of-birth.html)

Namuna: [observation-of-birth-example](Observation-observation-of-birth-example.html)

| Kiritiladigan ma'lumot | Qiymatlar to‘plami | Misol | Saqlanadigan joy |
| :--- | :--- | :--- | :--- |
| O‘lchov turi | LOINCBirthVS | `LOINC#8339-4` (Tug‘ilish vazni) | `Observation.code` |
| Tug‘ilish vazni | UCUM | `3200 g` | `Observation.valueQuantity` |
| Nafas olishi | ObservationLifeCriteriaVS | `Breathing = true` | `Observation.component` |
| Yurak urishi | ObservationLifeCriteriaVS | `Heartbeat = true` | `Observation.component` |
| Ixtiyorsiz mushak qisqarishlari | ObservationLifeCriteriaVS | `Involuntary muscle contractions = true` | `Observation.component` |

### Tug‘ilish hujjati resurslari o‘rtasidagi bog‘lanishlar

Tug‘ilishni ro‘yxatdan o‘tkazish jarayonida yangi tug‘ilgan chaqaloq, klinik uchrashuv, kuzatuvlar va Composition resursi yagona klinik hujjatga bog‘lanadi. Composition resursi hujjatning asosiy (root) qismi bo‘lib, o‘zining section elementlari orqali Encounter va Observation resurslariga murojaat qiladi.

| Resurs | Bog‘lanadi | Maqsadi |
| :--- | :--- | :--- |
| CompositionOfBirth | EncounterOfBirth | Tug‘ruq uchrashuvi ma'lumotlari |
| CompositionOfBirth | ObservationOfAPGAR | APGAR bahosi |
| CompositionOfBirth | ObservationOfBirth | Tug‘ilish o‘lchovlari |
| EncounterOfBirth | NewbornPatient | Uchrashuv bilan bog‘langan yangi tug‘ilgan chaqaloq |
| EncounterOfBirth | UZCoreOrganization | Tug‘ruq amalga oshirilgan tibbiyot muassasasi |
| EncounterOfBirth | Practitioner | Tug‘ruqni qabul qilgan va guvohnomani rasmiylashtirgan tibbiyot xodimi |
| ObservationOfAPGAR | NewbornPatient | APGAR bahosi berilgan bemor |
| ObservationOfBirth | NewbornPatient | Tug‘ilish o‘lchovlari qayd etilgan bemor |
| RelatedPersonOfBirth | NewbornPatient | Ota-ona yoki qonuniy vakil |

---

### Tug‘ruq uchrashuvi ishtirokchilari

EncounterOfBirth profili tug‘ruqni qabul qilgan tibbiyot xodimi va tug‘ilganlik guvohnomasini rasmiylashtirgan tibbiyot xodimini alohida ko‘rsatadi.

Profil: [EncounterOfBirth](StructureDefinition-encounter-of-birth.html)

Namuna: [encounter-of-birth-example](Encounter-encounter-of-birth-example.html)

| Ishtirokchi | Terminologiya | Misol kodi | Saqlanadigan joy |
| :--- | :--- | :--- | :--- |
| Tug‘ruqni qabul qilgan tibbiyot xodimi | LOINC | `LOINC#87286-1` | `Encounter.participant[attendant]` |
| Guvohnomani rasmiylashtirgan tibbiyot xodimi | LOINC | `LOINC#87287-9` | `Encounter.participant[certifier]` |

---

### Tug‘ilishdagi hayot mezonlari

ObservationOfBirth profili tug‘ilgandan so‘ng darhol kuzatilgan hayot belgilarini qayd etadi. Har bir mezon kodlangan kuzatuv va Boolean qiymatga ega komponent sifatida ifodalanadi.

Profil: [ObservationOfBirth](StructureDefinition-observation-of-birth.html)

Namuna: [observation-of-birth-example](Observation-observation-of-birth-example.html)

| Hayot mezoni | Qiymatlar to‘plami | Misol kodi | Saqlanadigan joy |
| :--- | :--- | :--- | :--- |
| Nafas olishi | ObservationLifeCriteriaVS | `birth0003-00001` | `Observation.component` |
| Yurak urishi | ObservationLifeCriteriaVS | `birth0003-00002` | `Observation.component` |
| Ixtiyorsiz mushak qisqarishlari | ObservationLifeCriteriaVS | `birth0003-00004` | `Observation.component` |

---

### Tug‘ilish o‘lchovlari

Qayd etilayotgan o‘lchov turiga qarab Observation qiymati Quantity yoki Integer turida bo‘lishi mumkin.

Profil: [ObservationOfBirth](StructureDefinition-observation-of-birth.html)

Namuna: [observation-of-birth-example](Observation-observation-of-birth-example.html)

| O‘lchov | Qiymat turi | Misol |
| :--- | :--- | :--- |
| Tug‘ilish vazni | Quantity | `3200 g` |
| Tug‘ilish bo‘yi | Quantity | `50 cm` |
| Bosh aylanasi | Quantity | `35 cm` |
| Gestatsion yosh | Integer | `39 hafta` |
| Tug‘ilish tartib raqami | Integer | `1` |
| Homiladorlik raqami | Integer | `2` |

---

### APGAR bahosi qiymatlari

ObservationOfAPGAR profili ma'lum bir baholash vaqti uchun bitta APGAR bahosini saqlaydi. Bir nechta APGAR kuzatuvlari qayd etilishi mumkin (masalan, tug‘ilgandan 1, 5 va 10 daqiqadan keyin).

Profil: [ObservationOfAPGAR](StructureDefinition-observation-of-apgar.html)

Namuna: [observation-of-apgar-example](Observation-observation-of-apgar-example.html)

| Kiritiladigan ma'lumot | Saqlanadigan joy |
| :--- | :--- |
| APGAR kuzatuv kodi | `Observation.code` |
| Baholash vaqti | `Observation.effectiveDateTime` |
| Tibbiyot xodimi | `Observation.performer` |
| APGAR bahosi (0–10) | `Observation.valueQuantity` |

---

### Yangi tug‘ilgan chaqaloqning ma'muriy ma'lumotlari

NewbornPatient profili UZ Core Patient profilini tug‘ilishni ro‘yxatdan o‘tkazish uchun zarur bo‘lgan qo‘shimcha ma'lumotlar bilan kengaytiradi.

Profil: [NewbornPatient](StructureDefinition-newborn-patient.html)

Namuna: [newborn-patient-example](Patient-newborn-patient-example.html)

| Ma'muriy ma'lumot | Saqlanadigan joy |
| :--- | :--- |
| Tug‘ilganlik guvohnomasi identifikatori | `Patient.identifier` |
| Tug‘ilgan sana | `Patient.birthDate` |
| Tug‘ilgan vaqt | `Patient.birthDate.extension` |
| Ko‘p homilali tug‘ilish belgisi | `Patient.multipleBirth[x]` |
| Vasiy haqidagi ma'lumot | `Patient.contact` |
| Mas'ul tibbiyot tashkiloti | `Patient.managingOrganization` |
| Asosiy davolovchi shifokor | `Patient.generalPractitioner` |

---

### Tug‘ilish hujjati bo‘yicha yakuniy xulosa

To‘liq tibbiy tug‘ilganlik guvohnomasini shakllantirish uchun quyidagi resurslar talab etiladi.

| Resurs | Maqsadi | Namuna |
| :--- | :--- | :--- |
| CompositionOfBirth | Tug‘ilish bo‘yicha klinik hujjat | `composition-of-birth-example` |
| NewbornPatient | Yangi tug‘ilgan chaqaloqning demografik ma'lumotlari | `newborn-patient-example` |
| RelatedPersonOfBirth | Ota-ona yoki qonuniy vakil | `related-person-of-birth-example` |
| EncounterOfBirth | Tug‘ruq uchrashuvi | `encounter-of-birth-example` |
| ObservationOfAPGAR | APGAR bahosi | `observation-of-apgar-example` |
| ObservationOfBirth | Tug‘ilish o‘lchovlari va hayot mezonlari | `observation-of-birth-example` |

---

Shu bilan **Tug‘ilishni ro‘yxatdan o‘tkazish** hujjatlari yakunlanadi.

Keyingi bo‘limda **O‘limni ro‘yxatdan o‘tkazish** resurslari tavsiflanadi, jumladan:

- CompositionOfDeath
- DeceasedPatient
- EncounterOfDeath
- ObservationCauseOfDeath

# O'limni ro'yxatdan o'tkazish

### O'lim to'g'risidagi tibbiy guvohnoma (Composition)

Tibbiy o'lim guvohnomasi **Composition** resursi orqali ifodalanadi. U o'lim bilan bog'liq tashrif (**Encounter**) va o'lim sababini tavsiflovchi kuzatuv (**Observation**) resurslarini yagona klinik hujjat sifatida birlashtiradi.

**Profil:** [CompositionOfDeath](StructureDefinition-composition-of-death.html)

**Misol:** [composition-of-death-example](Composition-composition-of-death-example.html)

| Kiritilishi kerak bo'lgan ma'lumot | Qiymatlar to'plami | Misol kodi | Saqlanadigan element |
| :--- | :--- | :--- | :--- |
| Hujjat turi | LOINC | `LOINC#64297-5` (O'lim guvohnomasi) | `Composition.type` |
| Hujjat identifikatori | Shakl raqami | `Death form №106` | `Composition.identifier` |
| Hujjat holati | Composition Status | `preliminary` | `Composition.status` |
| O'lim sababi | ObservationCauseOfDeath | `observation-cause-of-death-example` | `Composition.section` |
| O'lim tashrifi | EncounterOfDeath | `encounter-of-death-example` | `Composition.section` |

---

### Vafot etgan bemor

Vafot etgan bemorni ifodalaydi. Ushbu profil UZ Core Patient profilini kengaytirib, o'lim sanasi va vaqtini hamda bemor ma'lumotlari uchun mas'ul tashkilotni majburiy qiladi.

**Profil:** [DeceasedPatient](StructureDefinition-patient-of-death.html)

**Misol:** [deceased-patient-example](Patient-deceased-patient-example.html)

| Kiritilishi kerak bo'lgan ma'lumot | Saqlanadigan element |
| :--- | :--- |
| Milliy identifikator | `Patient.identifier` |
| Bemorning F.I.Sh. | `Patient.name` |
| Jinsi | `Patient.gender` |
| Tug'ilgan sana | `Patient.birthDate` |
| O'lim sanasi va vaqti | `Patient.deceasedDateTime` |
| Manzil | `Patient.address` |
| Mas'ul tashkilot | `Patient.managingOrganization` |

---

### O'lim tashrifi

O'lim tasdiqlangan tibbiy uchrashuvni ifodalaydi. Unda tasdiqlovchi shifokor, tibbiyot tashkiloti, uchrashuv joyi, xizmat turi va o'lim sodir bo'lgan joy qayd etiladi.

**Profil:** [EncounterOfDeath](StructureDefinition-encounter-of-death.html)

**Misol:** [encounter-of-death-example](Encounter-encounter-of-death-example.html)

| Kiritilishi kerak bo'lgan ma'lumot | Qiymatlar to'plami | Misol kodi | Saqlanadigan element |
| :--- | :--- | :--- | :--- |
| Uchrashuv holati | EncounterStatus | `completed` | `Encounter.status` |
| Uchrashuv klassi | v3 ActCode | `EMER` | `Encounter.class` |
| Xizmat turi | DeathEncounterTypeVS | `mserv-0001-00006` (Sud-tibbiy ekspertiza) | `Encounter.serviceType` |
| Vafot etgan bemor | — | `deceased-patient-example` | `Encounter.subject` |
| Tasdiqlovchi mutaxassis | UZCorePractitionerRole | `practitionerrole-001` | `Encounter.participant.actor` |
| Tibbiyot tashkiloti | UZCoreOrganization | `organization1-example` | `Encounter.serviceProvider` |
| O'lim joyi | UZCoreLocation | `location-death-example` | `Encounter.location` |
| O'lim sodir bo'lgan joy turi | SNOMED CT | `183676005` (Kasalxonada vafot etgan) | `Encounter.extension(deathPlaceType)` |

---

### O'lim sababini kuzatish (Observation)

Tasdiqlangan asosiy o'lim sababini, o'lim holatlarini, bevosita sababni hamda zarur hollarda jarohat haqidagi ma'lumotlarni qayd etadi.

**Profil:** [ObservationCauseOfDeath](StructureDefinition-observation-cause-of-death.html)

**Misol:** [observation-cause-of-death-example](Observation-observation-cause-of-death-example.html)

| Kiritilishi kerak bo'lgan ma'lumot | Qiymatlar to'plami | Misol kodi | Saqlanadigan element |
| :--- | :--- | :--- | :--- |
| Kuzatuv turi | LOINC | `LOINC#79378-6` (O'lim sababi) | `Observation.code` |
| Asosiy o'lim sababi | CauseOfDeathVS | `death0003-00003` | `Observation.valueCodeableConcept` |
| O'lim sanasi va vaqti | — | `2026-04-10T14:30:00+05:00` | `Observation.effectiveDateTime` |
| Tasdiqlovchi shifokor | UZCorePractitioner | `practitioner-003` | `Observation.performer` |

---

### O'lim holatlari

Observation Cause of Death profili o'limga olib kelgan holatlar haqidagi qo'shimcha ma'lumotlarni ham o'z ichiga oladi.

**Profil:** [ObservationCauseOfDeath](StructureDefinition-observation-cause-of-death.html)

**Misol:** [observation-cause-of-death-example](Observation-observation-cause-of-death-example.html)

| Kiritilishi kerak bo'lgan ma'lumot | Qiymatlar to'plami | Misol kodi | Saqlanadigan element |
| :--- | :--- | :--- | :--- |
| O'lim holatlari | DeathOccuredFromVS | `SNOMED CT#7878000` (Baxtsiz hodisa natijasidagi o'lim) | `Observation.component[occurredFrom]` |
| Bevosita o'lim sababi | ICD-10 | `I21.9` (O'tkir miokard infarkti) | `Observation.component[immediateCause]` |
| Jarohat turi | DeathInjuryPlaceVS | `death0002_00003` (Transport bilan bog'liq) | `Observation.component[accidentPlaceType]` |
| Jarohat sanasi | — | `2026-04-08T18:00:00+05:00` | `Observation.component[accidentDate]` |
| Hodisa joyi va holatlari | DeathInjuryPlaceVS | `death0002_00003` | `Observation.component[accidentPlaceCircumstances]` |

---

### O'lim tashrifi ishtirokchilari

O'lim tashrifi o'limni tasdiqlagan tibbiyot xodimi hamda tasdiqlash amalga oshirilgan tibbiyot muassasasini aniqlaydi.

**Profil:** [EncounterOfDeath](StructureDefinition-encounter-of-death.html)

**Misol:** [encounter-of-death-example](Encounter-encounter-of-death-example.html)

| Ishtirokchi | Saqlanadigan element |
| :--- | :--- |
| Mutaxassis roli | `Encounter.participant.actor` |
| Ishtirok turi | `Encounter.participant.type` |
| Ishtirok davri | `Encounter.participant.period` |

---

### O'lim hujjati bog'lanishlari

O'limni ro'yxatdan o'tkazish hujjati qonuniy o'limni tasdiqlash uchun zarur bo'lgan bemor, uchrashuv va klinik kuzatuv resurslaridan tashkil topadi.

| Resurs | Bog'lanadi | Maqsadi |
| :--- | :--- | :--- |
| CompositionOfDeath | ObservationCauseOfDeath | O'lim sababini tasdiqlash |
| CompositionOfDeath | EncounterOfDeath | O'lim tashrifi |
| EncounterOfDeath | DeceasedPatient | Vafot etgan bemor |
| EncounterOfDeath | UZCoreOrganization | Tasdiqlovchi tibbiyot muassasasi |
| EncounterOfDeath | UZCorePractitionerRole | Tasdiqlovchi tibbiyot xodimi |
| ObservationCauseOfDeath | DeceasedPatient | Kuzatuv subyekti |
| ObservationCauseOfDeath | UZCorePractitioner | Kuzatuvni qayd etgan shifokor |

---

### O'limni ro'yxatdan o'tkazish xulosasi

To'liq tibbiy o'lim guvohnomasini ifodalash uchun quyidagi resurslar talab qilinadi.

| Resurs | Maqsadi | Misol |
| :--- | :--- | :--- |
| CompositionOfDeath | Klinik o'lim hujjati | `composition-of-death-example` |
| DeceasedPatient | Vafot etgan bemor ma'lumotlari | `deceased-patient-example` |
| EncounterOfDeath | O'limni tasdiqlash tashrifi | `encounter-of-death-example` |
| ObservationCauseOfDeath | O'lim sababini kuzatish | `observation-cause-of-death-example` |

---

## Resurslar o'rtasidagi bog'lanishlar

Birth va Death Implementation Guide hujjatlarida **Composition** resursi hujjatning kirish nuqtasi (entry point) sifatida ishlatiladi.

### Tug'ilishni ro'yxatdan o'tkazish

```text
CompositionOfBirth
├── EncounterOfBirth
├── ObservationOfAPGAR
└── ObservationOfBirth
      │
      └── NewbornPatient
            │
            └── RelatedPersonOfBirth
```

### O'limni ro'yxatdan o'tkazish

```text
CompositionOfDeath
├── EncounterOfDeath
└── ObservationCauseOfDeath
      │
      └── DeceasedPatient
```

Ushbu resurslar birgalikda O'zbekistonda tug'ilish va o'limni tibbiy hamda ma'muriy ro'yxatdan o'tkazish uchun zarur bo'lgan klinik ma'lumotlarni ifodalaydi va UZ Core hamda HL7 FHIR R5 standartlariga mos keladi.