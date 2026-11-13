> Ushbu matn avtomatik tarjima qilingan.

### Tez boshlash {#quick-start}

Authorization sarlavhasida amaldagi JWT ni yuboring. `[base]` o'rniga FHIR serverining asosiy URL manzilini yozing. URL da `|` identifikator ajratgichini `%7C` sifatida kodlang.

Id bo'yicha o'qish yoki oluvchi va baholash kodi bo'yicha qidirish:

```http
GET [base]/Observation/[id]
GET [base]/Observation?subject=Patient/example-transfusion-assessment-recipient
GET [base]/Observation?code=http://snomed.info/sct%7C252314007
```

To'liq misol asosida resurs yarating. Natijalarni tuzatishda mavjud resursni yangilang, baholashning haqiqiy vaqtini saqlang va amended kabi mos holatdan foydalaning. Parallel o'zgarishlardan himoyalanish uchun joriy ETag ni yuboring.

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

- [BloodTransfusionAssessmentVS](ValueSet-blood-transfusion-assessment-vs.html)
- [BloodTransfusionValueVS](ValueSet-blood-transfusion-value-vs.html)
- [BloodTransfusionHistoryVS](ValueSet-blood-transfusion-history-vs.html)
- [ObstetricHistoryVS](ValueSet-obstetric-history-vs.html)
- [SpecimenResVS](ValueSet-specimen-res-vs.html)
