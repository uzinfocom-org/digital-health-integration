> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tezkor boshlash {#quick-start}

Ushbu profil uchun keng tarqalgan API o'zaro ta'sirlari. Profil Observation asosida qurilgan, shuning uchun Observation endpointidan foydalaning. So'rovlar JWT kirish tokenini talab qiladi - qarang: [Xavfsizlik va autentifikatsiya](https://dhp.uz/fhir/core/uz/api-access.html#security). `[base]` bu [FHIR server bazaviy URL manzili](https://dhp.uz/fhir/core/uz/api-access.html#endpoints); `|` tizimni uning qiymatidan ajratadi va URL'da `%7C` sifatida kodlanishi shart.

**Server identifikatori bo'yicha o'qish**

```
GET [base]/Observation/[id]
```

**Qon xizmatidagi ro'yxatga olinishlarni topish** (raqam, bemor va tur, donor toifasi, Encounter bo'yicha)

```
GET [base]/Observation?identifier=https://dhp.uz/fhir/core/sid/doc/uz/blood-registration%7CBD-2026-004517
GET [base]/Observation?patient=Patient/[id]&code=https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-service-observation-type-cs%7Cbsobs-0001-00001
GET [base]/Observation?patient=Patient/[id]&code=https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-service-observation-type-cs%7Cbsobs-0001-00002
GET [base]/Observation?component-value-concept=https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-category-cs%7Cbdcat-0001-00002
GET [base]/Observation?encounter=Encounter/[id]
```

**Yaratish**

```
POST [base]/Observation
{
  "resourceType": "Observation",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/blood-service-registration-observation" ]
  },
  "status": "final",
  "code": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-service-observation-type-cs",
        "code": "bsobs-0001-00001"
      }
    ]
  },
  "subject": { "reference": "Patient/[id]" },
  "effectiveDateTime": "2026-09-23T10:30:00+05:00",
  ...
}
```

**Toifa o'zgarishi** (masalan, zaxira donor kadr donorga aylanganda) - yangi donor toifasi komponenti va o'zgarish sanasi `effectiveDateTime` da ko'rsatilgan yangi Observation ni POST qiling. Avvalgi yozuv ro'yxatga olish tarixi sifatida qoladi; joriy toifa - eng so'nggi `effectiveDateTime` ga ega yozuv.

**Xatoni tuzatish** - to'liq resursni tuzatilgan qiymat bilan qaytarib PUT qiling:

```
PUT [base]/Observation/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

Qo'llab-quvvatlanadigan qidiruv parametrlarining to'liq ro'yxati [CapabilityStatement](https://dhp.uz/fhir/core/uz/CapabilityStatement-DHPCapabilityStatement.html#Observation1-9) da keltirilgan.

### Aloqador materiallar

- [Qon xizmati shakllari](forms-volume-08-blood-service.html)
- [UZ Core Observation](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-observation.html)
- [Must Support](https://dhp.uz/fhir/core/uz/must-support.html) &middot; [Umumiy ko'rsatmalar](https://dhp.uz/fhir/core/uz/general-guidance.html)
