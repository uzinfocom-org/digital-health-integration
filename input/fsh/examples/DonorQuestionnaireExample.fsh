Instance: example-donor-questionnaire-response
InstanceOf: DonorQuestionnaireResponse
Usage: #example
Title: "Example Donor QuestionnaireResponse - Completed Donor Interview"
Description: "Synthetic completed donor questionnaire. A recent tattoo is reported for clinical review; no eligibility or deferral decision is calculated."
* language = #uz
* questionnaire = "https://dhp.uz/fhir/integrations/Questionnaire/donor-questionnaire|1.0.0"
* status = #completed
* subject = Reference(example-donor-questionnaire-patient)
* authored = "2026-11-13T09:30:00+05:00"
* author = Reference(example-donor-questionnaire-patient)
* source = Reference(example-donor-questionnaire-patient)
* item[lastDonation].text = "Oxirgi marta qachon qon topshirgansiz?"
* item[lastDonation].answer.valueDate = "2026-01-10"
* item[lastDoctorVisit].text = "Oxirgi marta qachon shifokor qabulida bo‘lgansiz? Qaysi sababga ko‘ra?"
* item[lastDoctorVisit].answer.valueString = "2026-yil yanvar oyida profilaktik ko‘rik."
* item[feelingWell].text = "Bugun o‘zingizni yaxshi his qilyapsizmi?"
* item[feelingWell].answer.valueBoolean = true
* item[chronicDisease].text = "Sizda surunkali kasalliklar (masalan, epilepsiya, diabet, saraton yoki boshqa uzoq davom etadigan kasalliklar) bormi?"
* item[chronicDisease].answer.valueBoolean = false
* item[regularTreatment].text = "Hozirda muntazam davolanish kursini olayapsizmi?"
* item[regularTreatment].answer.valueBoolean = false
* item[medicationProcedures].text = "Muntazam ravishda biror muolajadan o‘tasizmi yoki dori tabletkalarini qabul qilasizmi?"
* item[medicationProcedures].answer.valueBoolean = false
* item[hepatitisBrucellosis].text = "Siz ilgari gepatit yoki brutsellyoz bilan kasallanganmisiz?"
* item[hepatitisBrucellosis].answer.valueBoolean = false
* item[advisedNotToDonate].text = "Shifokor sizga ilgari qon topshirmaslikni tavsiya qilganmi?"
* item[advisedNotToDonate].answer.valueBoolean = false
* item[dentalProcedure].text = "So‘nggi vaqtlarda (oxirgi 2 hafta ichida) stomatologik muolajalar o‘tkazilganmi?"
* item[dentalProcedure].answer.valueBoolean = false
* item[malariaIllness].text = "So‘nggi 3 hafta ichida bezgak bilan kasallanganmisiz?"
* item[malariaIllness].answer.valueBoolean = false
* item[vaccination].text = "So‘nggi bir oy ichida emlanganmisiz?"
* item[vaccination].answer.valueBoolean = false
* item[recentSymptoms].text = "So‘nggi 3 oy ichida tunda terlash, sababsiz vazn yo‘qotish, titroq, ich ketishi yoki limfa tugunlarining kattalashishi kuzatilganmi?"
* item[recentSymptoms].answer.valueBoolean = false
* item[infectedContact].text = "Gepatit yoki OIV/OITS bilan kasallangan shaxs bilan aloqada bo‘lganmisiz?"
* item[infectedContact].answer.valueBoolean = false
* item[unprotectedSex].text = "So‘nggi 6 oy ichida tasodifiy himoyalanmagan jinsiy aloqada bo‘lganmisiz?"
* item[unprotectedSex].answer.valueBoolean = false
* item[hospitalization].text = "So‘nggi 6 oy ichida shifoxonaga yotqizilganmisiz?"
* item[hospitalization].answer.valueBoolean = false
* item[surgery].text = "So‘nggi 6 oy ichida jarrohlik amaliyoti, tibbiy muolaja yoki endoskopik tekshiruvdan o‘tganmisiz?"
* item[surgery].answer.valueBoolean = false
* item[bloodTransfusion].text = "Sizga ilgari qon yoki uning tarkibiy qismlari quyilganmi?"
* item[bloodTransfusion].answer.valueBoolean = false
* item[stiTreatment].text = "Sifilis, gonoreya, xlamidioz, jinsiy a’zolardagi yaralar yoki gerpes kabi jinsiy yo‘l bilan yuqadigan infeksiyalardan davolanganmisiz?"
* item[stiTreatment].answer.valueBoolean = false
* item[sharedNeedles].text = "Umumiy ignalar, shpritslar yoki skarifikatorlardan foydalanganmisiz?"
* item[sharedNeedles].answer.valueBoolean = false
* item[tattooPiercing].text = "So‘nggi 6 oy ichida tatuirovka, pirsing yoki igna bilan davolash (akupunktura) muolajasini olganmisiz?"
* item[tattooPiercing].answer.valueBoolean = true
* item[incarceration].text = "Ozodlikdan mahrum etish joylarida bo‘lganmisiz?"
* item[incarceration].answer.valueBoolean = false
* item[testingConsent].text = "Qoningizni OIV/OITS, gepatit va sifilisga tekshirishga rozimisiz?"
* item[testingConsent].answer.valueBoolean = true
* item[additionalHealth].text = "Sog‘lig‘ingiz haqida yana nimalarni qo‘shimcha qilishingiz mumkin?"
* item[additionalHealth].answer.valueString = "Qo‘shimcha ma’lumot yo‘q."
* item[declaration].text = "Ushbu savollarni va ularning berilish sababini tushunganingizni hamda ularga vijdonan javob berganingizni tasdiqlaysizmi?"
* item[declaration].answer.valueBoolean = true
* item[regularDonationPreference].text = "Muntazam ravishda qon topshirishni xohlaysizmi?"
* item[regularDonationPreference].answer.valueBoolean = true
* item[contactConsent].text = "Kelgusida siz bilan bog‘lanishimiz mumkinmi?"
* item[contactConsent].answer.valueBoolean = true
* item[fluArvi].text = "So‘nggi vaqtlarda gripp, O‘RVI yoki angina bilan kasallanganmisiz?"
* item[fluArvi].answer.valueBoolean = false
* item[travelAbroad].text = "So‘nggi 6 oy ichida chet elga safar qilganmisiz?"
* item[travelAbroad].answer.valueBoolean = false
* item[malariaExposure].text = "So‘nggi 3 hafta ichida isitma kuzatildimi yoki bezgak xavfi mavjud hududlarga borganmisiz?"
* item[malariaExposure].answer.valueBoolean = false
* item[pregnancy].text = "Homiladormisiz?"
* item[pregnancy].answer.valueBoolean = false
* item[postpartumMiscarriage].text = "So‘nggi 6 oy ichida tug‘ruq yoki homila tushishi bo‘lganmi?"
* item[postpartumMiscarriage].answer.valueBoolean = false
* item[breastfeeding].text = "Hozirda bolangizni emizyapsizmi?"
* item[breastfeeding].answer.valueBoolean = false
* item[alcoholMedicationDeclaration].text = "So'nggi 48 soat ichida alkogol iste'mol qilmaganligimni va so'nggi 72 soat ichida aspirin va analgetiklar qabul qilmaganligimni tasdiqlayman"
* item[alcoholMedicationDeclaration].answer.valueBoolean = true

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
