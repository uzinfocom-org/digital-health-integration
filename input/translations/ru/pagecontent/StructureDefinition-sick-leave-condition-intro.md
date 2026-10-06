> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

Sick Leave Condition - это диагноз листка нетрудоспособности: предварительный или итоговый диагноз, который сервис больничных листов DHP (API v3) передаёт в `diagnosis`. Каждый из них - отдельный Condition, на который [Sick Leave CarePlan](StructureDefinition-sick-leave-careplan.html) ссылается из `addresses[diagnosis]`; их различает статус верификации. Сопоставление полей см. на странице [листка нетрудоспособности](sick-leave.html#recording-the-diagnoses-condition).

### Обязательные и поддерживаемые (Must Support) элементы данных

Приведённые ниже элементы должны всегда присутствовать (обязательные) или должны поддерживаться при наличии данных ([Must Support](https://dhp.uz/fhir/core/must-support.html)). Это удобочитаемое резюме; формальные представления ниже дают точные кардинальности, типы и терминологические связки.

#### Каждый Sick Leave Condition обязан иметь

- клинический статус: `active`, пока листок открыт, `resolved` после его закрытия;
- статус верификации: `provisional` для предварительного диагноза, `confirmed` для итогового;
- код МКБ-10 в `code`;
- пациента в `subject`.

#### Каждый Sick Leave Condition должен поддерживать (Must Support)

- название диагноза в `code.text` (`preliminaryDisplay` или `finalDisplay` из API);
- даты начала и регистрации в `onset[x]` и `recordedDate`, унаследованные от UZ Core Condition.

### Построение JSON, шаг за шагом

Скопируйте один из примеров и адаптируйте - каждое показанное значение проходит валидацию по этому профилю.

#### Предварительный диагноз

```json
{
  "resourceType": "Condition",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/sick-leave-condition"
    ]
  },
  "clinicalStatus": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/condition-clinical",
        "code": "active"
      }
    ]
  },
  "verificationStatus": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/condition-ver-status",
        "code": "provisional"
      }
    ]
  },
  "code": {
    "coding": [
      {
        "system": "http://hl7.org/fhir/sid/icd-10",
        "code": "J06.9"
      }
    ],
    "text": "Acute upper respiratory infection, unspecified"
  },
  "subject": {
    "reference": "Patient/sick-leave-patient"
  }
}
```

`code` имеет связку `required` с [ICD10VS](ValueSet-icd-10-vs.html), `verificationStatus` - с [SickLeaveDiagnosisStatusVS](ValueSet-sick-leave-diagnosis-status-vs.html).

#### Итоговый диагноз

Если диагноз уточнён, передайте итоговый диагноз вторым Condition и сошлитесь на оба из CarePlan. Если итоговый диагноз совпадает с предварительным, достаточно одного Condition со статусом `confirmed`.

```json
{
  "resourceType": "Condition",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/sick-leave-condition"
    ]
  },
  "clinicalStatus": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/condition-clinical",
        "code": "resolved"
      }
    ]
  },
  "verificationStatus": {
    "coding": [
      {
        "system": "http://terminology.hl7.org/CodeSystem/condition-ver-status",
        "code": "confirmed"
      }
    ]
  },
  "code": {
    "coding": [
      {
        "system": "http://hl7.org/fhir/sid/icd-10",
        "code": "J18.9"
      }
    ],
    "text": "Pneumonia, unspecified"
  },
  "subject": {
    "reference": "Patient/sick-leave-patient"
  }
}
```

Эталонные экземпляры: [предварительный](Condition-sick-leave-extended-diagnosis-preliminary.html) и [итоговый](Condition-sick-leave-extended-diagnosis-final.html) диагноз продлённого листка, [диагноз при уходе за членом семьи](Condition-sick-leave-family-care-diagnosis.html).
