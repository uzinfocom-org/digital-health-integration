> **Mashina tarjimasi, inson tomonidan tekshirilishi zarur.** Ushbu sahifa ingliz tilidan sun'iy intellekt yordamida avtomatik tarjima qilingan va hali muharrir tomonidan tekshirilmagan. Har qanday nomuvofiqlikda asl inglizcha versiya ustuvor hisoblanadi.

Sick Leave RelatedPerson - bu mehnatga layoqatsizlik varaqasi tegishli bo'lgan, bemor bilan bog'liq shaxs: qonuniy vakil, vasiy, ota-ona, farzand, boshqa oila a'zosi yoki hujjatni rasmiylashtirish uchun ma'lumotlari zarur bo'lgan boshqa shaxs. Uning mavjudligi hujjat turi va mehnatga layoqatsizlik sababiga bog'liq. [Sick Leave CarePlan](StructureDefinition-sick-leave-careplan.html) unga `extension[relatedPerson]` dan havola qiladi. Moslikni [mehnatga layoqatsizlik varaqasi](sick-leave.html#family-care-the-person-cared-for-relatedperson) sahifasida ko'ring.

### Majburiy va qo'llab-quvvatlanadigan (Must Support) ma'lumot elementlari

Quyidagi elementlar doimo mavjud bo'lishi (majburiy) yoki ma'lumot mavjud bo'lganda qo'llab-quvvatlanishi ([Must Support](https://dhp.uz/fhir/core/must-support.html)) kerak. Bu inson o'qiy oladigan qisqacha mazmun; quyidagi rasmiy ko'rinishlar aniq kardinalliklar, turlar va terminologik bog'lanishlarni beradi.

#### Har bir Sick Leave RelatedPerson da bo'lishi shart

- `patient` dagi bemor;
- `name` dagi F.I.Sh.

#### Har bir Sick Leave RelatedPerson qo'llab-quvvatlashi kerak (Must Support)

- `gender` dagi jins, `other` bo'lganda `extension[otherGender]` bilan;
- `birthDate` dagi tug'ilgan sana.

### JSON ni tuzish

Misolni nusxalab moslashtiring - ko'rsatilgan har bir qiymat ushbu profil bo'yicha validatsiyadan o'tadi.

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

Namunaviy nusxa: [bemorning onasi](RelatedPerson-sick-leave-related-person-mother.html).
