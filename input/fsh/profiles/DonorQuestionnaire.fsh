Profile: DonorQuestionnaire
Parent: UZCoreQuestionnaire
Id: donor-questionnaire
Title: "Donor Questionnaire"
Description: "Multilingual blood donor questionnaire collecting medical history, exposures, consent and declarations before donation."
* ^status = #draft
* ^experimental = true
* url 1..1
* subjectType 1..1
* subjectType = #Patient
* useContext ^slicing.discriminator.type = #value
* useContext ^slicing.discriminator.path = "code"
* useContext ^slicing.rules = #open
* useContext contains bloodProgram 1..1 MS
* useContext[bloodProgram].code = $usage-context-type#program
* useContext[bloodProgram].value[x] only CodeableConcept
* useContext[bloodProgram].valueCodeableConcept = IntegrationAreaCS#blood-service
* item 1..* MS
* item ^slicing.discriminator.type = #value
* item ^slicing.discriminator.path = "linkId"
* item ^slicing.rules = #closed
* item.item 0..0
* item.answerOption 0..0
* item.answerOption.value[x] only Coding or string
* item ^short = "Questions from the donor questionnaire specification"
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
* item[lastDonation].type = #date
* item[lastDonation].repeats = false
* item[lastDonation].answerOption.value[x] only Coding
* item[lastDonation].code 1..1
* item[lastDonation].code = DonorDeferralReasonCS#donrsn-0001-00006

* item[lastDoctorVisit].linkId = "last-doctor-visit"
* item[lastDoctorVisit].type = #text
* item[lastDoctorVisit].repeats = false
* item[lastDoctorVisit].answerOption.value[x] only Coding

* item[feelingWell].linkId = "feeling-well"
* item[feelingWell].type = #boolean
* item[feelingWell].repeats = false
* item[feelingWell].answerOption.value[x] only Coding
* item[feelingWell].code 1..1
* item[feelingWell].code = DonorDeferralReasonCS#donrsn-0001-00026

* item[chronicDisease].linkId = "chronic-disease"
* item[chronicDisease].type = #boolean
* item[chronicDisease].repeats = false
* item[chronicDisease].answerOption.value[x] only Coding
* item[chronicDisease].code 1..1
* item[chronicDisease].code = DonorDeferralReasonCS#donrsn-0001-00009

* item[regularTreatment].linkId = "regular-treatment"
* item[regularTreatment].type = #boolean
* item[regularTreatment].repeats = false
* item[regularTreatment].answerOption.value[x] only Coding
* item[regularTreatment].code 1..1
* item[regularTreatment].code = DonorDeferralReasonCS#donrsn-0001-00005

* item[medicationProcedures].linkId = "medication-procedures"
* item[medicationProcedures].type = #boolean
* item[medicationProcedures].repeats = false
* item[medicationProcedures].answerOption.value[x] only Coding
* item[medicationProcedures].code 1..1
* item[medicationProcedures].code = DonorDeferralReasonCS#donrsn-0001-00005

* item[hepatitisBrucellosis].linkId = "hepatitis-brucellosis"
* item[hepatitisBrucellosis].type = #boolean
* item[hepatitisBrucellosis].repeats = false
* item[hepatitisBrucellosis].answerOption.value[x] only Coding
* item[hepatitisBrucellosis].code 1..1
* item[hepatitisBrucellosis].code = DonorDeferralReasonCS#donrsn-0001-00018

* item[advisedNotToDonate].linkId = "advised-not-to-donate"
* item[advisedNotToDonate].type = #boolean
* item[advisedNotToDonate].repeats = false
* item[advisedNotToDonate].answerOption.value[x] only Coding

* item[dentalProcedure].linkId = "dental-procedure"
* item[dentalProcedure].type = #boolean
* item[dentalProcedure].repeats = false
* item[dentalProcedure].answerOption.value[x] only Coding
* item[dentalProcedure].code 1..1
* item[dentalProcedure].code = DonorDeferralReasonCS#donrsn-0001-00010

* item[malariaIllness].linkId = "malaria-illness"
* item[malariaIllness].type = #boolean
* item[malariaIllness].repeats = false
* item[malariaIllness].answerOption.value[x] only Coding
* item[malariaIllness].code 1..1
* item[malariaIllness].code = DonorDeferralReasonCS#donrsn-0001-00011

* item[vaccination].linkId = "vaccination"
* item[vaccination].type = #boolean
* item[vaccination].repeats = false
* item[vaccination].answerOption.value[x] only Coding
* item[vaccination].code 1..1
* item[vaccination].code = DonorDeferralReasonCS#donrsn-0001-00019

* item[recentSymptoms].linkId = "recent-symptoms"
* item[recentSymptoms].type = #boolean
* item[recentSymptoms].repeats = false
* item[recentSymptoms].answerOption.value[x] only Coding
* item[recentSymptoms].code 1..1
* item[recentSymptoms].code = DonorDeferralReasonCS#donrsn-0001-00020

* item[infectedContact].linkId = "infected-contact"
* item[infectedContact].type = #boolean
* item[infectedContact].repeats = false
* item[infectedContact].answerOption.value[x] only Coding
* item[infectedContact].code 1..1
* item[infectedContact].code = DonorDeferralReasonCS#donrsn-0001-00021

* item[unprotectedSex].linkId = "unprotected-sex"
* item[unprotectedSex].type = #boolean
* item[unprotectedSex].repeats = false
* item[unprotectedSex].answerOption.value[x] only Coding
* item[unprotectedSex].code 1..1
* item[unprotectedSex].code = DonorDeferralReasonCS#donrsn-0001-00022

* item[hospitalization].linkId = "hospitalization"
* item[hospitalization].type = #boolean
* item[hospitalization].repeats = false
* item[hospitalization].answerOption.value[x] only Coding

* item[surgery].linkId = "surgery"
* item[surgery].type = #boolean
* item[surgery].repeats = false
* item[surgery].answerOption.value[x] only Coding
* item[surgery].code 1..1
* item[surgery].code = DonorDeferralReasonCS#donrsn-0001-00012

* item[bloodTransfusion].linkId = "blood-transfusion"
* item[bloodTransfusion].type = #boolean
* item[bloodTransfusion].repeats = false
* item[bloodTransfusion].answerOption.value[x] only Coding
* item[bloodTransfusion].code 1..1
* item[bloodTransfusion].code = DonorDeferralReasonCS#donrsn-0001-00003

* item[stiTreatment].linkId = "sti-treatment"
* item[stiTreatment].type = #boolean
* item[stiTreatment].repeats = false
* item[stiTreatment].answerOption.value[x] only Coding
* item[stiTreatment].code 1..1
* item[stiTreatment].code = DonorDeferralReasonCS#donrsn-0001-00023

* item[sharedNeedles].linkId = "shared-needles"
* item[sharedNeedles].type = #boolean
* item[sharedNeedles].repeats = false
* item[sharedNeedles].answerOption.value[x] only Coding
* item[sharedNeedles].code 1..1
* item[sharedNeedles].code = DonorDeferralReasonCS#donrsn-0001-00024

* item[tattooPiercing].linkId = "tattoo-piercing"
* item[tattooPiercing].type = #boolean
* item[tattooPiercing].repeats = false
* item[tattooPiercing].answerOption.value[x] only Coding
* item[tattooPiercing].code 1..1
* item[tattooPiercing].code = DonorDeferralReasonCS#donrsn-0001-00001

* item[incarceration].linkId = "incarceration"
* item[incarceration].type = #boolean
* item[incarceration].repeats = false
* item[incarceration].answerOption.value[x] only Coding
* item[incarceration].code 1..1
* item[incarceration].code = DonorDeferralReasonCS#donrsn-0001-00025

* item[testingConsent].linkId = "testing-consent"
* item[testingConsent].type = #boolean
* item[testingConsent].repeats = false
* item[testingConsent].answerOption.value[x] only Coding
* item[testingConsent].code 1..1
* item[testingConsent].code = DonorDeferralReasonCS#donrsn-0001-00027

* item[additionalHealth].linkId = "additional-health"
* item[additionalHealth].type = #text
* item[additionalHealth].repeats = false
* item[additionalHealth].answerOption.value[x] only Coding

* item[declaration].linkId = "declaration"
* item[declaration].type = #boolean
* item[declaration].repeats = false
* item[declaration].answerOption.value[x] only Coding
* item[declaration].code 1..1
* item[declaration].code = DonorDeferralReasonCS#donrsn-0001-00028

* item[regularDonationPreference].linkId = "regular-donation-preference"
* item[regularDonationPreference].type = #boolean
* item[regularDonationPreference].repeats = false
* item[regularDonationPreference].answerOption.value[x] only Coding

* item[contactConsent].linkId = "contact-consent"
* item[contactConsent].type = #boolean
* item[contactConsent].repeats = false
* item[contactConsent].answerOption.value[x] only Coding

* item[fluArvi].linkId = "flu-arvi"
* item[fluArvi].type = #boolean
* item[fluArvi].repeats = false
* item[fluArvi].answerOption.value[x] only Coding
* item[fluArvi].code 1..1
* item[fluArvi].code = DonorDeferralReasonCS#donrsn-0001-00004

* item[travelAbroad].linkId = "travel-abroad"
* item[travelAbroad].type = #boolean
* item[travelAbroad].repeats = false
* item[travelAbroad].answerOption.value[x] only Coding

* item[malariaExposure].linkId = "malaria-exposure"
* item[malariaExposure].type = #boolean
* item[malariaExposure].repeats = false
* item[malariaExposure].answerOption.value[x] only Coding
* item[malariaExposure].code 1..1
* item[malariaExposure].code = DonorDeferralReasonCS#donrsn-0001-00011

* item[pregnancy].linkId = "pregnancy"
* item[pregnancy].type = #boolean
* item[pregnancy].repeats = false
* item[pregnancy].answerOption.value[x] only Coding
* item[pregnancy].code 1..1
* item[pregnancy].code = DonorDeferralReasonCS#donrsn-0001-00007

* item[postpartumMiscarriage].linkId = "postpartum-miscarriage"
* item[postpartumMiscarriage].type = #boolean
* item[postpartumMiscarriage].repeats = false
* item[postpartumMiscarriage].answerOption.value[x] only Coding
* item[postpartumMiscarriage].code 1..1
* item[postpartumMiscarriage].code = DonorDeferralReasonCS#donrsn-0001-00017

* item[breastfeeding].linkId = "breastfeeding"
* item[breastfeeding].type = #boolean
* item[breastfeeding].repeats = false
* item[breastfeeding].answerOption.value[x] only Coding
* item[breastfeeding].code 1..1
* item[breastfeeding].code = DonorDeferralReasonCS#donrsn-0001-00008

* item[alcoholMedicationDeclaration].linkId = "alcohol-medication-declaration"
* item[alcoholMedicationDeclaration].type = #boolean
* item[alcoholMedicationDeclaration].repeats = false
* item[alcoholMedicationDeclaration].answerOption.value[x] only Coding
