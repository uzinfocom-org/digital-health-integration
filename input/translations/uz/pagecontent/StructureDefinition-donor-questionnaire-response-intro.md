> Bu inglizcha sahifaning mashina tarjimasi.

Profil [donor so‘rovnomasi](Questionnaire-donor-questionnaire.html) javoblarini saqlaydi. Bir xil `linkId` o‘zbek, rus va ingliz tillarida bir xil savolni bildiradi. To‘ldirilgan so‘rovnoma shifokor baholashi uchun xizmat qiladi va o‘z-o‘zidan donorlikka ruxsat yoki chetlatishni belgilamaydi.

### Mandatory and Must Support data elements

Javobda so‘rovnoma canonical manzili, holat, donorga havola, to‘ldirish vaqti va kamida bitta savol elementi bo‘ladi. Muallif, manba, tashrif va javoblar qo‘llab-quvvatlanadi. Har bir savol ko‘pi bilan bir marta uchraydi; javob savolga mos date, string yoki boolean turida bo‘ladi.

### JSON ni bosqichma-bosqich yaratish

Sana javobidan boshlang, boolean javobini qo‘shing va to‘liq namunadan foydalaning. Javoblar donor bayonotlarini aks ettiradi; savoldagi sabab kodi tasdiqlangan holatni bildirmaydi.

```json
{
  "resourceType": "QuestionnaireResponse",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/donor-questionnaire-response"
    ]
  },
  "questionnaire": "https://dhp.uz/fhir/integrations/Questionnaire/donor-questionnaire|1.0.0",
  "status": "in-progress",
  "subject": {
    "reference": "Patient/example-donor-questionnaire-patient"
  },
  "authored": "2026-11-13T09:30:00+05:00",
  "item": [
    {
      "linkId": "last-donation",
      "answer": [
        {
          "valueDate": "2026-01-10"
        }
      ]
    }
  ]
}
```

```json
{
  "resourceType": "QuestionnaireResponse",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/donor-questionnaire-response"
    ]
  },
  "questionnaire": "https://dhp.uz/fhir/integrations/Questionnaire/donor-questionnaire|1.0.0",
  "status": "in-progress",
  "subject": {
    "reference": "Patient/example-donor-questionnaire-patient"
  },
  "authored": "2026-11-13T09:30:00+05:00",
  "item": [
    {
      "linkId": "last-donation",
      "answer": [
        {
          "valueDate": "2026-01-10"
        }
      ]
    },
    {
      "linkId": "tattoo-piercing",
      "answer": [
        {
          "valueBoolean": true
        }
      ]
    }
  ]
}
```

```http
GET [base]/QuestionnaireResponse/example-donor-questionnaire-response
```

[Complete response example](QuestionnaireResponse-example-donor-questionnaire-response.html). [Tez boshlash](#quick-start).
