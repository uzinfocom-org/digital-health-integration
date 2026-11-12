> Ushbu matn avtomatik tarjima qilingan.

### Tez boshlash {#quick-start}

Authorization sarlavhasida amaldagi JWT ni yuboring. `[base]` o'rniga FHIR serverining asosiy URL manzilini yozing. URL da `|` identifikator ajratgichini `%7C` sifatida kodlang.

Id bo'yicha o'qish, donor yoki chetlatish turi bo'yicha qidirish:

```http
GET [base]/Observation/[id]
GET [base]/Observation?subject=Patient/example-deferral-donor
GET [base]/Observation?code=https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-deferral-type-cs%7Ctmpdf-0001-00001
```

Misollardan biri asosida resurs yarating; parallel o'zgarishlardan himoyalanish uchun yangilashda joriy ETag ni yuboring:

```http
POST [base]/Observation
Content-Type: application/fhir+json
```

```http
PUT [base]/Observation/[id]
Content-Type: application/fhir+json
If-Match: W/"[versionId]"
```

Qo'llab-quvvatlanadigan amallar va qidiruv parametrlarini [UZ Core CapabilityStatement](https://dhp.uz/fhir/core/CapabilityStatement-DHPCapabilityStatement.html) orqali tekshiring. Misollarda standart FHIR R5 qidiruv parametrlari ishlatilgan.

### Tegishli materiallar

- [Chetlatish sabablari](ValueSet-donor-deferral-reason-vs.html)
- [Chetlatish turlari](ValueSet-donor-deferral-type-vs.html)
