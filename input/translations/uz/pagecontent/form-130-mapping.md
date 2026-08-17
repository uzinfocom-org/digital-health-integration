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

> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

# 130-shakl – Laboratoriya tekshiruvi natijalari

Ushbu sahifa **130-shakl (Laboratoriya tekshiruvi natijalari)** maydonlari va ularning FHIR resurslariga mosligini tavsiflaydi.

---

## Umumiy ma'lumot

130-shakl laboratoriya tekshiruvi natijalari va ularga tegishli ma'muriy ma'lumotlarni o'z ichiga oladi. Shakldagi ma'lumotlar **FHIR Document** ko'rinishidagi bir nechta FHIR resurslariga xaritalanadi va **Form130LaboratoryTestResultsComposition** profiliga mos keladi. Mavjud bo'lgan hollarda resurslar **UZ Core** profillariga muvofiq yaratiladi.

To'liq namunaviy hujjat uchun **130-shakl laboratoriya tekshiruvi natijalari namunasi**ga qarang.

---

## Maydonlar xaritasi

# UZ-130 Laboratoriya tekshiruvi natijalari – FHIR xaritasi

---

## Bemor ma'lumotlari

| UZ-130 | RU-130 | FHIR Path | Kod | Misol |
|--------|---------|-----------|------|--------|
| JShShIR | ПИНФЛ | Patient.identifier[nationalId].value | NI | 31234567890123 |
| Familiyasi | Фамилия | Patient.name.family | - | Tursunov |
| Ismi | Имя | Patient.name.given | - | Alisher |
| Tug'ilgan sana | Дата рождения | Patient.birthDate | - | 1990-04-12 |
| Jinsi | Пол | Patient.gender | AdministrativeGender | male |

---

## Laboratoriya buyurtmasi ma'lumotlari

| UZ-130 | RU-130 | FHIR Path | Kod | Misol |
|--------|---------|-----------|------|--------|
| Laboratoriya tekshiruvi | Лабораторное исследование | ServiceRequest.code | Mahalliy laboratoriya paneli | CBC panel |
| Buyurtma beruvchi shifokor | Направивший врач | ServiceRequest.requester | PractitionerRole | Karimov J. |
| Buyurtma bergan muassasa | Направившее учреждение | Organization.name | Organization | Yunusobod oilaviy poliklinikasi |

---

## Namuna (Specimen) ma'lumotlari

| UZ-130 | RU-130 | FHIR Path | Kod | Misol |
|--------|---------|-----------|------|--------|
| Namuna turi | Тип образца | Specimen.type | HL7 v2-0487 | Butun qon |
| Namuna olingan sana | Дата забора образца | Specimen.collection.collectedDateTime | - | 2026-01-20T09:00:00+05:00 |
| Namuna qabul qilingan sana | Дата получения образца | Specimen.receivedTime | - | 2026-01-20T09:05:00+05:00 |

---

## Umumiy qon tahlili (CBC) natijalari

| UZ-130 | RU-130 | FHIR Path | Kod | Misol |
|--------|---------|-----------|------|--------|
| Oq qon hujayralari (WBC) | Лейкоциты | Observation.valueQuantity | Mahalliy laboratoriya kodi | 7.2 ×10⁹/L |
| Neytrofillar (abs.) | Нейтрофилы (абс.) | Observation.valueQuantity | Mahalliy laboratoriya kodi | 4.2 ×10⁹/L |
| Eozinofillar (abs.) | Эозинофилы (абс.) | Observation.valueQuantity | Mahalliy laboratoriya kodi | 0.2 ×10⁹/L |
| Yetilmagan granulotsitlar (abs.) | Незрелые гранулоциты (абс.) | Observation.valueQuantity | Mahalliy laboratoriya kodi | 0.03 ×10⁹/L |
| Neytrofillar (%) | Нейтрофилы (%) | Observation.valueQuantity | Mahalliy laboratoriya kodi | 60 % |
| Limfotsitlar (%) | Лимфоциты (%) | Observation.valueQuantity | Mahalliy laboratoriya kodi | 30 % |
| Monotsitlar (%) | Моноциты (%) | Observation.valueQuantity | Mahalliy laboratoriya kodi | 7 % |
| Eozinofillar (%) | Эозинофилы (%) | Observation.valueQuantity | Mahalliy laboratoriya kodi | 2 % |
| Bazofillar (%) | Базофилы (%) | Observation.valueQuantity | Mahalliy laboratoriya kodi | 0.5 % |
| Yetilmagan granulotsitlar (%) | Незрелые гранулоциты (%) | Observation.valueQuantity | Mahalliy laboratoriya kodi | 0.5 % |
| Eritrotsitlar (RBC) | Эритроциты | Observation.valueQuantity | Mahalliy laboratoriya kodi | 4.5 ×10¹²/L |
| Gemoglobin | Гемоглобин | Observation.valueQuantity | Mahalliy laboratoriya kodi | 130 g/L |
| Rang ko'rsatkichi | Цветовой показатель | Observation.valueQuantity | Mahalliy laboratoriya kodi | 0.95 |
| Gematokrit | Гематокрит | Observation.valueQuantity | Mahalliy laboratoriya kodi | 40 % |
| MCV | MCV | Observation.valueQuantity | Mahalliy laboratoriya kodi | 90 fL |
| MCH | MCH | Observation.valueQuantity | Mahalliy laboratoriya kodi | 32 pg |
| MCHC | MCHC | Observation.valueQuantity | Mahalliy laboratoriya kodi | 340 g/L |
| RDW-CV | RDW-CV | Observation.valueQuantity | Mahalliy laboratoriya kodi | 13 % |
| RDW-SD | RDW-SD | Observation.valueQuantity | Mahalliy laboratoriya kodi | 42 fL |
| Trombotsitlar (PLT) | Тромбоциты | Observation.valueQuantity | Mahalliy laboratoriya kodi | 250 ×10⁹/L |
| MPV | MPV | Observation.valueQuantity | Mahalliy laboratoriya kodi | 7 fL |
| PDW | PDW | Observation.valueQuantity | Mahalliy laboratoriya kodi | 10 % |
| PCT | PCT | Observation.valueQuantity | Mahalliy laboratoriya kodi | 0.30 % |
| P-LCC | P-LCC | Observation.valueQuantity | Mahalliy laboratoriya kodi | 80 ×10⁹/L |
| P-LCR | P-LCR | Observation.valueQuantity | Mahalliy laboratoriya kodi | 25 % |
| NRBC (abs.) | NRBC (абс.) | Observation.valueQuantity | Mahalliy laboratoriya kodi | 0.01 ×10⁹/L |
| NRBC (%) | NRBC (%) | Observation.valueQuantity | Mahalliy laboratoriya kodi | 0.5 |
| Miyelotsitlar | Миелоциты | Observation.valueQuantity | Mahalliy laboratoriya kodi | 0 % |
| Metamiyelotsitlar | Метамиелоциты | Observation.valueQuantity | Mahalliy laboratoriya kodi | 0 % |
| Tayoqcha yadroli neytrofillar | Палочкоядерные нейтрофилы | Observation.valueQuantity | Mahalliy laboratoriya kodi | 0 % |
| Plazma hujayralari | Плазматические клетки | Observation.valueQuantity | Mahalliy laboratoriya kodi | 0 % |

---

## Mas'ul shaxslar

| UZ-130 | RU-130 | FHIR Path | Kod | Misol |
|--------|---------|-----------|------|--------|
| Yo'llagan shifokor | Направивший врач | PractitionerRole.practitioner | Practitioner | Karimov J. |
| Laboratoriya mutaxassisi | Лаборант | PractitionerRole.practitioner | Practitioner | Rasulova M. |

---

## Bundle tuzilmasi

130-shakl hujjati **Form130LaboratoryTestResultsComposition** profiliga mos keluvchi Composition resursini o'z ichiga olgan FHIR Bundle ko'rinishida taqdim etiladi.

```text
Bundle (document)
├── Composition (Form130LaboratoryTestResultsComposition)
├── Patient
├── Encounter
├── Organization[] (buyurtma bergan muassasa, laboratoriya)
├── Practitioner[]
├── PractitionerRole[] (yo'llagan shifokor, laboratoriya mutaxassisi)
├── ServiceRequest (laboratoriya buyurtmasi)
├── Specimen
├── DiagnosticReport
├── Observation[] (CBC laboratoriya natijalari)
└── Provenance (yozuv muallifi va kelib chiqishi)
```

## Misol

To'liq FHIR hujjati namunasi uchun [130-shakl laboratoriya tekshiruvi natijalari namunasi](Bundle-example-form-130-laboratory-test-results.html) ga qarang.