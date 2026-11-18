Instance: example-donor-questionnaire-response
InstanceOf: UZCoreQuestionnaireResponse
Usage: #example
Title: "Example UZ Core QuestionnaireResponse - Completed Donor Interview"
Description: "Synthetic completed donor questionnaire. A recent tattoo is reported for clinical review; no eligibility or deferral decision is calculated."
* language = #uz
* questionnaire = Canonical(donor-questionnaire)
* status = #completed
* subject = Reference(example-donor-questionnaire-patient)
* encounter = Reference(Encounter/example-donor-questionnaire-encounter)
* authored = "2026-11-13T09:30:00+05:00"
* author = Reference(example-donor-questionnaire-patient)
* source = Reference(example-donor-questionnaire-patient)
* item[+].linkId = "gender"
* item[=].text = "Jinsi"
* item[=].answer.valueCoding = $gender#female
* item[+].linkId = "last-donation"
* item[=].text = "Oxirgi marta qachon qon topshirgansiz?"
* item[=].answer.valueDate = "2026-01-10"
* item[+].linkId = "last-doctor-visit"
* item[=].text = "Oxirgi marta qachon shifokor qabulida bo‘lgansiz?"
* item[=].answer.valueDate = "2026-01-20"
* item[+].linkId = "last-doctor-visit-reason"
* item[=].text = "Shifokorga qaysi sababga ko‘ra murojaat qilgansiz?"
* item[=].answer.valueString = "Profilaktik ko‘rik."
* item[+].linkId = "feeling-well"
* item[=].text = "Bugun o‘zingizni yaxshi his qilyapsizmi?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "chronic-disease"
* item[=].text = "Sizda surunkali kasalliklar (masalan, epilepsiya, diabet, saraton yoki boshqa uzoq davom etadigan kasalliklar) bormi?"
* item[=].answer.valueBoolean = false
* item[+].linkId = "regular-treatment"
* item[=].text = "Hozirda muntazam davolanish kursini olayapsizmi?"
* item[=].answer.valueBoolean = false
* item[+].linkId = "medication-procedures"
* item[=].text = "Muntazam ravishda biror muolajadan o‘tasizmi yoki dori tabletkalarini qabul qilasizmi?"
* item[=].answer.valueBoolean = false
* item[+].linkId = "hepatitis-brucellosis"
* item[=].text = "Siz ilgari gepatit yoki brutsellyoz bilan kasallanganmisiz?"
* item[=].answer.valueBoolean = false
* item[+].linkId = "advised-not-to-donate"
* item[=].text = "Shifokor sizga ilgari qon topshirmaslikni tavsiya qilganmi?"
* item[=].answer.valueBoolean = false
* item[+].linkId = "dental-procedure"
* item[=].text = "So‘nggi vaqtlarda (oxirgi 2 hafta ichida) stomatologik muolajalar o‘tkazilganmi?"
* item[=].answer.valueBoolean = false
* item[+].linkId = "malaria-illness"
* item[=].text = "So‘nggi 3 hafta ichida bezgak bilan kasallanganmisiz?"
* item[=].answer.valueBoolean = false
* item[+].linkId = "vaccination"
* item[=].text = "So‘nggi bir oy ichida emlanganmisiz?"
* item[=].answer.valueBoolean = false
* item[+].linkId = "recent-symptoms"
* item[=].text = "So‘nggi 3 oy ichida tunda terlash, sababsiz vazn yo‘qotish, titroq, ich ketishi yoki limfa tugunlarining kattalashishi kuzatilganmi?"
* item[=].answer.valueBoolean = false
* item[+].linkId = "infected-contact"
* item[=].text = "Gepatit yoki OIV/OITS bilan kasallangan shaxs bilan aloqada bo‘lganmisiz?"
* item[=].answer.valueBoolean = false
* item[+].linkId = "unprotected-sex"
* item[=].text = "So‘nggi 6 oy ichida tasodifiy himoyalanmagan jinsiy aloqada bo‘lganmisiz?"
* item[=].answer.valueBoolean = false
* item[+].linkId = "hospitalization"
* item[=].text = "So‘nggi 6 oy ichida shifoxonaga yotqizilganmisiz?"
* item[=].answer.valueBoolean = false
* item[+].linkId = "surgery"
* item[=].text = "So‘nggi 6 oy ichida jarrohlik amaliyoti, tibbiy muolaja yoki endoskopik tekshiruvdan o‘tganmisiz?"
* item[=].answer.valueBoolean = false
* item[+].linkId = "blood-transfusion"
* item[=].text = "Sizga ilgari qon yoki uning tarkibiy qismlari quyilganmi?"
* item[=].answer.valueBoolean = false
* item[+].linkId = "sti-treatment"
* item[=].text = "Sifilis, gonoreya, xlamidioz, jinsiy a’zolardagi yaralar yoki gerpes kabi jinsiy yo‘l bilan yuqadigan infeksiyalardan davolanganmisiz?"
* item[=].answer.valueBoolean = false
* item[+].linkId = "shared-needles"
* item[=].text = "Umumiy ignalar, shpritslar yoki skarifikatorlardan foydalanganmisiz?"
* item[=].answer.valueBoolean = false
* item[+].linkId = "tattoo-piercing"
* item[=].text = "So‘nggi 6 oy ichida tatuirovka, pirsing yoki igna bilan davolash (akupunktura) muolajasini olganmisiz?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "incarceration"
* item[=].text = "Ozodlikdan mahrum etish joylarida bo‘lganmisiz?"
* item[=].answer.valueBoolean = false
* item[+].linkId = "testing-consent"
* item[=].text = "Qoningizni OIV/OITS, gepatit va sifilisga tekshirishga rozimisiz?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "additional-health"
* item[=].text = "Sog‘lig‘ingiz haqida yana nimalarni qo‘shimcha qilishingiz mumkin?"
* item[=].answer.valueString = "Qo‘shimcha ma’lumot yo‘q."
* item[+].linkId = "regular-donation-preference"
* item[=].text = "Muntazam ravishda qon topshirishni xohlaysizmi?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "contact-consent"
* item[=].text = "Kelgusida siz bilan bog‘lanishimiz mumkinmi?"
* item[=].answer.valueBoolean = true
* item[+].linkId = "flu-arvi"
* item[=].text = "So‘nggi vaqtlarda gripp, O‘RVI yoki angina bilan kasallanganmisiz?"
* item[=].answer.valueBoolean = false
* item[+].linkId = "travel-abroad"
* item[=].text = "So‘nggi 6 oy ichida chet elga safar qilganmisiz?"
* item[=].answer.valueBoolean = false
* item[+].linkId = "malaria-exposure"
* item[=].text = "So‘nggi 3 hafta ichida isitma kuzatildimi yoki bezgak xavfi mavjud hududlarga borganmisiz?"
* item[=].answer.valueBoolean = false
* item[+].linkId = "pregnancy"
* item[=].text = "Homiladormisiz?"
* item[=].answer.valueBoolean = false
* item[+].linkId = "postpartum-miscarriage"
* item[=].text = "So‘nggi 6 oy ichida tug‘ruq yoki homila tushishi bo‘lganmi?"
* item[=].answer.valueBoolean = false
* item[+].linkId = "breastfeeding"
* item[=].text = "Hozirda bolangizni emizyapsizmi?"
* item[=].answer.valueBoolean = false
* item[+].linkId = "alcohol-medication-declaration"
* item[=].text = "So‘nggi 48 soat ichida alkogol iste’mol qilmaganligimni va so‘nggi 72 soat ichida aspirin va analgetiklar qabul qilmaganligimni tasdiqlayman"
* item[=].answer.valueBoolean = true
* item[+].linkId = "declaration"
* item[=].text = "Ushbu savollarni va ularning berilish sababini tushunganingizni hamda ularga vijdonan javob berganingizni tasdiqlaysizmi?"
* item[=].answer.valueBoolean = true

Instance: example-donor-questionnaire-patient
InstanceOf: UZCorePatient
Usage: #example
Title: "Example UZ Core Patient - Donor Questionnaire"
Description: "Synthetic adult donor used by the donor questionnaire response example."
* language = #uz
* identifier[nationalId].value = "41204923333119"
* name.use = #official
* name.family = "Karimova"
* name.given = "Malika"
* gender = #female
* birthDate = "1992-04-12"

Instance: example-donor-questionnaire-deferral
InstanceOf: BloodDonorEligibilityFlag
Title: "Example Blood Donor Eligibility Flag - Deferral After the Donor Questionnaire"
Description: "Synthetic temporary deferral recorded by the clinician after reviewing the donor questionnaire, where the donor reported a recent tattoo. The workflow-reason extension carries the reason code. The 180-day period is example data, not a clinical recommendation."
Usage: #example
* language = #uz
* status = #active
* category = $flag-category#clinical
* extension[reason].valueCodeableReference.concept = DonorDeferralReasonCS#donrsn-0001-00001 "Tatuirovka, piercing yoki akupunktura"
* code = $blood-donor-eligibility-cs#blood-donation-deferred-temporary "Tibbiy sabablarga ko'ra qon donorligidan vaqtincha chetlatilgan"
* subject = Reference(Patient/example-donor-questionnaire-patient)
* encounter = Reference(Encounter/example-donor-questionnaire-encounter)
* author = Reference(PractitionerRole/example-practitionerrole)
* period.start = "2026-11-13T10:00:00+05:00"
* period.end = "2027-05-12T10:00:00+05:00"

Instance: example-donor-questionnaire-encounter
InstanceOf: UZCoreEncounter
Title: "Example UZ Core Encounter - Donor Interview Visit"
Description: "Donor visit in which the donor answered the questionnaire and the clinician recorded a deferral, so no blood was collected."
Usage: #example
* language = #uz
* status = #completed
* type[nationalType] = $encounter-type-cs#mserv-0001-00002 "Diagnostika"
* subject = Reference(Patient/example-donor-questionnaire-patient)
* actualPeriod.start = "2026-11-13T09:15:00+05:00"
* actualPeriod.end = "2026-11-13T10:15:00+05:00"
