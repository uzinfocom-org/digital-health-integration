Sakkizta majburiy bo'limning kardinalligi `1..1` bo'lib qoladi.
`medicalAndObstetricHistory`, `currentPregnancy`, `obstetricExamination`,
`laborCourse`, `newbornDeliveryRecord` va `postpartumPeriod` klinik bo'limlarida
yozuvlar bo'lmasligi mumkin (`entry 0..*`). Bunday holda `section.emptyReason`
hamda `section.text` dagi izoh majburiy (`form096-empty-section` invarianti).
Bo'lim sarlavhasi va kodi majburiyligicha qoladi.

Izoh bo'limning mazkur holatga tegishli emasligini (masalan, gospitalizatsiya
tug'ruqsiz yakunlanganini) manba tizimida ma'lumot yo'qligidan (masalan, DMED da
tug'ruqdan keyingi kuzatuvlar hali qayd etilmaganidan) ajratishi kerak. Ma'lumot
yo'qligi tekshiruv natijasi me'yorda ekanini yoki asoratlar yo'qligi
tasdiqlanganini anglatmaydi. Kardinallik talabini bajarish uchun soxta klinik
resurslar yaratish mumkin emas.

Yozuvlari bor bo'lim bir vaqtning o'zida `emptyReason` ni saqlay olmaydi — bu
FHIR ning meros olingan `cmp-2` qoidasi bilan taqiqlanadi. Bo'sh bo'lim `cmp-1`
qoidasini bajarishi uchun matnni ham saqlashi kerak; faqat `emptyReason` yetarli emas.

`admissionInformation` va `responsiblePersons` bo'limlarida kamida bitta yozuv
talab qilinadi. `Composition.author` majburiyligicha qoladi, `Composition.status`
esa `final` sifatida belgilangan. Ushbu tuzilmaviy qoidalar manba tizimidagi
shaklning rasmiy almashuvga tayyorligini tekshirish o'rnini bosmaydi.

### Yangi tug'ilgan chaqaloqni identifikatsiyalash va kuzatuvlar

[096-shakl integratsiya hujjati](https://wiki.dhp.uz/doc/integration-096-B4wPNidWqJ)
almashuv qoidalarini belgilaydi. Moslashtirish jadvali ushbu hujjatga muvofiq
yuritiladi va talablarni kuzatish uchun xizmat qiladi.

Har bir chaqaloq, JShShIR hali mavjud bo'lmasa ham, hujjat Bundle tarkibiga
alohida `UZCorePatient` sifatida kiritiladi. DMED dagi chaqaloq tibbiy karta
raqami `Patient.identifier[healthCardId].value` ga yoziladi: system —
`https://dhp.uz/fhir/core/sid/pid/uz/hc`, type —
`http://terminology.hl7.org/CodeSystem/v2-0203` tizimidagi `HC`, use — `official`.
UZ Core dagi mavjud identifikator kesimi ishlatiladi; yangi Patient profili
yoki identifikator terminologiyasi talab etilmaydi.

Karta raqami chaqaloqning o'z gospitalizatsiyasi uchun
`GET /api/mis/v2/hospitalizations/{child_hospitalization_id}` javobidagi
`data.patient.number_med_card` da tekshirildi. Chaqaloq bemori DMED dagi ushbu
gospitalizatsiya bilan bog'lanish orqali topiladi; bu onaning
`newborn_children[*]` massivida ichki patient selektori mavjudligini tasdiqlamaydi.
HC nomlar makonida karta raqami o'rniga gospitalizatsiya ID si, chaqaloq yozuvi
ID si, Patient ID si yoki UUID ni qo'yish mumkin emas. Yuboruvchi HC qiymatining
shu makonda barqarorligi va noyobligini ta'minlashi kerak; karta raqami bo'lmasa,
muqobil identifikator kelishilishi lozim.

Individual kuzatuvlarning `subject` maydoni tegishli chaqaloqqa, `encounter`
esa onaning gospitalizatsiyasiga havola qiladi. Tug'ilish vaqti
`effectiveDateTime` da beriladi. Vazn (LOINC `8339-4`, UCUM `g`), tug'ilish
natijasi (LOINC `69043-8`) va birinchi daqiqadagi Apgar bahosi (LOINC `9272-6`,
`valueInteger`) chaqaloq kuzatuvining komponentlari sifatida uzatiladi.
Umumiy sonlar onaga tegishli bo'lib, `component.valueInteger` orqali beriladi.

097-shaklda chaqaloqning shu identifikatsiyasi qayta ishlatiladi. JShShIR paydo
bo'lgach, HC saqlangan holda shu bemorga `identifier[nationalId]` qo'shiladi.
Adapter DHP dagi mavjud bemorni topishi yoki kelishilgan ro'yxatga olish
jarayonidan foydalanishi, qayta yuborishlar va keyingi shakllar uchun bog'lanishni
saqlashi kerak. Identifikatorning o'zi Patient yaratish yoki dublikatlarni
oldini olish API sini belgilamaydi. `Bundle.entry.fullUrl` va `Resource.id` havola
kalitlari bo'lib, biznes identifikatordan farq qiladi.
