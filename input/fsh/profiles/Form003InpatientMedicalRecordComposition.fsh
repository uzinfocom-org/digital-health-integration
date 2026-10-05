Profile: Form003InpatientMedicalRecordComposition
Parent: Composition
Id: form-003-inpatient-medical-record-composition
Title: "Form 003 - Inpatient Medical Record Card Composition"
Description: "Composition profile for Form 003 (Statsionar bemorning tibbiy kartasi / Медицинская карта стационарного больного). Section order follows the paper form; entries reference UZ Core profiles per the CHR-003 FHIR mapping."

* identifier 1..*
* status = #final
* type = $composition-type-cs#emdoc-0010-0003 "Patient Medical Record №"
* category 1..1
* category = $document-category-cs#form-003 "Patient medical record"

* subject 1..1
* subject only Reference(UZCorePatient)

* encounter 1..1
* encounter only Reference(UZCoreEncounter)

* author 1..*
* author only Reference(UZCorePractitionerRole)

// Rows 41, 62, 64, 118-121, 124, 127, 130-135, 153-155 (signatures / attesting
// officers): the persons are listed in the responsiblePersons section as
// PractitionerRole references, and each signature is a separate Provenance
// resource in the document Bundle. Composition.attester is left unconstrained,
// matching Form 066 / 066-1 / 097 / 130 / 011.

* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open

* section contains
    administrativeInformation 1..1 and
    personalInformation 1..1 and
    socioeconomicInformation 0..1 and
    admissionInformation 1..1 and
    admissionScreening 0..1 and
    primaryExamination 1..1 and
    examinationPlan 0..1 and
    diagnosticResults 0..1 and
    departmentExamination 0..* and
    finalDiagnosis 1..1 and
    surgicalProcedures 0..1 and
    medicationSheet 0..1 and
    procedureSheet 0..1 and
    temperatureChart 0..1 and
    clinicalCourse 0..1 and
    hospitalizationSummary 1..1 and
    treatmentOutcome 1..1 and
    temporaryDisability 0..1 and
    postmortemConclusion 0..1 and
    responsiblePersons 1..1

// ---------------------------------------------------------------------
// Administrative information - source rows 2, 4-11
// Organization (institution), Encounter (admission/discharge, bed-days),
// Location (ward, room, transferred ward)
// ---------------------------------------------------------------------
* section[administrativeInformation].title 1..1
* section[administrativeInformation].code 1..1
* section[administrativeInformation].code = form-003-section-cs#administrative-information
* section[administrativeInformation].entry 1..*
* section[administrativeInformation].entry only Reference(Organization or UZCoreEncounter or UZCoreLocation)

// ---------------------------------------------------------------------
// Personal information - source rows 12-23, 25-26
// Patient (name, birthDate, gender, address), Observation (blood group,
// Rh, transport mobility, admission height/weight/temperature),
// AllergyIntolerance (drug reaction), RelatedPerson (next of kin)
// ---------------------------------------------------------------------
* section[personalInformation].title 1..1
* section[personalInformation].code 1..1
* section[personalInformation].code = $loinc#LP36348-8 "Patient Information"
* section[personalInformation].entry 1..*
* section[personalInformation].entry only Reference(UZCorePatient or UZCoreObservation or UZCoreAllergyIntolerance or UZCoreRelatedPerson)

// ---------------------------------------------------------------------
// Socioeconomic information - source rows 27-32a
// One UZCoreSocioeconomicObservation per recorded variant (workplace,
// occupation, education, child institution, disability type/level,
// war-disability status)
// ---------------------------------------------------------------------
* section[socioeconomicInformation].title 1..1
* section[socioeconomicInformation].code 1..1
* section[socioeconomicInformation].code = $loinc#29762-2 "Social history note"
* section[socioeconomicInformation].entry 1..*
* section[socioeconomicInformation].entry only Reference(UZCoreSocioeconomicObservation)

// ---------------------------------------------------------------------
// Admission information - source rows 33-41, 36a, 71
// Organization (referring facility), Encounter (priority, admitSource),
// Observation (arrived by ambulance, onset-to-admission delay),
// Condition (referral / admission-department / preliminary diagnosis)
// ---------------------------------------------------------------------
* section[admissionInformation].title 1..1
* section[admissionInformation].code 1..1
* section[admissionInformation].code = $loinc#LP74442-2 "Admission Information"
* section[admissionInformation].entry 1..*
* section[admissionInformation].entry only Reference(Organization or UZCoreEncounter or UZCoreObservation or UZCoreCondition)

// ---------------------------------------------------------------------
// Admission screening - source row 60
// DiagnosticReport (RW/VDRL, HIV, stool culture), Observation
// (pediculosis, other diseases)
// ---------------------------------------------------------------------
* section[admissionScreening].title 1..1
* section[admissionScreening].code 1..1
* section[admissionScreening].code = form-003-section-cs#admission-screening
* section[admissionScreening].entry 1..*
* section[admissionScreening].entry only Reference(UZCoreDiagnosticReport or UZCoreObservation)

// ---------------------------------------------------------------------
// Primary examination sheet - source rows 65-80
// Observation (age, complaints), Condition (localisation, character,
// onset, preliminary diagnosis), Encounter (reason for encounter);
// free-text sub-sections for anamnesis / status praesens / status localis
// ---------------------------------------------------------------------
* section[primaryExamination].title 1..1
* section[primaryExamination].code 1..1
* section[primaryExamination].code = $loinc#34117-2 "History and physical note"
* section[primaryExamination].entry 0..*
* section[primaryExamination].entry only Reference(UZCoreObservation or UZCoreCondition or UZCoreEncounter)
* section[primaryExamination].section ^slicing.discriminator.type = #value
* section[primaryExamination].section ^slicing.discriminator.path = "code"
* section[primaryExamination].section ^slicing.rules = #open
* section[primaryExamination].section contains
    anamnesis 0..1 and
    statusPraesens 0..1 and
    statusLocalis 0..1
* section[primaryExamination].section[anamnesis].code = $loinc#11329-0
* section[primaryExamination].section[anamnesis].text 1..1
* section[primaryExamination].section[statusPraesens].code = $loinc#10210-3
* section[primaryExamination].section[statusPraesens].text 1..1
* section[primaryExamination].section[statusLocalis].code = form-003-section-cs#status-localis
* section[primaryExamination].section[statusLocalis].text 1..1

// ---------------------------------------------------------------------
// Examination plan - source row 81
// DiagnosticReport / ServiceRequest per planned investigation
// ---------------------------------------------------------------------
* section[examinationPlan].title 1..1
* section[examinationPlan].code 1..1
* section[examinationPlan].code = $loinc#18776-5 "Plan of care note"
* section[examinationPlan].entry 1..*
* section[examinationPlan].entry only Reference(UZCoreDiagnosticReport or UZCoreServiceRequest)

// ---------------------------------------------------------------------
// Diagnostic results - source rows 82-91
// DiagnosticReport per performed study (CBC, urinalysis, biochemistry,
// coagulogram, ECG, X-ray, ultrasound, EGDS, CT/MRI); ServiceRequest
// for a specialist consultation
// ---------------------------------------------------------------------
* section[diagnosticResults].title 1..1
* section[diagnosticResults].code 1..1
* section[diagnosticResults].code = $loinc#30954-2 "Relevant diagnostic tests/laboratory data note"
* section[diagnosticResults].entry 1..*
* section[diagnosticResults].entry only Reference(UZCoreDiagnosticReport or UZCoreServiceRequest)

// ---------------------------------------------------------------------
// Department doctor examination - source rows 103, 106 (repeatable)
// Free-text examination and treatment plan, with optional structured
// diagnoses / orders / reports
// ---------------------------------------------------------------------
* section[departmentExamination].title 1..1
* section[departmentExamination].code 1..1
* section[departmentExamination].code = form-003-section-cs#department-examination
* section[departmentExamination].text 1..1
* section[departmentExamination].entry 0..*
* section[departmentExamination].entry only Reference(UZCoreCondition or UZCoreServiceRequest or UZCoreDiagnosticReport)

// ---------------------------------------------------------------------
// Final diagnosis - source rows 42, 45
// Per-role sub-sections (coded with diagnosis-role) so the form can be
// reconstructed without relying on entry order. No diagnoses sit here.
// ---------------------------------------------------------------------
* section[finalDiagnosis].title 1..1
* section[finalDiagnosis].code 1..1
* section[finalDiagnosis].code = $loinc#LA32800-7 "Final diagnosis (discharge)"
* section[finalDiagnosis].entry 0..0
* section[finalDiagnosis].section ^slicing.discriminator.type = #value
* section[finalDiagnosis].section ^slicing.discriminator.path = "code"
* section[finalDiagnosis].section ^slicing.rules = #open
* section[finalDiagnosis].section contains
    main 1..1 and
    complication 0..1 and
    concomitant 0..1 and
    competing 0..1 and
    background 0..1
* section[finalDiagnosis].section[main].code = $diagnosis-role#main
* section[finalDiagnosis].section[main].entry 1..*
* section[finalDiagnosis].section[main].entry only Reference(UZCoreCondition)
* section[finalDiagnosis].section[complication].code = $diagnosis-role#complication
* section[finalDiagnosis].section[complication].entry 1..*
* section[finalDiagnosis].section[complication].entry only Reference(UZCoreCondition)
* section[finalDiagnosis].section[concomitant].code = $diagnosis-role#concomitant
* section[finalDiagnosis].section[concomitant].entry 1..*
* section[finalDiagnosis].section[concomitant].entry only Reference(UZCoreCondition)
* section[finalDiagnosis].section[competing].code = $diagnosis-role#competing
* section[finalDiagnosis].section[competing].entry 1..*
* section[finalDiagnosis].section[competing].entry only Reference(UZCoreCondition)
* section[finalDiagnosis].section[background].code = $diagnosis-role#background
* section[finalDiagnosis].section[background].entry 1..*
* section[finalDiagnosis].section[background].entry only Reference(UZCoreCondition)

// ---------------------------------------------------------------------
// Surgical procedures - source rows 45-53
// Procedure (operation, anaesthesia, other treatment types),
// Condition (post-operative complication)
// ---------------------------------------------------------------------
* section[surgicalProcedures].title 1..1
* section[surgicalProcedures].code 1..1
* section[surgicalProcedures].code = $loinc#29554-3 "Procedure Narrative"
* section[surgicalProcedures].entry 1..*
* section[surgicalProcedures].entry only Reference(Procedure or UZCoreCondition)

// ---------------------------------------------------------------------
// Medication sheet - source rows 92-100, 104-121
// MedicationRequest (prescription: drug, dose, route, timing),
// MedicationAdministration (execution), NutritionOrder (diet table),
// Coverage (source of medicines / devices), Provenance (signatures)
// ---------------------------------------------------------------------
* section[medicationSheet].title 1..1
* section[medicationSheet].code 1..1
* section[medicationSheet].code = $loinc#29549-3 "Medication administered Narrative"
* section[medicationSheet].entry 1..*
* section[medicationSheet].entry only Reference(MedicationRequest or MedicationAdministration or NutritionOrder or UZCoreObservation or Coverage or Provenance)

// ---------------------------------------------------------------------
// Procedure sheet - source rows 122-132
// ServiceRequest (ordered investigation / procedure), Procedure
// (performed procedure, materials used), DiagnosticReport (investigation
// result), Provenance (signatures)
// ---------------------------------------------------------------------
* section[procedureSheet].title 1..1
* section[procedureSheet].code 1..1
* section[procedureSheet].code = $loinc#47519-4 "History of Procedures Document"
* section[procedureSheet].entry 1..*
* section[procedureSheet].entry only Reference(UZCoreServiceRequest or Procedure or UZCoreDiagnosticReport or Provenance)

// ---------------------------------------------------------------------
// Temperature chart - source rows 133-148
// Vital-sign Observations (pulse, blood pressure, temperature,
// respiratory rate, weight), fluid balance (intake, diuresis),
// day-of-illness counter
// ---------------------------------------------------------------------
* section[temperatureChart].title 1..1
* section[temperatureChart].code 1..1
* section[temperatureChart].code = $loinc#8716-3 "Vital signs note"
* section[temperatureChart].entry 1..*
* section[temperatureChart].entry only Reference(UZCoreObservation)

// ---------------------------------------------------------------------
// Clinical course - source rows 99-100, 149-151
// Observation (status in dynamics), CarePlan (doctor recommendations);
// free-text diary sub-section
// ---------------------------------------------------------------------
* section[clinicalCourse].title 1..1
* section[clinicalCourse].code 1..1
* section[clinicalCourse].code = $loinc#8648-8 "Hospital course note"
* section[clinicalCourse].text 0..1
* section[clinicalCourse].entry 0..*
* section[clinicalCourse].entry only Reference(UZCoreObservation or CarePlan)
* section[clinicalCourse].section ^slicing.discriminator.type = #value
* section[clinicalCourse].section ^slicing.discriminator.path = "code"
* section[clinicalCourse].section ^slicing.rules = #open
* section[clinicalCourse].section contains diary 0..1
* section[clinicalCourse].section[diary].code = form-003-section-cs#diary
* section[clinicalCourse].section[diary].text 1..1

// ---------------------------------------------------------------------
// Hospitalization summary - source rows 11, 43, 44
// Encounter (length of stay, re-admission), Observation (number of
// hospitalizations this year)
// ---------------------------------------------------------------------
* section[hospitalizationSummary].title 1..1
* section[hospitalizationSummary].code 1..1
* section[hospitalizationSummary].code = form-003-section-cs#hospitalization-summary
* section[hospitalizationSummary].entry 1..*
* section[hospitalizationSummary].entry only Reference(UZCoreEncounter or UZCoreObservation)

// ---------------------------------------------------------------------
// Treatment outcome - source rows 55-59
// Encounter (discharge disposition, transfer destination), Observation
// (clinical outcome, work-capacity status), Organization (receiving
// facility); free-text sub-sections for the expertise-referral
// conclusion and special marks
// ---------------------------------------------------------------------
* section[treatmentOutcome].title 1..1
* section[treatmentOutcome].code 1..1
* section[treatmentOutcome].code = form-003-section-cs#treatment-outcome
* section[treatmentOutcome].entry 0..*
* section[treatmentOutcome].entry only Reference(UZCoreEncounter or UZCoreObservation or Organization)
* section[treatmentOutcome].section ^slicing.discriminator.type = #value
* section[treatmentOutcome].section ^slicing.discriminator.path = "code"
* section[treatmentOutcome].section ^slicing.rules = #open
* section[treatmentOutcome].section contains
    expertiseReferralConclusion 0..1 and
    specialMarks 0..1
* section[treatmentOutcome].section[expertiseReferralConclusion].code = form-003-section-cs#expertise-referral-conclusion
* section[treatmentOutcome].section[expertiseReferralConclusion].text 1..1
* section[treatmentOutcome].section[specialMarks].code = form-003-section-cs#special-marks
* section[treatmentOutcome].section[specialMarks].text 1..1

// ---------------------------------------------------------------------
// Temporary disability - source rows 52-54
// Reference to the existing SickLeaveCarePlan (identifier and period)
// ---------------------------------------------------------------------
* section[temporaryDisability].title 1..1
* section[temporaryDisability].code 1..1
* section[temporaryDisability].code = $loinc#34109-9 "Note"
* section[temporaryDisability].entry 1..*
* section[temporaryDisability].entry only Reference(CarePlan or UZCoreObservation)

// ---------------------------------------------------------------------
// Post-mortem conclusion - source row 152
// Per-role cause-of-death sub-sections (coded with diagnosis-role).
// No diagnoses sit directly here.
// ---------------------------------------------------------------------
* section[postmortemConclusion].title 1..1
* section[postmortemConclusion].code 1..1
* section[postmortemConclusion].code = $loinc#18743-5 "Autopsy report"
* section[postmortemConclusion].text 0..1
* section[postmortemConclusion].entry 0..0
* section[postmortemConclusion].section ^slicing.discriminator.type = #value
* section[postmortemConclusion].section ^slicing.discriminator.path = "code"
* section[postmortemConclusion].section ^slicing.rules = #open
* section[postmortemConclusion].section contains
    immediateCauseOfDeath 0..1 and
    underlyingCauseOfDeath 0..1 and
    mainDiseaseDeath 0..1 and
    otherSignificantDeath 0..1
* section[postmortemConclusion].section[immediateCauseOfDeath].code = $diagnosis-role#immediate-cause-of-death
* section[postmortemConclusion].section[immediateCauseOfDeath].entry 1..*
* section[postmortemConclusion].section[immediateCauseOfDeath].entry only Reference(UZCoreCondition)
* section[postmortemConclusion].section[underlyingCauseOfDeath].code = $diagnosis-role#underlying-cause-of-death
* section[postmortemConclusion].section[underlyingCauseOfDeath].entry 1..*
* section[postmortemConclusion].section[underlyingCauseOfDeath].entry only Reference(UZCoreCondition)
* section[postmortemConclusion].section[mainDiseaseDeath].code = $diagnosis-role#main-disease-death
* section[postmortemConclusion].section[mainDiseaseDeath].entry 1..*
* section[postmortemConclusion].section[mainDiseaseDeath].entry only Reference(UZCoreCondition)
* section[postmortemConclusion].section[otherSignificantDeath].code = $diagnosis-role#other-significant-death
* section[postmortemConclusion].section[otherSignificantDeath].entry 1..*
* section[postmortemConclusion].section[otherSignificantDeath].entry only Reference(UZCoreCondition)

// ---------------------------------------------------------------------
// Responsible persons - source rows 61-67, 101-105, 153-155
// Attending doctor, department head, deputy chief physician, person
// responsible for the treatment complex (PractitionerRole references)
// ---------------------------------------------------------------------
* section[responsiblePersons].title 1..1
* section[responsiblePersons].code 1..1
* section[responsiblePersons].code = $loinc#LP35157-4 "Responsible party"
* section[responsiblePersons].entry 1..*
* section[responsiblePersons].entry only Reference(UZCorePractitionerRole)
