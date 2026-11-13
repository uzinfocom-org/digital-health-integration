Instance: donor-questionnaire
InstanceOf: DonorQuestionnaire
Usage: #definition
Title: "Donor Medical History Questionnaire"
Description: "Donor questionnaire with all 33 source questions in Uzbek, Russian and English. Answers support clinical review and do not automatically establish deferral."
* url = "https://dhp.uz/fhir/integrations/Questionnaire/donor-questionnaire"
* version = "1.0.0"
* name = "DonorQuestionnaire"
* language = #uz
* status = #draft
* experimental = true
* publisher = "Uzinfocom"
* subjectType = #Patient
* useContext[bloodProgram].code = $usage-context-type#program
* useContext[bloodProgram].valueCodeableConcept = IntegrationAreaCS#blood-service
* title = "Donor so‘rovnomasi"
* title.extension[$translation-extension][+]
  * extension[lang].valueCode = #ru
  * extension[content].valueString = "Анкета донора"
* title.extension[$translation-extension][+]
  * extension[lang].valueCode = #en
  * extension[content].valueString = "Donor questionnaire"
* description = "Qon topshirishdan oldin donorning anamnezi, roziligi va deklaratsiyalarini yig‘ish uchun so‘rovnoma."
* description.extension[$translation-extension][+]
  * extension[lang].valueCode = #ru
  * extension[content].valueString = "Анкета для сбора анамнеза, согласий и подтверждений донора перед донацией."
* description.extension[$translation-extension][+]
  * extension[lang].valueCode = #en
  * extension[content].valueString = "Questionnaire collecting donor medical history, consents and declarations before donation."

// When was your last blood donation?
* item[lastDonation].text = "Oxirgi marta qachon qon topshirgansiz?"
* item[lastDonation].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #ru
  * extension[content].valueString = "Когда вы в последний раз сдавали кровь?"
* item[lastDonation].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #en
  * extension[content].valueString = "When was your last blood donation?"
* item[lastDonation].required = false

// When was your last visit to a doctor? For what reason?
* item[lastDoctorVisit].text = "Oxirgi marta qachon shifokor qabulida bo‘lgansiz? Qaysi sababga ko‘ra?"
* item[lastDoctorVisit].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #ru
  * extension[content].valueString = "Когда в последний раз вы были на приёме у врача? По какой причине?"
* item[lastDoctorVisit].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #en
  * extension[content].valueString = "When was your last visit to a doctor? For what reason?"
* item[lastDoctorVisit].required = false

// Are you feeling well today?
* item[feelingWell].text = "Bugun o‘zingizni yaxshi his qilyapsizmi?"
* item[feelingWell].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #ru
  * extension[content].valueString = "Хорошо ли вы себя чувствуете сегодня?"
* item[feelingWell].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #en
  * extension[content].valueString = "Are you feeling well today?"
* item[feelingWell].required = false

// Do you have any chronic diseases (e.g. epilepsy, diabetes, cancer, or other long-term conditions)?
* item[chronicDisease].text = "Sizda surunkali kasalliklar (masalan, epilepsiya, diabet, saraton yoki boshqa uzoq davom etadigan kasalliklar) bormi?"
* item[chronicDisease].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #ru
  * extension[content].valueString = "Есть ли у вас хронические заболевания (например, эпилепсия, диабет, онкологические или другие длительные заболевания)?"
* item[chronicDisease].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #en
  * extension[content].valueString = "Do you have any chronic diseases (e.g. epilepsy, diabetes, cancer, or other long-term conditions)?"
* item[chronicDisease].required = false

// Are you currently receiving regular medical treatment?
* item[regularTreatment].text = "Hozirda muntazam davolanish kursini olayapsizmi?"
* item[regularTreatment].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #ru
  * extension[content].valueString = "Получаете ли вы в настоящее время регулярное лечение?"
* item[regularTreatment].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #en
  * extension[content].valueString = "Are you currently receiving regular medical treatment?"
* item[regularTreatment].required = false

// Do you regularly undergo any procedures or take any tablets/medicines?
* item[medicationProcedures].text = "Muntazam ravishda biror muolajadan o‘tasizmi yoki dori tabletkalarini qabul qilasizmi?"
* item[medicationProcedures].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #ru
  * extension[content].valueString = "Регулярно ли принимаете какие-либо процедуры или таблетки?"
* item[medicationProcedures].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #en
  * extension[content].valueString = "Do you regularly undergo any procedures or take any tablets/medicines?"
* item[medicationProcedures].required = false

// Have you ever had hepatitis or brucellosis?
* item[hepatitisBrucellosis].text = "Siz ilgari gepatit yoki brutsellyoz bilan kasallanganmisiz?"
* item[hepatitisBrucellosis].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #ru
  * extension[content].valueString = "Болели ли вы когда-либо гепатитом или бруцеллёзом?"
* item[hepatitisBrucellosis].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #en
  * extension[content].valueString = "Have you ever had hepatitis or brucellosis?"
* item[hepatitisBrucellosis].required = false

// Has a doctor ever advised you not to donate blood?
* item[advisedNotToDonate].text = "Shifokor sizga ilgari qon topshirmaslikni tavsiya qilganmi?"
* item[advisedNotToDonate].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #ru
  * extension[content].valueString = "Рекомендовал ли вам когда-либо врач не сдавать кровь?"
* item[advisedNotToDonate].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #en
  * extension[content].valueString = "Has a doctor ever advised you not to donate blood?"
* item[advisedNotToDonate].required = false

// Have you undergone any dental procedures recently (during the last 2 weeks)?
* item[dentalProcedure].text = "So‘nggi vaqtlarda (oxirgi 2 hafta ichida) stomatologik muolajalar o‘tkazilganmi?"
* item[dentalProcedure].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #ru
  * extension[content].valueString = "Проводились ли вам стоматологические процедуры за последнее время (в течение последних 2 недель)?"
* item[dentalProcedure].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #en
  * extension[content].valueString = "Have you undergone any dental procedures recently (during the last 2 weeks)?"
* item[dentalProcedure].required = false

// Have you had malaria during the last 3 weeks?
* item[malariaIllness].text = "So‘nggi 3 hafta ichida bezgak bilan kasallanganmisiz?"
* item[malariaIllness].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #ru
  * extension[content].valueString = "Болели ли малярией за последние 3 недели?"
* item[malariaIllness].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #en
  * extension[content].valueString = "Have you had malaria during the last 3 weeks?"
* item[malariaIllness].required = false

// Have you been vaccinated during the last month?
* item[vaccination].text = "So‘nggi bir oy ichida emlanganmisiz?"
* item[vaccination].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #ru
  * extension[content].valueString = "Делали ли вам прививки в течение последнего месяца?"
* item[vaccination].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #en
  * extension[content].valueString = "Have you been vaccinated during the last month?"
* item[vaccination].required = false

// During the last 3 months, have you experienced night sweats, unexplained weight loss, chills, diarrhoea, or enlarged lymph nodes?
* item[recentSymptoms].text = "So‘nggi 3 oy ichida tunda terlash, sababsiz vazn yo‘qotish, titroq, ich ketishi yoki limfa tugunlarining kattalashishi kuzatilganmi?"
* item[recentSymptoms].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #ru
  * extension[content].valueString = "Были ли у вас в течение последних 3 месяцев ночная потливость, необъяснимая потеря веса, озноб, диарея или увеличение лимфатических узлов?"
* item[recentSymptoms].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #en
  * extension[content].valueString = "During the last 3 months, have you experienced night sweats, unexplained weight loss, chills, diarrhoea, or enlarged lymph nodes?"
* item[recentSymptoms].required = false

// Have you been in contact with a person infected with hepatitis or HIV/AIDS?
* item[infectedContact].text = "Gepatit yoki OIV/OITS bilan kasallangan shaxs bilan aloqada bo‘lganmisiz?"
* item[infectedContact].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #ru
  * extension[content].valueString = "Были в контакте с человеком, заражённым гепатитом или ВИЧ/СПИД?"
* item[infectedContact].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #en
  * extension[content].valueString = "Have you been in contact with a person infected with hepatitis or HIV/AIDS?"
* item[infectedContact].required = false

// Have you had casual unprotected sexual contact during the last 6 months?
* item[unprotectedSex].text = "So‘nggi 6 oy ichida tasodifiy himoyalanmagan jinsiy aloqada bo‘lganmisiz?"
* item[unprotectedSex].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #ru
  * extension[content].valueString = "Были ли у вас случайные незащищённые половые контакты в течение последних 6 месяцев?"
* item[unprotectedSex].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #en
  * extension[content].valueString = "Have you had casual unprotected sexual contact during the last 6 months?"
* item[unprotectedSex].required = false

// Have you been hospitalized during the last 6 months?
* item[hospitalization].text = "So‘nggi 6 oy ichida shifoxonaga yotqizilganmisiz?"
* item[hospitalization].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #ru
  * extension[content].valueString = "За последние 6 месяцев: госпитализации?"
* item[hospitalization].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #en
  * extension[content].valueString = "Have you been hospitalized during the last 6 months?"
* item[hospitalization].required = false

// Have you undergone surgery, a medical intervention, or an endoscopic procedure during the last 6 months?
* item[surgery].text = "So‘nggi 6 oy ichida jarrohlik amaliyoti, tibbiy muolaja yoki endoskopik tekshiruvdan o‘tganmisiz?"
* item[surgery].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #ru
  * extension[content].valueString = "Переносили ли вы хирургическое вмешательство, медицинскую процедуру или эндоскопическое исследование в течение последних 6 месяцев?"
* item[surgery].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #en
  * extension[content].valueString = "Have you undergone surgery, a medical intervention, or an endoscopic procedure during the last 6 months?"
* item[surgery].required = false

// Have you ever received a blood transfusion or blood components?
* item[bloodTransfusion].text = "Sizga ilgari qon yoki uning tarkibiy qismlari quyilganmi?"
* item[bloodTransfusion].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #ru
  * extension[content].valueString = "Получали ли вы когда-либо переливание крови или её компонентов?"
* item[bloodTransfusion].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #en
  * extension[content].valueString = "Have you ever received a blood transfusion or blood components?"
* item[bloodTransfusion].required = false

// Have you been treated for sexually transmitted infections such as syphilis, gonorrhoea, chlamydia, genital ulcers, or herpes?
* item[stiTreatment].text = "Sifilis, gonoreya, xlamidioz, jinsiy a’zolardagi yaralar yoki gerpes kabi jinsiy yo‘l bilan yuqadigan infeksiyalardan davolanganmisiz?"
* item[stiTreatment].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #ru
  * extension[content].valueString = "Проходили лечение от венерических инфекций: сифилис, гонорея, хламидиоз, генитальные язвы, герпес?"
* item[stiTreatment].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #en
  * extension[content].valueString = "Have you been treated for sexually transmitted infections such as syphilis, gonorrhoea, chlamydia, genital ulcers, or herpes?"
* item[stiTreatment].required = false

// Have you used shared needles, syringes, or scarifiers?
* item[sharedNeedles].text = "Umumiy ignalar, shpritslar yoki skarifikatorlardan foydalanganmisiz?"
* item[sharedNeedles].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #ru
  * extension[content].valueString = "Использовали общие иглы, шприцы или скарификаторы?"
* item[sharedNeedles].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #en
  * extension[content].valueString = "Have you used shared needles, syringes, or scarifiers?"
* item[sharedNeedles].required = false

// Have you had a tattoo, piercing, or acupuncture during the last 6 months?
* item[tattooPiercing].text = "So‘nggi 6 oy ichida tatuirovka, pirsing yoki igna bilan davolash (akupunktura) muolajasini olganmisiz?"
* item[tattooPiercing].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #ru
  * extension[content].valueString = "За последние 6 месяцев: тату, пирсинг или иглоукалывание?"
* item[tattooPiercing].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #en
  * extension[content].valueString = "Have you had a tattoo, piercing, or acupuncture during the last 6 months?"
* item[tattooPiercing].required = false

// Have you been in places of detention or imprisonment?
* item[incarceration].text = "Ozodlikdan mahrum etish joylarida bo‘lganmisiz?"
* item[incarceration].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #ru
  * extension[content].valueString = "Были в местах лишения свободы?"
* item[incarceration].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #en
  * extension[content].valueString = "Have you been in places of detention or imprisonment?"
* item[incarceration].required = false

// Do you consent to testing your blood for HIV/AIDS, hepatitis, and syphilis?
* item[testingConsent].text = "Qoningizni OIV/OITS, gepatit va sifilisga tekshirishga rozimisiz?"
* item[testingConsent].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #ru
  * extension[content].valueString = "Даёте согласие на тестирование крови на ВИЧ/СПИД, гепатит, сифилис?"
* item[testingConsent].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #en
  * extension[content].valueString = "Do you consent to testing your blood for HIV/AIDS, hepatitis, and syphilis?"
* item[testingConsent].required = false

// What else can you add about your health?
* item[additionalHealth].text = "Sog‘lig‘ingiz haqida yana nimalarni qo‘shimcha qilishingiz mumkin?"
* item[additionalHealth].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #ru
  * extension[content].valueString = "Что ещё можете добавить о своём здоровье?"
* item[additionalHealth].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #en
  * extension[content].valueString = "What else can you add about your health?"
* item[additionalHealth].required = false

// Do you confirm that you understood these questions and the reason for asking them, and that you answered honestly?
* item[declaration].text = "Ushbu savollarni va ularning berilish sababini tushunganingizni hamda ularga vijdonan javob berganingizni tasdiqlaysizmi?"
* item[declaration].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #ru
  * extension[content].valueString = "Подтверждаете, что поняли данные вопросы, причину их задавания, и ответили добросовестно?"
* item[declaration].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #en
  * extension[content].valueString = "Do you confirm that you understood these questions and the reason for asking them, and that you answered honestly?"
* item[declaration].required = false

// Would you like to donate blood regularly?
* item[regularDonationPreference].text = "Muntazam ravishda qon topshirishni xohlaysizmi?"
* item[regularDonationPreference].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #ru
  * extension[content].valueString = "Хотите ли регулярно сдавать кровь?"
* item[regularDonationPreference].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #en
  * extension[content].valueString = "Would you like to donate blood regularly?"
* item[regularDonationPreference].required = false

// May we contact you in the future?
* item[contactConsent].text = "Kelgusida siz bilan bog‘lanishimiz mumkinmi?"
* item[contactConsent].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #ru
  * extension[content].valueString = "Можем ли мы связаться с Вами в будущем?"
* item[contactConsent].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #en
  * extension[content].valueString = "May we contact you in the future?"
* item[contactConsent].required = false

// Have you recently had influenza, an acute respiratory viral infection (ARVI), or a sore throat?
* item[fluArvi].text = "So‘nggi vaqtlarda gripp, O‘RVI yoki angina bilan kasallanganmisiz?"
* item[fluArvi].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #ru
  * extension[content].valueString = "В последнее время: грипп, ОРВИ или ангина?"
* item[fluArvi].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #en
  * extension[content].valueString = "Have you recently had influenza, an acute respiratory viral infection (ARVI), or a sore throat?"
* item[fluArvi].required = false

// Have you travelled abroad during the last 6 months?
* item[travelAbroad].text = "So‘nggi 6 oy ichida chet elga safar qilganmisiz?"
* item[travelAbroad].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #ru
  * extension[content].valueString = "За последние 6 месяцев выезжали ли вы за границу?"
* item[travelAbroad].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #en
  * extension[content].valueString = "Have you travelled abroad during the last 6 months?"
* item[travelAbroad].required = false

// During the last 3 weeks, have you had a fever or visited malaria-risk areas?
* item[malariaExposure].text = "So‘nggi 3 hafta ichida isitma kuzatildimi yoki bezgak xavfi mavjud hududlarga borganmisiz?"
* item[malariaExposure].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #ru
  * extension[content].valueString = "За последние 3 недели: температура или посещение регионов с малярией?"
* item[malariaExposure].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #en
  * extension[content].valueString = "During the last 3 weeks, have you had a fever or visited malaria-risk areas?"
* item[malariaExposure].required = false

// Are you pregnant?
* item[pregnancy].text = "Homiladormisiz?"
* item[pregnancy].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #ru
  * extension[content].valueString = "Вы беременны?"
* item[pregnancy].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #en
  * extension[content].valueString = "Are you pregnant?"
* item[pregnancy].required = false

// Have you given birth or had a miscarriage in the last 6 months?
* item[postpartumMiscarriage].text = "So‘nggi 6 oy ichida tug‘ruq yoki homila tushishi bo‘lganmi?"
* item[postpartumMiscarriage].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #ru
  * extension[content].valueString = "За последние 6 месяцев были роды или выкидыш?"
* item[postpartumMiscarriage].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #en
  * extension[content].valueString = "Have you given birth or had a miscarriage in the last 6 months?"
* item[postpartumMiscarriage].required = false

// Are you currently breastfeeding?
* item[breastfeeding].text = "Hozirda bolangizni emizyapsizmi?"
* item[breastfeeding].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #ru
  * extension[content].valueString = "В настоящее время кормите ли вы грудью?"
* item[breastfeeding].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #en
  * extension[content].valueString = "Are you currently breastfeeding?"
* item[breastfeeding].required = false

// I confirm that I have not consumed alcohol in the last 48 hours and have not taken aspirin or other analgesics in the last 72 hours.
* item[alcoholMedicationDeclaration].text = "So'nggi 48 soat ichida alkogol iste'mol qilmaganligimni va so'nggi 72 soat ichida aspirin va analgetiklar qabul qilmaganligimni tasdiqlayman"
* item[alcoholMedicationDeclaration].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #ru
  * extension[content].valueString = "Подтверждаю, что в течение последних 48 часов не употреблял(а) алкоголь, а в течение последних 72 часов не принимал(а) аспирин или другие анальгетики."
* item[alcoholMedicationDeclaration].text.extension[$translation-extension][+]
  * extension[lang].valueCode = #en
  * extension[content].valueString = "I confirm that I have not consumed alcohol in the last 48 hours and have not taken aspirin or other analgesics in the last 72 hours."
* item[alcoholMedicationDeclaration].required = false

// Source deferral reason categories; these codes label topics, not confirmed findings.
* item[lastDonation].code = DonorDeferralReasonCS#donrsn-0001-00006
* item[feelingWell].code = DonorDeferralReasonCS#donrsn-0001-00026
* item[chronicDisease].code = DonorDeferralReasonCS#donrsn-0001-00009
* item[regularTreatment].code = DonorDeferralReasonCS#donrsn-0001-00005
* item[medicationProcedures].code = DonorDeferralReasonCS#donrsn-0001-00005
* item[hepatitisBrucellosis].code = DonorDeferralReasonCS#donrsn-0001-00018
* item[dentalProcedure].code = DonorDeferralReasonCS#donrsn-0001-00010
* item[malariaIllness].code = DonorDeferralReasonCS#donrsn-0001-00011
* item[vaccination].code = DonorDeferralReasonCS#donrsn-0001-00019
* item[recentSymptoms].code = DonorDeferralReasonCS#donrsn-0001-00020
* item[infectedContact].code = DonorDeferralReasonCS#donrsn-0001-00021
* item[unprotectedSex].code = DonorDeferralReasonCS#donrsn-0001-00022
* item[surgery].code = DonorDeferralReasonCS#donrsn-0001-00012
* item[bloodTransfusion].code = DonorDeferralReasonCS#donrsn-0001-00003
* item[stiTreatment].code = DonorDeferralReasonCS#donrsn-0001-00023
* item[sharedNeedles].code = DonorDeferralReasonCS#donrsn-0001-00024
* item[tattooPiercing].code = DonorDeferralReasonCS#donrsn-0001-00001
* item[incarceration].code = DonorDeferralReasonCS#donrsn-0001-00025
* item[testingConsent].code = DonorDeferralReasonCS#donrsn-0001-00027
* item[declaration].code = DonorDeferralReasonCS#donrsn-0001-00028
* item[fluArvi].code = DonorDeferralReasonCS#donrsn-0001-00004
* item[malariaExposure].code = DonorDeferralReasonCS#donrsn-0001-00011
* item[pregnancy].code = DonorDeferralReasonCS#donrsn-0001-00007
* item[postpartumMiscarriage].code = DonorDeferralReasonCS#donrsn-0001-00017
* item[breastfeeding].code = DonorDeferralReasonCS#donrsn-0001-00008
