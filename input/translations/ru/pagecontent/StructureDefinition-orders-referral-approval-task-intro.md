> Перевод подготовлен автоматически; при расхождениях используйте английский оригинал.

Orders Referral Approval Task фиксирует отдельный этап согласования или госпитализации по Orders ServiceRequest. Национальные участники и коды действий связаны с дополнительными бизнес-статусами интеграции.

### Обязательные элементы и Must Support

Must Support means the system must populate the element when the data is available and process it when received; it does not make every element mandatory. See [Must Support](https://dhp.uz/fhir/core/en/must-support.html).

#### Each Task Must Have

Каждая задача содержит `status`, `intent`, ровно один `basedOn` и `focus`; обе ссылки ведут на Orders ServiceRequest. `partOf`, если передаётся, ссылается на другую Orders Referral Approval Task.

#### Each Task Must Support

Поддерживайте код действия, пациента, ответственного, исполнителя, инициатора, запрошенного исполнителя, дату создания, плановый и фактический периоды, бизнес-статус, его причину и примечания. У просроченной незавершённой задачи ожидается бизнес-статус ядра `overdue`.

### Пошаговое построение JSON

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

OrdersReferralApprovalTask наследуется от FHIR Task: обязательный набор businessStatus в UZ Core 0.12.0 не содержит этапов Orders. Профиль сохраняет национальные роли, жизненный цикл и ограничения ссылок на пациента и организации, а businessStatus включает коды ядра и дополнительные коды Orders.

[Complete example](Task-example-orders-task-specialist-returned.html) · [Orders workflow](orders.html) · [Quick Start](#quick-start)
