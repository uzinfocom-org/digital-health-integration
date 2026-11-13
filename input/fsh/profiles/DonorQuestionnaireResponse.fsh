Profile: DonorQuestionnaireResponse
Parent: UZCoreQuestionnaireResponse
Id: donor-questionnaire-response
Title: "Donor QuestionnaireResponse"
Description: "Responses to the blood donor questionnaire, retaining source question identifiers and date, text or boolean answer types."
* ^status = #draft
* ^experimental = true
* questionnaire = "https://dhp.uz/fhir/integrations/Questionnaire/donor-questionnaire|1.0.0"
* subject 1..1
* subject only Reference(UZCorePatient)
* authored 1..1
* author only Reference(UZCorePractitioner or UZCorePractitionerRole or UZCorePatient or UZCoreRelatedPerson)
* source only Reference(UZCorePatient or UZCoreRelatedPerson)
* identifier.system 1..1
* item 1..* MS
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #closed
* item.item 0..0
* item.answer 0..1
* item.answer.value[x] 1..1
* item.answer.item 0..0
* item contains
    lastDonation 0..1 MS and
    lastDoctorVisit 0..1 MS and
    feelingWell 0..1 MS and
    chronicDisease 0..1 MS and
    regularTreatment 0..1 MS and
    medicationProcedures 0..1 MS and
    hepatitisBrucellosis 0..1 MS and
    advisedNotToDonate 0..1 MS and
    dentalProcedure 0..1 MS and
    malariaIllness 0..1 MS and
    vaccination 0..1 MS and
    recentSymptoms 0..1 MS and
    infectedContact 0..1 MS and
    unprotectedSex 0..1 MS and
    hospitalization 0..1 MS and
    surgery 0..1 MS and
    bloodTransfusion 0..1 MS and
    stiTreatment 0..1 MS and
    sharedNeedles 0..1 MS and
    tattooPiercing 0..1 MS and
    incarceration 0..1 MS and
    testingConsent 0..1 MS and
    additionalHealth 0..1 MS and
    declaration 0..1 MS and
    regularDonationPreference 0..1 MS and
    contactConsent 0..1 MS and
    fluArvi 0..1 MS and
    travelAbroad 0..1 MS and
    malariaExposure 0..1 MS and
    pregnancy 0..1 MS and
    postpartumMiscarriage 0..1 MS and
    breastfeeding 0..1 MS and
    alcoholMedicationDeclaration 0..1 MS

* item[lastDonation].linkId = "last-donation"
* item[lastDonation].answer.value[x] only date

* item[lastDoctorVisit].linkId = "last-doctor-visit"
* item[lastDoctorVisit].answer.value[x] only string

* item[feelingWell].linkId = "feeling-well"
* item[feelingWell].answer.value[x] only boolean

* item[chronicDisease].linkId = "chronic-disease"
* item[chronicDisease].answer.value[x] only boolean

* item[regularTreatment].linkId = "regular-treatment"
* item[regularTreatment].answer.value[x] only boolean

* item[medicationProcedures].linkId = "medication-procedures"
* item[medicationProcedures].answer.value[x] only boolean

* item[hepatitisBrucellosis].linkId = "hepatitis-brucellosis"
* item[hepatitisBrucellosis].answer.value[x] only boolean

* item[advisedNotToDonate].linkId = "advised-not-to-donate"
* item[advisedNotToDonate].answer.value[x] only boolean

* item[dentalProcedure].linkId = "dental-procedure"
* item[dentalProcedure].answer.value[x] only boolean

* item[malariaIllness].linkId = "malaria-illness"
* item[malariaIllness].answer.value[x] only boolean

* item[vaccination].linkId = "vaccination"
* item[vaccination].answer.value[x] only boolean

* item[recentSymptoms].linkId = "recent-symptoms"
* item[recentSymptoms].answer.value[x] only boolean

* item[infectedContact].linkId = "infected-contact"
* item[infectedContact].answer.value[x] only boolean

* item[unprotectedSex].linkId = "unprotected-sex"
* item[unprotectedSex].answer.value[x] only boolean

* item[hospitalization].linkId = "hospitalization"
* item[hospitalization].answer.value[x] only boolean

* item[surgery].linkId = "surgery"
* item[surgery].answer.value[x] only boolean

* item[bloodTransfusion].linkId = "blood-transfusion"
* item[bloodTransfusion].answer.value[x] only boolean

* item[stiTreatment].linkId = "sti-treatment"
* item[stiTreatment].answer.value[x] only boolean

* item[sharedNeedles].linkId = "shared-needles"
* item[sharedNeedles].answer.value[x] only boolean

* item[tattooPiercing].linkId = "tattoo-piercing"
* item[tattooPiercing].answer.value[x] only boolean

* item[incarceration].linkId = "incarceration"
* item[incarceration].answer.value[x] only boolean

* item[testingConsent].linkId = "testing-consent"
* item[testingConsent].answer.value[x] only boolean

* item[additionalHealth].linkId = "additional-health"
* item[additionalHealth].answer.value[x] only string

* item[declaration].linkId = "declaration"
* item[declaration].answer.value[x] only boolean

* item[regularDonationPreference].linkId = "regular-donation-preference"
* item[regularDonationPreference].answer.value[x] only boolean

* item[contactConsent].linkId = "contact-consent"
* item[contactConsent].answer.value[x] only boolean

* item[fluArvi].linkId = "flu-arvi"
* item[fluArvi].answer.value[x] only boolean

* item[travelAbroad].linkId = "travel-abroad"
* item[travelAbroad].answer.value[x] only boolean

* item[malariaExposure].linkId = "malaria-exposure"
* item[malariaExposure].answer.value[x] only boolean

* item[pregnancy].linkId = "pregnancy"
* item[pregnancy].answer.value[x] only boolean

* item[postpartumMiscarriage].linkId = "postpartum-miscarriage"
* item[postpartumMiscarriage].answer.value[x] only boolean

* item[breastfeeding].linkId = "breastfeeding"
* item[breastfeeding].answer.value[x] only boolean

* item[alcoholMedicationDeclaration].linkId = "alcohol-medication-declaration"
* item[alcoholMedicationDeclaration].answer.value[x] only boolean
