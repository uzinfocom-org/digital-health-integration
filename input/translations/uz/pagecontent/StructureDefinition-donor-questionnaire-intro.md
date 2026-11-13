> Bu inglizcha sahifaning mashina tarjimasi.

Profil donor suhbatini [ko‘p tilli so‘rovnoma](Questionnaire-donor-questionnaire.html) sifatida taqdim etadi. [Manba jadval](https://docs.google.com/spreadsheets/d/1SFVk1U3Z4mQ-SYf6bX28hfKYHE3UL2Rz2bMEyQDzPeI/edit) qon topshirishdan oldingi anamnez, xavf omillari, rozilik va deklaratsiyalarni qamrab oladi.

### Mandatory and Must Support data elements

So‘rovnomada canonical URL, sarlavha, nashr holati, Patient subyekt turi, qon xizmati dasturi konteksti va kamida bitta savol bo‘ladi. Barcha 33 savol va tarjimalar qo‘llab-quvvatlanadi. Javob turlari jadvalga mos: sana, matn va boolean. Manbada majburiylik yoki jinsga qarab ko‘rsatish qoidalari berilmagani uchun savollar ixtiyoriy.

### JSON ni bosqichma-bosqich yaratish

Sana savolidan boshlang, kodlangan boolean savolini qo‘shing, so‘ng barcha 33 savolli to‘liq ta’rifni oling. Profil qon xizmati konteksti, savol turlari va sabab kodlarini belgilaydi.

```json
{
  "resourceType": "Questionnaire",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/donor-questionnaire"
    ]
  },
  "url": "https://dhp.uz/fhir/integrations/Questionnaire/donor-questionnaire",
  "version": "1.0.0",
  "status": "draft",
  "title": "Donor questionnaire",
  "subjectType": [
    "Patient"
  ],
  "useContext": [
    {
      "code": {
        "system": "http://terminology.hl7.org/CodeSystem/usage-context-type",
        "code": "program"
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/integration-area-cs",
            "code": "blood-service"
          }
        ]
      }
    }
  ],
  "item": [
    {
      "linkId": "last-donation",
      "type": "date",
      "code": [
        {
          "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-deferral-reason-cs",
          "code": "donrsn-0001-00006"
        }
      ]
    }
  ]
}
```

```json
{
  "resourceType": "Questionnaire",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/donor-questionnaire"
    ]
  },
  "url": "https://dhp.uz/fhir/integrations/Questionnaire/donor-questionnaire",
  "version": "1.0.0",
  "status": "draft",
  "title": "Donor questionnaire",
  "subjectType": [
    "Patient"
  ],
  "useContext": [
    {
      "code": {
        "system": "http://terminology.hl7.org/CodeSystem/usage-context-type",
        "code": "program"
      },
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/integration-area-cs",
            "code": "blood-service"
          }
        ]
      }
    }
  ],
  "item": [
    {
      "linkId": "last-donation",
      "type": "date",
      "code": [
        {
          "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-deferral-reason-cs",
          "code": "donrsn-0001-00006"
        }
      ]
    },
    {
      "linkId": "tattoo-piercing",
      "type": "boolean",
      "code": [
        {
          "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/donor-deferral-reason-cs",
          "code": "donrsn-0001-00001"
        }
      ]
    }
  ]
}
```

```http
GET [base]/Questionnaire/donor-questionnaire
```

[Complete questionnaire definition](Questionnaire-donor-questionnaire.html). [Tez boshlash](#quick-start).
