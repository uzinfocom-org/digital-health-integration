> Этот текст переведен автоматически.

Профиль описывает лабораторные назначения донору и запросы на вторичную переработку компонентов крови. Он основан на [UZ Core ServiceRequest](https://dhp.uz/fhir/core/StructureDefinition-uz-core-servicerequest.html) и ссылается на существующие ресурсы донора, визита, образцов и складского учета.

### Обязательные и поддерживаемые элементы

Обязательные элементы должны присутствовать. Элементы Must Support должны поддерживаться реализациями, даже если они необязательны в отдельном запросе.

#### Обязательные данные Blood ServiceRequest

Обязательны статус, намерение `order` и ссылка на донора. Каждый orderDetail содержит хотя бы один параметр с кодом выбранного исследования или операции и `valueBoolean: true`. Унаследованный инвариант prr-1 требует заполнить `code`, если указан `orderDetail`.

#### Поддерживаемые данные Blood ServiceRequest

- Идентификаторы заказа и общий идентификатор requisition.
- Категория принимающей лаборатории, визит донора, планируемое время и время создания.
- Автор, исполнитель, место, образцы и клиническая причина.
- Компонент крови, дополнительные сведения, комментарии и выбранные исследования или операции.

### Рабочий процесс

Для каждой принимающей лаборатории создается отдельный запрос: четыре для резервного донора и пять для кадрового. Лабораторию определяет необязательный срез `category[dhpCategory]`. Для вторичной переработки создается один запрос на компонент со всеми выбранными операциями; категория не заполняется, если подходящей нет. Запрос остается active до подтверждения всех операций, затем становится completed. Этот переход контролирует приложение.

### Открытые вопросы реализации

Лабораторные коды предварительные: необходимо подтвердить метод, образец и совместимость пробирок. SNOMED CT `64108007` остается предварительным общим кодом услуги переработки и не фиксируется профилем. Назначения только для фракционирования, криопреципитата или утилизации пока не согласованы. `focus` допускает UZ Core InventoryItem; поддержку следует проверить на развернутом сервере. Не дублируйте компонент в `supportingInfo`.

В исходной таблице для номера запроса предложена система идентификаторов продуктов крови. Она идентифицирует продукты, поэтому здесь не фиксируется для номеров заказов. При передаче identifier или requisition поле `system` обязательно; используйте согласованную систему документов UZ Core. Новая система идентификаторов не вводится.

### Пошаговое формирование JSON

Первый пример минимальный; второй добавляет лабораторное исследование; третий показывает локальную операцию с предварительным общим кодом услуги. Полные примеры: [лабораторный заказ](ServiceRequest-example-blood-laboratory-order.html) и [переработка компонента](ServiceRequest-example-blood-component-processing-order.html).

```json
{
  "resourceType": "ServiceRequest",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/blood-servicerequest"
    ]
  },
  "status": "active",
  "intent": "order",
  "subject": {
    "reference": "Patient/example-blood-donor"
  }
}
```

```json
{
  "resourceType": "ServiceRequest",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/blood-servicerequest"
    ]
  },
  "status": "active",
  "intent": "order",
  "subject": {
    "reference": "Patient/example-blood-donor"
  },
  "code": {
    "concept": {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "108252007"
        }
      ]
    }
  },
  "orderDetail": [
    {
      "parameter": [
        {
          "code": {
            "coding": [
              {
                "system": "http://loinc.org",
                "code": "1975-2"
              }
            ]
          },
          "valueBoolean": true
        }
      ]
    }
  ]
}
```

```json
{
  "resourceType": "ServiceRequest",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/blood-servicerequest"
    ]
  },
  "status": "active",
  "intent": "order",
  "subject": {
    "reference": "Patient/example-blood-donor"
  },
  "code": {
    "concept": {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "64108007"
        }
      ]
    }
  },
  "focus": [
    {
      "reference": "InventoryItem/example-blood-component-inventory"
    }
  ],
  "orderDetail": [
    {
      "parameter": [
        {
          "code": {
            "coding": [
              {
                "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/processing-operation-cs",
                "code": "bld-operation-0001"
              }
            ]
          },
          "valueBoolean": true
        }
      ]
    }
  ]
}
```

См. [быстрое начало работы](#quick-start).
