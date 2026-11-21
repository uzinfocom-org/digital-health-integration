> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tez boshlash {#quick-start}

Ushbu profil uchun keng tarqalgan API o'zaro ta'sirlari. So'rovlar JWT kirish tokenini talab qiladi - qarang: [Xavfsizlik va autentifikatsiya](https://dhp.uz/fhir/core/uz/api-access.html#security). `[base]` bu [FHIR server bazaviy URL manzili](https://dhp.uz/fhir/core/uz/api-access.html#endpoints); `|` kod tizimini qiymatdan ajratadi va URL'da `%7C` sifatida kodlanishi shart.

**Flagni server id bo'yicha va uning oldingi versiyalarini o'qish**

```
GET [base]/Flag/[id]
GET [base]/Flag/[id]/_history
```

**Qidiruv**

```
GET [base]/Flag?patient=Patient/[id]&_profile=https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-eligibility-flag&status=active&date=ge2026-11-17
GET [base]/Flag?patient=Patient/[id]&code=https://terminology.dhp.uz/fhir/core/CodeSystem/blood-donor-eligibility-cs|blood-donation-deferred-temporary,https://terminology.dhp.uz/fhir/core/CodeSystem/blood-donor-eligibility-cs|blood-donation-deferred-permanent
GET [base]/Flag?patient=Patient/[id]&_profile=https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-eligibility-flag
GET [base]/Flag?encounter=Encounter/[id]
GET [base]/Flag?author=PractitionerRole/[id]&date=ge2026-11-01
```

Birinchi so'rov donorning 2026-11-17 kuni amalda bo'lgan ruxsati va chetlatishlarini topadi. `date` `period` bo'yicha qidiradi, `period.end` siz flag davom etayotgan deb hisoblanadi, shuning uchun so'rov ruxsatni, doimiy chetlatishlarni va shu kungacha tugamagan vaqtincha chetlatishlarni qaytaradi. Vaqtincha flag `period.end` dan keyin ham `inactive` ga o'tkazilmaguncha `active` bo'lib qoladi, shuning uchun faqat `status=active` muddati o'tgan chetlatishlarni ham qaytaradi. Ikkinchi so'rov UZ Core [`code`](https://dhp.uz/fhir/core/uz/SearchParameter-uz-core-flag-code.html) qidiruv parametridan foydalanadi va faqat donorning chetlatishlarini qaytaradi.

Flag da sabab bo'yicha qidiruv parametri yo'q; sababni qaytarilgan flaglardan o'qing.

**Flag yaratish**

```
POST [base]/Flag
{
  "resourceType": "Flag",
  "meta": { "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-eligibility-flag" ] },
  "extension": [ { "url": "http://hl7.org/fhir/StructureDefinition/workflow-reason", "valueCodeableReference": { ... } } ],
  "status": "active",
  "code": { "coding": [ { "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/blood-donor-eligibility-cs",
                          "code": "blood-donation-deferred-temporary" } ] },
  "subject": { "reference": "Patient/[id]" },
  "period": { "start": "2026-11-10T10:00:00+05:00", "end": "2027-05-09T10:00:00+05:00" },
  ...
}
```

**Chetlatishni muddatidan oldin tugatish** (`status` ni `inactive` ga va `period.end` ni tugash sanasiga o'rnatish)

```
PUT [base]/Flag/[id]
If-Match: W/"2"   # the ETag from your last read; 412 if it changed since
{
  "resourceType": "Flag",
  "id": "[id]",
  "meta": { "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-eligibility-flag" ] },
  "status": "inactive",
  ...
}
```

Qo'llab-quvvatlanadigan qidiruv parametrlarining to'liq ro'yxati [CapabilityStatement](https://dhp.uz/fhir/core/uz/CapabilityStatement-DHPCapabilityStatement.html#Flag1-42) da keltirilgan.

### Bog'liq bo'limlar

- [UZ Core Patient](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-patient.html) &middot; [UZ Core Observation](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-observation.html)
- [Blood Service](blood-service.html) &middot; [Chetlatish sabablari](ValueSet-donor-deferral-reason-vs.html) &middot; [workflow-reason](https://hl7.org/fhir/extensions/StructureDefinition-workflow-reason.html)
- [Must Support](https://dhp.uz/fhir/core/uz/must-support.html) &middot; [Umumiy tavsiyalar](https://dhp.uz/fhir/core/uz/general-guidance.html)
