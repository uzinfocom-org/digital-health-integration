<style>
/* Even, full-width mapping tables (sections vary in column count). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
</style>


> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

Ushbu sahifada qon xizmati donorlik qonining yo'lini - donorni ro'yxatga olishdan retsipiyentga transfuziya qilishgacha - FHIR resurslari bilan qanday qayd etishi tavsiflanadi.

### Umumiy ko'rinish {#overview}

Deyarli har bir bosqichda [UZ Core](https://dhp.uz/fhir/core/uz/artifacts.html) profili o'zgarishsiz qo'llaniladi. Ushbu qo'llanma bitta profil qo'shadi - [Blood Donor Category Observation](StructureDefinition-blood-donor-category-observation.html). U UZ Core Patient da bo'lmagan ro'yxatga olish ma'lumotlari uchun: shaxs donor yoki retsipiyent sifatida ro'yxatga olinganligi, donor toifasi, donatsiya to'lovi va turi, qon guruhi, rezus-omil va retsipiyent tashxisi. Ushbu bosqichlar ortidagi qog'oz shakllar [8.0 Qon xizmati](forms-volume-08-blood-service.html) bo'limida tavsiflangan.

| Bosqich | Resurs | Profil |
| :--- | :--- | :--- |
| [Donor yoki retsipiyentni ro'yxatga olish](#registering) | Patient, Observation | [UZ Core Patient](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-patient.html), [Blood Donor Category Observation](StructureDefinition-blood-donor-category-observation.html) |
| [Ruxsat yoki chetlatish](#eligibility) | Flag | UZ Core Flag (UZ Core ning keyingi relizi) |
| [Donor qonini tekshirish](#testing) | Observation, DiagnosticReport, Specimen | [UZ Core Observation](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-observation.html), [UZ Core DiagnosticReport](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-diagnostic-report.html), [UZ Core Specimen](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-specimen.html) |
| [Donatsiyani olish](#collecting) | Procedure, BiologicallyDerivedProduct | [UZ Core Procedure](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-procedure.html), [UZ Core BiologicallyDerivedProduct](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-biologically-derived-product.html) |
| [Komponentlarga ajratish](#processing) | BiologicallyDerivedProduct | [UZ Core BiologicallyDerivedProduct](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-biologically-derived-product.html) |
| [Zaxiralarni hisobga olish](#stock) | InventoryItem, InventoryReport | [UZ Core InventoryItem](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-inventoryitem.html), UZ Core InventoryReport (UZ Core ning keyingi relizi) |
| [Komponentlarni so'rash va yetkazib berish](#supplying) | SupplyRequest, SupplyDelivery | [UZ Core SupplyRequest](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-supply-request.html), [UZ Core SupplyDelivery](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-supply-delivery.html) |
| [Retsipiyentga transfuziya](#transfusing) | ServiceRequest, BiologicallyDerivedProductDispense, Procedure, AdverseEvent | [UZ Core ServiceRequest](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-servicerequest.html), bazaviy [BiologicallyDerivedProductDispense](https://hl7.org/fhir/R5/biologicallyderivedproductdispense.html), [UZ Core Procedure](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-procedure.html), [UZ Core AdverseEvent](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-adverse-event.html) |

<div>{% include blood-management-model-uz.svg %}</div><br clear="all"/>

### Donor va retsipiyentlarni ro'yxatga olish {#registering}

Donorlar ham, retsipiyentlar ham [UZ Core Patient](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-patient.html) yozuvlaridir; Patient da shaxsni donor sifatida belgilaydigan hech narsa yo'q. Ro'yxatga olishning o'zi - bu [Blood Donor Category Observation](StructureDefinition-blood-donor-category-observation.html), uning `code` elementi shaxs qanday ro'yxatga olinganini ko'rsatadi.

| Qayd etiladigan ma'lumot | Ma'lumotnoma | Misol kodi yoki qiymati | Qayerda saqlanadi |
| :--- | :--- | :--- | :--- |
| Kim sifatida ro'yxatga olingan | [Blood patient type](ValueSet-blood-patient-type-vs.html) | `SNOMED CT#105470007` (qon donori) / `SNOMED CT#116154003` (bemor) | `code` |
| Donor toifasi | [Donor category](ValueSet-donor-category-vs.html) | `donor-category-cs#bdcat-0001-00001` (kadr donor) | `category[donorCategory]` |
| Pullik yoki bepul donatsiya | [Donation compensation](ValueSet-donation-compensation-vs.html) | `donation-compensation-cs#bdcomp-0001-00001` (bepul) | `valueCodeableConcept` |
| Donatsiya turi | [Donation type](ValueSet-donation-type-vs.html) | `donation-type-cs#bdtype-0001-00002` (plazmaferez) | `component[donationType]` |
| Qon guruhi | [Blood group](https://dhp.uz/fhir/core/uz/ValueSet-blood-group-vs.html) | `SNOMED CT#112144000` (A guruh) | `component[bloodGroup]` |
| Rezus-omil | [Rh factor](https://dhp.uz/fhir/core/uz/ValueSet-blood-rh-vs.html) | `SNOMED CT#165747007` (RhD musbat) | `component[rhFactor]` |
| Retsipiyent tashxisi | XKT-10 | `D64.9` | `component[diagnosis]` |
| Ro'yxatga olish sanasi | - | `2026-09-23T10:30:00+05:00` | `effectiveDateTime` |

Misollar: [kadr donor](Observation-example-blood-donor-category-observation.html), [zaxira donor](Observation-example-blood-donor-category-observation-reserve.html), [retsipiyent](Observation-example-blood-recipient-category-observation.html).

### Ruxsat va chetlatishlar {#eligibility}

Donorning qon topshirishi mumkinligi uning Patient yozuvida Flag bilan qayd etiladi: donatsiyaga ruxsat yoki tibbiy chetlatish. Buning uchun UZ Core Flag profili donorlarga ruxsat kodlari bilan birga UZ Core ning keyingi relizida bo'ladi. Flag ning `status` elementi flagning o'zini tavsiflaydi: `active` holatdagi chetlatish flagi chetlatish amalda ekanini bildiradi.

### Donor qonini tekshirish {#testing}

Donatsiyadan oldingi har bir tekshiruv natijasi (qon guruhi, rezus-omil, gemoglobin, OIV, B va C gepatitlari, zaxm) - donorning [UZ Core Observation](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-observation.html) yozuvi bo'lib, [UZ Core Specimen](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-specimen.html) namunasidan olinadi. [UZ Core DiagnosticReport](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-diagnostic-report.html) bitta tekshiruv natijalarini birlashtiradi. Ijobiy infeksiya belgisi chetlatish flagiga va allaqachon olingan birliklarni yo'q qilishga olib keladi.

### Donatsiyani olish {#collecting}

Qon olish - bu donorning [UZ Core Procedure](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-procedure.html) yozuvi. Natijada butun qon birligi yoki aferez yo'li bilan olingan plazma yoki trombotsitlar uchun [UZ Core BiologicallyDerivedProduct](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-biologically-derived-product.html) paydo bo'ladi.

| Qayd etiladigan ma'lumot | Misol kodi yoki qiymati | Qayerda saqlanadi |
| :--- | :--- | :--- |
| Birlik raqami | tizim `https://dhp.uz/fhir/core/sid/prd/uz/blood/unit`, qiymat `BB-DON-2026-00123` | `identifier` |
| Donatsiya raqami | tizim `https://dhp.uz/fhir/core/sid/prd/uz/blood/donation`, qiymat `DON-2025-0088231` | `biologicalSourceEvent` |
| Mahsulot | `SNOMED CT#88487009` (Human whole blood product) | `productCode` |
| Donor | Patient ga havola | `collection.source` |
| Kim tomonidan olingan | Practitioner yoki PractitionerRole ga havola | `collection.collector` |
| Qon guruhi | tur `SNOMED CT#63915006`, qiymat [blood group](https://dhp.uz/fhir/core/uz/ValueSet-blood-group-vs.html) dan | `property[aboGroup]` |
| Rezus-omil | tur `SNOMED CT#115678000`, qiymat [Rh factor](https://dhp.uz/fhir/core/uz/ValueSet-blood-rh-vs.html) dan | `property[rhdType]` |

Misol: [butun qon donatsiyasi](https://dhp.uz/fhir/core/uz/BiologicallyDerivedProduct-example-blood-donation-product.html).

Donatsiya raqami ([NamingSystem](https://dhp.uz/fhir/core/uz/NamingSystem-uzb-blood-donation-number.html)) bitta donatsiyadan olingan barcha mahsulotlarni bog'laydi. Birlik raqami ([NamingSystem](https://dhp.uz/fhir/core/uz/NamingSystem-uzb-blood-unit-number.html)) har bir qopni identifikatsiya qiladi.

### Komponentlarga ajratish {#processing}

Donatsiyadan ajratilgan har bir komponent (eritrotsitlar, plazma, krioprepitsipitat va boshqalar) alohida BiologicallyDerivedProduct hisoblanadi. Uning `parent` elementi u olingan mahsulotga havola qiladi, donatsiya raqami esa asl donatsiyadan saqlanadi. Aferez donatsiyalarida ota mahsulot yo'q.

Misol: [leykotsitlari kamaytirilgan eritrotsitlar](https://dhp.uz/fhir/core/uz/BiologicallyDerivedProduct-example-blood-component-product.html), yuqoridagi butun qon birligidan olingan.

### Zaxiralarni hisobga olish {#stock}

[UZ Core InventoryItem](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-inventoryitem.html) qon xizmati zaxirada saqlaydigan komponent turini tavsiflaydi (misol: [eritrotsitlar](https://dhp.uz/fhir/core/uz/InventoryItem-example-inventory-item-rbc.html)). Komponentlar, qon guruhlari va saqlash joylari bo'yicha qoldiqlar - bu InventoryReport; UZ Core InventoryReport profili UZ Core ning keyingi relizida bo'ladi.

### Komponentlarni so'rash va yetkazib berish {#supplying}

Shifoxona komponentlarni [UZ Core SupplyRequest](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-supply-request.html) orqali so'raydi. Muayyan bemor uchun nomli so'rov `deliverFor` ni to'ldiradi va `basedOn` orqali transfuziya tayinloviga havola qiladi. Qon xizmati birliklarni jo'natganda, [UZ Core SupplyDelivery](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-supply-delivery.html) `basedOn` orqali so'rovga havola qiladi, har bir `suppliedItem.itemReference` esa yetkazilgan birlikni ko'rsatadi.

Misollar: [yetkazib berish so'rovi](https://dhp.uz/fhir/core/uz/SupplyRequest-example-supply-request.html), [qon komponentlarini yetkazib berish](https://dhp.uz/fhir/core/uz/SupplyDelivery-example-blood-product-supply-delivery.html).

### Retsipiyentga transfuziya {#transfusing}

| Bosqich | Resurs | Asosiy elementlar |
| :--- | :--- | :--- |
| Transfuziya tayinlovi | [UZ Core ServiceRequest](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-servicerequest.html) | `subject` - retsipiyent |
| Birlikni retsipiyentga berish | [BiologicallyDerivedProductDispense](https://hl7.org/fhir/R5/biologicallyderivedproductdispense.html) (UZ Core profili hali yo'q) | `product` - birlik, `patient` - retsipiyent, `basedOn` - tayinlov |
| Bajarilgan transfuziya | [UZ Core Procedure](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-procedure.html) | `basedOn` - tayinlov, `used` - birlik |
| Transfuziyaga reaksiya | [UZ Core AdverseEvent](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-adverse-event.html) | `suspectEntity.instanceReference` - birlik |

Donatsiya raqami bilan birga bu havolalar birlikni qon topshirgan donordan uni olgan retsipiyentgacha kuzatish imkonini beradi.

### Shaxsning qon xizmatidagi yozuvlarini qidirish {#queries}

So'rovlar JWT kirish tokenini talab qiladi - qarang: [Xavfsizlik va autentifikatsiya](https://dhp.uz/fhir/core/uz/api-access.html#security). `[base]` bu [FHIR server bazaviy URL manzili](https://dhp.uz/fhir/core/uz/api-access.html#endpoints); `|` tizimni uning qiymatidan ajratadi va URL'da `%7C` sifatida kodlanishi shart.

```
GET [base]/Observation?patient=Patient/[id]&code=http://snomed.info/sct%7C105470007
GET [base]/Flag?patient=Patient/[id]&status=active
GET [base]/Observation?patient=Patient/[id]
GET [base]/Procedure?patient=Patient/[id]
GET [base]/BiologicallyDerivedProduct?biological-source-event=https://dhp.uz/fhir/core/sid/prd/uz/blood/donation%7C[donation-number]
GET [base]/BiologicallyDerivedProductDispense?patient=Patient/[id]
GET [base]/AdverseEvent?subject=Patient/[id]
```

BiologicallyDerivedProduct da donor bo'yicha qidiruv parametri yo'q, shuning uchun donorning birliklari donatsiya raqami bo'yicha topiladi.
