# Как добавить новую форму

Руководство по созданию новой клинической формы (документа) в этом IG. Сначала прочитайте [руководство по моделированию](https://github.com/uzinfocom-org/digital-health-ig/blob/main/modelling-guidelines.md): здесь собраны только правила, специфичные для форм, общие правила не повторяются.

**Образцы.** Для разделов, терминологии и страницы соответствия ориентируйтесь на Форму 111, для заголовка Composition (первая форма на основе UZ Core Composition) и организаций в примере - на Форму 096. Формы 011, 066, 066-1 и 130, а также заголовок Composition Формы 111 написаны до этих правил: не копируйте из них. Если образец расходится с этим руководством, следуйте руководству.

Форма в этом IG - это FHIR-документ: профиль `Composition`, который описывает разделы документа и ссылается на ресурсы (Patient, Encounter, Observation, Condition и т. д.), плюс пример-`Bundle` типа `document` и страница соответствия полей. Ресурсы берите по профилям UZ Core, где они есть; базовый ресурс FHIR - только когда подходящего профиля нет. Источник данных - формы Приказа МЗ № 399; исходные таблицы лежат в `input/excel/` (конвертация в CSV - `input/convert.sh`).

## Из чего состоит форма

Для одной формы (номер `0XX`) создаются и регистрируются такие артефакты:

| # | Артефакт | Путь |
|---|----------|------|
| 1 | Профиль `Composition` | `input/fsh/profiles/Form0XX...Composition.fsh` |
| 2 | Код категории документа | строка `#form-0XX` в `input/fsh/terminology/DocumentCategoryCS.fsh` |
| 3 | Терминология формы: ValueSet, локальные коды, supplement, ConceptMap | `input/fsh/terminology/form0XX/` |
| 4 | Пример-документ (`Bundle`) | `input/fsh/examples/Form0XX....fsh` |
| 5 | Страница соответствия полей | `input/pagecontent/form-0XX-mapping.md` |
| 6 | Вступление к профилю | `input/pagecontent/StructureDefinition-<id профиля>-intro.md` |
| 7 | Регистрация страницы и пункт меню | блоки `pages:` и `menu:` в `sushi-config.yaml` |
| 8 | Переводы (ru + uz): страницы и `^short` профиля | `input/translations/{ru,uz}/pagecontent/`, `input/translations/{ru,uz}/StructureDefinition-<id профиля>.po` |
| 9 | Запись в чейнджлоге | `input/pagecontent/changelog.md` (+ переводы) |

Соглашения по именованию (на примере 096):
- Профиль: `Profile: Form096MaternityMedicalRecordComposition`, `Id: form-096-maternity-medical-record-composition`, `Parent: UZCoreComposition`.
- Файл примера: `Form096MaternityMedicalRecord.fsh`, инстанс `example-form-096-maternity-medical-record` (рендерится как `Bundle-example-form-096-maternity-medical-record.html`).
- Файл вступления именуется по `Id` профиля: `StructureDefinition-form-096-maternity-medical-record-composition-intro.md`. Публикатор сам подставит его в начало страницы профиля - вручную нигде регистрировать не нужно.

## Порядок действий

### 1. Найдите, что уже есть

Прежде чем создавать профиль, код, ValueSet или систему идентификаторов, поищите существующие. Один и тот же факт должен иметь один и тот же код и одно и то же представление во всех формах. Ищите в таком порядке:

- **UZ Core**: профили, их ValueSet и CodeSystem на странице [Artifacts](https://dhp.uz/fhir/core/en/artifacts.html), системы идентификаторов на странице [Identifiers](https://dhp.uz/fhir/core/en/identifiers.html), тип документа вашей формы в [composition-type-cs](https://dhp.uz/fhir/core/en/CodeSystem-composition-type-cs.html).
- **Другие формы этого IG**: их ValueSet, CodeSystem и ConceptMap (`input/fsh/terminology/`, страница [Artifacts](https://dhp.uz/fhir/integrations/en/artifacts.html)) и страницы соответствия (`input/pagecontent/form-*-mapping.md`), а прежде всего - [индекс полей](field-index.md), где по смыслу собраны поля всех форм с их путём FHIR и кодом. Если в вашей форме есть поле, которое уже есть в другой форме, берите его код, его ValueSet и его способ заполнения ресурса.
- **Стандартные терминологии**: активные концепты SNOMED CT, LOINC, МКБ-10, терминология HL7. Подходит только точное совпадение: более широкий или более узкий концепт не замена.
- **Расширения**: элементы базового ресурса и реестр HL7, как в §5.4 руководства по моделированию.

Новый код, ValueSet или профиль создавайте, только если поиск ничего не дал. Если недостающее относится к UZ Core (тип документа, система идентификаторов), сначала добавьте его в UZ Core и используйте здесь после слияния этого изменения.

### 2. Профиль Composition

Опишите метаданные документа и его разделы. Шаблон:

```fsh
Profile: Form0XXNameComposition
Parent: UZCoreComposition
Id: form-0XX-name-composition
Title: "Form 0XX - ... Composition"
Description: "Composition profile for Form 0XX (<название формы на узбекском>): <что фиксирует документ>."
* ^experimental = true

* identifier 1..*
* identifier ^short = "Document instance UUID and form number (0XX)"

* status ^short = "Document status: preliminary while ..., final once ..."

* type = $composition-type-cs#emdoc-0010-NNNN "..."    // код формы из composition-type-cs ядра
* type ^short = "Form 0XX document type; LOINC NNNNN-N \"...\" is sent as an additional coding"

* category 1..*
* category ^short = "Document category: ..., and the Form 0XX category"
* category[dhpCategory] 1..1
* category[dhpCategory] = $composition-category-cs#Comp-001-NNNN "..."  // из composition-category-cs ядра
* category contains formCategory 1..1
* category[formCategory] = $document-category-cs#form-0XX   // код добавьте в шаге 3
* category[formCategory] ^short = "Form 0XX document category"

* subject 1..1
* subject only Reference(UZCorePatient)
* subject ^short = "..."

* encounter 1..1
* encounter only Reference(UZCoreEncounter)
* encounter ^short = "..."

* date ^short = "Date the document was generated"

* author 1..*
* author only Reference(UZCorePractitionerRole or UZCorePractitioner)
* author ^short = "..."

* title 1..1
* title ^short = "Document title"

* custodian only Reference(UZCoreOrganization)
* custodian ^short = "Organization keeping the document"

// Разделы нарезаются (slice) по code
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains
    personalInformation 0..1 and
    diagnosis 0..1 and
    responsiblePersons 0..1

// 1. <название раздела на узбекском, как в бумажной форме>
* section[personalInformation].title 1..1
* section[personalInformation].title ^short = "1. Personal information"
* section[personalInformation].code 1..1
* section[personalInformation].code = $loinc#45970-1 "Demographic information section"
* section[personalInformation].code ^short = "<поля бумажной формы в этом разделе, по-английски>"
* section[personalInformation].entry only Reference(UZCorePatient or UZCoreRelatedPerson or UZCoreObservation)
* section[personalInformation].entry ^short = "..."
```

Правила для профиля:
- `Parent: UZCoreComposition` и `^experimental = true`, как у родительского профиля.
- `type` - код формы из `composition-type-cs` ядра (связка required). Соответствующий LOINC-код документа передаётся в примере вторым `type.coding` и упоминается в `type ^short`. Если в `composition-type-cs` нет кода формы, сначала добавьте его в UZ Core.
- `status` не фиксируется. Документ проходит жизненный цикл со страницы [Document statuses](../input/pagecontent/document-statuses.md) (`preliminary` -> `final` -> `amended` / `entered-in-error`), а `status ^short` говорит, когда документ этой формы `preliminary` и когда `final`.
- `category` содержит два кода: срез `dhpCategory` из `composition-category-cs` ядра и срез `formCategory` с кодом формы из `document-category-cs` (страница [Document categories and identifiers](../input/pagecontent/document-categories.md)).
- Каждую ссылку ограничивайте профилем UZ Core, где он есть (§4 руководства по моделированию); базовый ресурс - только если профиля нет.
- У каждого раздела есть `title 1..1` с пронумерованным английским `^short`, `code 1..1` (код раздела - по правилу ниже) с `^short` со списком полей бумажной формы в этом разделе, и `entry`, ограниченный конкретными профилями. Раздел делайте `1..1`, только если он есть в каждом документе; остальные - `0..1`, чтобы профиль не требовал данных, которых может не быть в системе-источнике.
- Код раздела - из LOINC; если подходящего нет - активный код SNOMED CT; локальный код - только когда нет ни того, ни другого.
- Разделы и их порядок - как на бумажной форме, и таблицы страницы соответствия (шаг 6) - тоже. Поле остаётся в разделе формы, даже если его ресурс или профиль отличается от соседних полей.
- `encounter` делайте `0..1`, если форма не всегда привязана к одному случаю обслуживания (так в 111 и 130).
- Все `^short`, `^definition` и `Description` - на английском. Русский и узбекский переводы - в `.po`-файлах (шаг 9), не в FSH.

### 3. Код категории документа

В `input/fsh/terminology/DocumentCategoryCS.fsh` добавьте код формы. Display - на узбекском, переводы - через `designation` (en + ru):

```fsh
* #form-0XX "Forma nomi o'zbekcha"
  * ^designation[0].language = #en
  * ^designation[=].value = "Form name in English"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Название формы по-русски"
```

### 4. Терминология формы

Терминологию формы кладите в `input/fsh/terminology/form0XX/`. Для стандартной шапки используйте рулсет-вставки из `Rulesets.fsh`: `OriginalCodeSystemDraft(id)` / `OriginalCodeSystem(id)`, `IntegrationsValueSet(id)`, `SupplementCodeSystemDraft(id, supplements, version)` / `SupplementCodeSystem(...)`; параметр `supplements` передаётся алиасом (`$sct`), без кавычек.

Коды:
- Код выбирайте в порядке шага 1: точный стандартный код, затем код, уже используемый в UZ Core или другой форме, и только потом локальный код.
- Каждый диагноз кодируйте по МКБ-10, включая заболевания членов семьи в анамнезе.
- Каждый код пишите с его официальным display - и в FSH, и на странице соответствия.

ValueSet:
- ValueSet формы не привязываются (binding) к элементам профиля: форма переиспользует профили UZ Core и не имеет собственных профилей на свои части. ValueSet говорит разработчикам, какие коды ставить в какое поле.
- Поэтому в `Description` каждого ValueSet указано, для какого элемента и какого поля он, например "Observation.valueCodeableConcept for the Form 0XX ... field (Observation.code SNOMED CT NNNNNN \"...\")".
- Каждый ValueSet и CodeSystem используется в примере или на странице соответствия. Неиспользуемые удаляйте.

Supplement (русские и узбекские display для кодов SNOMED CT и LOINC):
- У формы один supplement на систему кодов: `form0XX-snomed-supplement-cs`, `form0XX-loinc-supplement-cs`. В нём коды формы, которые ещё не переведены в supplement другой формы.
- Версия supplement - это релиз системы, которую он переводит, в формате SemVer по §5.1 руководства по моделированию (SNOMED CT `2026-01` -> `2026.1.0`, LOINC `2.82` -> `2.82.0`), а не версия IG.
- У каждого кода SNOMED CT и LOINC, который использует форма, есть `designation` `ru` и `uz` - в её собственном supplement или в supplement другой формы.
- Каждый ValueSet с такими кодами несёт расширение `valueset-supplement` на каждый supplement, который их переводит (§5.3 руководства по моделированию). Без него опубликованный ValueSet показывается без русских и узбекских названий.

### 5. Пример-документ (Bundle)

Один `Bundle` типа `document`: первая запись - `Composition`, далее все ресурсы, последняя - `Provenance` с подписью. Все ресурсы - `Usage: #inline`, ссылки - через `urn:uuid:`.

```fsh
Instance: example-form-0XX-name
InstanceOf: Bundle
Usage: #example
Title: "Form 0XX - ..."
Description: "Example of Form 0XX (<название формы на узбекском>) represented as a FHIR document Bundle: <сценарий>."
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
* identifier[+].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:uuid:..."
* identifier[+].system = "https://dhp.uz/fhir/core/sid/doc/uz/form-number"
* identifier[=].value = "0XX"                       // официальный номер формы
* status = #final
* type.coding[0] = $composition-type-cs#emdoc-0010-NNNN "..."
* type.coding[+] = $loinc#NNNNN-N "..."
* category[dhpCategory] = $composition-category-cs#Comp-001-NNNN "..."
* category[formCategory] = $document-category-cs#form-0XX
* subject = Reference(urn:uuid:...0002)
* encounter = Reference(urn:uuid:...0003)
* date = "2026-01-15T14:30:00+05:00"                // момент, когда документ закрыт
* author = Reference(urn:uuid:...)
* title = "Form 0XX - ..."
* custodian = Reference(urn:uuid:...0004)
* section[personalInformation].title = "Personal information"
* section[=].code = $loinc#45970-1 "Demographic information section"
* section[=].entry[0] = Reference(urn:uuid:...0002)

Instance: organization-0XX-001
InstanceOf: UZCoreOrganization
Usage: #inline
* language = #en
* identifier[taxId].type = $identifier-type#TAX "Tax ID number"
* identifier[taxId].system = $organization-tax-id-system-dhp
* identifier[taxId].value = "201234567"
* name = "..."
```

Правила для примера:
- Каждый ресурс - экземпляр профиля UZ Core, где он есть (`InstanceOf: UZCoreOrganization`, `UZCoreImmunization`, `UZCoreMedication` и т. д.), а не базового ресурса.
- Организации идентифицируются ИНН из Soliq в срезе `taxId`, как выше. Локальную систему `https://dhp.uz/fhir/core/sid/uz/organization-code` не используйте.
- Пример описывает одного реального пациента с клинически согласованной историей: тип визита соответствует учреждению, осложнения и сопутствующие заболевания - диагнозу, назначения и анализы - состоянию (с дозировкой у лекарств и результатами у анализов). Разработчики копируют пример, поэтому случайный набор значений станет образцом для интеграций.
- Даты рассказывают одну связную историю: события идут в клиническом порядке, и ничего не происходит после окончания случая обслуживания или после даты документа.
- Документ датирован моментом закрытия: у документа `final` `Composition.date`, `Bundle.timestamp` и `Provenance.signature.when` - это момент, когда он закрыт (например, выписка), а не более ранняя дата.
- В примере используются коды из ValueSet формы, с теми же display.
- UUID у `Bundle.identifier` и `Composition.identifier` - разные и уникальные в пределах IG: не копируйте их из другого примера, не поправив.

### 6. Страница соответствия полей

`input/pagecontent/form-0XX-mapping.md` - построчная таблица полей формы для разработчиков, реализующих интеграцию. Скопируйте `form-111-mapping.md` и замените содержимое. Структура: блок `<style>` с ширинами колонок, заголовок, раздел Overview (со ссылками на профиль и пример), таблица Document Information, таблицы по разделам формы с колонками `UZ | RU | FHIR Path | Code | Example Value`, таблица Required fields, схема Bundle structure и ссылка на пример. Первое упоминание формы в Overview - ссылка на её том в обзоре форм (`forms-volume-NN-*.html`).

Document Information - первая таблица: поля заголовка документа (`Composition.identifier`, `status`, `type`, `category`, `subject`, `date`, `event.period`, `author`, `custodian`, `title`, подпись в `Provenance`), а над ней - короткое пояснение, если форма ведётся как эпизод с визитами или пересылается новыми версиями. Идентификаторы - отдельными строками: `Composition.identifier` (UUID), номер формы (`Composition.identifier` с системой `form-number`) и `Bundle.identifier` (UUID версии). Системы и формат значений - по соглашению на странице [Document categories and identifiers](https://dhp.uz/fhir/integrations/en/document-categories.html).

Путь FHIR и код поля, которое уже есть в [индексе полей](field-index.md), берите оттуда (шаг 1). Когда форма готова, обновите индекс: поля, которых в нём ещё нет, добавьте новыми строками (форма - в колонке Reference), а у найденных допишите номер формы в Also in.

Обязательные элементы, у которых нет поля на бумажной форме, перечислите в таблице Required fields перед Bundle structure: `status` и `intent` у CarePlan, MedicationRequest и ServiceRequest, `status` у Encounter, Observation, DiagnosticReport и EpisodeOfCare, `clinicalStatus` у Condition. Для каждого - value set и какой код ставить и когда (например, CarePlan с рекомендациями после выписки - `active` и `plan`), иначе разработчик будет угадывать между `plan` и `order` или `completed` и `active`. `subject` не указывайте - это всегда пациент.

Страница - только для разработчиков интеграции: история ревью, расхождения с другими источниками и внутренние договорённости пишите в `docs/` или в PR.

Правила для таблиц:
- В каждой строке с кодом есть ссылка на ValueSet (или CodeSystem, или ConceptMap), из которого этот код, и сам код с display, например ``[Social Observation Code](ValueSet-form111-social-observation-code-vs.html) `chr-0029-00004` "Workplace phone number"``. Одного кода без display недостаточно.
- В Observation наблюдаемый концепт (вопрос или находка) идёт в `code`, а ответ - в `value`: код из его ValueSet, да/нет, число или текст. В колонке `Code` подписывайте обе части: `` `code` ...<br>`value` ...``.
- Код, который зависит от пациента, в колонке `Code` не пишется: там ValueSet, а сам код - в колонке `Example Value`.
- Профиль UZ Core в таблицах - ссылка только при первом упоминании, дальше - просто имя ресурса.
- Поле, которое пишется в тот же ресурс, что и строка выше, - `*(same Observation).bodySite*` (как в 111 и 096).
- Для каждого поля на `Observation` в колонке `FHIR Path` указывайте конкретный тип значения, а не `Observation.value[x]`: `Observation.valueBoolean`, `Observation.valueQuantity` (с единицей UCUM, например `d` или `g`), `Observation.valueCodeableConcept` (с ValueSet) и т. д. В примере используйте тот же тип. Тип должен соответствовать коду в `Observation.code`: у LOINC смотрите шкалу (`SCALE_TYP`) - для `Qn` нужен `Quantity` (или `Range`), для `Ord`/`Nom` - `CodeableConcept`, а если у кода есть список ответов LOINC (`LL...`), берите ответы из него. Исключение - ответ строго «да/нет»: используйте `valueBoolean`, а не коды «да»/«нет» из SNOMED CT, HL7 v2 (`v2-0136`) или LOINC (`LL361-7`). Если у поля есть третий вариант (например, «неизвестно»), нужен `valueCodeableConcept`.
- Если формат значения в системе-источнике (DMED) неизвестен, передавайте его свободным текстом (`valueString`), а не придумывайте для него ValueSet.
- Каждый идентификатор указывается вместе с его `system`.
- Пишите только указания, специфичные для этой формы. Общим советам по FHIR или интеграции ("копируйте, не вычисляйте", "пропускайте отсутствующие значения" и т. п.) на странице соответствия не место.

### 7. Вступление к профилю

`input/pagecontent/StructureDefinition-<id профиля>-intro.md` - одна-две строки со ссылками на страницу соответствия и на пример. Шаблон - в существующих `*-intro.md`.

### 8. Регистрация страницы и меню

В `sushi-config.yaml` новая страница регистрируется в двух местах: в блоке `pages:` (список страниц ведётся вручную - без записи здесь страница не попадёт в IG) и в блоке `menu:` -> `Documents:`:

```yaml
pages:
  form-0XX-mapping.md:
    title: Form 0XX Mapping

menu:
  Documents:
    Form 0XX Mapping: form-0XX-mapping.html
```

### 9. Переводы

- **Страницы.** Каждая страница IG существует на трёх языках: английский оригинал в `input/pagecontent/` и одноимённые переводы в `input/translations/ru/pagecontent/` и `input/translations/uz/pagecontent/`. Переведите страницу соответствия и вступление к профилю на русский и узбекский в том же PR.
- **Профиль.** `^short`, заголовки и описания профиля переводятся через `.po`-файлы, как в §6 руководства по моделированию: после сборки скопируйте `StructureDefinition-<id профиля>.po` в `input/translations/{ru,uz}/` и заполните `msgstr`. Образец - Форма 096.
- **Терминология** переводится в FSH: локальные коды через `designation`, коды SNOMED CT и LOINC через supplement (шаг 4).

### 10. Чейнджлог

Добавьте строку о новой форме в `input/pagecontent/changelog.md`, раздел `### In development` (и в его переводы в `input/translations/{ru,uz}/pagecontent/`).

## Сборка и проверка

- Полная сборка: `_genonce.sh` (он сам запускает SUSHI, отдельно SUSHI гонять не нужно). Если публикатору не хватает памяти, дайте ему 12 ГБ через переменную окружения: `export JAVA_TOOL_OPTIONS="-Xmx12g"` (macOS/Linux) или `set JAVA_TOOL_OPTIONS=-Xmx12g` (Windows).
- Правки только в markdown: `./fast-narrative-rebuild.sh` (~12 c) вместо полной сборки.
- Параллельно две полные сборки не запускайте - они конфликтуют на общем локе `~/.fhir`.
- После сборки откройте страницу QA (`output/qa.html`) и исправьте новые ошибки и предупреждения.
- Проверка терминологии: после `sushi .` запустите `python3 .github/scripts/check_terminology.py`; CI запускает её на каждом PR. Она падает, если версия supplement равна версии IG, если у ValueSet нет расширения `valueset-supplement` для supplement, который переводит его коды, и если ValueSet или CodeSystem ничем не используется. Проблемы, существовавшие до проверки, перечислены в `.github/scripts/check_terminology_baseline.txt`: новых строк туда не добавляйте, а исправив проблему, удалите её строку.

## Чек-лист новой формы

- [ ] Поиск в UZ Core, других формах и стандартных терминологиях до создания чего-либо (шаг 1)
- [ ] Профиль `Composition`: `Parent: UZCoreComposition`, `type` из `composition-type-cs`, `category` с двумя срезами, `status` не фиксирован
- [ ] Все ссылки ограничены профилями UZ Core, где они есть
- [ ] Разделы: код LOINC/SNOMED CT, `title 1..1` с пронумерованным `^short`
- [ ] Все `^short` на английском, ru/uz - в `.po`-файлах
- [ ] Код `#form-0XX` в `DocumentCategoryCS.fsh` (uz + en/ru designation)
- [ ] Каждый ValueSet описывает своё поле и используется; неиспользуемые удалены
- [ ] Supplement с версией релиза базовой системы, покрывает все коды SNOMED CT и LOINC, подключён в каждом ValueSet
- [ ] Пример-`Bundle` (`#document`) с профилями UZ Core, ИНН организации из Soliq, клинически согласованной историей, связными датами и `Provenance`
- [ ] Страница `form-0XX-mapping.md`: каждый код со своим ValueSet и display, у каждого поля на `Observation` тип `value[x]`, совместимый с кодом, обязательные коды без поля формы - в таблице Required fields, без общих советов
- [ ] [Индекс полей](field-index.md): новые поля формы добавлены, у повторных форма дописана в Also in
- [ ] Файл вступления `StructureDefinition-<id>-intro.md`
- [ ] Запись в `pages:` и пункт меню в `sushi-config.yaml`
- [ ] Переводы страниц и профиля в `input/translations/{ru,uz}/`
- [ ] Запись в `changelog.md` (`### In development`) + переводы
- [ ] Сборка `_genonce.sh` без новых ошибок QA
- [ ] `check_terminology.py` проходит
