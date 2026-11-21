> Tarjima avtomatik tayyorlangan; tafovut bo'lsa inglizcha asl nusxadan foydalaning.

Orders Referral Approval Task Orders ServiceRequest bo'yicha kelishuv yoki gospitalizatsiyaning bitta bosqichini qayd etadi. Milliy ishtirokchilar va harakat kodlari integratsiyaning qo'shimcha biznes holatlari bilan bog'lanadi.

### Majburiy va Must Support elementlari

Must Support means the system must populate the element when the data is available and process it when received; it does not make every element mandatory. See [Must Support](https://dhp.uz/fhir/core/en/must-support.html).

#### Each Task Must Have

Har bir vazifada `status`, `intent`, aynan bitta `basedOn` va `focus` bo'lishi shart; ikkala havola Orders ServiceRequest ga yo'naladi. `partOf` berilsa boshqa Orders Referral Approval Task ga havola qiladi.

#### Each Task Must Support

Harakat kodi, bemor, mas'ul, ijrochi, so'rovchi, so'ralgan ijrochi, yaratilgan sana, rejalashtirilgan va haqiqiy davrlar, biznes holati, sabab va izohlarni qo'llab-quvvatlang. Muddati o'tgan, yakunlanmagan vazifa yadrodagi `overdue` biznes holatini olishi kutiladi.

### JSON ni bosqichma-bosqich yaratish

```json
{
  "resourceType": "Task",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/orders-referral-approval-task"
    ]
  },
  "basedOn": [
    {
      "reference": "ServiceRequest/example-orders-hospitalization-referral"
    }
  ],
  "language": "uz",
  "status": "requested",
  "intent": "order",
  "focus": {
    "reference": "ServiceRequest/example-orders-hospitalization-referral"
  }
}
```

```json
{
  "resourceType": "Task",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/orders-referral-approval-task"
    ]
  },
  "basedOn": [
    {
      "reference": "ServiceRequest/example-orders-hospitalization-referral"
    }
  ],
  "language": "uz",
  "status": "completed",
  "intent": "order",
  "focus": {
    "reference": "ServiceRequest/example-orders-hospitalization-referral"
  },
  "code": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/task-codes-cs",
        "code": "approve-specialist"
      }
    ]
  },
  "businessStatus": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/orders-task-business-status-cs",
        "code": "bstatus-0001-00001"
      }
    ]
  },
  "statusReason": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/orders-task-status-reason-cs",
        "code": "reason-0001-00005"
      }
    ]
  },
  "for": {
    "reference": "Patient/example-orders-patient"
  },
  "owner": {
    "reference": "Organization/example-orders-hospital"
  }
}
```

```json
{
  "resourceType": "Task",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/orders-referral-approval-task"
    ]
  },
  "basedOn": [
    {
      "reference": "ServiceRequest/example-orders-hospitalization-referral"
    }
  ],
  "language": "uz",
  "status": "requested",
  "intent": "order",
  "focus": {
    "reference": "ServiceRequest/example-orders-hospitalization-referral"
  },
  "businessStatus": {
    "coding": [
      {
        "system": "https://terminology.dhp.uz/fhir/core/CodeSystem/task-business-status-cs",
        "code": "overdue"
      }
    ]
  },
  "requestedPeriod": {
    "end": "2026-03-07T18:00:00+05:00"
  }
}
```

OrdersReferralApprovalTask FHIR Task dan meros oladi: UZ Core 0.12.0 ning majburiy businessStatus to'plamida Orders bosqichlari yo'q. Profil milliy rollar, hayot sikli va bemor hamda tashkilot havolalari cheklovlarini saqlaydi; businessStatus yadro va Orders kodlarini birlashtiradi.

[Complete example](Task-example-orders-task-specialist-returned.html) · [Orders workflow](orders.html) · [Quick Start](#quick-start)
