<style>
/* Even, full-width mapping tables (sections vary in column count). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td { overflow-wrap: anywhere; word-break: break-word; vertical-align: top; }
</style>


> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

Ushbu sahifada qon xizmati donorlik qonining yo'lini - donorni ro'yxatga olishdan retsipiyentga transfuziya qilishgacha - FHIR resurslari bilan qanday qayd etishi tavsiflanadi.

### Umumiy ko'rinish {#overview}

Deyarli har bir bosqichda [UZ Core](https://dhp.uz/fhir/core/uz/artifacts.html) profili o'zgarishsiz qo'llaniladi. Ushbu qo'llanma beshta profil qo'shadi. [Blood Service Registration Observation](StructureDefinition-blood-service-registration-observation.html) UZ Core Patient da bo'lmagan ro'yxatga olish ma'lumotlari uchun: shaxs donor yoki retsipiyent sifatida ro'yxatga olinganligi, ro'yxatga olish raqami, donor toifasi, donatsiya to'lovi va turi hamda retsipiyent tashxisi. [Blood ServiceRequest](StructureDefinition-blood-servicerequest.html) donor laboratoriya buyurtmalari va komponentni qayta ishlash so'rovlari uchun. [Blood Donor Eligibility Flag](StructureDefinition-blood-donor-eligibility-flag.html) donor qon topshirishi mumkinligini yoki chetlatilganini qayd etadi. [Blood Recipient History Observation](StructureDefinition-blood-recipient-history-observation.html) va [Blood Transfusion Assessment Observation](StructureDefinition-blood-transfusion-assessment-observation.html) transfuziyadan oldin retsipiyent anamnezini va moslik sinamalarini qayd etadi. Ushbu bosqichlar ortidagi qog'oz shakllar [8.0 Qon xizmati](forms-volume-08-blood-service.html) bo'limida tavsiflangan.

| Bosqich | Resurs | Profil |
| :--- | :--- | :--- |
| [Donor yoki retsipiyentni ro'yxatga olish](#registering) | Patient, Observation | [UZ Core Patient](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-patient.html), [Blood Service Registration Observation](StructureDefinition-blood-service-registration-observation.html) |
| [Donor bilan suhbat](#interviewing) | Questionnaire, QuestionnaireResponse | [UZ Core QuestionnaireResponse](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-questionnaire-response.html) |
| [Ruxsat yoki chetlatish](#eligibility) | Flag | [UZ Core Flag](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-flag.html) asosidagi [Blood Donor Eligibility Flag](StructureDefinition-blood-donor-eligibility-flag.html) |
| [Donor qonini tekshirish](#testing) | ServiceRequest, Observation, DiagnosticReport, Specimen | [Blood ServiceRequest](StructureDefinition-blood-servicerequest.html), [UZ Core Observation](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-observation.html), [UZ Core DiagnosticReport](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-diagnostic-report.html), [UZ Core Specimen](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-specimen.html) |
| [Donatsiyani olish](#collecting) | Procedure, BiologicallyDerivedProduct | [UZ Core Procedure](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-procedure.html), [UZ Core BiologicallyDerivedProduct](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-biologically-derived-product.html) |
| [Komponentlarga ajratish](#processing) | ServiceRequest, BiologicallyDerivedProduct | [Blood ServiceRequest](StructureDefinition-blood-servicerequest.html), [UZ Core BiologicallyDerivedProduct](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-biologically-derived-product.html) |
| [Zaxiralarni hisobga olish](#stock) | InventoryItem, InventoryReport | [UZ Core InventoryItem](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-inventoryitem.html), [UZ Core InventoryReport](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-inventoryreport.html) |
| [Komponentlarni so'rash va yetkazib berish](#supplying) | SupplyRequest, SupplyDelivery | [UZ Core SupplyRequest](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-supply-request.html), [UZ Core SupplyDelivery](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-supply-delivery.html) |
| [Retsipiyentga transfuziya](#transfusing) | ServiceRequest, Observation, BiologicallyDerivedProductDispense, Procedure, AdverseEvent | [UZ Core ServiceRequest](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-servicerequest.html), [Blood Recipient History Observation](StructureDefinition-blood-recipient-history-observation.html), [Blood Transfusion Assessment Observation](StructureDefinition-blood-transfusion-assessment-observation.html), [UZ Core BiologicallyDerivedProductDispense](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-biologicallyderivedproductdispense.html), [UZ Core Procedure](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-procedure.html), [UZ Core AdverseEvent](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-adverse-event.html) |

<div>{% include blood-service-model-uz.svg %}</div><br clear="all"/>

### Donor va retsipiyentlarni ro'yxatga olish {#registering}

Donorlar ham, retsipiyentlar ham [UZ Core Patient](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-patient.html) yozuvlaridir; Patient da shaxsni donor sifatida belgilaydigan hech narsa yo'q. Ro'yxatga olishning o'zi - bu [Blood Service Registration Observation](StructureDefinition-blood-service-registration-observation.html), uning `code` elementi shaxs qanday ro'yxatga olinganini ko'rsatadi. Qon guruhi va rezus-omil ro'yxatga olishga kirmaydi: ular [tekshiruv natijalari](#testing) sifatida qayd etiladi.

| Qayd etiladigan ma'lumot | Qiymatlar to'plami | Kod misoli | Saqlanadi |
| :--- | :--- | :--- | :--- |
| Kim sifatida ro'yxatga olingan | [Blood service registration type](ValueSet-blood-service-registration-type-vs.html) | `blood-service-observation-type-cs#bsobs-0001-00001` (donor sifatida ro'yxatga olish) / `blood-service-observation-type-cs#bsobs-0001-00002` (retsipiyent sifatida ro'yxatga olish) | `code` |
| Ro'yxatga olish raqami | [NamingSystem](NamingSystem-blood-registration-number-system.html) | system `https://dhp.uz/fhir/core/sid/doc/uz/blood-registration`, qiymat `BD-2026-004517` | `identifier[registrationNumber]` |
| Donor toifasi | [Donor category](ValueSet-donor-category-vs.html) | `SNOMED CT#275561000` (kadr donor) / `donor-category-cs#bdcat-0001-00002` (zaxira donor) | `component[donorCategory]` |
| Pullik yoki bepul donatsiya | [Donation compensation](ValueSet-donation-compensation-vs.html) | `donation-compensation-cs#bdcomp-0001-00001` (bepul) | `component[compensation]` |
| Donatsiya turi | [Donation type](ValueSet-donation-type-vs.html) | `SNOMED CT#20720000` (plazmaferez) | `component[donationType]` |
| Retsipiyent tashxisi | XKT-10 | `D64.9` | `component[diagnosis]` |
| Ro'yxatga olish sanasi | - | `2026-09-23T10:30:00+05:00` | `effectiveDateTime` |

Misollar: [kadr donor](Observation-example-blood-donor-registration-staff.html), [zaxira donor](Observation-example-blood-donor-registration-reserve.html), [retsipiyent](Observation-example-blood-recipient-registration.html).

### Donor bilan suhbat {#interviewing}

Har bir donatsiyadan oldin donor [donor so'rovnomasiga](forms.html#donor-questionnaire) javob beradi; javoblar donorning Patient yozuvida [UZ Core QuestionnaireResponse](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-questionnaire-response.html) bilan qayd etiladi ([namuna](QuestionnaireResponse-example-donor-questionnaire-response.html)). Hech bir javob o'z-o'zidan chetlatish hisoblanmaydi: shifokor javoblarni ko'rib chiqadi va chetlatishni [Flag](#eligibility) bilan qayd etadi.

Jadvalda chetlatishga olib kelishi mumkin bo'lgan javob va unga mos [sabab kodi](ValueSet-donor-deferral-reason-vs.html) ko'rsatilgan. Har bir savolning `item.code` elementi, mos kod mavjud bo'lsa, savol nima haqida ekanini LOINC yoki SNOMED CT kodi bilan bildiradi; sabab kodi savolda yo'q.

| Savol | Chetlatishga olib keladigan javob | Sabab kodi |
| :--- | :--- | :--- |
| Oxirgi marta qachon qon topshirgansiz? (`last-donation`) | Yaqin sana | `donrsn-0001-00006` Oxirgi qon topshirish sanasi |
| Bugun o‘zingizni yaxshi his qilyapsizmi? (`feeling-well`) | Yo'q | `donrsn-0001-00026` Bugun o‘zini yomon his qilish |
| Sizda surunkali kasalliklar (masalan, epilepsiya, diabet, saraton yoki boshqa uzoq davom etadigan kasalliklar) bormi? (`chronic-disease`) | Ha | `donrsn-0001-00009` Surunkali kasallik |
| Hozirda muntazam davolanish kursini olayapsizmi? (`regular-treatment`) | Ha | `donrsn-0001-00005` Dori qabul qilish yoki doimiy davolanish (oxirgi hafta) |
| Muntazam ravishda biror muolajadan o‘tasizmi yoki dori tabletkalarini qabul qilasizmi? (`medication-procedures`) | Ha | `donrsn-0001-00005` Dori qabul qilish yoki doimiy davolanish (oxirgi hafta) |
| Siz ilgari gepatit yoki brutsellyoz bilan kasallanganmisiz? (`hepatitis-brucellosis`) | Ha | `donrsn-0001-00018` Avval gepatit yoki brutsellyoz bilan kasallanganlik |
| So‘nggi vaqtlarda (oxirgi 2 hafta ichida) stomatologik muolajalar o‘tkazilganmi? (`dental-procedure`) | Ha | `donrsn-0001-00010` Stomatologik muolaja (oxirgi 2 hafta) |
| So‘nggi 3 hafta ichida bezgak bilan kasallanganmisiz? (`malaria-illness`) | Ha | `donrsn-0001-00011` Bezgak xavfi bo‘lgan hududga tashrif yoki bezgak bilan bog‘liq holat |
| So‘nggi bir oy ichida emlanganmisiz? (`vaccination`) | Ha | `donrsn-0001-00019` Emlash |
| So‘nggi 3 oy ichida tunda terlash, sababsiz vazn yo‘qotish, titroq, ich ketishi yoki limfa tugunlarining kattalashishi kuzatilganmi? (`recent-symptoms`) | Ha | `donrsn-0001-00020` So‘nggi 3 oyda tungi terlash, vazn yo‘qotish, titroq, diareya yoki limfa tugunlari kattalashishi |
| Gepatit yoki OIV/OITS bilan kasallangan shaxs bilan aloqada bo‘lganmisiz? (`infected-contact`) | Ha | `donrsn-0001-00021` OIV yoki gepatit bilan kasallangan shaxs bilan aloqa |
| So‘nggi 6 oy ichida tasodifiy himoyalanmagan jinsiy aloqada bo‘lganmisiz? (`unprotected-sex`) | Ha | `donrsn-0001-00022` Himoyalanmagan tasodifiy jinsiy aloqa (oxirgi 6 oy) |
| So‘nggi 6 oy ichida jarrohlik amaliyoti, tibbiy muolaja yoki endoskopik tekshiruvdan o‘tganmisiz? (`surgery`) | Ha | `donrsn-0001-00012` Jarrohlik yoki tibbiy aralashuv (oxirgi 6 oy) |
| Sizga ilgari qon yoki uning tarkibiy qismlari quyilganmi? (`blood-transfusion`) | Ha | `donrsn-0001-00003` Qon yoki uning komponentlarini quyish |
| Sifilis, gonoreya, xlamidioz, jinsiy a’zolardagi yaralar yoki gerpes kabi jinsiy yo‘l bilan yuqadigan infeksiyalardan davolanganmisiz? (`sti-treatment`) | Ha | `donrsn-0001-00023` Jinsiy yo‘l bilan yuqadigan infeksiyalarni davolash (oxirgi 6 oy) |
| Umumiy ignalar, shpritslar yoki skarifikatorlardan foydalanganmisiz? (`shared-needles`) | Ha | `donrsn-0001-00024` Umumiy igna yoki shpritslardan foydalanish (oxirgi 6 oy) |
| So‘nggi 6 oy ichida tatuirovka, pirsing yoki igna bilan davolash (akupunktura) muolajasini olganmisiz? (`tattoo-piercing`) | Ha | `donrsn-0001-00001` Tatuirovka, piercing yoki akupunktura |
| Ozodlikdan mahrum etish joylarida bo‘lganmisiz? (`incarceration`) | Ha | `donrsn-0001-00025` Ozodlikdan mahrum etish joylarida bo‘lish |
| Qoningizni OIV/OITS, gepatit va sifilisga tekshirishga rozimisiz? (`testing-consent`) | Yo'q | `donrsn-0001-00027` Qonni tekshirishga rozilik bermaslik |
| So‘nggi vaqtlarda gripp, O‘RVI yoki angina bilan kasallanganmisiz? (`flu-arvi`) | Ha | `donrsn-0001-00004` Gripp, O‘RVI yoki angina |
| So‘nggi 3 hafta ichida isitma kuzatildimi yoki bezgak xavfi mavjud hududlarga borganmisiz? (`malaria-exposure`) | Ha | `donrsn-0001-00011` Bezgak xavfi bo‘lgan hududga tashrif yoki bezgak bilan bog‘liq holat |
| Homiladormisiz? (`pregnancy`) | Ha | `donrsn-0001-00007` Homiladorlik |
| So‘nggi 6 oy ichida tug‘ruq yoki homila tushishi bo‘lganmi? (`postpartum-miscarriage`) | Ha | `donrsn-0001-00017` Tug‘ruq yoki homila tushishidan keyingi davr (oxirgi 6 oy) |
| Hozirda bolangizni emizyapsizmi? (`breastfeeding`) | Ha | `donrsn-0001-00008` Emizish davri |
| So‘nggi 48 soat ichida alkogol iste’mol qilmaganligimni va so‘nggi 72 soat ichida aspirin va analgetiklar qabul qilmaganligimni tasdiqlayman (`alcohol-medication-declaration`) | Yo'q | - |
| Ushbu savollarni va ularning berilish sababini tushunganingizni hamda ularga vijdonan javob berganingizni tasdiqlaysizmi? (`declaration`) | Yo'q | `donrsn-0001-00028` Deklaratsiyani tasdiqlamaslik |

`testing-consent` yoki `declaration` savollariga "Yo'q" javobi tibbiy chetlatish emas, ma'muriy to'xtatishdir: o'sha kuni donatsiya o'tkazilmaydi va chetlatish flagi yaratilmaydi. `alcohol-medication-declaration` savoliga "Yo'q" javobining o'z sabab kodi yo'q; shifokor mos sababni qayd etadi.

Sanani faqat `last-donation` qayd etadi. Boshqa savollar hodisa qachon bo'lganini so'ramaydi, shuning uchun chetlatish flagi suhbat sanasidan boshlanadi, tugash sanasini esa shifokor belgilaydi; javoblar uni aniqlamaydi.

`gender` homiladorlik haqidagi savollar berilishini belgilaydi. `last-doctor-visit`, `last-doctor-visit-reason`, `advised-not-to-donate`, `hospitalization`, `travel-abroad` va `additional-health` shifokorga baholash uchun kontekst beradi, `regular-donation-preference` va `contact-consent` esa donorning istaklarini qayd etadi. Ularning hech biri chetlatishga olib kelmaydi.

`last-donation` (birinchi marta kelgan donor uni bo‘sh qoldiradi) hamda erkin javobli `last-doctor-visit`, `last-doctor-visit-reason` va `additional-health` savollaridan tashqari barcha savollar majburiy. Homiladorlik haqidagi savollar faqat ko‘rsatilganda majburiy.

Namuna: donor yaqinda tatuirovka qilganini bildirgan [namunaviy javobni](QuestionnaireResponse-example-donor-questionnaire-response.html) ko'rib chiqib, shifokor `workflow-reason` kengaytmasida `donrsn-0001-00001` sababi bo'lgan [vaqtinchalik chetlatish flagini](Flag-example-donor-questionnaire-deferral.html) qayd etadi.

### Ruxsat va chetlatishlar {#eligibility}

Donorning qon topshirishi mumkinligi uning Patient yozuvida [UZ Core Flag](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-flag.html) asosidagi [Blood Donor Eligibility Flag](StructureDefinition-blood-donor-eligibility-flag.html) bilan qayd etiladi. `code` elementida `blood-donation-eligible`, `blood-donation-deferred-temporary` yoki `blood-donation-deferred-permanent` ko'rsatiladi. Flag ning `status` elementi flagning o'zini tavsiflaydi: `active` holatdagi flag ruxsat yoki chetlatish amalda ekanini bildiradi. Chetlatish qayd etilganda donorning amaldagi ruxsat flagi shu vaqtdagi `period.end` bilan `inactive` ga o'tkaziladi.

Chetlatishda [workflow-reason](https://hl7.org/fhir/extensions/StructureDefinition-workflow-reason.html) kengaytmasi esa [chetlatish sababini](ValueSet-donor-deferral-reason-vs.html) o'z ichiga oladi va unga asos bo'lgan narsaga, masalan, ijobiy tahlil natijasiga havola qilishi mumkin. Ikki sabab bilan chetlatilgan donorda ikkita flag bo'ladi. `period.start` chetlatish boshlangan vaqtni bildiradi. Vaqtincha chetlatishda `period.end` bor - donor qayta qon topshirishi mumkin bo'lgan sana; doimiy chetlatishda `period.end` yo'q. Vaqtincha flag `inactive` ga o'tkazilmaguncha `active` bo'lib qoladi, shuning uchun chetlatish hali amal qilayotganini bilish uchun `period.end` ni `status` bilan birga o'qing.

Misollar: [ruxsat](Flag-example-blood-donor-eligible.html), [vaqtincha chetlatish](Flag-example-blood-donor-temporary-deferral.html), [doimiy chetlatish](Flag-example-blood-donor-permanent-deferral.html), uning sababi [OIV bo'yicha tasdiqlangan ijobiy natijaga](Observation-example-blood-donor-hiv-result.html) havola qiladi.

### Donor qonini tekshirish {#testing}

Donatsiyadan oldingi har bir tekshiruv natijasi (qon guruhi, rezus-omil, gemoglobin, OIV, B va C gepatitlari, zaxm) - donorning [UZ Core Observation](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-observation.html) yozuvi bo'lib, [UZ Core Specimen](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-specimen.html) namunasidan olinadi. [UZ Core DiagnosticReport](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-diagnostic-report.html) bitta tekshiruv natijalarini birlashtiradi. Ijobiy infeksiya belgisi chetlatish flagiga va allaqachon olingan birliklarni yo'q qilishga olib keladi.

Donor shifokori har bir tekshiruv yoki panel uchun [Blood ServiceRequest](StructureDefinition-blood-servicerequest.html) yaratadi va xizmatni `code.concept` da ko'rsatadi. Bir donatsiya so'rovlari `requisition` da umumiy raqamdan foydalanadi; `category` qabul qiluvchi laboratoriyani bildiradi. Natijalar va hisobotlar so'rovlarga `basedOn` orqali havola qiladi.

### Donatsiyani olish {#collecting}

Qon olish - bu donorning [UZ Core Procedure](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-procedure.html) yozuvi. Natijada butun qon birligi yoki aferez yo'li bilan olingan plazma yoki trombotsitlar uchun [UZ Core BiologicallyDerivedProduct](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-biologically-derived-product.html) paydo bo'ladi.

| Qayd etiladigan ma'lumot | Kod misoli | Saqlanadi |
| :--- | :--- | :--- |
| Birlik raqami | tizim `https://dhp.uz/fhir/core/sid/prd/uz/blood/unit`, qiymat `BB-DON-2026-00123` | `identifier` |
| Donatsiya raqami | tizim `https://dhp.uz/fhir/core/sid/prd/uz/blood/donation`, qiymat `DON-2025-0088231` | `biologicalSourceEvent` |
| Mahsulot | `SNOMED CT#88487009` (Human whole blood product) | `productCode` |
| Donor | Patient ga havola | `collection.source` |
| Kim tomonidan olingan | Practitioner yoki PractitionerRole ga havola | `collection.collector` |
| Qon guruhi | tur `SNOMED CT#63915006`, qiymat [blood group](https://dhp.uz/fhir/core/uz/ValueSet-blood-group-vs.html) dan | `property[aboGroup]` |
| Rezus-omil | tur `SNOMED CT#115678000`, qiymat [Rh factor](https://dhp.uz/fhir/core/uz/ValueSet-blood-rh-vs.html) dan | `property[rhdType]` |
| Hajm | tur `SNOMED CT#118565006`, qiymat ml da | `property[volume]` |
| Gematokrit | tur `LOINC#4544-3`, qiymat % da | `property[hematocrit]` |

Misol: [butun qon donatsiyasi](https://dhp.uz/fhir/core/uz/BiologicallyDerivedProduct-example-blood-donation-product.html).

Donatsiya paytida yoki undan keyingi reaksiya, masalan hushdan ketish, qon olish Procedure sining `complication` elementida [protsedura asoratlari](https://dhp.uz/fhir/core/uz/ValueSet-procedure-complication-vs.html) kodi bilan ko'rsatiladi (misol: [hushdan ketish bilan donatsiya](https://dhp.uz/fhir/core/uz/Procedure-example-blood-donation-procedure.html)).

Donatsiya raqami ([NamingSystem](https://dhp.uz/fhir/core/uz/NamingSystem-uzb-blood-donation-number.html)) bitta donatsiyadan olingan barcha mahsulotlarni bog'laydi. Birlik raqami ([NamingSystem](https://dhp.uz/fhir/core/uz/NamingSystem-uzb-blood-unit-number.html)) har bir qopni identifikatsiya qiladi.

### Komponentlarga ajratish {#processing}

Donatsiyadan ajratilgan har bir komponent (eritrotsitlar, plazma, krioprepitsipitat va boshqalar) alohida BiologicallyDerivedProduct hisoblanadi. Uning `parent` elementi u olingan mahsulotga havola qiladi, donatsiya raqami esa asl donatsiyadan saqlanadi. Aferez donatsiyalarida ota mahsulot yo'q.

Komponentni ikkilamchi qayta ishlash (yuvish, nurlantirish, muzlatish yoki eritish) [Blood ServiceRequest](StructureDefinition-blood-servicerequest.html) orqali so'raladi, uning `focus` elementi shu komponentga havola qiladi.

Misol: [leykotsitlari kamaytirilgan eritrotsitlar](https://dhp.uz/fhir/core/uz/BiologicallyDerivedProduct-example-blood-component-product.html), yuqoridagi butun qon birligidan olingan.

### Zaxiralarni hisobga olish {#stock}

[UZ Core InventoryItem](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-inventoryitem.html) qon xizmati zaxirada saqlaydigan komponent turini tavsiflaydi (misol: [eritrotsitlar](https://dhp.uz/fhir/core/uz/InventoryItem-example-inventory-item-rbc.html)). Zaxira qoldiqlari va harakati - bu [UZ Core InventoryReport](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-inventoryreport.html): `countType` bu inventarizatsiya (`snapshot`) yoki o'zgarish (`difference`) ekanini, `operationType` va `operationTypeReason` nima bo'lganini, masalan kirim yoki hisobdan chiqarishni ko'rsatadi, har bir `inventoryListing` esa bitta `location` dagi bitta `itemStatus` li birliklarni sanaydi (misol: [omborga kirim](https://dhp.uz/fhir/core/uz/InventoryReport-example-inventory-report-medication-receipt.html)).

### Komponentlarni so'rash va yetkazib berish {#supplying}

Shifoxona komponentlarni [UZ Core SupplyRequest](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-supply-request.html) orqali so'raydi. Muayyan bemor uchun nomli so'rov `deliverFor` ni to'ldiradi va `basedOn` orqali transfuziya tayinloviga havola qiladi. Qon xizmati birliklarni jo'natganda, [UZ Core SupplyDelivery](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-supply-delivery.html) `basedOn` orqali so'rovga havola qiladi, har bir `suppliedItem.itemReference` esa yetkazilgan birlikni ko'rsatadi. Birga berilgan so'rovlar, masalan bitta bemor uchun eritrotsitlar va plazma, umumiy [guruh identifikatoriga](https://dhp.uz/fhir/core/uz/StructureDefinition-supplyrequest-group-identifier.html) ega bo'ladi, yetkazib berishdagi [deliver from](https://dhp.uz/fhir/core/uz/StructureDefinition-supplydelivery-deliver-from.html) kengaytmasi esa birliklar qayerdan jo'natilganini ko'rsatadi.

Misollar: [yetkazib berish so'rovi](https://dhp.uz/fhir/core/uz/SupplyRequest-example-supply-request.html), guruhlangan [eritrotsitlar](https://dhp.uz/fhir/core/uz/SupplyRequest-example-supply-request-group-red-cells.html) va [plazma](https://dhp.uz/fhir/core/uz/SupplyRequest-example-supply-request-group-plasma.html) so'rovlari, [qon komponentlarini yetkazib berish](https://dhp.uz/fhir/core/uz/SupplyDelivery-example-blood-product-supply-delivery.html).

### Retsipiyentga transfuziya {#transfusing}

| Bosqich | Resurs | Asosiy elementlar |
| :--- | :--- | :--- |
| Transfuziya tayinlovi | [UZ Core ServiceRequest](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-servicerequest.html) | `subject` - retsipiyent |
| Retsipiyentning transfuzion va akusherlik anamnezi | [Blood Recipient History Observation](StructureDefinition-blood-recipient-history-observation.html) | `code` - anamnez turi, `subject` - retsipiyent |
| Birlik bilan moslik sinovlari | [Blood Transfusion Assessment Observation](StructureDefinition-blood-transfusion-assessment-observation.html) | `focus` - birlik, `derivedFrom` - anamnez va ABO qon guruhi |
| Birlikni retsipiyentga berish | [UZ Core BiologicallyDerivedProductDispense](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-biologicallyderivedproductdispense.html) | `product` - birlik, `patient` - retsipiyent, `basedOn` - tayinlov, `status` - `issued` yoki `returned`, `whenHandedOver` - qon bankidan berilgan vaqt |
| Bajarilgan transfuziya | [UZ Core Procedure](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-procedure.html) | `basedOn` - tayinlov, `used` - birlik, `supportingInfo` - berish, `complication` - [transfuziya asoratlari](https://dhp.uz/fhir/core/uz/ValueSet-blood-transfusion-complication-vs.html) dan reaksiya |
| Transfuziyaga reaksiya | [UZ Core AdverseEvent](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-adverse-event.html) | `suspectEntity.instanceReference` - birlik |

Moslik sinamalari natijalari berishning `matchStatus` elementiga emas, Blood Transfusion Assessment Observation ga yoziladi. Reaksiya transfuziya protsedurasining `complication` elementida qayd etiladi; reaksiya tekshirish uchun xabar qilinganda AdverseEvent qo'shiladi. Misollar: [birlik berildi](https://dhp.uz/fhir/core/uz/BiologicallyDerivedProductDispense-example-bdp-dispense-issued.html), [birlik qaytarildi](https://dhp.uz/fhir/core/uz/BiologicallyDerivedProductDispense-example-bdp-dispense-returned.html).

Donatsiya raqami bilan birga bu havolalar birlikni qon topshirgan donordan uni olgan retsipiyentgacha kuzatish imkonini beradi.

### Shaxsning qon xizmatidagi yozuvlarini qidirish {#queries}

So'rovlar JWT kirish tokenini talab qiladi - qarang: [Xavfsizlik va autentifikatsiya](https://dhp.uz/fhir/core/uz/api-access.html#security). `[base]` bu [FHIR server bazaviy URL manzili](https://dhp.uz/fhir/core/uz/api-access.html#endpoints); `|` tizimni uning qiymatidan ajratadi va URL'da `%7C` sifatida kodlanishi shart.

```
GET [base]/Observation?patient=Patient/[id]&code=https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-service-observation-type-cs%7Cbsobs-0001-00001
GET [base]/Flag?patient=Patient/[id]&status=active
GET [base]/Flag?patient=Patient/[id]&code=https://terminology.dhp.uz/fhir/core/CodeSystem/blood-donor-eligibility-cs%7Cblood-donation-eligible
GET [base]/Observation?patient=Patient/[id]
GET [base]/ServiceRequest?patient=Patient/[id]&code-concept=http://loinc.org%7C1975-2
GET [base]/Procedure?patient=Patient/[id]
GET [base]/BiologicallyDerivedProduct?biological-source-event=https://dhp.uz/fhir/core/sid/prd/uz/blood/donation%7C[donation-number]
GET [base]/BiologicallyDerivedProductDispense?patient=Patient/[id]
GET [base]/AdverseEvent?subject=Patient/[id]
```

BiologicallyDerivedProduct da donor bo'yicha qidiruv parametri yo'q, shuning uchun donorning birliklari donatsiya raqami bo'yicha topiladi.
