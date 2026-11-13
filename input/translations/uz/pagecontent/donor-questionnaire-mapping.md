> Bu inglizcha sahifaning mashina tarjimasi.

### Donor so‘rovnomasi maydonlari mosligi

[Source spreadsheet](https://docs.google.com/spreadsheets/d/1SFVk1U3Z4mQ-SYf6bX28hfKYHE3UL2Rz2bMEyQDzPeI/edit).

Jadval manbadagi sabab, taklif etilgan chetlatish turi va muddatlarni saqlaydi. Bu ma’lumotnoma mosligi bo‘lib, avtomatik ruxsat qoidalari emas. Surunkali kasallik yoki aloqa haqidagi umumiy savollar umrbod chetlatishni belgilamaydi. Tekshiruvga rozilik bermaslik va deklaratsiyani tasdiqlamaslik ma’muriy to‘xtatish shartlaridir. Manbada stomatologik muolajadan keyingi muddatlar farq qiladi: 2 hafta va 90 kun. Alkogol va dorilar haqidagi qo‘shma bayonotga bitta sabab kodi mos kelmaydi. Avtomatik ajratish, muddat hisoblash yoki chetlatishni tasniflash amalga oshirilmagan.

The question code is stored in `Questionnaire.item.code` from [DonorDeferralReasonCS](CodeSystem-donor-deferral-reason-cs.html). The proposed type codes refer to [DonorDeferralTypeCS](CodeSystem-donor-deferral-type-cs.html): `tmpdf-0001-00001` / `lldf-0001-00001`. They are source guidance and are not response answers.

| linkId | Question | Answer type | Reason code | Source deferral type | Source days |
|---|---|---|---|---|---|
| last-donation | Oxirgi marta qachon qon topshirgansiz? | date | #donrsn-0001-00006 | #tmpdf-0001-00001 | 180 |
| last-doctor-visit | Oxirgi marta qachon shifokor qabulida bo‘lgansiz? Qaysi sababga ko‘ra? | text | — | — | — |
| feeling-well | Bugun o‘zingizni yaxshi his qilyapsizmi? | boolean | #donrsn-0001-00026 | #tmpdf-0001-00001 | 0 |
| chronic-disease | Sizda surunkali kasalliklar (masalan, epilepsiya, diabet, saraton yoki boshqa uzoq davom etadigan kasalliklar) bormi? | boolean | #donrsn-0001-00009 | #lldf-0001-00001 | — |
| regular-treatment | Hozirda muntazam davolanish kursini olayapsizmi? | boolean | #donrsn-0001-00005 | — | 14 |
| medication-procedures | Muntazam ravishda biror muolajadan o‘tasizmi yoki dori tabletkalarini qabul qilasizmi? | boolean | #donrsn-0001-00005 | — | 14 |
| hepatitis-brucellosis | Siz ilgari gepatit yoki brutsellyoz bilan kasallanganmisiz? | boolean | #donrsn-0001-00018 | #lldf-0001-00001 | — |
| advised-not-to-donate | Shifokor sizga ilgari qon topshirmaslikni tavsiya qilganmi? | boolean | — | — | — |
| dental-procedure | So‘nggi vaqtlarda (oxirgi 2 hafta ichida) stomatologik muolajalar o‘tkazilganmi? | boolean | #donrsn-0001-00010 | #tmpdf-0001-00001 | 90 |
| malaria-illness | So‘nggi 3 hafta ichida bezgak bilan kasallanganmisiz? | boolean | #donrsn-0001-00011 | — | 90 |
| vaccination | So‘nggi bir oy ichida emlanganmisiz? | boolean | #donrsn-0001-00019 | #tmpdf-0001-00001 | 30 |
| recent-symptoms | So‘nggi 3 oy ichida tunda terlash, sababsiz vazn yo‘qotish, titroq, ich ketishi yoki limfa tugunlarining kattalashishi kuzatilganmi? | boolean | #donrsn-0001-00020 | — | 90 |
| infected-contact | Gepatit yoki OIV/OITS bilan kasallangan shaxs bilan aloqada bo‘lganmisiz? | boolean | #donrsn-0001-00021 | — | — |
| unprotected-sex | So‘nggi 6 oy ichida tasodifiy himoyalanmagan jinsiy aloqada bo‘lganmisiz? | boolean | #donrsn-0001-00022 | #tmpdf-0001-00001 | 180 |
| hospitalization | So‘nggi 6 oy ichida shifoxonaga yotqizilganmisiz? | boolean | — | — | — |
| surgery | So‘nggi 6 oy ichida jarrohlik amaliyoti, tibbiy muolaja yoki endoskopik tekshiruvdan o‘tganmisiz? | boolean | #donrsn-0001-00012 | #tmpdf-0001-00001 | 180 |
| blood-transfusion | Sizga ilgari qon yoki uning tarkibiy qismlari quyilganmi? | boolean | #donrsn-0001-00003 | #tmpdf-0001-00001 | 180 |
| sti-treatment | Sifilis, gonoreya, xlamidioz, jinsiy a’zolardagi yaralar yoki gerpes kabi jinsiy yo‘l bilan yuqadigan infeksiyalardan davolanganmisiz? | boolean | #donrsn-0001-00023 | — | 180 |
| shared-needles | Umumiy ignalar, shpritslar yoki skarifikatorlardan foydalanganmisiz? | boolean | #donrsn-0001-00024 | — | 180 |
| tattoo-piercing | So‘nggi 6 oy ichida tatuirovka, pirsing yoki igna bilan davolash (akupunktura) muolajasini olganmisiz? | boolean | #donrsn-0001-00001 | #tmpdf-0001-00001 | 180 |
| incarceration | Ozodlikdan mahrum etish joylarida bo‘lganmisiz? | boolean | #donrsn-0001-00025 | — | 180 |
| testing-consent | Qoningizni OIV/OITS, gepatit va sifilisga tekshirishga rozimisiz? | boolean | #donrsn-0001-00027 | — | 0 |
| additional-health | Sog‘lig‘ingiz haqida yana nimalarni qo‘shimcha qilishingiz mumkin? | text | — | — | — |
| declaration | Ushbu savollarni va ularning berilish sababini tushunganingizni hamda ularga vijdonan javob berganingizni tasdiqlaysizmi? | boolean | #donrsn-0001-00028 | — | 0 |
| regular-donation-preference | Muntazam ravishda qon topshirishni xohlaysizmi? | boolean | — | — | — |
| contact-consent | Kelgusida siz bilan bog‘lanishimiz mumkinmi? | boolean | — | — | — |
| flu-arvi | So‘nggi vaqtlarda gripp, O‘RVI yoki angina bilan kasallanganmisiz? | boolean | #donrsn-0001-00004 | #tmpdf-0001-00001 | 30 |
| travel-abroad | So‘nggi 6 oy ichida chet elga safar qilganmisiz? | boolean | — | — | — |
| malaria-exposure | So‘nggi 3 hafta ichida isitma kuzatildimi yoki bezgak xavfi mavjud hududlarga borganmisiz? | boolean | #donrsn-0001-00011 | — | 90 |
| pregnancy | Homiladormisiz? | boolean | #donrsn-0001-00007 | — | — |
| postpartum-miscarriage | So‘nggi 6 oy ichida tug‘ruq yoki homila tushishi bo‘lganmi? | boolean | #donrsn-0001-00017 | — | — |
| breastfeeding | Hozirda bolangizni emizyapsizmi? | boolean | #donrsn-0001-00008 | — | — |
| alcohol-medication-declaration | So'nggi 48 soat ichida alkogol iste'mol qilmaganligimni va so'nggi 72 soat ichida aspirin va analgetiklar qabul qilmaganligimni tasdiqlayman | boolean | — | — | — |
