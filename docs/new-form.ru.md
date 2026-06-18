# Как добавить новую форму

Руководство по созданию новой клинической формы (документа) в этом IG на примере уже готовых форм 011 (гемодиализ), 066 и 066-1 (статистические карты выписки).

Форма в этом IG - это FHIR-документ: профиль `Composition`, который описывает разделы документа и ссылается на ресурсы (Patient, Encounter, Observation, Condition и т. д.), плюс пример-`Bundle` типа `document` и страница соответствия полей. Источник данных - формы Приказа МЗ № 399; исходные таблицы лежат в `input/excel/` (конвертация в CSV - `input/convert.sh`).

## Из чего состоит форма

Для одной формы (номер `0XX`) создаются и регистрируются такие артефакты:

| # | Артефакт | Путь |
|---|----------|------|
| 1 | Профиль `Composition` | `input/fsh/profiles/Form0XX...Composition.fsh` |
| 2 | Код категории документа | строка `#form-0XX` в `input/fsh/terminology/DocumentCategoryCS.fsh` |
| 3 | Пример-документ (`Bundle`) | `input/fsh/examples/Form0XX....fsh` |
| 4 | Страница соответствия полей | `input/pagecontent/form-0XX-mapping.md` |
| 5 | Вступление к профилю | `input/pagecontent/StructureDefinition-<id профиля>-intro.md` |
| 6 | Пункт меню | блок `menu:` в `sushi-config.yaml` |
| 7 | Алиасы / новая терминология / доп. профили | `Aliases.fsh`, `input/fsh/terminology/`, `input/fsh/profiles/` (по необходимости) |

Соглашения по именованию (на примере 066):
- Профиль: `Profile: Form066HospitalDischargeComposition`, `Id: form-066-hospital-discharge-composition`, `Parent: Composition`.
- Файл примера: `Form066HospitalDischarge.fsh`, инстанс `example-form-066-hospital-discharge` (рендерится как `Bundle-example-form-066-hospital-discharge.html`).
- Файл вступления именуется по `Id` профиля: `StructureDefinition-form-066-hospital-discharge-composition-intro.md`. Издатель сам подставит его в начало страницы профиля - вручную нигде регистрировать не нужно.

## Порядок действий

### 1. Профиль Composition

Опишите шапку документа и его разделы. Базовый шаблон:

```fsh
Profile: Form0XXNameComposition
Parent: Composition
Id: form-0XX-name-composition
Title: "Form 0XX - ... Composition"
Description: "Composition profile for Form 0XX ..."

* identifier 1..*
* status = #final
* type = $loinc#18842-5 "Discharge summary"            // тип документа из LOINC
* category 1..1
* category = $document-category-cs#form-0XX "..."        // код добавьте в шаге 2
* subject 1..1
* subject only Reference(UZCorePatient)
* encounter 1..1
* encounter only Reference(UZCoreEncounter)
* author 1..*
* author only Reference(UZCorePractitionerRole)

// Разделы нарезаются (slice) по code
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open

* section contains
    personalInformation 1..1 and
    finalDiagnosis 1..1 and
    responsiblePersons 1..1            // 0..1 для необязательных разделов

* section[personalInformation].title 1..1
* section[personalInformation].code 1..1
* section[personalInformation].code = $loinc#LP36348-8 "Patient Information"
* section[personalInformation].entry 1..*
* section[personalInformation].entry only Reference(UZCorePatient or UZCoreObservation)
```

Правила, общие для всех форм:
- `status` фиксируется как `#final`, `type` - код типа документа из LOINC, `category` - код формы из `document-category-cs`.
- Каждый раздел имеет `title 1..1`, `code 1..1` (LOINC-код раздела) и `entry`, ограниченный конкретными профилями через `only Reference(...)`.
- Необязательные разделы - `0..1`.
- На элементы можно вешать `^short` с номерами полей исходной формы (см. 066-1, там это сделано на узбекском/английском) - это помогает читать профиль рядом с бумажной формой. Необязательно, но желательно.

Диагнозы храните не порядком записей, а в подразделах по роли. Сам раздел тогда `entry 0..0`, а внутри - вложенные `section`, нарезанные по коду из `DiagnosisRoleCS`:

```fsh
* section[finalDiagnosis].entry 0..0
* section[finalDiagnosis].section ^slicing.discriminator.type = #value
* section[finalDiagnosis].section ^slicing.discriminator.path = "code"
* section[finalDiagnosis].section ^slicing.rules = #open
* section[finalDiagnosis].section contains main 1..1 and competing 0..1 and complication 0..1
* section[finalDiagnosis].section[main].code = $diagnosis-role#main
* section[finalDiagnosis].section[main].entry only Reference(UZCoreCondition)
```

`DiagnosisRoleCS` уже содержит роли (`main`, `competing`, `concomitant`, `background`, `complication`, причины смерти) и переиспользуется между формами - новые коды добавляйте туда, а не заводите свой CS.

### 2. Код категории документа

В `input/fsh/terminology/DocumentCategoryCS.fsh` добавьте код формы. Display - на узбекском, переводы - через `designation` (en + ru):

```fsh
* #form-0XX "Forma nomi o'zbekcha"
  * ^designation[0].language = #en
  * ^designation[=].value = "Form name in English"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Название формы по-русски"
```

Отдельно ValueSet править не нужно: `DocumentCategoryVS` включает всю систему целиком.

### 3. Пример-документ (Bundle)

Один `Bundle` типа `document`: первая запись - `Composition`, далее все ресурсы, последняя - `Provenance` с подписью. Все ресурсы - `Usage: #inline`, ссылки - через `urn:uuid:`.

```fsh
Instance: example-form-0XX-name
InstanceOf: Bundle
Usage: #example
Title: "Form 0XX - ..."
Description: "Example of ..."
* language = #en
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:..."
* type = #document
* timestamp = "2026-01-15T14:30:00+05:00"
* entry[0].fullUrl = "urn:uuid:...0001"
* entry[=].resource = composition-0XX-001
* entry[+].fullUrl = "urn:uuid:...0002"
* entry[=].resource = patient-0XX-001
// ... остальные ресурсы ...
* entry[+].fullUrl = "urn:uuid:...9999"
* entry[=].resource = provenance-signature-0XX

Instance: composition-0XX-001
InstanceOf: Form0XXNameComposition
Usage: #inline
* language = #en
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:uuid:..."
* identifier[+].system = "https://dhp.uz/fhir/core/sid/doc/uz/form-number"
* identifier[=].value = "0XX"                       // официальный номер формы
* status = #final
* type = $loinc#18842-5 "Discharge summary"
* category = $document-category-cs#form-0XX "..."
* subject = Reference(urn:uuid:...0002)
* encounter = Reference(urn:uuid:...0003)
* date = "2026-01-15T14:30:00+05:00"
* author = Reference(urn:uuid:...)
* title = "Form 0XX - ..."
* section[personalInformation].title = "Personal Information"
* section[=].code = $loinc#LP36348-8 "Patient Information"
* section[=].entry[0] = Reference(urn:uuid:...0002)
```

Что важно в примере:
- У каждого инлайн-ресурса проставляйте `* language = #en`.
- Какой профиль для какого ресурса - см. таблицу ниже. Если профиля UZ Core нет, берите базовый ресурс FHIR.
- `Provenance` ссылается на `Bundle` (`target = Reference(Bundle/example-form-0XX-name)`), агент - `attester`, подпись - `signature` с `sigFormat`/`when`/`data` (можно скопировать из существующего примера).

Выбор профиля под данные:

| Данные | Профиль / ресурс |
|--------|------------------|
| Пациент | `UZCorePatient` |
| Случай (госпитализация) | `UZCoreEncounter`, или собственный подпрофиль (как `UZCoreEncounter066`), если нужны доп. ограничения |
| Измерения, анализы, витальные показатели | `UZCoreObservation` |
| Соц.-эконом. данные (статус, образование, доход, льготы) | `UZCoreSocioeconomicObservation` |
| Диагнозы | `UZCoreCondition` (+ `category` из `diagnosis-role`) |
| Врач / роль врача | `UZCorePractitioner` / `UZCorePractitionerRole` |
| Родственник | `UZCoreRelatedPerson` |
| Операция, лекарство, оплата, организация, локация, направление | базовые `Procedure`, `MedicationAdministration`, `Coverage`, `Organization`, `Location`, `ServiceRequest`, `Basic` |

### 4. Страница соответствия полей

`input/pagecontent/form-0XX-mapping.md` - построчная таблица полей формы. Структура: блок `<style>` с ширинами колонок, заголовок, раздел Overview (со ссылками на профиль и пример), таблицы по разделам с колонками `UZ | RU | FHIR Path | Code | Example`, схема Bundle structure и ссылка на пример. Проще всего скопировать `form-066-mapping.md` и заменить содержимое.

Коды в колонке Code: разделы - LOINC; диагнозы - ICD-10; операции - SNOMED CT / ICHI; анализы и показатели - LOINC. Если стандартного кода нет - локальный код (`LocalObservationCodeCS`) или пометка `Local code - TBD`.

### 5. Вступление к профилю

`input/pagecontent/StructureDefinition-<id профиля>-intro.md` - одна-две строки со ссылками на страницу соответствия и на пример. Шаблон - в существующих `*-intro.md`.

### 6. Меню

В `sushi-config.yaml`, блок `menu:` -> `Documents:`, добавьте пункт:

```yaml
    Form 0XX Mapping: form-0XX-mapping.html
```

### 7. Алиасы и терминология

Используемые системы кодов подключайте алиасами из `Aliases.fsh` (там уже есть `$loinc`, `$sct`, `$icd10`, `$diagnosis-role`, `$document-category-cs` и т. д.). Если нужного алиаса нет - добавьте его. Новые локальные CodeSystem/ValueSet кладите в `input/fsh/terminology/` и используйте рулсет-вставки `OriginalCodeSystemDraft(id)` / `OriginalCodeSystem(id)` из `Rulesets.fsh` для стандартной шапки. Свой код роли диагноза - в существующий `DiagnosisRoleCS`, а не в новый CS.

## Сборка и проверка

- Полная сборка: `_genonce.sh` (он сам запускает SUSHI, отдельно SUSHI гонять не нужно).
- Правки только в markdown: `./fast-narrative-rebuild.sh` (~12 c) вместо полной сборки.
- Параллельно две полные сборки не запускайте - они конфликтуют на общем локе `~/.fhir`.
- После сборки проверьте QA: ошибки/предупреждения сверяйте с `input/ignoreWarnings.txt`; ожидаемые гасите там же.
- Переводы: в `sushi-config.yaml` (`translation-sources`) подключены каталоги `input/translations/ru` и `input/translations/uz`, но сейчас реально переведены лишь несколько страниц в `ru/pagecontent` (`index`, `document-categories`, `document-statuses`, `changelog`, `translationinfo`); каталог `uz` пока пуст. Страницы соответствия форм отдельно не переводятся - многоязычность внутри них обеспечивается колонками UZ/RU и `designation` в терминологии.

## Чек-лист новой формы

- [ ] Профиль `Composition` в `input/fsh/profiles/`
- [ ] Код `#form-0XX` в `DocumentCategoryCS.fsh` (uz + en/ru designation)
- [ ] Пример-`Bundle` (`#document`) в `input/fsh/examples/` с `Provenance`
- [ ] Страница `form-0XX-mapping.md`
- [ ] Файл вступления `StructureDefinition-<id>-intro.md`
- [ ] Пункт меню в `sushi-config.yaml`
- [ ] Недостающие алиасы / терминология / подпрофили
- [ ] Сборка `_genonce.sh` без новых ошибок QA
