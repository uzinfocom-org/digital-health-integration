# Руководство по интеграции DHP

## Обзор

Данное руководство по внедрению определяет спецификации интеграции на основе FHIR R5 для сторонних систем, интегрирующихся с [Цифровой платформой здравоохранения (DHP)](https://dhp.uz/fhir/core/ru/index.html). Руководство предназначено для обеспечения обмена данными между внешними системами здравоохранения и DHP при сохранении их собственного суверенитета данных.

## Назначени

Руководство по интеграции DHP предоставляет:

- **Стандартные структуры данных** - FHIR-профили и расширения для внешних систем, интегрирующихся с DHP
- **Терминологию** - CodeSystem и ValueSet для стандартизированного кодирования
- **Спецификации API** - шаблоны обмена данными между внешними системами и DHP
- **Шаблоны интеграции** - поддержка гибридной архитектуры DHP
- **Требования соответствия** - требования для интеграции сторонних систем

Это руководство предназначено для разработчиков, создающих или настраивающих системы, которые необходимо интегрировать с DHP. Примерами таких систем являются медицинские информационные системы (МИС), системы архивирования и передачи изображений (PACS), лабораторные информационные системы (ЛИС), а также любые другие сторонние медицинские приложения, которым необходимо обмениваться данными с DHP.

Хотя внешние системы могут разрабатывать собственные руководства по внедрению FHIR, данное руководство может включать профили, разработанные совместно с поставщиками внешних систем для упрощения процесса интеграции и снижения затрат на внедрение.

## Подход к интеграции - гибридная модель

DHP использует гибридный подход к интеграции, при котором не все данные централизованы. Вместо этого платформа сочетает централизованное хранение основных медицинских данных с распределёнными специализированными данными, поддерживаемыми внешними системами.

```mermaid
graph LR
    CoreData["DHP Core Data<br/>Demographics<br/>Clinical Records<br/>Referrals<br/>Lab Results<br/>Registries"]

    MIS["MIS<br/>Patient Records<br/>Appointments<br/>Billing"]
    PACS["PACS<br/>Medical Images<br/>Imaging Studies"]
    LIS["LIS<br/>Lab Workflows<br/>Specimen Tracking"]
    Other["Other 3rd-Party Systems<br/>Specialized Data<br/>& Services"]

    LIS -->|"transmits<br/>results"| CoreData
    CoreData -->|"lab orders"| LIS
    CoreData <-->|"query &<br/>update"| MIS
    CoreData <-->|"DICOM:<br/>references &<br/>retrieves images"| PACS
    CoreData <-->|"FHIR API<br/>integration"| Other

    style CoreData fill:#4A90E2,stroke:#2E5C8A,stroke-width:3px,color:#fff
    style MIS fill:#F5A623,stroke:#D68910,stroke-width:2px,color:#000
    style PACS fill:#F5A623,stroke:#D68910,stroke-width:2px,color:#000
    style LIS fill:#F5A623,stroke:#D68910,stroke-width:2px,color:#000
    style Other fill:#9B59B6,stroke:#7D3C98,stroke-width:2px,color:#fff
```

### Данные, хранящиеся в DHP

DHP централизованно хранит и управляет основными медицинскими данными:

- **Демографические и мастер-данные пациентов** - мастер-индекс пациентов и демографическая информация
- **Основные клинические записи (ЭМК)** - основные данные электронных медицинских карт
- **Направления и рецепты** - клинические назначения и документация направлений
- **Результаты лабораторных исследований** - результаты анализов и диагностические отчёты, переданные из ЛИС
- **Мастер-реестры** - реестр пациентов, справочник медицинских работников, реестр организаций и терминологические сервисы

### Данные, поддерживаемые внешними системами

Внешние системы поддерживают собственные операционные данные, интегрируясь через FHIR API. Примеры включают:

- **Системы МИС** - записи пациентов, записи на приём, данные биллинга и специфические для учреждения рабочие процессы
- **Системы PACS** - медицинские изображения и диагностические исследования (DHP поддерживает обмен изображениями на основе DICOM, хранение ссылок на изображения в PACS и получение изображений для авторизованных пользователей)
- **Системы ЛИС** - лабораторные рабочие процессы, отслеживание образцов и детальные данные обработки анализов
- **Другие сторонние системы** - любые медицинские приложения со специализированными данными или сервисами, которым необходимо интегрироваться с DHP

### Шаблон интеграции

Для большинства данных внешних систем DHP может хранить ссылки на данные во внешних системах, а не дублировать всё. Однако определённые критические данные, такие как результаты лабораторных исследований, передаются и хранятся в DHP. Этот гибридный подход:

- Сохраняет владение данными за системой-источником
- Обеспечивает доступ к исходным данным в реальном времени через API-интеграцию
- Сохраняет специфические для системы рабочие процессы и бизнес-логику
- Упрощает соответствие требованиям управления данными

DHP и внешние системы поддерживают взаимодополняющие наборы данных и взаимодействуют через FHIR и пользовательские API: DHP предоставляет авторитетные мастер-данные и основные клинические записи, в то время как внешние системы предоставляют специализированные операционные данные и доменно-специфические возможности.

## Подходы к обмену данными

Интеграции с DHP поддерживают два взаимодополняющих метода обмена медицинскими данными:

```mermaid
graph LR
    External["3rd-Party Systems"]

    subgraph Approach1["Request Resources"]
        Resources["Workflow Resources:<br/>ServiceRequest<br/>MedicationRequest<br/>Appointment<br/>CarePlan<br/>etc."]
    end

    subgraph Approach2["Clinical Documents"]
        Forms["Clinical Forms<br/>Form 003 (inpatient)<br/>Form 096 (birth)<br/>etc."]
        Document["Document Bundle<br/>Composition header (metadata, attestation)<br/>Referenced Resources:<br/>Patient, Observation, Encounter, etc."]
        Forms -.->|"represented as"| Document
    end

    DHP["DHP"]

    External <-->|"CRUD<br/>operations"| Resources
    External <-->|"submit/<br/>retrieve"| Document

    Resources -->|"FHIR API"| DHP
    Document -->|"FHIR API"| DHP

    style External fill:#9B59B6,stroke:#7D3C98,stroke-width:2px,color:#fff
    style Resources fill:#E8F4F8,stroke:#4A90E2,stroke-width:2px
    style Forms fill:#F0E6FF,stroke:#9B59B6,stroke-width:2px
    style Document fill:#FFF4E6,stroke:#F5A623,stroke-width:2px
    style DHP fill:#4A90E2,stroke:#2E5C8A,stroke-width:3px,color:#fff
```

### Ресурсы запросов

Для операционных рабочих процессов, требующих отслеживания статуса, DHP предпочитает [ресурсы запросов](https://hl7.org/fhir/R5/workflow.html). Примеры включают [ServiceRequest](https://hl7.org/fhir/R5/servicerequest.html), [MedicationRequest](https://hl7.org/fhir/R5/medicationrequest.html), [Appointment](https://hl7.org/fhir/R5/appointment.html), [CarePlan](https://hl7.org/fhir/R5/careplan.html) и [Claim](https://hl7.org/fhir/R5/claim.html). Эти ресурсы поддерживают отслеживание состояния (запрошено → принято → в процессе → завершено), что делает их идеальными для координации в реальном времени.

### Клинические документы

Для данных, требующих юридической аутентификации и долгосрочного хранения (например, Форма 003 для стационара, Форма 096 для рождений), DHP использует **клинические документы** - Bundle, содержащий заголовок Composition с метаданными и аттестацией, а также связанные клинические ресурсы (Patient, Observation, Condition и др.).

Когда требуется физическая подпись, документ печатается, подписывается, сканируется, и PDF встраивается в [Provenance.signature.data](https://hl7.org/fhir/R5/provenance-definitions.html#Provenance.signature). DHP заблаговременно принимает переработанные правила R6 из [6.1.2.2.9 Signing Bundles](https://build.fhir.org/signatures.html#Bundles), так как они обеспечивают более чистый подход - подпись хранится вместе с Bundle и очевидно, что весь документ подписан.

Данный подход сочетает практичность с готовностью к будущему. Рабочий процесс сканирования и встраивания соответствует текущим юридическим требованиям и может быть развёрнут в Q1 2026. При этом структура Provenance.signature полностью поддерживает криптографические цифровые подписи — когда правовая и техническая инфраструктура Узбекистана созреет, те же ресурсы FHIR смогут нести настоящие цифровые подписи без изменений архитектуры.

#### Выбор подхода

```mermaid
flowchart TD
    Start["Healthcare Data"]

    Q1{"Needs workflow<br/>status tracking?"}
    Q2{"Needs legal<br/>authentication &<br/>persistence?"}
    Q3{"Needs physical<br/>signature?"}

    Request["Request Resource<br/>(ServiceRequest, MedicationRequest,<br/>Appointment, etc.)"]
    Document["Clinical Document<br/>(Bundle + Composition)"]
    Physical["Print, Sign, Scan"]
    Provenance["Provenance.signature<br/>(scanned PDF in signature.data)"]

    Start --> Q1
    Q1 -->|"Yes"| Request
    Q1 -->|"No"| Q2
    Q2 -->|"Yes"| Document
    Q2 -->|"No"| Request

    Document --> Q3
    Q3 -->|"Yes"| Physical
    Q3 -->|"No"| Done1["Done"]
    Physical --> Provenance
    Provenance -->|"target = Bundle"| Document

    style Request fill:#E8F4F8,stroke:#4A90E2,stroke-width:2px
    style Document fill:#FFF4E6,stroke:#F5A623,stroke-width:2px
    style Provenance fill:#F0E6FF,stroke:#9B59B6,stroke-width:2px
    style Physical fill:#FCE4EC,stroke:#E91E63,stroke-width:2px
```

---

{% lang-fragment dependency-table.xhtml %}

{% lang-fragment ip-statements.xhtml %}

{% lang-fragment globals-table.xhtml %}

