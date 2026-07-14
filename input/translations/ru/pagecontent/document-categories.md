> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Категории и идентификаторы документов

DHP использует несколько механизмов для классификации и идентификации клинических документов:
- Коды категорий - основной способ определения типов ресурсов
- Внешние идентификаторы - ссылки на официальные номера форм или шаблонов при их наличии
- Идентификаторы экземпляров - уникальные UUID для различения отдельных экземпляров документов

```mermaid
graph TB
    Doc[Документ]
    Doc --> Cat[.category<br/>Какой тип?]
    Doc --> Form[.identifier form-number<br/>Какая форма?]
    Doc --> Inst[Bundle.identifier<br/>Какая версия?]
    Doc --> Comp[Composition.identifier<br/>Какая композиция?]
```

### Коды категорий

Коды категорий являются основным методом определения типов документов. Используйте `Composition.category` или `CarePlan.category` с кодами из [DocumentCategoryCS](CodeSystem-document-category-cs.html).

```json
{
  "resourceType": "Composition",
  "category": [{
    "coding": [{
      "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/document-category-cs",
      "code": "form-094",
      "display": "Справка о нетрудоспособности вследствие опьянения"
    }]
  }]
}
```

Категории основаны на стандартизированных формах Министерства здравоохранения.

### Внешние идентификаторы

Если документ имеет официальный номер формы или шаблона, они записываются в `.identifier`. Не все документы имеют внешние идентификаторы - используйте их при наличии.

#### Номера форм

Официальные номера форм (например Форма 094):

```json
{
  "identifier": [{
    "system": "https://dhp.uz/fhir/core/sid/doc/uz/form-number",
    "value": "094"
  }]
}
```

#### Номера шаблонов

Идентификаторы шаблонов (отличаются от номеров форм):

```json
{
  "identifier": [{
    "system": "https://dhp.uz/fhir/core/sid/doc/uz/template-number",
    "value": "094"
  }]
}
```

### Идентификаторы экземпляров

Отдельные экземпляры различаются с помощью UUID в `.identifier`.

Для [FHIR document Bundles](https://hl7.org/fhir/documents.html) используются два идентификатора:
- `Bundle.identifier` - уникален для каждого экземпляра документа, никогда не используется повторно
- `Composition.identifier` - одинаков для всех документов, созданных на основе одной композиции

При обновлении документа (например, форма создана, а затем изменена) `Composition.identifier` остаётся прежним, тогда как `Bundle.identifier` будет различаться между версиями. Это позволяет системам распознавать, что два пакета документов представляют разные версии одной и той же клинической информации.

```json
{
  "resourceType": "Bundle",
  "identifier": {
    "system": "urn:ietf:rfc:3986",
    "value": "urn:uuid:550e8400-e29b-41d4-a716-446655440000"
  },
  "entry": [{
    "resource": {
      "resourceType": "Composition",
      "identifier": {
        "system": "urn:ietf:rfc:3986",
        "value": "urn:uuid:661f9511-f30c-52e5-b827-557766551111"
      }
    }
  }]
}
```

Для автономных ресурсов (например, CarePlan) используйте собственный `.identifier` ресурса.

### Поиск документов

Поиск [document Bundle](https://hl7.org/fhir/documents.html) выполняется через его Composition, а не по содержимому пакета. У самого `Bundle` всего пять параметров поиска, и доступ к клиническому содержимому даёт только `composition`, который разрешается в первый элемент пакета:

| Параметр | Тип | Выражение |
|----------|-----|-----------|
| `composition` | reference | `Bundle.entry[0].resource as Composition` |
| `identifier` | token | `Bundle.identifier` |
| `type` | token | `Bundle.type` |
| `timestamp` | date | `Bundle.timestamp` |

Цепочка через `composition` открывает доступ к параметрам поиска Composition, включая `category`, `identifier`, `subject`, `encounter` и `date`. Поскольку правила FHIR-документов требуют, чтобы Composition был первым элементом, такая цепочка всегда адресует Composition документа.

Так как категория является основным классификатором, поиск по категории - обычный способ найти все документы одного типа. Все документы Формы 066:

```
GET [base]/Bundle?type=document&composition.category=https://terminology.dhp.uz/fhir/integrations/CodeSystem/document-category-cs|form-066
```

Номер формы - альтернатива для тех, кто работает с официальным номером формы:

```
GET [base]/Bundle?type=document&composition.identifier=https://dhp.uz/fhir/core/sid/doc/uz/form-number|066
```

Документы Формы 066 для одного пациента:

```
GET [base]/Bundle?type=document&composition.category=https://terminology.dhp.uz/fhir/integrations/CodeSystem/document-category-cs|form-066&composition.subject=Patient/123
```

Два идентификатора экземпляров отвечают на разные вопросы. `Bundle.identifier` возвращает один конкретный экземпляр документа:

```
GET [base]/Bundle?identifier=urn:ietf:rfc:3986|urn:uuid:760e8400-e29b-41d4-a716-446655440066
```

`Composition.identifier` возвращает все версии одного и того же документа, при этом каждая версия является отдельным пакетом со своим `Bundle.identifier`:

```
GET [base]/Bundle?type=document&composition.identifier=urn:ietf:rfc:3986|urn:uuid:861f9511-f30c-52e5-b827-557766550666
```

### Сводка

| Элемент | Назначение | Пример |
|---------|------------|--------|
| `.category` | Классификация типа документа | «Это справка о нетрудоспособности» |
| `.identifier` (форма/шаблон) | Ссылка на внешний источник | «Это Форма 094» |
| `Bundle.identifier` | Уникальный экземпляр документа | v1: `urn:uuid:aaa...`, v2: `urn:uuid:bbb...` |
| `Composition.identifier` | Идентификатор композиции | v1 и v2: `urn:uuid:ccc...` |

### Пример

См. [Пример CarePlan Формы 095](CarePlan-Form095CarePlanExample.html) для полного примера с категорией, номером формы и идентификатором экземпляра.
