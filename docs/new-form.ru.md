# Как добавить новую форму

Руководство по созданию новой клинической формы (документа) в этом IG на примере уже готовых форм 011 (гемодиализ), 066 и 066-1 (статистические карты выписки) и 130 (результаты лабораторных исследований). Форма 066 - образец лучшей практики: при расхождениях ориентируйтесь на неё.

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
| 6 | Регистрация страницы и пункт меню | блоки `pages:` и `menu:` в `sushi-config.yaml` |
| 7 | Алиасы / новая терминология / доп. профили | `Aliases.fsh`, `input/fsh/terminology/`, `input/fsh/profiles/` (по необходимости) |
| 8 | Переводы страниц (ru + uz) | `input/translations/ru/pagecontent/`, `input/translations/uz/pagecontent/` |
| 9 | Запись в чейнджлоге | `input/pagecontent/changelog.md` (+ переводы) |

Соглашения по именованию (на примере 066):
- Профиль: `Profile: Form066HospitalDischargeComposition`, `Id: form-066-hospital-discharge-composition`, `Parent: Composition`.
- Файл примера: `Form066HospitalDischarge.fsh`, инстанс `example-form-066-hospital-discharge` (рендерится как `Bundle-example-form-066-hospital-discharge.html`).
- Файл вступления именуется по `Id` профиля: `StructureDefinition-form-066-hospital-discharge-composition-intro.md`. Публикатор сам подставит его в начало страницы профиля - вручную нигде регистрировать не нужно.

## Порядок действий

### 1. Профиль Composition

Опишите метаданные документа и его разделы. Базовый шаблон:

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
- `encounter` делайте `0..1`, если форма не всегда привязана к конкретному случаю обслуживания (так в 130).
- На элементы можно вешать `^short` с номерами полей исходной формы (см. 066-1, там это сделано на узбекском/английском) - это помогает читать профиль рядом с бумажной формой. Необязательно, но желательно.

### 2. Код категории документа

В `input/fsh/terminology/DocumentCategoryCS.fsh` добавьте код формы. Display - на узбекском, переводы - через `designation` (en + ru):

```fsh
* #form-0XX "Forma nomi o'zbekcha"
  * ^designation[0].language = #en
  * ^designation[=].value = "Form name in English"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Название формы по-русски"
```

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

UUID у `Bundle.identifier` и `Composition.identifier` - разные и уникальные в пределах IG: не копируйте их из другого примера, не поправив.

### 4. Страница соответствия полей

`input/pagecontent/form-0XX-mapping.md` - построчная таблица полей формы. Структура: блок `<style>` с ширинами колонок, заголовок, раздел Overview (со ссылками на профиль и пример), таблицы по разделам с колонками `UZ | RU | FHIR Path | Code | Example`, схема Bundle structure и ссылка на пример. Проще всего скопировать существующую (`form-066-mapping.md` или `form-130-mapping.md`) и заменить содержимое.

Коды в колонке Code: разделы - LOINC; диагнозы - ICD-10; операции - SNOMED CT / ICHI; анализы и показатели - LOINC. Если стандартного кода нет - локальный код (`LocalObservationCodeCS`) или пометка `Local code - TBD`.

### 5. Вступление к профилю

`input/pagecontent/StructureDefinition-<id профиля>-intro.md` - одна-две строки со ссылками на страницу соответствия и на пример. Шаблон - в существующих `*-intro.md`.

### 6. Регистрация страницы и меню

В `sushi-config.yaml` новая страница регистрируется в двух местах: в блоке `pages:` (список страниц ведётся вручную - без записи здесь страница не попадёт в IG) и в блоке `menu:` -> `Documents:`:

```yaml
pages:
  form-0XX-mapping.md:
    title: Form 0XX Mapping

menu:
  Documents:
    Form 0XX Mapping: form-0XX-mapping.html
```

### 7. Алиасы и терминология

Используемые системы кодов подключайте алиасами из `Aliases.fsh` (там уже есть `$loinc`, `$sct`, `$icd-10`, `$diagnosis-role`, `$document-category-cs` и т. д.). Если нужного алиаса нет - добавьте его.

Предпочитайте стандартные коды (SNOMED CT, LOINC) локальным: локальный код заводите только когда стандартного эквивалента нет.

Новые локальные CodeSystem/ValueSet кладите в `input/fsh/terminology/` и используйте рулсет-вставки из `Rulesets.fsh` для стандартной шапки:
- `OriginalCodeSystemDraft(id)` / `OriginalCodeSystem(id)` - собственный CodeSystem;
- `IntegrationsValueSet(id)` - ValueSet;
- `SupplementCodeSystemDraft(id, supplements, version)` / `SupplementCodeSystem(...)` - сапплемент (например, переводы к SNOMED CT); параметр `supplements` передаётся алиасом (`$sct`), без кавычек.

Свой код роли диагноза - в существующий `DiagnosisRoleCS`, а не в новый CS.

### 8. Переводы страниц

Каждая страница IG существует на трёх языках: английский оригинал в `input/pagecontent/` и одноимённые переводы в `input/translations/ru/pagecontent/` и `input/translations/uz/pagecontent/`. Для новой формы переведите страницу соответствия и вступление к профилю на русский и узбекский в том же PR. Терминологию отдельно переводить не нужно - там переводы задаются через `designation` прямо в FSH.

### 9. Чейнджлог

Добавьте строку о новой форме в `input/pagecontent/changelog.md`, раздел `### In development` (и в его переводы в `input/translations/{ru,uz}/pagecontent/`).

## Сборка и проверка

- Полная сборка: `_genonce.sh` (он сам запускает SUSHI, отдельно SUSHI гонять не нужно).
- Правки только в markdown: `./fast-narrative-rebuild.sh` (~12 c) вместо полной сборки.
- Параллельно две полные сборки не запускайте - они конфликтуют на общем локе `~/.fhir`.
- После сборки проверьте QA: ошибки/предупреждения сверяйте с `input/ignoreWarnings.txt`; ожидаемые гасите там же.
- Переводы: каталоги `input/translations/ru` и `input/translations/uz` подключены через `translation-sources` в `sushi-config.yaml`; сборка выкладывает `output/en`, `output/ru` и `output/uz`, а `output/*.html` в корне - только заглушки с выбором языка. Все страницы переведены на оба языка - новые страницы переводите сразу (см. шаг 8).

## Чек-лист новой формы

- [ ] Профиль `Composition` в `input/fsh/profiles/`
- [ ] Код `#form-0XX` в `DocumentCategoryCS.fsh` (uz + en/ru designation)
- [ ] Пример-`Bundle` (`#document`) в `input/fsh/examples/` с `Provenance`
- [ ] Страница `form-0XX-mapping.md`
- [ ] Файл вступления `StructureDefinition-<id>-intro.md`
- [ ] Запись в `pages:` и пункт меню в `sushi-config.yaml`
- [ ] Недостающие алиасы / терминология / подпрофили
- [ ] Переводы mapping-страницы и вступления в `input/translations/{ru,uz}/pagecontent/`
- [ ] Запись в `changelog.md` (`### In development`) + переводы
- [ ] Сборка `_genonce.sh` без новых ошибок QA
