> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

Sick Leave Observation содержит атрибуты листка нетрудоспособности, которые не относятся к самому случаю: является ли пациент городским или сельским жителем, оформлен ли листок не по месту жительства, и эпидемиологический анамнез. На каждый листок приходится один Observation, `basedOn` на его [Sick Leave CarePlan](StructureDefinition-sick-leave-careplan.html), и каждый атрибут - один `component`. Сопоставление полей см. на странице [листка нетрудоспособности](sick-leave.html#recording-additional-attributes-observation).

### Обязательные и поддерживаемые (Must Support) элементы данных

Приведённые ниже элементы должны всегда присутствовать (обязательные) или должны поддерживаться при наличии данных ([Must Support](https://dhp.uz/fhir/core/must-support.html)). Это удобочитаемое резюме; формальные представления ниже дают точные кардинальности, типы и терминологические связки.

#### Каждый Sick Leave Observation обязан иметь

- статус `final`;
- код `SNOMED CT#224459001` (On sick leave from work);
- листок в `basedOn`;
- пациента в `subject`.

#### Каждый Sick Leave Observation должен поддерживать (Must Support)

- время в `effective[x]` - передавайте начало листка - и выдавшего врача в `performer`, унаследованные от UZ Core Observation;
- `component[urbanResident]`: городской (`true`) или сельский (`false`) житель, из `patient.isUrban`;
- `component[nonLocal]`: оформлен не по месту жительства, из `isNonLocal`;
- `component[epidemiologicalHistory]`: эпидемиологический анамнез текстом, из `epidemiologicalHistory`.

### Построение JSON, шаг за шагом

Скопируйте один из примеров и адаптируйте - каждое показанное значение проходит валидацию по этому профилю.

#### Наименьший Sick Leave Observation, который вам следует отправлять

```json
{
  "resourceType": "Observation",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/sick-leave-observation"
    ]
  },
  "status": "final",
  "basedOn": [
    {
      "reference": "CarePlan/sick-leave-family-care"
    }
  ],
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "224459001"
      }
    ]
  },
  "subject": {
    "reference": "Patient/sick-leave-patient"
  },
  "effectiveDateTime": "2026-09-01"
}
```

#### Все три атрибута

Каждый компонент определяется своим кодом из [SickLeaveComponentVS](ValueSet-sick-leave-component-vs.html). Значения простые: `urban-resident` и `non-local` принимают boolean, `epidemiological-history` - строку. Передавайте только те компоненты, для которых у листка есть значение.

```json
{
  "resourceType": "Observation",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/sick-leave-observation"
    ]
  },
  "status": "final",
  "basedOn": [
    {
      "reference": "CarePlan/sick-leave-family-care"
    }
  ],
  "code": {
    "coding": [
      {
        "system": "http://snomed.info/sct",
        "code": "224459001"
      }
    ]
  },
  "subject": {
    "reference": "Patient/sick-leave-patient"
  },
  "effectiveDateTime": "2026-09-01",
  "performer": [
    {
      "reference": "Practitioner/sick-leave-practitioner"
    }
  ],
  "component": [
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/sick-leave-component-cs",
            "code": "urban-resident"
          }
        ]
      },
      "valueBoolean": true
    },
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/sick-leave-component-cs",
            "code": "non-local"
          }
        ]
      },
      "valueBoolean": true
    },
    {
      "code": {
        "coding": [
          {
            "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/sick-leave-component-cs",
            "code": "epidemiological-history"
          }
        ]
      },
      "valueString": "No contact with infectious patients in the last 21 days"
    }
  ]
}
```

Эталонные экземпляры: [продлён и закрыт](Observation-sick-leave-extended-observation.html), [уход за членом семьи](Observation-sick-leave-family-care-observation.html), [отменён](Observation-sick-leave-cancelled-observation.html).
