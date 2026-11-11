> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tezkor boshlash {#quick-start}

Ushbu profil uchun keng tarqalgan API o'zaro ta'sirlari. Profil Observation asosida qurilgan, shuning uchun Observation endpointidan foydalaning. So'rovlar JWT kirish tokenini talab qiladi - qarang: [Xavfsizlik va autentifikatsiya](https://dhp.uz/fhir/core/uz/api-access.html#security). `[base]` bu [FHIR server bazaviy URL manzili](https://dhp.uz/fhir/core/uz/api-access.html#endpoints); `|` tizimni uning qiymatidan ajratadi va URL'da `%7C` sifatida kodlanishi shart.

**Server identifikatori bo'yicha o'qish**

```
GET [base]/Observation/[id]
```

**Bemorning qon xizmatidagi ro'yxatga olinishlarini topish**

```
GET [base]/Observation?patient=Patient/[id]&code=http://snomed.info/sct%7C105470007
GET [base]/Observation?patient=Patient/[id]&code=http://snomed.info/sct%7C116154003
GET [base]/Observation?category=https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-category-cs%7Cbdcat-0001-00002
GET [base]/Observation?encounter=Encounter/[id]
```

**Yaratish**

```
POST [base]/Observation
{
  "resourceType": "Observation",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-donor-category-observation" ]
  },
  "status": "final",
  "code": {
    "coding": [ { "system": "http://snomed.info/sct", "code": "105470007", "display": "Blood donor" } ]
  },
  "subject": { "reference": "Patient/[id]" },
  "effectiveDateTime": "2026-09-23T10:30:00+05:00",
  ...
}
```

**Yangilash** (masalan, zaxira donor kadr donorga aylanganda) - to'liq resursni yangi `category` bilan qaytarib PUT qiling:

```
PUT [base]/Observation/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

Qo'llab-quvvatlanadigan qidiruv parametrlarining to'liq ro'yxati [CapabilityStatement](https://dhp.uz/fhir/core/uz/CapabilityStatement-DHPCapabilityStatement.html#Observation1-9) da keltirilgan.

### Aloqador materiallar

- [Blood Management](blood-management.html) &middot; [Qon xizmati shakllari](forms-volume-08-blood-service.html)
- [UZ Core Observation](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-observation.html)
- [Must Support](https://dhp.uz/fhir/core/uz/must-support.html) &middot; [Umumiy ko'rsatmalar](https://dhp.uz/fhir/core/uz/general-guidance.html)
