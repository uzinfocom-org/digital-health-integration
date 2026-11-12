> Ushbu matn avtomatik tarjima qilingan.

### Tez boshlash {#quick-start}

Authorization sarlavhasida amaldagi JWT ni yuboring. `[base]` o'rniga FHIR serverining asosiy URL manzilini yozing.
Qidiruv URL manzilida `|` ajratgichini `%7C` sifatida kodlang.

So'rovni o'qish:

```http
GET [base]/ServiceRequest/[id]
```

Identifikator, umumiy xizmat kodi yoki donor bo'yicha qidirish:

```http
GET [base]/ServiceRequest?identifier=[system]%7C[value]
GET [base]/ServiceRequest?code=http://snomed.info/sct%7C108252007
GET [base]/ServiceRequest?subject=Patient/example-blood-donor
```

Misollardan biri asosida so'rov yaratish:

```http
POST [base]/ServiceRequest
Content-Type: application/fhir+json
```

Bir vaqtda o'zgartirishlardan himoyalanish uchun joriy versiya bilan yangilash:

```http
PUT [base]/ServiceRequest/[id]
Content-Type: application/fhir+json
If-Match: W/"[versionId]"
```

Misollarda standart FHIR R5 qidiruv parametrlari ishlatilgan. Server qo'llab-quvvatlashini
[UZ Core CapabilityStatement](https://dhp.uz/fhir/core/CapabilityStatement-DHPCapabilityStatement.html) orqali tekshiring.

### Tegishli materiallar

- [Qon xizmati shakllari](forms-volume-08-blood-service.html)
- [Laboratoriya tekshiruvlari va qayta ishlash operatsiyalari](ValueSet-bld-lab-codes-vs.html)
- [Mahalliy qayta ishlash operatsiyalari](CodeSystem-processing-operation-cs.html)
