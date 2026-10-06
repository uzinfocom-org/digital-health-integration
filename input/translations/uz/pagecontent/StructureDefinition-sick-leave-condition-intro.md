> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

Sick Leave Condition - bu mehnatga layoqatsizlik varaqasining tashxisi: DHP mehnatga layoqatsizlik varaqalari xizmati (API v3) `diagnosis` da yuboradigan dastlabki yoki yakuniy tashxis. Ularning har biri [Sick Leave CarePlan](StructureDefinition-sick-leave-careplan.html) `addresses[diagnosis]` dan havola qiladigan alohida Condition dir; ularni verifikatsiya holati farqlaydi. Moslikni [mehnatga layoqatsizlik varaqasi](sick-leave.html#recording-the-diagnoses-condition) sahifasida ko'ring.

### Majburiy va qo'llab-quvvatlanadigan (Must Support) ma'lumot elementlari

Quyidagi elementlar doimo mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi ([Must Support](https://dhp.uz/fhir/core/must-support.html)) kerak. Bu inson o'qiy oladigan qisqacha mazmun; quyidagi rasmiy ko'rinishlar aniq kardinalliklar, turlar va terminologik bog'lanishlarni beradi.

#### Har bir Sick Leave Condition da bo'lishi shart

- klinik holat: varaqa ochiq bo'lganda `active`, yopilgandan keyin `resolved`;
- verifikatsiya holati: dastlabki tashxis uchun `provisional`, yakuniy tashxis uchun `confirmed`;
- `code` dagi ICD-10 kodi;
- `subject` dagi bemor.

#### Har bir Sick Leave Condition qo'llab-quvvatlashi kerak (Must Support)

- `code.text` dagi tashxis nomi (API dagi `preliminaryDisplay` yoki `finalDisplay`);
- UZ Core Condition dan meros qolgan `onset[x]` va `recordedDate` dagi boshlanish va qayd etilgan sanalar.

### JSON ni bosqichma-bosqich tuzish

Misollardan birini nusxalab moslashtiring - ko'rsatilgan har bir qiymat ushbu profil bo'yicha validatsiyadan o'tadi.

#### Dastlabki tashxis

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

`code` [ICD10VS](ValueSet-icd-10-vs.html) ga, `verificationStatus` esa [SickLeaveDiagnosisStatusVS](ValueSet-sick-leave-diagnosis-status-vs.html) ga `required` bog'langan.

#### Yakuniy tashxis

Tashxis aniqlashtirilganda yakuniy tashxisni ikkinchi Condition sifatida yuboring va CarePlan dan ikkalasiga havola bering. Yakuniy tashxis dastlabkisi bilan bir xil bo'lsa, `confirmed` holatidagi bitta Condition yetarli.

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

Namunaviy nusxalar: uzaytirilgan varaqaning [dastlabki](Condition-sick-leave-extended-diagnosis-preliminary.html) va [yakuniy](Condition-sick-leave-extended-diagnosis-final.html) tashxisi, [oila a'zosini parvarish qilishdagi tashxis](Condition-sick-leave-family-care-diagnosis.html).
