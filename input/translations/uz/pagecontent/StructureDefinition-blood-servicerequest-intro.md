> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

Blood ServiceRequest - qon xizmatining donorning bitta laboratoriya tekshiruvi yoki tekshiruvlar paneli yoxud qon komponentini ikkilamchi qayta ishlashning bitta operatsiyasi (yuvish, nurlantirish, muzlatish yoki eritish) uchun so'rovi. U [UZ Core ServiceRequest](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-servicerequest.html) asosida tuzilgan va bajarilgan ishni emas, faqat so'rovning o'zini qayd etadi. Laboratoriya so'rovi donorni ([Patient](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-patient.html)), donatsiya tashrifini ([Encounter](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-encounter.html)) va tekshiriladigan donor namunalarini ([Specimen](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-specimen.html)) ko'rsatadi; qayta ishlash so'rovini qon xizmati o'z zaxirasi uchun rasmiylashtiradi, shuning uchun u qon xizmati joyini ([Location](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-location.html)) ko'rsatadi va qon komponentiga ([BiologicallyDerivedProduct](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-biologically-derived-product.html)) murojaat qiladi. Har bir tekshiruv, panel yoki operatsiya alohida so'rov bo'ladi, bitta donatsiyaning so'rovlari esa uning raqami orqali bog'lanadi. Ushbu so'rovlarning qon xizmatidagi o'rni [Blood Service](blood-service.html) sahifasida, manba shakllar esa [Qon xizmati shakllari](forms-volume-08-blood-service.html) sahifasida keltirilgan.

### Majburiy va Must Support ma'lumot elementlari

Quyidagi elementlar har doim mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi shart ([Must Support](https://dhp.uz/fhir/core/uz/must-support.html)) - hammasi talab qilinmaydi, lekin tizimingiz har bir Must Support elementini ma'lumotga ega bo'lganda to'ldirishi va qabul qilishda uni qayta ishlashi shart. Bu inson o'qiy oladigan xulosa; quyidagi [rasmiy ko'rinishlar](#profile) aniq kardinalliklar, turlar va terminologiya bog'lanishlarini beradi.

#### Har bir Blood ServiceRequest quyidagilarga ega bo'lishi shart

Har bir so'rovda `status`, `order` maqsadi, [laboratoriya tekshiruvlari va qayta ishlash operatsiyalari](ValueSet-blood-lab-codes-vs.html) to'plamidan aynan bitta kodlashga ega so'ralgan xizmat (`code`) va `subject` bo'lishi shart: laboratoriya tekshiruvi uchun donor, komponentni qayta ishlash uchun qon xizmati joyi. Buyurtma raqami yoki donatsiya raqami yuborilsa, unda `value` bo'lishi shart.

#### Har bir Blood ServiceRequest quyidagilarni qo'llab-quvvatlashi shart

- buyurtma raqami (`identifier`) va bitta donatsiya so'rovlarini bog'lovchi donatsiya raqami (`requisition`), har biri o'zining belgilangan `system` i bilan;
- so'rov holati (draft / active / on-hold / revoked / completed / entered-in-error / unknown);
- qabul qiluvchi laboratoriya (`category`), masalan gematologiya, biokimyo yoki immunologiya;
- shoshilinchlik (`priority`: routine / urgent / asap / stat) va xizmatni bajarish mumkin emasligi (`doNotPerform`);
- so'ralgan tekshiruv, panel yoki qayta ishlash operatsiyasi (`code`);
- donor yoki qon xizmati joyi (`subject`) va donatsiya tashrifi (`encounter`);
- xizmat qachon bajarilishi kerakligi (`occurrence[x]`) va so'rov qachon rasmiylashtirilgani (`authoredOn`);
- so'rovni kim bergani (`requester`), kim bajarishi kerakligi (`performer`) va qayerda (`location`);
- xizmat nima uchun kerakligi (`reason`), qanday to'lanishi (to'lov turi kengaytmasi) va sug'urta qoplamasi (`insurance`);
- tekshiriladigan donor namunalari (`specimen`) va qayta ishlanadigan qon komponenti (`focus`);
- so'rovni qo'llab-quvvatlovchi boshqa ma'lumotlar (`supportingInfo`), izohlar (`note`) va donor uchun ko'rsatmalar (`patientInstruction`).

### JSON ni bosqichma-bosqich qurish

Quyidagi misollar eng kichik yaroqli so'rovdan komponentni qayta ishlash so'rovigacha boradi. Ularning har biri ushbu profil bo'yicha validatsiyadan o'tadi. To'liq namunaviy nusxalar - bitta donatsiyaning laboratoriya so'rovlari ([bilirubin](ServiceRequest-example-blood-laboratory-order.html), [ALT](ServiceRequest-example-blood-alt-laboratory-order.html), [ABO guruhi](ServiceRequest-example-blood-immunology-laboratory-order.html), [rezus](ServiceRequest-example-blood-rh-laboratory-order.html), [gepatit C](ServiceRequest-example-blood-transfusion-infections-laboratory-order.html), [zaxm](ServiceRequest-example-blood-syphilis-laboratory-order.html), [HBsAg](ServiceRequest-example-blood-hbsag-laboratory-order.html), [OIV](ServiceRequest-example-blood-hiv-laboratory-order.html), [brutsellyoz](ServiceRequest-example-blood-bacteriology-laboratory-order.html), [bezgak](ServiceRequest-example-blood-malaria-laboratory-order.html) va [umumiy qon tahlili](ServiceRequest-example-blood-hematology-laboratory-order.html)) hamda [yuvish](ServiceRequest-example-blood-component-processing-order.html), [nurlantirish](ServiceRequest-example-blood-component-irradiation-order.html), [muzlatish](ServiceRequest-example-blood-component-freezing-order.html) va [eritish](ServiceRequest-example-blood-component-thawing-order.html) so'rovlari.

#### Eng kichik Blood ServiceRequest

Asosiy resurs `status`, `intent` va `subject` ni, ushbu profil `code` ni talab qiladi, har bir resurs esa o'z profilini `meta.profile` da ko'rsatadi. Validatsiyadan o'tish uchun shu yetarli:

```json
{
  "resourceType": "ServiceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/integrations/StructureDefinition/blood-servicerequest"] },
  "status": "active",
  "intent": "order",
  "code": {
    "concept": { "coding": [ { "system": "http://loinc.org", "code": "1975-2" } ] }
  },
  "subject": { "reference": "Patient/example-salim" }
}
```

Profil `intent` ni `order` ga belgilaydi. `code` ning turi `CodeableReference`, shuning uchun kodlash `concept` ichida joylashadi va [laboratoriya tekshiruvlari va qayta ishlash operatsiyalari](ValueSet-blood-lab-codes-vs.html) to'plamidan bitta kodni o'z ichiga oladi. Keyingi misollar kim, qayerda va nima uchun ekanini qo'shadi.

#### Donor laboratoriya tekshiruvi

Donor shifokori donatsiya tashrifi vaqtida biokimyo laboratoriyasiga donorning butun qon namunasi bo'yicha umumiy bilirubin tekshiruvini buyuradi:

```json
{
  "resourceType": "ServiceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/integrations/StructureDefinition/blood-servicerequest"] },
  "language": "uz",
  "status": "active",
  "intent": "order",
  "identifier": [
    {
      "system": "https://dhp.uz/fhir/core/sid/doc/uz/blood-service-request",
      "value": "XON-SR-2026-0001",
      "assigner": { "reference": "Organization/xonobod-medical-association" }
    }
  ],
  "requisition": {
    "system": "https://dhp.uz/fhir/core/sid/prd/uz/blood/donation",
    "value": "DON-2025-0088231"
  },
  "category": [
    {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/lab-categories-cs",
          "code": "lab-category-04",
          "display": "Biokimyo"
        }
      ]
    }
  ],
  "priority": "routine",
  "code": {
    "concept": { "coding": [ { "system": "http://loinc.org", "code": "1975-2" } ] }
  },
  "subject": { "reference": "Patient/example-salim" },
  "encounter": { "reference": "Encounter/example-blood-donation-encounter" },
  "authoredOn": "2026-11-10T09:05:00+05:00",
  "requester": { "reference": "PractitionerRole/example-practitionerrole" },
  "specimen": [ { "reference": "Specimen/example-blood-whole-blood-specimen" } ]
}
```

Har bir tekshiruv yoki panel uchun alohida so'rov yarating: shu namuna bo'yicha ALT tekshiruvi o'z buyurtma raqami va xuddi shu `requisition` ga ega [ikkinchi so'rov](ServiceRequest-example-blood-alt-laboratory-order.html) bo'ladi. `requisition` donatsiya raqamini UZ Core ning belgilangan donatsiya tizimida saqlaydi, shuning uchun bitta donatsiyaning barcha so'rovlarini birgalikda topish mumkin. `identifier` belgilangan [qon xizmati so'rov raqami](NamingSystem-blood-service-request-number-system.html) tizimidan foydalanadi, `assigner` esa raqamni bergan tashkilotni ko'rsatadi. `category` qabul qiluvchi laboratoriyani milliy laboratoriya bo'limlari kodi bilan ko'rsatadi, ularning nomlari o'zbek tilida, shuning uchun resursda `language` `uz` ga teng. Laboratoriya kodlari usul va namuna tasdiqlanguniga qadar nomzod hisoblanadi. Laboratoriya donorning bir nechta probirkasini qabul qilsa, har birini `specimen` da sanab o'ting.

#### Komponentni qayta ishlash so'rovi

Qon xizmati o'z zaxirasidagi eritrotsitar komponentni nurlantirishni so'raydi:

```json
{
  "resourceType": "ServiceRequest",
  "meta": { "profile": ["https://dhp.uz/fhir/integrations/StructureDefinition/blood-servicerequest"] },
  "language": "uz",
  "status": "active",
  "intent": "order",
  "requisition": {
    "system": "https://dhp.uz/fhir/core/sid/prd/uz/blood/donation",
    "value": "DON-2025-0088231"
  },
  "priority": "urgent",
  "code": {
    "concept": {
      "coding": [
        {
          "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-component-processing-cs",
          "code": "bcproc-0001-00002",
          "display": "Nurlantirish"
        }
      ]
    }
  },
  "subject": { "reference": "Location/example-blood-service-laboratory" },
  "authoredOn": "2026-11-10T10:00:00+05:00",
  "requester": { "reference": "PractitionerRole/example-practitionerrole" },
  "focus": [ { "reference": "BiologicallyDerivedProduct/example-blood-component-product" } ]
}
```

Har bir operatsiya uchun bitta so'rov yarating va `focus` da komponentning [BiologicallyDerivedProduct](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-biologically-derived-product.html) resursini ko'rsating. Bemor yo'q, shuning uchun `subject` - qon xizmati joyi ([Location](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-location.html)), `category` esa yuborilmaydi. Yuvish, muzlatish va eritish SNOMED CT `58059003`, `71643009` va `35382002` kodlaridan foydalanadi; nurlantirish uchun SNOMED CT muolajasi yo'q, shuning uchun mahalliy [qayta ishlash operatsiyasi](CodeSystem-blood-component-processing-cs.html) kodi ishlatiladi. Operatsiya tasdiqlanmaguncha so'rovni `active` holatida saqlang, so'ng uni `completed` ga o'tkazing.

API chaqiruvlari misollari ushbu sahifa pastidagi [Tez boshlash](#quick-start) bo'limida keltirilgan.
