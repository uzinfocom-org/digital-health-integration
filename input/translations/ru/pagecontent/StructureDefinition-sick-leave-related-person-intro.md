> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

Sick Leave RelatedPerson - это лицо, связанное с пациентом, которого касается листок нетрудоспособности: законный представитель, опекун, родитель, ребёнок, другой член семьи или другое лицо, сведения о котором нужны для оформления документа. Его наличие зависит от типа документа и причины нетрудоспособности. [Sick Leave CarePlan](StructureDefinition-sick-leave-careplan.html) ссылается на него из `extension[relatedPerson]`. Сопоставление полей см. на странице [листка нетрудоспособности](sick-leave.html#family-care-the-person-cared-for-relatedperson).

### Обязательные и поддерживаемые (Must Support) элементы данных

Приведённые ниже элементы должны всегда присутствовать (обязательные) или должны поддерживаться при наличии данных ([Must Support](https://dhp.uz/fhir/core/must-support.html)). Это удобочитаемое резюме; формальные представления ниже дают точные кардинальности, типы и терминологические связки.

#### Каждый Sick Leave RelatedPerson обязан иметь

- пациента в `patient`;
- ФИО в `name`.

#### Каждый Sick Leave RelatedPerson должен поддерживать (Must Support)

- пол в `gender`, с `extension[otherGender]`, если он равен `other`;
- дату рождения в `birthDate`.

### Построение JSON

Скопируйте пример и адаптируйте - каждое показанное значение проходит валидацию по этому профилю.

```json
{
  "resourceType": "RelatedPerson",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/sick-leave-related-person"
    ]
  },
  "patient": {
    "reference": "Patient/sick-leave-patient"
  },
  "name": [
    {
      "use": "official",
      "family": "Patient",
      "given": [
        "Mother"
      ]
    }
  ],
  "gender": "female",
  "birthDate": "1962-03-15"
}
```

Эталонный экземпляр: [мать пациента](RelatedPerson-sick-leave-related-person-mother.html).
