<style>
/* Form 130 mapping-table column widths (Laboratory Test Results). */
.col-12 table { table-layout: fixed; width: 100%; }
.col-12 th, .col-12 td {
  overflow-wrap: anywhere;
  word-break: break-word;
  vertical-align: top;
}
.col-12 th:nth-child(1), .col-12 td:nth-child(1) { width: 23%; }
.col-12 th:nth-child(2), .col-12 td:nth-child(2) { width: 23%; }
.col-12 th:nth-child(3), .col-12 td:nth-child(3) { width: 18%; }
.col-12 th:nth-child(4), .col-12 td:nth-child(4) { width: 19%; }
.col-12 th:nth-child(5), .col-12 td:nth-child(5) { width: 17%; }
</style>

> **Машинный перевод, требуется проверка человеком.** Эта страница была автоматически переведена с английского языка с использованием искусственного интеллекта и ещё не проверена редактором. В случае каких-либо расхождений приоритет имеет оригинальная английская версия.

# Форма 130 – Результаты лабораторных исследований

Данная страница описывает соответствие полей **Формы 130 (Результаты лабораторных исследований)** ресурсам FHIR.

---

## Общая информация

Форма 130 содержит результаты лабораторных исследований и связанную административную информацию. Данные формы сопоставляются с несколькими ресурсами FHIR, объединёнными в **FHIR Document**, соответствующий профилю **Form130LaboratoryTestResultsComposition**. Если возможно, используются профили **UZ Core**.

Полный пример документа см. в разделе **Пример Формы 130 с результатами лабораторных исследований**.

---

## Структура Bundle

Документ Формы 130 представляет собой FHIR Bundle, содержащий ресурс Composition, соответствующий профилю **Form130LaboratoryTestResultsComposition**.

```text
Bundle (document)
├── Composition (Form130LaboratoryTestResultsComposition)
├── Patient
├── Encounter
├── Organization[] (направившая организация, лаборатория)
├── Practitioner[]
├── PractitionerRole[] (направивший врач, сотрудник лаборатории)
├── ServiceRequest (назначение лабораторного исследования)
├── Specimen
├── DiagnosticReport
├── Observation[] (результаты общего анализа крови)
└── Provenance (авторство и происхождение записи)
```

## Пример

Полный пример FHIR-документа см. в [Примере Формы 130 с результатами лабораторных исследований](Bundle-example-form-130-laboratory-test-results.html).