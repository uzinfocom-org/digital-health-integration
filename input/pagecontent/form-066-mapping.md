### Form 066 / 066-1 - Inpatient Medical Record

This page documents the mapping between Form 066 (Statsionar tibbiy kartasi / Медицинская карта стационарного больного) and Form 066-1 (Psixo-nevrologik (narkologik) muassasa statsionar tibbiy kartasi) fields and FHIR resources.

### Overview

Forms 066 and 066-1 capture inpatient clinical and administrative data. The form data maps to multiple FHIR resources bundled together as a FHIR Document, conforming to the [Form 066/066-1 Inpatient Composition](StructureDefinition-form-066-inpatient-composition.html) profile. Where available, resources conform to [UZ Core](https://dhp.uz/fhir/core/en/artifacts.html) profiles.

> **Note on 066-1 fields:** Rows where the UZ-066 column is empty but UZ-066-1 is populated indicate fields present **only** in Form 066-1 (psychoneurological/narcological facility). Rows where both columns are populated exist in both forms (values may differ slightly).

### Field Mapping

<table>
<thead>
<tr>
  <th>FHIR</th>
  <th>DMED JSON</th>
  <th>RU</th>
  <th>UZ-066</th>
  <th>Input Value Uzb (066)</th>
  <th>Input Value RU (066)</th>
  <th>UZ-066-1</th>
  <th>Input Value Uzb (066-1)</th>
  <th>Input Value RU (066-1)</th>
</tr>
</thead>
<tbody>

<!-- ═══════════════════════════════════════════════════════ -->
<tr><td colspan="9"><strong>Личные данные / Shaxsiy ma'lumotlar</strong></td></tr>
<!-- ═══════════════════════════════════════════════════════ -->

<tr>
  <td><a href="https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-organization.html">UzCoreOrganization</a>.identifier</td>
  <td>clinic.GCEO</td>
  <td>Код учреждения</td>
  <td>Muassasa kodi</td>
  <td></td><td></td>
  <td>Muassasa kodi</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UzCoreOrganization.name</td>
  <td>clinic.title</td>
  <td>Наименование учреждения</td>
  <td>Muassasa nomi</td>
  <td></td><td></td>
  <td>Muassasa nomi</td>
  <td></td><td></td>
</tr>
<tr>
  <td><a href="https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-encounter.html">UZCoreEncounter</a>.identifier.value</td>
  <td>data.number</td>
  <td>Регистрационный номер пациента</td>
  <td></td>
  <td></td><td></td>
  <td>Bemorning ro'yxatdan o'tish raqami</td>
  <td></td><td></td>
</tr>
<tr>
  <td><a href="https://dhp.uz/fhir/core/en/StructureDefinition-uz-core-patient.html">UzCorePatient</a>.identifier[healthCardId]</td>
  <td>patient.number_med_card</td>
  <td>№ медицинской карты стационарного больного</td>
  <td>Bemor tibbiy bayoni qayd raqami</td>
  <td></td><td></td>
  <td>Shifoxona bemorining tibbiy bayonnomasi</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UzCorePatient.identifier[nationalId]</td>
  <td>patient.pinfl</td>
  <td>Персональный идентификационный номер (JShShIR)</td>
  <td>JShShIR</td>
  <td></td><td></td>
  <td>JShShIR</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UZCorePatient.name</td>
  <td>patient.surname_name_patronymic</td>
  <td>Ф. И. О.</td>
  <td>F.I.SH</td>
  <td></td><td></td>
  <td>F.I.SH</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UZCorePatient.birthDate</td>
  <td>patient.birthdate</td>
  <td>Дата рождения</td>
  <td>Tug'ilgan sanasi</td>
  <td></td><td></td>
  <td>Tug'ilgan sanasi</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UzCorePatient.gender.extension[GenderOtherUZ]</td>
  <td>patient.gender</td>
  <td>Пол</td>
  <td>Jinsi</td>
  <td>Erkak / Ayol</td>
  <td>Мужчина / Женщина</td>
  <td>Jinsi</td>
  <td>Erkak / Ayol</td>
  <td>Мужчина / Женщина</td>
</tr>
<tr>
  <td>UZCorePatient.extension[citizenship]</td>
  <td>patient.citizenship</td>
  <td>Гражданство</td>
  <td>Fuqaroligi</td>
  <td></td><td></td>
  <td>Fuqaroligi</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UZCorePatient.extension[citizenship.code]</td>
  <td></td>
  <td>Код страны гражданства</td>
  <td>Fuqarolik Mamlakati kodi</td>
  <td></td><td></td>
  <td>Fuqarolik Mamlakati kodi</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UZCorePatient.extension[citizenship.display]</td>
  <td></td>
  <td>Наименование страны гражданства</td>
  <td>Fuqarolik Mamlakati nomi</td>
  <td></td><td></td>
  <td>Fuqarolik Mamlakati nomi</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UZCorePatient.identifier[passportLocal or passportInternational or passportForeign]</td>
  <td>patient.passport_serial_number</td>
  <td>Удостоверение личности или паспорт</td>
  <td>ID yoki Pasport</td>
  <td></td><td></td>
  <td>ID yoki Pasport</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UZCoreSocioeconomicObservation.value[SocialStatusVS]</td>
  <td></td>
  <td>Социальный статус</td>
  <td>Ijtimoiy holati</td>
  <td>Ishlaydi<br>Ishlamaydi<br>O'quvchi<br>Talaba<br>Harbiy xizmat<br>Imtiyoz toifasi mavjud</td>
  <td>Работает<br>Не работает<br>Учащийся<br>Студент<br>Военная служба<br>Имеется льготная категория</td>
  <td>Ijtimoiy holati</td>
  <td>Ishlaydi<br>Ishlamaydi<br>O'quvchi<br>Talaba<br>Harbiy xizmatda<br>Imtiyoz toifasi mavjud</td>
  <td>Работает<br>Не работает<br>Учащийся<br>Студент<br>Военная служба<br>Имеется льготная категория</td>
</tr>
<tr>
  <td>UZCoreSocioeconomicObservation.value[BenefitsVS]</td>
  <td>patient.beneficiaries or data.is_beneficiary_direction</td>
  <td>Наличие льготной категории</td>
  <td>Imtiyoz toifasi mavjud</td>
  <td>1. Bolalikdan nogironligi bo'lgan shaxslar<br>2. Yetim bolalar<br>3. I va II guruh nogironligi bo'lgan shaxslar<br>4. 1941–1945-yillardagi urush oqibatida nogiron bo'lgan shaxslar va uning qatnashchilari<br>5. Yoshga oid pensiyaga chiqqan ishlamaydigan shaxslar<br>6. 1941–1945-yillardagi urush davrida mehnat jabhasining qatnashchilari<br>7. Chernobil AESi falokatini tugatishda ishtirok etgan shaxslar<br>8. Baynalmilalchi-jangchilar<br>9¹. Kambag'al oilalar reyestriga kiritilgan oilalar a'zolari<br>9². Oylik daromadi minimal iste'mol xarajatlarining 2 baravaridan ko'p bo'lmagan oilalar a'zolari<br>10. 18 yoshga to'lmagan patologiyali bolalar<br>11. Chaqiruv yoshidagi (18–27 yoshdagi) shaxslar<br>12. Patologiyali homilador ayollar<br>13. Endokrin kasalliklariga chalingan bemorlar<br>14. Jinsiy yo'l bilan yuqtiriladigan kasalliklarga chalingan shaxslar<br>15. Sil kasalligiga chalingan shaxslar<br>16. Onkologiya kasalliklariga chalingan shaxslar<br>17. Dasturli gemodializ oluvchi bemorlar<br>18. Harbiy xizmatchilari oila a'zolari (halok bo'lganlar)<br>19. Gematologiya kasalliklariga chalingan shaxslar<br>20. Imtiyozga ega bo'lmagan davlat tibbiyot muassasalarida ishlovchi tibbiyot xodimlari</td>
  <td>1. Лица с инвалидностью с детства<br>2. Дети-сироты<br>3. Лица с инвалидностью I и II групп<br>4. Ставшие инвалидами вследствие войны 1941–1945, участники войны<br>5. Неработающие лица, вышедшие на пенсию по возрасту<br>6. Участники трудового фронта в годы войны 1941–1945<br>7. Участвовавшие в ликвидации последствий аварии на ЧАЭС<br>8. Воины-интернационалисты<br>9¹. Члены семей в реестре малообеспеченных семей<br>9². Члены семей со среднедушевым доходом ≤ 2× минимальных расходов<br>10. Дети с патологиями в возрасте до 18 лет<br>11. Лица призывного возраста (18–27 лет)<br>12. Беременные женщины с патологиями<br>13. Пациенты с эндокринными заболеваниями<br>14. Лица с заболеваниями, передающимися половым путём<br>15. Лица, больные туберкулёзом<br>16. Лица с онкологическими заболеваниями<br>17. Пациенты, получающие программный гемодиализ<br>18. Члены семей погибших военнослужащих<br>19. Лица с гематологическими заболеваниями<br>20. Медицинские работники-пациенты без льгот</td>
  <td>Imtiyoz toifasi mavjud</td>
  <td>(066-1 da ham xuddi shu ro'yxat)</td>
  <td>(Тот же список, что в 066)</td>
</tr>
<tr>
  <td>UzCorePatient.address[uzAddress, i18nAddress]</td>
  <td></td>
  <td>Адрес проживания</td>
  <td>Yashash manzili</td>
  <td></td><td></td>
  <td>Yashash manzili</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UZCorePatient.address.postalCode</td>
  <td></td>
  <td>Почтовый индекс</td>
  <td>Pochta indeksi</td>
  <td></td><td></td>
  <td>Pochta indeksi</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UzCorePatient.telecom[phone]</td>
  <td>patient.phone</td>
  <td>Номер телефона</td>
  <td>Telefon raqam</td>
  <td></td><td></td>
  <td>Telefon</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UzCorePatient.telecom[email]</td>
  <td></td>
  <td>Электронная почта</td>
  <td>E-mail</td>
  <td></td><td></td>
  <td>Email</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UZCorePatient.extension[managingOrganization.identifier]</td>
  <td>data.clinic.GCEO</td>
  <td>Код учреждения, к которому прикреплён пациент</td>
  <td>Bemor biriktirilgan muassasa kodi</td>
  <td></td><td></td>
  <td>Bemor biriktirilgan muassasa kodi</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UZCorePatient.extension[managingOrganization.display]</td>
  <td>patient.active_attached_clinic</td>
  <td>Наименование учреждения, к которому прикреплён пациент</td>
  <td>Bemor biriktirilgan muassasa nomi</td>
  <td></td><td></td>
  <td>Bemor biriktirilgan muassasa nomi</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UZCoreSocioeconomicObservation.value[EducationVS]</td>
  <td></td>
  <td>Образование</td>
  <td></td>
  <td></td><td></td>
  <td>Ma'lumoti</td>
  <td>Ma'lumoti yo'q<br>Tugallanmagan o'rta<br>O'rta<br>O'rta maxsus<br>Tugallanmagan oliy<br>Oliy<br>Ixtisoslik</td>
  <td>Нет сведений<br>Незаконченное среднее<br>Среднее<br>Среднее специальное<br>Незаконченное высшее<br>Высшее<br>Специальность</td>
</tr>
<tr>
  <td>UZCoreSocioeconomicObservation.value[SocialStatusVS]</td>
  <td></td>
  <td>Источник дохода / социальный статус</td>
  <td></td>
  <td></td><td></td>
  <td>Yashash manbayi</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UZCoreSocioeconomicObservation.value[Employment]</td>
  <td></td>
  <td>Место работы, должность</td>
  <td></td>
  <td></td><td></td>
  <td>Ish joyi, lavozimi</td>
  <td></td><td></td>
</tr>

<!-- ═══════════════════════════════════════════════════════ -->
<tr><td colspan="9"><strong>Сведения о госпитализации / Shifoxonaga yotqizish ma'lumotlari</strong></td></tr>
<!-- ═══════════════════════════════════════════════════════ -->

<tr>
  <td>UZCoreEncounter.actualPeriod.start</td>
  <td></td>
  <td>Дата постановки на учёт в психоневрологическом (наркологическом) учреждении</td>
  <td></td>
  <td></td><td></td>
  <td>Psixonevrologik (narkologik) muassasa ro'yxatga olingan sana</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UZCoreEncounter.admission.reAdmission</td>
  <td></td>
  <td>Сколько раз ранее лечился в стационаре</td>
  <td></td>
  <td></td><td></td>
  <td>Avval necha marta shifoxonada davolangan</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UZCoreEncounter.priority</td>
  <td></td>
  <td>Экстренная помощь оказана</td>
  <td>Tezkor yordam ko'rsatildi</td>
  <td>Ha / Yo'q</td>
  <td>Да / Нет</td>
  <td>Tezkor yordam ko'rsatildi</td>
  <td>Ha / Yo'q</td>
  <td>Да / Нет</td>
</tr>
<tr>
  <td>UZCoreEncounter.class</td>
  <td>data.medical_care_form</td>
  <td>Вид госпитализации</td>
  <td>Yotqizish turi</td>
  <td>Tezkor<br>Shoshilinch<br>Rejali<br>Boshqa muassasadan ko'chirilgan</td>
  <td>Экстренная<br>Срочная<br>Плановая<br>Переведён из другого учреждения</td>
  <td>Yotqizish turi</td>
  <td>Tezkor<br>Shoshilinch<br>Rejali<br>Boshqa muassasadan ko'chirilgan<br>Majburiy davolanish<br>G'ayriixtiyoriy gospitalizatsiya</td>
  <td>Экстренная<br>Неотложная<br>Плановая<br>Переведён из другого учреждения<br>Принудительное лечение<br>Недобровольная госпитализация</td>
</tr>
<tr>
  <td>UZCoreClinicalCondition.onset[x]</td>
  <td></td>
  <td>Через сколько часов после заболевания или травмы</td>
  <td>Kasallik yoki jarohatlangandan so'ng necha soatda</td>
  <td>Dastlabki 6 soat ichida<br>7-24 soat ichida<br>24 soatdan so'ng</td>
  <td>В течение первых 6 часов<br>В течение 7–24 часов<br>После 24 часов</td>
  <td></td>
  <td></td><td></td>
</tr>
<tr>
  <td>UZCoreEncounter.admission.admitSource</td>
  <td>data.arrival_type</td>
  <td>Поставлен машиной скорой медицинской помощи</td>
  <td>Tez tibbiy yordam mashinasida keldi</td>
  <td>Ha / Yo'q</td>
  <td>Да / Нет</td>
  <td>Tez tibbiy yordam mashinasida keldi</td>
  <td>Ha / Yo'q</td>
  <td>Да / Нет</td>
</tr>
<tr>
  <td>UZCoreEncounter.basedOn</td>
  <td></td>
  <td>Наличие направления</td>
  <td>Yo'llanma mavjud</td>
  <td>Ha / Yo'q</td>
  <td>Да / Нет</td>
  <td>Yo'llanma mavjud</td>
  <td>Ha / Yo'q</td>
  <td>Да / Нет</td>
</tr>
<tr>
  <td>UZCoreEncounter.admission.admitSource</td>
  <td></td>
  <td>Кем направлен пациент</td>
  <td></td>
  <td></td><td></td>
  <td>Kim tomonidan yo'llangan</td>
  <td>Yo'llanmasiz<br>Dispanser<br>Tuman psixiatriyasi<br>Tez tibbiy yordam<br>Sud ajrimi asosida<br>Ekspertizaga</td>
  <td>Без направления<br>Диспансер<br>Районная психиатрия<br>Скорая медицинская помощь<br>На основании судебного решения<br>На экспертизу</td>
</tr>
<tr>
  <td>UZCoreEncounter.serviceProvider.identifier</td>
  <td>data.sending_clinic.GCEO</td>
  <td>Направившее учреждение (код)</td>
  <td>Yo'llagan muassasa kodi</td>
  <td></td><td></td>
  <td>Yo'llagan muassasa kodi</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UZCoreEncounter.serviceProvider.name</td>
  <td>data.sending_clinic.title</td>
  <td>Направившее учреждение (наименование)</td>
  <td>Yo'llagan muassasa nomi</td>
  <td></td><td></td>
  <td>Yo'llagan muassasa nomi</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UZCoreClinicalCondition.code.coding.code</td>
  <td></td>
  <td>Диагноз направившего учреждения (код МКБ-10)</td>
  <td>Yo'llagan muassasa tashxis kodi</td>
  <td></td><td></td>
  <td>Yo'llagan muassasa tashxis kodi</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UZCoreClinicalCondition.code.coding.display</td>
  <td></td>
  <td>Диагноз направившего учреждения (наименование)</td>
  <td>Yo'llagan muassasa tashxisi nomi</td>
  <td></td><td></td>
  <td>Yo'llagan muassasa tashxisi nomi</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UZCoreEncounter.admission.reAdmission</td>
  <td></td>
  <td>Повторная госпитализация с данным заболеванием в течение последних 30 дней</td>
  <td>Ayni shu kasallik bilan shifoxonaga oxirgi 30 kun ichida qayta yotqizilganligi</td>
  <td>Ha / Yo'q</td>
  <td>Да / Нет</td>
  <td></td>
  <td></td><td></td>
</tr>
<tr>
  <td>UzCoreEncounter.reason.use</td>
  <td></td>
  <td>Цель направления</td>
  <td></td>
  <td></td><td></td>
  <td>Yo'llashdan maqsad</td>
  <td>Diagnostika<br>Majburiy davolash<br>Ixtiyoriy davolash<br>Ekspertiza</td>
  <td>Диагностика<br>Принудительное лечение<br>Добровольное лечение<br>Экспертиза</td>
</tr>
<tr>
  <td>UZCoreEncounter.admission.reAdmission</td>
  <td></td>
  <td>Госпитализирован</td>
  <td></td>
  <td></td><td></td>
  <td>Shifoxonaga yotqizildi</td>
  <td>Birinchi marta<br>Joriy yilda qayta</td>
  <td>Первый раз<br>Повторно в текущем году</td>
</tr>
<tr>
  <td>UZCoreEncounter.admission.origin</td>
  <td>data.arrival_type</td>
  <td>Откуда прибыл пациент</td>
  <td></td>
  <td></td><td></td>
  <td>Qayerdan keldi</td>
  <td>Uydan<br>Dispanserdan<br>Shifoxonadan<br>Ichki ishlar vazirligidan<br>Boshqalar</td>
  <td>Из дома<br>Из диспансера<br>Из больницы<br>Министерство внутренних дел<br>Другие</td>
</tr>
<tr>
  <td>UZCoreClinicalCondition.onset[x]</td>
  <td></td>
  <td>Длительность заболевания до поступления</td>
  <td></td>
  <td></td><td></td>
  <td>Kasallik davomiyligi (kelish paytigacha)</td>
  <td></td><td></td>
</tr>

<!-- ═══════════════════════════════════════════════════════ -->
<tr><td colspan="9"><strong>Сведения о пребывании в стационаре / Shifoxonada yotish ma'lumotlari</strong></td></tr>
<!-- ═══════════════════════════════════════════════════════ -->

<tr>
  <td>UZCoreClinicalCondition.code.coding.code</td>
  <td></td>
  <td>Код диагноза приёмного отделения</td>
  <td>Qabul bo'limi tashxisi kodi</td>
  <td></td><td></td>
  <td>Qabul bo'limi tashxisi kodi</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UZCoreClinicalCondition.code.coding.display</td>
  <td></td>
  <td>Наименование диагноза приёмного отделения</td>
  <td>Qabul bo'limi tashxisi nomi</td>
  <td></td><td></td>
  <td>Qabul bo'limi tashxisi nomi</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UZCoreEncounter.actualPeriod.start</td>
  <td></td>
  <td>Дата и время госпитализации</td>
  <td>Yotqizilgan sanasi va vaqti</td>
  <td></td><td></td>
  <td>Yotqizilgan sanasi va vaqti</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UZCoreHealthcareService.type.coding.display</td>
  <td></td>
  <td>Тип койко-места</td>
  <td>O'rin joy turi</td>
  <td>Terapevtik<br>Pediatrik<br>Jarrohlik<br>Akusherlik va Ginekologik<br>Reanimatsiya (intensiv terapiya)<br>Yuqumli kasalliklar<br>Geriatriya<br>Narkologiya-Psixiatriya<br>Boshqalar</td>
  <td></td>
  <td>O'rin joy turi</td>
  <td>Psixiatriya<br>Narkologiya</td>
  <td></td>
</tr>
<tr>
  <td>UZCoreEncounter.length</td>
  <td></td>
  <td>Общее количество койко-дней</td>
  <td>Jami o'rin kunlari</td>
  <td></td><td></td>
  <td>Jami o'rin kunlari</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UZCoreEncounter.location.period</td>
  <td></td>
  <td>Из них дней в реанимации</td>
  <td>Shundan, reanimatsiyadagi kunlari</td>
  <td></td><td></td>
  <td>Shundan, reanimatsiyadagi kunlari</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UZCoreLocation.identifier[unit].value</td>
  <td>data.department.id</td>
  <td>Код выписавшего отделения</td>
  <td>Chiqarilgan bo'lim ko'di</td>
  <td></td><td></td>
  <td>Chiqarilgan bo'lim ko'di</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UZCoreLocation.name</td>
  <td>data.department.title</td>
  <td>Наименование выписавшего отделения</td>
  <td>Chiqarilgan bo'lim nomi</td>
  <td></td><td></td>
  <td>Chiqarilgan bo'lim nomi</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UZCoreEncounter.admission.dischargeDisposition</td>
  <td></td>
  <td>Статус выписки из стационара</td>
  <td>Shifoxonadan chiqarish holati</td>
  <td>Chiqarildi<br>Vafot etdi<br>O'zi chiqib ketdi<br>Boshqa shifoxonaga o'tkazildi</td>
  <td>Выписан<br>Скончался<br>Самовольно покинул стационар<br>Переведён в другую больницу</td>
  <td>Shifoxonadan chiqarish holati</td>
  <td>Chiqarildi<br>Vafot etdi<br>Boshqa davolash muassasasiga o'tkazildi<br>IIV muassasasiga o'tkazildi<br>Muruvvat uyiga o'tkazildi</td>
  <td>Выписан<br>Скончался<br>Переведён в другое лечебное учреждение<br>Передан в МВД<br>Передан в дом милосердия</td>
</tr>
<tr>
  <td>UZCoreCondition.clinicalStatus</td>
  <td></td>
  <td>Состояние пациента при выписке</td>
  <td>Bemor holati</td>
  <td>Tuzaldi<br>Ijobiy o'zgarish bilan<br>O'zgarishsiz<br>Og'irlashdi</td>
  <td>Выздоровел<br>С улучшением<br>Без изменений<br>Ухудшение состояния</td>
  <td>Bemor holati</td>
  <td>Tuzaldi<br>Ijobiy o'zgarish bilan<br>O'zgarishsiz<br>Og'irlashdi</td>
  <td>Выздоровел<br>С положительными изменениями<br>Без изменений<br>Ухудшилось</td>
</tr>
<tr>
  <td>UZCoreCondition.severity</td>
  <td></td>
  <td>Инвалидность по психическому заболеванию при выписке</td>
  <td></td>
  <td></td><td></td>
  <td>Chiqarilishdagi ruhiy nogironlik</td>
  <td>I guruh nogironi<br>II guruh nogironi<br>III guruh nogironi<br>Nogironlik belgilanmagan</td>
  <td>Инвалид I группы<br>Инвалид II группы<br>Инвалид III группы<br>Инвалидность не установлена</td>
</tr>
<tr>
  <td>UZCoreEncounter.location.period</td>
  <td></td>
  <td>Количество дней отпуска в стационаре</td>
  <td></td>
  <td></td><td></td>
  <td>Shifoxona ichidagi ta'til kunlari</td>
  <td></td><td></td>
</tr>

<!-- ═══════════════════════════════════════════════════════ -->
<tr><td colspan="9"><strong>Окончательный диагноз / Yakuniy tashxis</strong></td></tr>
<!-- ═══════════════════════════════════════════════════════ -->

<tr>
  <td>UZCoreClinicalCondition.code.coding.code</td>
  <td>disease_codes.code where type = "main"</td>
  <td>Код основного диагноза</td>
  <td>Asosiy tashxis kodi *</td>
  <td></td><td></td>
  <td>Asosiy tashxis kodi</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UZCoreClinicalCondition.code.coding.display</td>
  <td>disease_codes.title where type = "main"</td>
  <td>Наименование основного диагноза</td>
  <td>Asosiy tashxis nomi *</td>
  <td></td><td></td>
  <td>Asosiy tashxis nomi</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UZCoreClinicalCondition.code.coding.code</td>
  <td>disease_codes.code where type = "competing"</td>
  <td>Код конкурирующего диагноза</td>
  <td>Raqobat tashxis kodi</td>
  <td></td><td></td>
  <td>Raqobat tashxis kodi</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UZCoreClinicalCondition.code.coding.display</td>
  <td>disease_codes.title where type = "competing"</td>
  <td>Наименование конкурирующего диагноза</td>
  <td>Raqobat tashxis nomi</td>
  <td></td><td></td>
  <td>Raqobat tashxis nomi</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UZCoreClinicalCondition.code.coding.code</td>
  <td>disease_codes.code where type = "additional"</td>
  <td>Код сопутствующего диагноза</td>
  <td>Yondosh tashxis kodi</td>
  <td></td><td></td>
  <td>Yondosh tashxis kodi</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UZCoreClinicalCondition.code.coding.display</td>
  <td>disease_codes.title where type = "additional"</td>
  <td>Наименование сопутствующего диагноза</td>
  <td>Yondosh tashxis nomi</td>
  <td></td><td></td>
  <td>Yondosh tashxis nomi</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UZCoreClinicalCondition.code.coding.code</td>
  <td>disease_codes.code where type = "background"</td>
  <td>Код фонового диагноза</td>
  <td>Fon tashxis kodi</td>
  <td></td><td></td>
  <td>Fon tashxis kodi</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UZCoreClinicalCondition.code.coding.display</td>
  <td>disease_codes.title where type = "background"</td>
  <td>Наименование фонового диагноза</td>
  <td>Fon tashxis nomi</td>
  <td></td><td></td>
  <td>Fon tashxis nomi</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UZCoreClinicalCondition.code.coding.code</td>
  <td>disease_codes.code where type = "critical"</td>
  <td>Код осложнения</td>
  <td>Asorat kodi</td>
  <td></td><td></td>
  <td>Asorat kodi</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UZCoreClinicalCondition.code.coding.display</td>
  <td>disease_codes.title where type = "critical"</td>
  <td>Наименование осложнения</td>
  <td>Asorat nomi</td>
  <td></td><td></td>
  <td>Asorat nomi</td>
  <td></td><td></td>
</tr>

<!-- ═══════════════════════════════════════════════════════ -->
<tr><td colspan="9"><strong>Патологоанатомический диагноз / Patologoanatomik tashxis</strong></td></tr>
<!-- ═══════════════════════════════════════════════════════ -->

<tr>
  <td>UZCoreClinicalCondition.code.coding.code</td>
  <td></td>
  <td>Код непосредственной причины смерти</td>
  <td>O'limga olib kelgan bevosita sabab kodi</td>
  <td></td><td></td>
  <td>O'limga olib kelgan bevosita sabab kodi</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UZCoreClinicalCondition.code.coding.display</td>
  <td></td>
  <td>Наименование непосредственной причины смерти</td>
  <td>O'limga olib kelgan bevosita sabab nomi</td>
  <td></td><td></td>
  <td>O'limga olib kelgan bevosita sabab nomi</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UZCoreClinicalCondition.code.coding.code</td>
  <td></td>
  <td>Код заболевания, непосредственно вызвавшего причину смерти</td>
  <td>O'lim sababini bevosita chaqiruvchi kasallik kodi</td>
  <td></td><td></td>
  <td>O'lim sababini bevosita chaqiruvchi kasallik kodi</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UZCoreClinicalCondition.code.coding.display</td>
  <td></td>
  <td>Наименование заболевания, непосредственно вызвавшего причину смерти</td>
  <td>O'lim sababini bevosita chaqiruvchi kasallik nomi</td>
  <td></td><td></td>
  <td>O'lim sababini bevosita chaqiruvchi kasallik nomi</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UZCoreClinicalCondition.code.coding.code</td>
  <td></td>
  <td>Код основного заболевания</td>
  <td>Asosiy kasallik kodi</td>
  <td></td><td></td>
  <td>Asosiy kasallik kodi</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UZCoreClinicalCondition.code.coding.display</td>
  <td></td>
  <td>Наименование основного заболевания</td>
  <td>Asosiy kasallik nomi</td>
  <td></td><td></td>
  <td>Asosiy kasallik nomi</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UZCoreClinicalCondition.code.coding.code</td>
  <td></td>
  <td>Код других значимых заболеваний, не связанных с заболеванием или его осложнением, непосредственно приведшим к смерти</td>
  <td>Bevosita o'limga olib keluvchi kasallik yoki uning asorati bilan bog'liq bo'lmagan boshqa muhim kasalliklar kodi</td>
  <td></td><td></td>
  <td>Bevosita o'limga olib keluvchi kasallik yoki uning asorati bilan bog'liq bo'lmagan boshqa muhim kasalliklar kodi</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UZCoreClinicalCondition.code.coding.display</td>
  <td></td>
  <td>Наименование других значимых заболеваний</td>
  <td>Bevosita o'limga olib keluvchi kasallik yoki uning asorati bilan bog'liq bo'lmagan boshqa muhim kasalliklar nomi</td>
  <td></td><td></td>
  <td>Bevosita o'limga olib keluvchi kasallik yoki uning asorati bilan bog'liq bo'lmagan boshqa muhim kasalliklar nomi</td>
  <td></td><td></td>
</tr>

<!-- ═══════════════════════════════════════════════════════ -->
<tr><td colspan="9"><strong>Хирургические вмешательства / Jarrohlik amaliyotlari</strong></td></tr>
<!-- ═══════════════════════════════════════════════════════ -->

<tr>
  <td>Procedure.occurrenceDateTime</td>
  <td></td>
  <td>Дата и время</td>
  <td>Sana va vaqti</td>
  <td></td><td></td>
  <td>Sana va vaqti</td>
  <td></td><td></td>
</tr>
<tr>
  <td>Procedure.code.coding</td>
  <td></td>
  <td>Код ICHI</td>
  <td>ICHI Kodi</td>
  <td></td><td></td>
  <td>ICHI Kodi</td>
  <td></td><td></td>
</tr>
<tr>
  <td>Procedure.category</td>
  <td></td>
  <td>Основной</td>
  <td>Asosiy</td>
  <td>Ha / Yo'q</td>
  <td>Да / Нет</td>
  <td>Asosiy</td>
  <td>Ha / Yo'q</td>
  <td>Да / Нет</td>
</tr>
<tr>
  <td>Procedure.code.text</td>
  <td></td>
  <td>Наименование</td>
  <td>Nomi</td>
  <td></td><td></td>
  <td>Nomi</td>
  <td></td><td></td>
</tr>

<!-- ═══════════════════════════════════════════════════════ -->
<tr><td colspan="9"><strong>Результат анализа / Tahlil natijasi</strong></td></tr>
<!-- ═══════════════════════════════════════════════════════ -->

<tr>
  <td>UZCoreObservation.effectiveDateTime</td>
  <td></td>
  <td>Дата</td>
  <td>Sana</td>
  <td></td><td></td>
  <td>Sana</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UZCoreObservation.valueCodeableConcept</td>
  <td></td>
  <td>ВИЧ</td>
  <td>OITS</td>
  <td>Ijobiy / Manfiy</td>
  <td>Положительный / Отрицательный</td>
  <td>OITS</td>
  <td>Ijobiy / Manfiy</td>
  <td>Положительный / Отрицательный</td>
</tr>
<tr>
  <td>UZCoreObservation.valueCodeableConcept</td>
  <td></td>
  <td>RW (реакция Вассермана)</td>
  <td>RW</td>
  <td>Ijobiy / Manfiy</td>
  <td>Положительный / Отрицательный</td>
  <td>RW</td>
  <td>Ijobiy / Manfiy</td>
  <td>Положительный / Отрицательный</td>
</tr>
<tr>
  <td>UZCoreObservation.valueCodeableConcept</td>
  <td></td>
  <td>Гепатит B</td>
  <td>Gepatit B</td>
  <td>Ijobiy / Manfiy</td>
  <td>Положительный / Отрицательный</td>
  <td>Gepatit B</td>
  <td>Ijobiy / Manfiy</td>
  <td>Положительный / Отрицательный</td>
</tr>
<tr>
  <td>UZCoreObservation.valueCodeableConcept</td>
  <td></td>
  <td>Гепатит C</td>
  <td>Gepatit C</td>
  <td>Ijobiy / Manfiy</td>
  <td>Положительный / Отрицательный</td>
  <td>Gepatit C</td>
  <td>Ijobiy / Manfiy</td>
  <td>Положительный / Отрицательный</td>
</tr>

<!-- ═══════════════════════════════════════════════════════ -->
<tr><td colspan="9"><strong>Оплата / To'lov turi</strong></td></tr>
<!-- ═══════════════════════════════════════════════════════ -->

<tr>
  <td><a href="https://hl7.org/fhir/R5/coverage.html">Coverage</a>.type</td>
  <td>price_list.title</td>
  <td>Тип оплаты</td>
  <td>To'lov turi</td>
  <td>DTSJ Davolangan holat (PQ-311-son)<br>DTSJ Imtiyozli toifaga kiruvchi bemorlarni davolash (PQ-5199-son)<br>Saxovat va ko'mak jamg'armasi DTSJ orqali (PF-17-son, VMQ 462-son)<br>Ayollar daftari jamg'armasi DTSJ orqali (PF-17-son, VMQ 462-son)<br>Yoshlar daftari jamg'armasi DTSJ orqali (PF-17-son, VMQ 462-son)<br>Ijtimoiy himoya davlat jamg'armasi DTSJ orqali (VMQ 294-son)<br>DTSJ Global byudjet<br>SSV byudjet<br>Bemor o'z hisobidan<br>Mahalliy byudjet<br>Homiylik<br>Davlat va nodavlat grantlari<br>Boshqalar</td>
  <td>ГТСЗ — лечение в общем порядке (ПП №311)<br>ГТСЗ — лечение пациентов льготной категории (ПП №5199)<br>Фонд «Саховат и кумак» через ГТСЗ (УП №17, ПКМ №462)<br>Фонд «Женская тетрадь» через ГТСЗ (УП №17, ПКМ №462)<br>Фонд «Молодёжная тетрадь» через ГТСЗ (УП №17, ПКМ №462)<br>Государственный фонд социальной защиты через ГТСЗ (ПКМ №294)<br>ГТСЗ — глобальный бюджет<br>Бюджет Министерства здравоохранения<br>За счёт собственных средств пациента<br>Местный бюджет<br>Спонсорская помощь<br>Государственные и негосударственные гранты<br>Прочие</td>
  <td>To'lov turi</td>
  <td>(xuddi 066 bilan bir xil)</td>
  <td>(Тот же список, что в 066)</td>
</tr>

<!-- ═══════════════════════════════════════════════════════ -->
<tr><td colspan="9"><strong>Для новорождённого / Yangi tug'ilgan chaqaloqlar uchun</strong></td></tr>
<!-- ═══════════════════════════════════════════════════════ -->

<tr>
  <td>UZCoreObservation.valueQuantity</td>
  <td>vital_signs.height</td>
  <td>Вес новорождённого ребёнка</td>
  <td>Yangi tug'ilgan chaqaloqning vazni</td>
  <td></td><td></td>
  <td></td><td></td><td></td>
</tr>
<tr>
  <td>UZCoreObservation.valueQuantity</td>
  <td>vital_signs.weight</td>
  <td>Рост новорождённого ребёнка</td>
  <td>Yangi tug'ilgan chaqaloqning bo'yi</td>
  <td></td><td></td>
  <td></td><td></td><td></td>
</tr>
<tr>
  <td>UZCoreRelatedPerson.identifier[nationalId]</td>
  <td></td>
  <td>ПИНФЛ матери</td>
  <td>Onasining JShShIRi</td>
  <td></td><td></td>
  <td></td><td></td><td></td>
</tr>

<!-- ═══════════════════════════════════════════════════════ -->
<tr><td colspan="9"><strong>Туберкулёз лёгких / O'pka silida doriga sezgirlik</strong></td></tr>
<!-- ═══════════════════════════════════════════════════════ -->

<tr>
  <td>UZCoreObservation.valueCodeableConcept</td>
  <td></td>
  <td>Лекарственная чувствительность при туберкулёзе лёгких</td>
  <td>O'pka silida doriga sezgirlik</td>
  <td>Sezgir<br>Monorezistentlik<br>Polirezistentlik<br>Multirezistentlik (MLU)<br>O'ta rezistentlik (ShLU)</td>
  <td>Чувствительный<br>Монорезистентность<br>Полирезистентность<br>Мультирезистентность (МЛУ)<br>Сверхрезистентность (ШЛУ)</td>
  <td>O'pka silida doriga sezgirlik</td>
  <td>Sezgir<br>Monorezistentlik<br>Polirezistentlik<br>Multirezistentlik (MLU)<br>O'ta rezistentlik (ShLU)</td>
  <td>Чувствительный<br>Монорезистентность<br>Полирезистентность<br>Мультирезистентность (МЛУ)<br>Сверхрезистентность (ШЛУ)</td>
</tr>

<!-- ═══════════════════════════════════════════════════════ -->
<tr><td colspan="9"><strong>Лист временной нетрудоспособности / Vaqtincha mehnatga layoqatsizlik varaqasi</strong></td></tr>
<!-- ═══════════════════════════════════════════════════════ -->

<tr>
  <td>Composition.event.period.start</td>
  <td></td>
  <td>Дата открытия временного свидетельства о нетрудоспособности</td>
  <td>Vaqtincha mehnatga layoqatsizlik varaqasi ochilgan sana</td>
  <td></td><td></td>
  <td>Vaqtincha mehnatga layoqatsizlik varaqasi ochilgan sana</td>
  <td></td><td></td>
</tr>
<tr>
  <td>Composition.event.period.end</td>
  <td></td>
  <td>Дата закрытия временного свидетельства о нетрудоспособности</td>
  <td>Vaqtincha mehnatga layoqatsizlik varaqasi berkitilgan sana</td>
  <td></td><td></td>
  <td>Vaqtincha mehnatga layoqatsizlik varaqasi berkitilgan sana</td>
  <td></td><td></td>
</tr>

<!-- ═══════════════════════════════════════════════════════ -->
<tr><td colspan="9"><strong>Ответственные лица / Mas'ul shaxslar</strong></td></tr>
<!-- ═══════════════════════════════════════════════════════ -->

<tr>
  <td>UZCoreEncounter.participant.actor</td>
  <td>doctor.name</td>
  <td>Лечащий врач</td>
  <td>Davolovchi shifokor</td>
  <td></td><td></td>
  <td>Davolovchi shifokor</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UZCoreEncounter.participant.actor</td>
  <td>department_head_doctor.name</td>
  <td>Заведующий отделением</td>
  <td>Bo'lim boshlig'i</td>
  <td></td><td></td>
  <td>Bo'lim boshlig'i</td>
  <td></td><td></td>
</tr>
<tr>
  <td>UZCoreEncounter.participant.actor</td>
  <td>nurse.role</td>
  <td>Старшая медицинская сестра</td>
  <td>Katta hamshira</td>
  <td></td><td></td>
  <td>Katta hamshira</td>
  <td></td><td></td>
</tr>

</tbody>
</table>

### Bundle structure

The Form 066/066-1 document is structured as a FHIR Bundle containing:

```
Bundle (document)
├── Composition ([Form066InpatientComposition](StructureDefinition-form-066-inpatient-composition.html))
│   ├── event.period         ← Sick leave certificate open/close dates
│   ├── section[socialHistory]    → Observation[] (social status, benefits, education)
│   ├── section[diagnoses]        → Condition[] (main, competing, additional, background, complication)
│   ├── section[procedures]       → Procedure[] (surgical interventions, optional)
│   └── section[labResults]       → Observation[] (HIV, RW, Hepatitis B/C, TB)
├── Patient       (UZCorePatient — demographics, national ID, health card, passport)
├── Organization  (UzCoreOrganization — clinic code and name)
├── Encounter     (UZCoreEncounter — admission/discharge, bed-days, diagnosis, location)
├── Location      (UZCoreLocation — discharging department)
├── Practitioner[] (UZCorePractitioner — attending physician, head of dept, head nurse)
├── Condition[]   (main diagnosis + associated diagnoses, ICD-10 coded)
├── Observation[] (social history observations — UZCoreSocioeconomicObservation)
├── Observation[] (lab results — HIV, RW, Hepatitis B, Hepatitis C, TB)
├── Coverage      (payment type)
└── Provenance    (document signature)
```

### Example

See [Form 066 inpatient record example](Bundle-example-form-066-inpatient.html) for a complete FHIR document example.
