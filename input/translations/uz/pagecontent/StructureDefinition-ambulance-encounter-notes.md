> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

### Tezkor boshlash {#quick-start}

Ushbu profil uchun keng tarqalgan API o'zaro ta'sirlari. Profil Encounter asosida qurilgan, shuning uchun Encounter endpointidan foydalaning. So'rovlar JWT kirish tokenini talab qiladi - qarang: [Xavfsizlik va autentifikatsiya](https://dhp.uz/fhir/core/uz/api-access.html#security). `[base]` bu [FHIR server bazaviy URL manzili](https://dhp.uz/fhir/core/uz/api-access.html#endpoints); `|` tizimni uning qiymatidan ajratadi va URL'da `%7C` sifatida kodlanishi shart.

**Server identifikatori bo'yicha o'qish**

```
GET [base]/Encounter/[id]
```

**TTY chaqiruvlarini topish** (chaqiruv kartasi raqami, bemor va sana, TTY tashkiloti, sabab bo'yicha)

```
GET [base]/Encounter?identifier=https://dhp.uz/fhir/core/sid/doc/uz/ambulance-call-card%7C01.CM5742/26
GET [base]/Encounter?patient=Patient/[id]&class=http://terminology.hl7.org/CodeSystem/v3-ActCode%7CEMER
GET [base]/Encounter?patient=Patient/[id]&date=ge2026-03-01
GET [base]/Encounter?service-provider=Organization/[id]&date=2026-03-01
GET [base]/Encounter?reason-code=http://hl7.org/fhir/sid/icd-10%7CI10
```

**Yaratish**

```
POST [base]/Encounter
{
  "resourceType": "Encounter",
  "meta": {
    "profile": [ "https://dhp.uz/fhir/integrations/StructureDefinition/ambulance-encounter" ]
  },
  "identifier": [
    { "system": "https://dhp.uz/fhir/core/sid/doc/uz/ambulance-call-card", "value": "01.CM5742/26" }
  ],
  "status": "in-progress",
  ...
}
```

**Yangilash** (masalan, chaqiruv tugaganda `status` ni `completed` ga o'zgartirish va natijani qo'shish uchun) - to'liq resursni PUT qiling:

```
PUT [base]/Encounter/[id]
If-Match: W/"3"   # the ETag from your last read; 412 if it changed since
```

Qo'llab-quvvatlanadigan qidiruv parametrlarining to'liq ro'yxati [CapabilityStatement](https://dhp.uz/fhir/core/uz/CapabilityStatement-DHPCapabilityStatement.html#Encounter1-7) da keltirilgan.

### Aloqador materiallar

- [UZ Core Encounter](https://dhp.uz/fhir/core/uz/StructureDefinition-uz-core-encounter.html)
- [Must Support](https://dhp.uz/fhir/core/uz/must-support.html) &middot; [Umumiy ko'rsatmalar](https://dhp.uz/fhir/core/uz/general-guidance.html)
