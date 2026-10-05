Instance: example-form-003-inpatient-medical-record
InstanceOf: Bundle
Description: "Example of a completed Form 003 inpatient medical record card - community-acquired pneumonia, thoracentesis, discharged recovered."
Usage: #example
Title: "Form 003 - Inpatient medical record card"
* language = #en
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:760e8400-e29b-41d4-a716-446655440003"
* type = #document
* timestamp = "2026-02-18T09:00:00+05:00"
* entry[0].fullUrl  = "urn:uuid:00300001-0000-0000-0000-000000000000"
* entry[=].resource = composition-003-001
* entry[+].fullUrl  = "urn:uuid:00300002-0000-0000-0000-000000000000"
* entry[=].resource = patient-003-001
* entry[+].fullUrl  = "urn:uuid:00300003-0000-0000-0000-000000000000"
* entry[=].resource = encounter-003-001
* entry[+].fullUrl  = "urn:uuid:00300004-0000-0000-0000-000000000000"
* entry[=].resource = organization-003-hospital
* entry[+].fullUrl  = "urn:uuid:00300005-0000-0000-0000-000000000000"
* entry[=].resource = organization-003-referring
* entry[+].fullUrl  = "urn:uuid:00300006-0000-0000-0000-000000000000"
* entry[=].resource = location-003-ward
* entry[+].fullUrl  = "urn:uuid:00300007-0000-0000-0000-000000000000"
* entry[=].resource = location-003-room
* entry[+].fullUrl  = "urn:uuid:00300008-0000-0000-0000-000000000000"
* entry[=].resource = practitioner-003-attending
* entry[+].fullUrl  = "urn:uuid:00300009-0000-0000-0000-000000000000"
* entry[=].resource = practitioner-003-head
* entry[+].fullUrl  = "urn:uuid:00300010-0000-0000-0000-000000000000"
* entry[=].resource = practitioner-003-deputy
* entry[+].fullUrl  = "urn:uuid:00300011-0000-0000-0000-000000000000"
* entry[=].resource = practitionerrole-003-attending
* entry[+].fullUrl  = "urn:uuid:00300012-0000-0000-0000-000000000000"
* entry[=].resource = practitionerrole-003-head
* entry[+].fullUrl  = "urn:uuid:00300013-0000-0000-0000-000000000000"
* entry[=].resource = practitionerrole-003-deputy
* entry[+].fullUrl  = "urn:uuid:00300014-0000-0000-0000-000000000000"
* entry[=].resource = obs-003-transport-mobility
* entry[+].fullUrl  = "urn:uuid:00300015-0000-0000-0000-000000000000"
* entry[=].resource = obs-003-blood-group
* entry[+].fullUrl  = "urn:uuid:00300016-0000-0000-0000-000000000000"
* entry[=].resource = obs-003-rh
* entry[+].fullUrl  = "urn:uuid:00300017-0000-0000-0000-000000000000"
* entry[=].resource = obs-003-admission-height
* entry[+].fullUrl  = "urn:uuid:00300018-0000-0000-0000-000000000000"
* entry[=].resource = obs-003-admission-weight
* entry[+].fullUrl  = "urn:uuid:00300019-0000-0000-0000-000000000000"
* entry[=].resource = obs-003-admission-temp
* entry[+].fullUrl  = "urn:uuid:00300020-0000-0000-0000-000000000000"
* entry[=].resource = allergy-003-001
* entry[+].fullUrl  = "urn:uuid:00300021-0000-0000-0000-000000000000"
* entry[=].resource = relatedperson-003-001
* entry[+].fullUrl  = "urn:uuid:00300022-0000-0000-0000-000000000000"
* entry[=].resource = obs-003-socioeconomic-occupation
* entry[+].fullUrl  = "urn:uuid:00300023-0000-0000-0000-000000000000"
* entry[=].resource = obs-003-war-disability
* entry[+].fullUrl  = "urn:uuid:00300024-0000-0000-0000-000000000000"
* entry[=].resource = obs-003-arrived-by-ambulance
* entry[+].fullUrl  = "urn:uuid:00300025-0000-0000-0000-000000000000"
* entry[=].resource = obs-003-onset-to-admission-delay
* entry[+].fullUrl  = "urn:uuid:00300026-0000-0000-0000-000000000000"
* entry[=].resource = condition-003-referral-dx
* entry[+].fullUrl  = "urn:uuid:00300027-0000-0000-0000-000000000000"
* entry[=].resource = condition-003-admission-dx
* entry[+].fullUrl  = "urn:uuid:00300028-0000-0000-0000-000000000000"
* entry[=].resource = condition-003-preliminary-dx
* entry[+].fullUrl  = "urn:uuid:00300029-0000-0000-0000-000000000000"
* entry[=].resource = condition-003-final-main
* entry[+].fullUrl  = "urn:uuid:00300030-0000-0000-0000-000000000000"
* entry[=].resource = condition-003-final-complication
* entry[+].fullUrl  = "urn:uuid:00300031-0000-0000-0000-000000000000"
* entry[=].resource = condition-003-final-concomitant
* entry[+].fullUrl  = "urn:uuid:00300032-0000-0000-0000-000000000000"
* entry[=].resource = dr-003-cbc
* entry[+].fullUrl  = "urn:uuid:00300033-0000-0000-0000-000000000000"
* entry[=].resource = dr-003-urinalysis
* entry[+].fullUrl  = "urn:uuid:00300034-0000-0000-0000-000000000000"
* entry[=].resource = dr-003-biochem
* entry[+].fullUrl  = "urn:uuid:00300035-0000-0000-0000-000000000000"
* entry[=].resource = dr-003-ecg
* entry[+].fullUrl  = "urn:uuid:00300036-0000-0000-0000-000000000000"
* entry[=].resource = dr-003-xray
* entry[+].fullUrl  = "urn:uuid:00300037-0000-0000-0000-000000000000"
* entry[=].resource = dr-003-hiv
* entry[+].fullUrl  = "urn:uuid:00300038-0000-0000-0000-000000000000"
* entry[=].resource = dr-003-rw
* entry[+].fullUrl  = "urn:uuid:00300039-0000-0000-0000-000000000000"
* entry[=].resource = obs-003-pediculosis
* entry[+].fullUrl  = "urn:uuid:00300040-0000-0000-0000-000000000000"
* entry[=].resource = servicerequest-003-consult
* entry[+].fullUrl  = "urn:uuid:00300041-0000-0000-0000-000000000000"
* entry[=].resource = procedure-003-surgery
* entry[+].fullUrl  = "urn:uuid:00300042-0000-0000-0000-000000000000"
* entry[=].resource = procedure-003-anesthesia
* entry[+].fullUrl  = "urn:uuid:00300043-0000-0000-0000-000000000000"
* entry[=].resource = medicationrequest-003-001
* entry[+].fullUrl  = "urn:uuid:00300044-0000-0000-0000-000000000000"
* entry[=].resource = medicationadministration-003-001
* entry[+].fullUrl  = "urn:uuid:00300045-0000-0000-0000-000000000000"
* entry[=].resource = nutritionorder-003-diet
* entry[+].fullUrl  = "urn:uuid:00300046-0000-0000-0000-000000000000"
* entry[=].resource = coverage-003-001
* entry[+].fullUrl  = "urn:uuid:00300047-0000-0000-0000-000000000000"
* entry[=].resource = obs-003-day-of-illness
* entry[+].fullUrl  = "urn:uuid:00300048-0000-0000-0000-000000000000"
* entry[=].resource = obs-003-morning-pulse
* entry[+].fullUrl  = "urn:uuid:00300049-0000-0000-0000-000000000000"
* entry[=].resource = obs-003-morning-bp
* entry[+].fullUrl  = "urn:uuid:00300050-0000-0000-0000-000000000000"
* entry[=].resource = obs-003-morning-temp
* entry[+].fullUrl  = "urn:uuid:00300051-0000-0000-0000-000000000000"
* entry[=].resource = obs-003-morning-rr
* entry[+].fullUrl  = "urn:uuid:00300052-0000-0000-0000-000000000000"
* entry[=].resource = obs-003-daily-urine
* entry[+].fullUrl  = "urn:uuid:00300053-0000-0000-0000-000000000000"
* entry[=].resource = obs-003-clinical-course
* entry[+].fullUrl  = "urn:uuid:00300054-0000-0000-0000-000000000000"
* entry[=].resource = careplan-003-recommendations
* entry[+].fullUrl  = "urn:uuid:00300055-0000-0000-0000-000000000000"
* entry[=].resource = careplan-003-sick-leave
* entry[+].fullUrl  = "urn:uuid:00300056-0000-0000-0000-000000000000"
* entry[=].resource = obs-003-prev-hospitalizations
* entry[+].fullUrl  = "urn:uuid:00300057-0000-0000-0000-000000000000"
* entry[=].resource = obs-003-work-capacity
* entry[+].fullUrl  = "urn:uuid:00300058-0000-0000-0000-000000000000"
* entry[=].resource = obs-003-treatment-outcome
* entry[+].fullUrl  = "urn:uuid:00300059-0000-0000-0000-000000000000"
* entry[=].resource = provenance-003-signature


Instance: composition-003-001
InstanceOf: Form003InpatientMedicalRecordComposition
Usage: #inline
* language = #en
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:uuid:861f9511-f30c-52e5-b827-557766550003"
* identifier[+].system = "https://dhp.uz/fhir/core/sid/doc/uz/form-number"
* identifier[=].value = "003"
* identifier[+].system = "https://dhp.uz/fhir/core/sid/doc/uz/medical-record-number"
* identifier[=].value = "MRN-003-2026-0042"
* status = #final
* type = $composition-type-cs#emdoc-0010-0003 "Patient Medical Record №"
* category = $document-category-cs#form-003 "Patient medical record"
* subject = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* encounter = Reference(urn:uuid:00300003-0000-0000-0000-000000000000)
* date = "2026-02-08T10:15:00+05:00"
* author[0] = Reference(urn:uuid:00300011-0000-0000-0000-000000000000)
* title = "Form 003 - Inpatient Medical Record Card"

* section[administrativeInformation].title = "Administrative Information"
* section[=].code = form-003-section-cs#administrative-information
* section[=].entry[0] = Reference(urn:uuid:00300004-0000-0000-0000-000000000000)
* section[=].entry[+] = Reference(urn:uuid:00300003-0000-0000-0000-000000000000)
* section[=].entry[+] = Reference(urn:uuid:00300006-0000-0000-0000-000000000000)
* section[=].entry[+] = Reference(urn:uuid:00300007-0000-0000-0000-000000000000)

* section[personalInformation].title = "Personal Information"
* section[=].code = $loinc#LP36348-8 "Patient Information"
* section[=].entry[0] = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* section[=].entry[+] = Reference(urn:uuid:00300014-0000-0000-0000-000000000000)
* section[=].entry[+] = Reference(urn:uuid:00300015-0000-0000-0000-000000000000)
* section[=].entry[+] = Reference(urn:uuid:00300016-0000-0000-0000-000000000000)
* section[=].entry[+] = Reference(urn:uuid:00300017-0000-0000-0000-000000000000)
* section[=].entry[+] = Reference(urn:uuid:00300018-0000-0000-0000-000000000000)
* section[=].entry[+] = Reference(urn:uuid:00300019-0000-0000-0000-000000000000)
* section[=].entry[+] = Reference(urn:uuid:00300020-0000-0000-0000-000000000000)

* section[socioeconomicInformation].title = "Socioeconomic Information"
* section[=].code = $loinc#29762-2 "Social history note"
* section[=].entry[0] = Reference(urn:uuid:00300022-0000-0000-0000-000000000000)
* section[=].entry[+] = Reference(urn:uuid:00300023-0000-0000-0000-000000000000)

* section[admissionInformation].title = "Admission Information"
* section[=].code = $loinc#LP74442-2 "Admission Information"
* section[=].entry[0] = Reference(urn:uuid:00300005-0000-0000-0000-000000000000)
* section[=].entry[+] = Reference(urn:uuid:00300024-0000-0000-0000-000000000000)
* section[=].entry[+] = Reference(urn:uuid:00300025-0000-0000-0000-000000000000)
* section[=].entry[+] = Reference(urn:uuid:00300026-0000-0000-0000-000000000000)
* section[=].entry[+] = Reference(urn:uuid:00300027-0000-0000-0000-000000000000)

* section[admissionScreening].title = "Admission Screening"
* section[=].code = form-003-section-cs#admission-screening
* section[=].entry[0] = Reference(urn:uuid:00300037-0000-0000-0000-000000000000)
* section[=].entry[+] = Reference(urn:uuid:00300038-0000-0000-0000-000000000000)
* section[=].entry[+] = Reference(urn:uuid:00300039-0000-0000-0000-000000000000)

* section[primaryExamination].title = "Primary Examination Sheet"
* section[=].code = $loinc#34117-2 "History and physical note"
* section[=].entry[0] = Reference(urn:uuid:00300028-0000-0000-0000-000000000000)
* section[primaryExamination].section[anamnesis].title = "Anamnesis"
* section[primaryExamination].section[anamnesis].code = $loinc#11329-0
* section[primaryExamination].section[anamnesis].text.status = #generated
* section[primaryExamination].section[anamnesis].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Fever, productive cough and dyspnoea for 4 days. Penicillin allergy on record.</p></div>"
* section[primaryExamination].section[statusPraesens].title = "General current state"
* section[primaryExamination].section[statusPraesens].code = $loinc#10210-3
* section[primaryExamination].section[statusPraesens].text.status = #generated
* section[primaryExamination].section[statusPraesens].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Moderate general condition. Temp 38.4 C, RR 24/min, SpO2 92% RA.</p></div>"
* section[primaryExamination].section[statusLocalis].title = "Local state"
* section[primaryExamination].section[statusLocalis].code = form-003-section-cs#status-localis
* section[primaryExamination].section[statusLocalis].text.status = #generated
* section[primaryExamination].section[statusLocalis].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Dullness and crepitations over the right lower lung field.</p></div>"

* section[examinationPlan].title = "Examination Plan"
* section[=].code = $loinc#18776-5 "Plan of care note"
* section[=].entry[0] = Reference(urn:uuid:00300032-0000-0000-0000-000000000000)
* section[=].entry[+] = Reference(urn:uuid:00300035-0000-0000-0000-000000000000)

* section[diagnosticResults].title = "Diagnostic Results"
* section[=].code = $loinc#30954-2 "Relevant diagnostic tests/laboratory data note"
* section[=].entry[0] = Reference(urn:uuid:00300032-0000-0000-0000-000000000000)
* section[=].entry[+] = Reference(urn:uuid:00300033-0000-0000-0000-000000000000)
* section[=].entry[+] = Reference(urn:uuid:00300034-0000-0000-0000-000000000000)
* section[=].entry[+] = Reference(urn:uuid:00300035-0000-0000-0000-000000000000)
* section[=].entry[+] = Reference(urn:uuid:00300036-0000-0000-0000-000000000000)
* section[=].entry[+] = Reference(urn:uuid:00300040-0000-0000-0000-000000000000)

* section[finalDiagnosis].title = "Final Diagnosis"
* section[finalDiagnosis].code = $loinc#LA32800-7 "Final diagnosis (discharge)"
* section[finalDiagnosis].section[main].title = "Main diagnosis"
* section[finalDiagnosis].section[main].code = $diagnosis-role#main
* section[finalDiagnosis].section[main].entry = Reference(urn:uuid:00300029-0000-0000-0000-000000000000)
* section[finalDiagnosis].section[complication].title = "Complication"
* section[finalDiagnosis].section[complication].code = $diagnosis-role#complication
* section[finalDiagnosis].section[complication].entry = Reference(urn:uuid:00300030-0000-0000-0000-000000000000)
* section[finalDiagnosis].section[concomitant].title = "Concomitant diseases"
* section[finalDiagnosis].section[concomitant].code = $diagnosis-role#concomitant
* section[finalDiagnosis].section[concomitant].entry = Reference(urn:uuid:00300031-0000-0000-0000-000000000000)

* section[surgicalProcedures].title = "Surgical Procedures"
* section[=].code = $loinc#29554-3 "Procedure Narrative"
* section[=].entry[0] = Reference(urn:uuid:00300041-0000-0000-0000-000000000000)
* section[=].entry[+] = Reference(urn:uuid:00300042-0000-0000-0000-000000000000)

* section[medicationSheet].title = "Medication Sheet"
* section[=].code = $loinc#29549-3 "Medication administered Narrative"
* section[=].entry[0] = Reference(urn:uuid:00300043-0000-0000-0000-000000000000)
* section[=].entry[+] = Reference(urn:uuid:00300044-0000-0000-0000-000000000000)
* section[=].entry[+] = Reference(urn:uuid:00300045-0000-0000-0000-000000000000)
* section[=].entry[+] = Reference(urn:uuid:00300046-0000-0000-0000-000000000000)

* section[procedureSheet].title = "Procedure Sheet"
* section[=].code = $loinc#47519-4 "History of Procedures Document"
* section[=].entry[0] = Reference(urn:uuid:00300040-0000-0000-0000-000000000000)
* section[=].entry[+] = Reference(urn:uuid:00300041-0000-0000-0000-000000000000)

* section[temperatureChart].title = "Temperature Chart"
* section[=].code = $loinc#8716-3 "Vital signs note"
* section[=].entry[0] = Reference(urn:uuid:00300047-0000-0000-0000-000000000000)
* section[=].entry[+] = Reference(urn:uuid:00300048-0000-0000-0000-000000000000)
* section[=].entry[+] = Reference(urn:uuid:00300049-0000-0000-0000-000000000000)
* section[=].entry[+] = Reference(urn:uuid:00300050-0000-0000-0000-000000000000)
* section[=].entry[+] = Reference(urn:uuid:00300051-0000-0000-0000-000000000000)
* section[=].entry[+] = Reference(urn:uuid:00300052-0000-0000-0000-000000000000)

* section[clinicalCourse].title = "Clinical Course"
* section[=].code = $loinc#8648-8 "Hospital course note"
* section[=].entry[0] = Reference(urn:uuid:00300053-0000-0000-0000-000000000000)
* section[=].entry[+] = Reference(urn:uuid:00300054-0000-0000-0000-000000000000)
* section[clinicalCourse].section[diary].title = "Diary"
* section[clinicalCourse].section[diary].code = form-003-section-cs#diary
* section[clinicalCourse].section[diary].text.status = #generated
* section[clinicalCourse].section[diary].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Day 3: afebrile, cough improving. Day 7: well, discharge planned.</p></div>"

* section[hospitalizationSummary].title = "Hospitalization Summary"
* section[=].code = form-003-section-cs#hospitalization-summary
* section[=].entry[0] = Reference(urn:uuid:00300003-0000-0000-0000-000000000000)
* section[=].entry[+] = Reference(urn:uuid:00300056-0000-0000-0000-000000000000)

* section[treatmentOutcome].title = "Treatment Outcome"
* section[=].code = form-003-section-cs#treatment-outcome
* section[=].entry[0] = Reference(urn:uuid:00300003-0000-0000-0000-000000000000)
* section[=].entry[+] = Reference(urn:uuid:00300057-0000-0000-0000-000000000000)
* section[=].entry[+] = Reference(urn:uuid:00300058-0000-0000-0000-000000000000)
* section[treatmentOutcome].section[expertiseReferralConclusion].title = "Conclusion for referral to expertise"
* section[treatmentOutcome].section[expertiseReferralConclusion].code = form-003-section-cs#expertise-referral-conclusion
* section[treatmentOutcome].section[expertiseReferralConclusion].text.status = #generated
* section[treatmentOutcome].section[expertiseReferralConclusion].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Not referred to medical-labour expertise.</p></div>"
* section[treatmentOutcome].section[specialMarks].title = "Special marks"
* section[treatmentOutcome].section[specialMarks].code = form-003-section-cs#special-marks
* section[treatmentOutcome].section[specialMarks].text.status = #generated
* section[treatmentOutcome].section[specialMarks].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Documented penicillin allergy.</p></div>"

* section[temporaryDisability].title = "Temporary Disability"
* section[=].code = $loinc#34109-9 "Note"
* section[=].entry[0] = Reference(urn:uuid:00300055-0000-0000-0000-000000000000)

* section[responsiblePersons].title = "Responsible Persons"
* section[=].code = $loinc#LP35157-4 "Responsible party"
* section[=].entry[0] = Reference(urn:uuid:00300011-0000-0000-0000-000000000000)
* section[=].entry[+] = Reference(urn:uuid:00300012-0000-0000-0000-000000000000)
* section[=].entry[+] = Reference(urn:uuid:00300013-0000-0000-0000-000000000000)


Instance: patient-003-001
InstanceOf: UZCorePatient
Usage: #inline
* identifier[nationalId].value = "31234567890123"
* identifier[healthCardId].value = "HC-2026-00042"
* name.use = #official
* name.text = "Tursunov Alisher Valiyevich"
* name.family = "Tursunov"
* name.given[0] = "Alisher"
* name.given[+] = "Valiyevich"
* birthDate = "1990-04-12"
* gender = #male
* telecom.system = #phone
* telecom.value = "+998901234567"
* address[uzAddress].use = #home
* address[uzAddress].state = "1726"
* address[uzAddress].district = "1726266"
* address[uzAddress].city = "16090011"
* address[uzAddress].line[0] = "12-mavze"
* address[uzAddress].line[+] = "15-uy"

Instance: organization-003-hospital
InstanceOf: Organization
Usage: #inline
* identifier.system = "https://dhp.uz/fhir/core/sid/uz/organization-code"
* identifier.value = "200001"
* name = "Toshkent shahar klinik shifoxonasi"

Instance: organization-003-referring
InstanceOf: Organization
Usage: #inline
* identifier.system = "https://dhp.uz/fhir/core/sid/uz/organization-code"
* identifier.value = "200935"
* name = "Yunusobod tuman oilaviy poliklinikasi"

Instance: location-003-ward
InstanceOf: Location
Usage: #inline
* status = #active
* name = "Therapeutic department"
* mode = #instance

Instance: location-003-room
InstanceOf: Location
Usage: #inline
* status = #active
* identifier.value = "R-214"
* name = "Room 214"
* mode = #instance
* partOf = Reference(urn:uuid:00300006-0000-0000-0000-000000000000)

Instance: encounter-003-001
InstanceOf: UZCoreEncounter
Usage: #inline
* status = #completed
* identifier.system = "https://dhp.uz/fhir/core/sid/doc/uz/medical-record-number"
* identifier.value = "MRN-003-2026-0042"
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
* type[nationalType] = https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-type-cs#mserv-0001-00004 "Treatment services"
* subject = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* actualPeriod.start = "2026-02-08T10:00:00+05:00"   // rows 4-5 merged
* actualPeriod.end   = "2026-02-18T09:00:00+05:00"   // rows 6-7 merged
* serviceProvider = Reference(urn:uuid:00300004-0000-0000-0000-000000000000)
* length = 10 'd' "days"                              // row 11
* priority = http://terminology.hl7.org/CodeSystem/v3-ActPriority#EM "Emergency"   // rows 34, 36
* admission.origin = Reference(urn:uuid:00300005-0000-0000-0000-000000000000)       // row 33
* admission.admitSource = https://terminology.dhp.uz/fhir/core/CodeSystem/admit-source-local-cs#mserv-0006-00004 "Emergency medical service"  // row 71
* admission.reAdmission = https://terminology.dhp.uz/fhir/core/CodeSystem/re-admission-local-cs#first-time "First time"                        // row 43
* admission.dischargeDisposition = https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-discharge-disposition-home-cs#mserv-0004-00004 "Discharged"  // row 55
* location[0].location = Reference(urn:uuid:00300006-0000-0000-0000-000000000000)   // row 8 ward
* location[0].period.start = "2026-02-08T10:00:00+05:00"
* location[+].location = Reference(urn:uuid:00300007-0000-0000-0000-000000000000)   // row 9 room
* participant[0].actor = Reference(urn:uuid:00300011-0000-0000-0000-000000000000)   // rows 61, 101 attending
* participant[+].actor = Reference(urn:uuid:00300012-0000-0000-0000-000000000000)   // row 63 dept head

Instance: practitioner-003-attending
InstanceOf: UZCorePractitioner
Usage: #inline
* identifier[nationalId].value = "12345678900011"
* name.use = #official
* name.text = "Rasulov B.B."
* name.family = "Rasulov"
* name.given = "B."

Instance: practitioner-003-head
InstanceOf: UZCorePractitioner
Usage: #inline
* identifier[nationalId].value = "12345678900012"
* name.use = #official
* name.text = "Qodirov A.A."
* name.family = "Qodirov"
* name.given = "A."

Instance: practitioner-003-deputy
InstanceOf: UZCorePractitioner
Usage: #inline
* identifier[nationalId].value = "12345678900013"
* name.use = #official
* name.text = "Yusupova N.N."
* name.family = "Yusupova"
* name.given = "N."

Instance: practitionerrole-003-attending
InstanceOf: UZCorePractitionerRole
Usage: #inline
* practitioner = Reference(urn:uuid:00300008-0000-0000-0000-000000000000)
* organization = Reference(urn:uuid:00300004-0000-0000-0000-000000000000)
* code.coding[role] = https://terminology.dhp.uz/fhir/core/CodeSystem/position-and-profession-cs#2211.6 "Medical specialist"

Instance: practitionerrole-003-head
InstanceOf: UZCorePractitionerRole
Usage: #inline
* practitioner = Reference(urn:uuid:00300009-0000-0000-0000-000000000000)
* organization = Reference(urn:uuid:00300004-0000-0000-0000-000000000000)
* code.coding[role] = $position-and-profession-cs#1342.18

Instance: practitionerrole-003-deputy
InstanceOf: UZCorePractitionerRole
Usage: #inline
* practitioner = Reference(urn:uuid:00300010-0000-0000-0000-000000000000)
* organization = Reference(urn:uuid:00300004-0000-0000-0000-000000000000)
* code.coding[role] = $position-and-profession-cs#1120.185 "Deputy chief physician"

Instance: obs-003-transport-mobility
InstanceOf: UZCoreObservation
Usage: #inline
* status = #final
* code = https://terminology.dhp.uz/fhir/integrations/CodeSystem/form-003-observation-code-cs#patient-transport-mobility "Patient transport mobility"
* subject = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* encounter = Reference(urn:uuid:00300003-0000-0000-0000-000000000000)
* effectiveDateTime = "2026-02-08T10:05:00+05:00"
* valueCodeableConcept = https://terminology.dhp.uz/fhir/integrations/CodeSystem/patient-transport-mobility-cs#chr-0033-0003 "Ambulatory (can walk)"  // row 12

Instance: obs-003-blood-group
InstanceOf: UZCoreObservation
Usage: #inline
* status = #final
* code = $loinc#883-9 "ABO group [Type] in Blood"
* subject = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* encounter = Reference(urn:uuid:00300003-0000-0000-0000-000000000000)
* effectiveDateTime = "2026-02-08T12:00:00+05:00"
* valueCodeableConcept = $loinc#LA19710-5 "Group A"   // row 13

Instance: obs-003-rh
InstanceOf: UZCoreObservation
Usage: #inline
* status = #final
* code = $loinc#10331-7 "Rh [Type] in Blood"
* subject = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* encounter = Reference(urn:uuid:00300003-0000-0000-0000-000000000000)
* effectiveDateTime = "2026-02-08T12:00:00+05:00"
* valueCodeableConcept = $loinc#LA6576-8 "Positive"   // row 14

Instance: obs-003-admission-height
InstanceOf: UZCoreObservation
Usage: #inline
* status = #final
* code = $loinc#8302-2 "Body height"
* subject = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* encounter = Reference(urn:uuid:00300003-0000-0000-0000-000000000000)
* effectiveDateTime = "2026-02-08T10:05:00+05:00"
* valueQuantity = 178 'cm' "cm"   // row 20
* category = $observation-category#vital-signs "Vital Signs"

Instance: obs-003-admission-weight
InstanceOf: UZCoreObservation
Usage: #inline
* status = #final
* code = $loinc#29463-7 "Body weight"
* subject = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* encounter = Reference(urn:uuid:00300003-0000-0000-0000-000000000000)
* effectiveDateTime = "2026-02-08T10:05:00+05:00"
* valueQuantity = 82 'kg' "kg"   // row 21
* category = $observation-category#vital-signs "Vital Signs"

Instance: obs-003-admission-temp
InstanceOf: UZCoreObservation
Usage: #inline
* status = #final
* code = $loinc#8310-5 "Body temperature"
* subject = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* encounter = Reference(urn:uuid:00300003-0000-0000-0000-000000000000)
* effectiveDateTime = "2026-02-08T10:05:00+05:00"
* valueQuantity = 38.4 'Cel' "Cel"   // row 22
* category = $observation-category#vital-signs "Vital Signs"

Instance: allergy-003-001
InstanceOf: UZCoreAllergyIntolerance
Usage: #inline
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed
* patient = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* code = $sct#764146007 "Penicillin"                        // row 15
* reaction.manifestation.concept.text = "Generalised urticaria"   // row 16

Instance: relatedperson-003-001
InstanceOf: UZCoreRelatedPerson
Usage: #inline
* patient = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* identifier[nationalId].value = "39876543210987"
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleClass#NOK "next of kin"
* name.text = "Tursunova Malika"
* telecom.system = #phone
* telecom.value = "+998901112233"        // row 26
* address.use = #home
* address.text = "Toshkent, Yunusobod, 12-mavze, 15-uy"   // row 25

Instance: obs-003-socioeconomic-occupation
InstanceOf: UZCoreSocioeconomicObservation
Usage: #inline
* status = #final
* code = $sct#14679004 "Occupation"                          // row 29
* subject = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* encounter = Reference(urn:uuid:00300003-0000-0000-0000-000000000000)
* effectiveDateTime = "2026-02-08T10:10:00+05:00"
* valueCodeableConcept = https://terminology.dhp.uz/fhir/core/CodeSystem/position-and-profession-cs#7231.1 "Car mechanic"

Instance: obs-003-war-disability
InstanceOf: UZCoreSocioeconomicObservation
Usage: #inline
* status = #final
* code = $sct#1303306008 "Eligible for benefit"             // row 32a
* subject = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* encounter = Reference(urn:uuid:00300003-0000-0000-0000-000000000000)
* effectiveDateTime = "2026-02-08T10:10:00+05:00"
* valueCodeableConcept = https://terminology.dhp.uz/fhir/core/CodeSystem/benefits-cs#regis0004.00004 "Disabled persons and war participants of 1941-1945, as well as persons treated as such"

Instance: obs-003-arrived-by-ambulance
InstanceOf: UZCoreObservation
Usage: #inline
* status = #final
* code = $loinc#LP97912-7 "Ambulance transport"             // row 35
* subject = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* encounter = Reference(urn:uuid:00300003-0000-0000-0000-000000000000)
* effectiveDateTime = "2026-02-08T09:55:00+05:00"
* valueBoolean = true

Instance: obs-003-onset-to-admission-delay
InstanceOf: UZCoreObservation
Usage: #inline
* status = #final
* code = $loinc#77977-7 "Illness duration"
* subject = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* encounter = Reference(urn:uuid:00300003-0000-0000-0000-000000000000)
* effectiveDateTime = "2026-02-08T10:00:00+05:00"
* valueCodeableConcept = https://terminology.dhp.uz/fhir/integrations/CodeSystem/disease-injury-delay-cs#delay0001_00003 "After 24 hours"   // row 36a

Instance: condition-003-referral-dx
InstanceOf: UZCoreCondition
Usage: #inline
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* category = $diagnosis-role#referral                        // row 37
* code.coding = $icd10#J18.9 "Pneumonia, unspecified"
* subject = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* encounter = Reference(urn:uuid:00300003-0000-0000-0000-000000000000)
* onsetDateTime = "2026-02-04"

Instance: condition-003-admission-dx
InstanceOf: UZCoreCondition
Usage: #inline
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* category = $diagnosis-role#admission                       // row 38
* code.coding = $icd10#J18.9 "Pneumonia, unspecified"
* subject = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* encounter = Reference(urn:uuid:00300003-0000-0000-0000-000000000000)
* recordedDate = "2026-02-08"                                // row 40

Instance: condition-003-preliminary-dx
InstanceOf: UZCoreCondition
Usage: #inline
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* category = $diagnosis-type-cs#gencl-0001-00003             // row 80 (no "preliminary" role in either CS - "main" used, or Encounter.diagnosis.use)
* code.coding = $icd10#J18.9 "Pneumonia, unspecified"
* subject = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* encounter = Reference(urn:uuid:00300003-0000-0000-0000-000000000000)
* bodySite = $sct#266005 "Structure of lower lobe of right lung"   // row 73
* note.text = "Acute onset, productive cough"                        // row 74
* onsetDateTime = "2026-02-04T20:00:00+05:00"                        // row 75

Instance: condition-003-final-main
InstanceOf: UZCoreCondition
Usage: #inline
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* category = $diagnosis-role#main
* code.coding = $icd10#J15.9 "Bacterial pneumonia, unspecified"
* subject = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* encounter = Reference(urn:uuid:00300003-0000-0000-0000-000000000000)
* recordedDate = "2026-02-10"
// R5 removed Condition.recorder; the recording clinician is carried by the
// signing Provenance / the responsiblePersons section instead.

Instance: condition-003-final-complication
InstanceOf: UZCoreCondition
Usage: #inline
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* category = $diagnosis-role#complication
* code.coding = $icd10#J90 "Pleural effusion, not elsewhere classified"
* subject = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* encounter = Reference(urn:uuid:00300003-0000-0000-0000-000000000000)

Instance: condition-003-final-concomitant
InstanceOf: UZCoreCondition
Usage: #inline
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* category = $diagnosis-role#concomitant
* code.coding = $icd10#I10 "Essential (primary) hypertension"
* subject = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* encounter = Reference(urn:uuid:00300003-0000-0000-0000-000000000000)

Instance: dr-003-cbc
InstanceOf: UZCoreDiagnosticReport
Usage: #inline
* status = #final
* code = https://terminology.dhp.uz/fhir/core/CodeSystem/lab-report-types-cs#lab-rep-01 "CBC panel"      // row 82
* subject = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* encounter = Reference(urn:uuid:00300003-0000-0000-0000-000000000000)
* effectiveDateTime = "2026-02-08T13:00:00+05:00"
* issued = "2026-02-08T15:30:00+05:00"

Instance: dr-003-urinalysis
InstanceOf: UZCoreDiagnosticReport
Usage: #inline
* status = #final
* code = https://terminology.dhp.uz/fhir/core/CodeSystem/lab-report-types-cs#lab-rep-05 "Urinalysis macro (dipstick) panel"   // row 83
* subject = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* encounter = Reference(urn:uuid:00300003-0000-0000-0000-000000000000)
* effectiveDateTime = "2026-02-08T13:00:00+05:00"

Instance: dr-003-biochem
InstanceOf: UZCoreDiagnosticReport
Usage: #inline
* status = #final
* code = https://terminology.dhp.uz/fhir/core/CodeSystem/lab-report-types-cs#lab-rep-07 "Comprehensive metabolic panel"   // row 84
* subject = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* encounter = Reference(urn:uuid:00300003-0000-0000-0000-000000000000)
* effectiveDateTime = "2026-02-08T13:00:00+05:00"

Instance: dr-003-ecg
InstanceOf: UZCoreDiagnosticReport
Usage: #inline
* status = #final
* code = $loinc#11524-6 "EKG study"                          // row 86 (imaging/functional - LOINC via extensible binding)
* subject = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* encounter = Reference(urn:uuid:00300003-0000-0000-0000-000000000000)
* effectiveDateTime = "2026-02-08T14:00:00+05:00"
* conclusion = "Sinus tachycardia 104/min. No acute ischaemic changes."

Instance: dr-003-xray
InstanceOf: UZCoreDiagnosticReport
Usage: #inline
* status = #final
* code = $loinc#18782-3 "Radiology Study observation (narrative)"   // row 87
* subject = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* encounter = Reference(urn:uuid:00300003-0000-0000-0000-000000000000)
* effectiveDateTime = "2026-02-08T14:30:00+05:00"
* conclusion = "Right lower-lobe consolidation with small pleural effusion."

Instance: dr-003-hiv
InstanceOf: UZCoreDiagnosticReport
Usage: #inline
* status = #final
* code = $loinc#56888-1 "HIV 1+2 Ab+HIV1 p24 Ag [Presence] in Serum or Plasma by Immunoassay"   // row 60
* subject = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* encounter = Reference(urn:uuid:00300003-0000-0000-0000-000000000000)
* effectiveDateTime = "2026-02-08T13:00:00+05:00"
* conclusion = "Non-reactive"

Instance: dr-003-rw
InstanceOf: UZCoreDiagnosticReport
Usage: #inline
* status = #final
* code = $loinc#5292-8 "Reagin Ab [Presence] in Serum by VDRL"    // row 60
* subject = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* encounter = Reference(urn:uuid:00300003-0000-0000-0000-000000000000)
* effectiveDateTime = "2026-02-08T13:00:00+05:00"
* conclusion = "Non-reactive"

Instance: obs-003-pediculosis
InstanceOf: UZCoreObservation
Usage: #inline
* status = #final
* code = $sct#20848007 "Pediculosis"                         // row 60
* subject = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* encounter = Reference(urn:uuid:00300003-0000-0000-0000-000000000000)
* effectiveDateTime = "2026-02-08T10:20:00+05:00"
* valueCodeableConcept = $sct#260385009 "Negative"

Instance: servicerequest-003-consult
InstanceOf: UZCoreServiceRequest
Usage: #inline
* status = #completed
* intent = #order
* code = $sct#11429006 "Consultation"                        // row 91
* subject = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* encounter = Reference(urn:uuid:00300003-0000-0000-0000-000000000000)
* authoredOn = "2026-02-09T09:00:00+05:00"
* requester = Reference(urn:uuid:00300011-0000-0000-0000-000000000000)

Instance: procedure-003-surgery
InstanceOf: Procedure
Usage: #inline
* status = #completed
* code = $sct#91602002 "Thoracentesis"                    
* subject = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* encounter = Reference(urn:uuid:00300003-0000-0000-0000-000000000000)
* occurrenceDateTime = "2026-02-10T11:30:00+05:00"           // rows 46-47 merged
* performer.actor = Reference(urn:uuid:00300011-0000-0000-0000-000000000000)   // row 50

Instance: procedure-003-anesthesia
InstanceOf: Procedure
Usage: #inline
* status = #completed
* code = $sct#386761002 "Local anaesthesia"                  // row 48 - SNOMED via procedure-code-vs; "combined" would use chr-003-anesthesia-method-cs#combined
* subject = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* encounter = Reference(urn:uuid:00300003-0000-0000-0000-000000000000)
* occurrencePeriod.start = "2026-02-10T11:15:00+05:00"
* occurrencePeriod.end = "2026-02-10T11:35:00+05:00"
* performer.actor = Reference(urn:uuid:00300011-0000-0000-0000-000000000000)

Instance: medicationrequest-003-001
InstanceOf: MedicationRequest
Usage: #inline
* status = #completed
* intent = #order
* medication.concept = $sct#372670001 "Ceftriaxone"          // rows 93 / 111
* subject = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* encounter = Reference(urn:uuid:00300003-0000-0000-0000-000000000000)
* authoredOn = "2026-02-08T11:00:00+05:00"                   // row 110
* requester = Reference(urn:uuid:00300011-0000-0000-0000-000000000000)
* dosageInstruction.timing.repeat.frequency = 1              // row 114
* dosageInstruction.timing.repeat.period = 24
* dosageInstruction.timing.repeat.periodUnit = #h
* dosageInstruction.route = $sct#47625008 "Intravenous route"  // rows 95 / 113
* dosageInstruction.doseAndRate.doseQuantity = 2 'g' "g"       // rows 94 / 112
* insurance = Reference(urn:uuid:00300046-0000-0000-0000-000000000000)   // row 115

Instance: medicationadministration-003-001
InstanceOf: MedicationAdministration
Usage: #inline
* status = #completed
* medication.concept = $sct#372670001 "Ceftriaxone"
* subject = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* encounter = Reference(urn:uuid:00300003-0000-0000-0000-000000000000)
* occurenceDateTime = "2026-02-08T12:00:00+05:00"            // R5 spelling; rows 96 / 117 / 120
* request = Reference(urn:uuid:00300043-0000-0000-0000-000000000000)
* performer.actor.reference = Reference(urn:uuid:00300011-0000-0000-0000-000000000000)
* note.text = "First dose tolerated well, no infusion reaction."   // rows 97-98
* note.authorReference = Reference(urn:uuid:00300011-0000-0000-0000-000000000000)

Instance: nutritionorder-003-diet
InstanceOf: NutritionOrder
Usage: #inline
// row 116 - diet table No. (NutritionOrder.oralDiet.type, per CHR-003 mapping)
* status = #active
* intent = #order
* subject = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* encounter = Reference(urn:uuid:00300003-0000-0000-0000-000000000000)
* dateTime = "2026-02-08T11:00:00+05:00"
* orderer = Reference(urn:uuid:00300011-0000-0000-0000-000000000000)
* oralDiet.type = https://terminology.dhp.uz/fhir/integrations/CodeSystem/hospital-diet-type-cs#chr-0042-0024 "Diet table No. 15 (general table, no special restriction)"

Instance: coverage-003-001
InstanceOf: Coverage
Usage: #inline
* status = #active
* kind = #insurance
* beneficiary = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* type = https://terminology.dhp.uz/fhir/core/CodeSystem/coverage-type-cs#covtp-0001-00001 "State Health Insurance treated case (Resolution No. PQ-311)"

Instance: obs-003-day-of-illness
InstanceOf: UZCoreObservation
Usage: #inline
* status = #final
* code = https://terminology.dhp.uz/fhir/integrations/CodeSystem/form-003-observation-code-cs#day-of-illness "Day of illness"   // row 134
* subject = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* encounter = Reference(urn:uuid:00300003-0000-0000-0000-000000000000)
* effectiveDateTime = "2026-02-08T07:00:00+05:00"
* valueInteger = 4

Instance: obs-003-morning-pulse
InstanceOf: UZCoreObservation
Usage: #inline
* status = #final
* code = $loinc#8867-4 "Heart rate"                          // row 136 (morning vs evening = effectiveDateTime)
* subject = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* encounter = Reference(urn:uuid:00300003-0000-0000-0000-000000000000)
* effectiveDateTime = "2026-02-09T07:00:00+05:00"
* valueQuantity = 96 '/min' "beats/min"
* category = $observation-category#vital-signs "Vital Signs"

Instance: obs-003-morning-bp
InstanceOf: UZCoreObservation
Usage: #inline
* status = #final
* code = $loinc#85354-9 "Blood pressure panel with all children optional"               // row 138
* subject = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* encounter = Reference(urn:uuid:00300003-0000-0000-0000-000000000000)
* effectiveDateTime = "2026-02-09T07:00:00+05:00"
* component[0].code = $loinc#8480-6 "Systolic blood pressure"
* component[=].valueQuantity = 134 'mm[Hg]' "mmHg"
* component[+].code = $loinc#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity = 84 'mm[Hg]' "mmHg"
* category = $observation-category#vital-signs "Vital Signs"

Instance: obs-003-morning-temp
InstanceOf: UZCoreObservation
Usage: #inline
* status = #final
* code = $loinc#8310-5 "Body temperature"                    // row 140
* subject = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* encounter = Reference(urn:uuid:00300003-0000-0000-0000-000000000000)
* effectiveDateTime = "2026-02-09T07:00:00+05:00"
* valueQuantity = 37.6 'Cel' "Cel"
* category = $observation-category#vital-signs "Vital Signs"

Instance: obs-003-morning-rr
InstanceOf: UZCoreObservation
Usage: #inline
* status = #final
* code = $loinc#9279-1 "Respiratory rate"                    // row 142
* subject = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* encounter = Reference(urn:uuid:00300003-0000-0000-0000-000000000000)
* effectiveDateTime = "2026-02-09T07:00:00+05:00"
* valueQuantity = 20 '/min' "breaths/min"
* category = $observation-category#vital-signs "Vital Signs"

Instance: obs-003-daily-urine
InstanceOf: UZCoreObservation
Usage: #inline
* status = #final
* code = $loinc#9192-6 "Urine output 24 hour"               // row 148
* subject = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* encounter = Reference(urn:uuid:00300003-0000-0000-0000-000000000000)
* effectivePeriod.start = "2026-02-09T00:00:00+05:00"
* effectivePeriod.end = "2026-02-10T00:00:00+05:00"
* valueQuantity = 1650 'mL/(24.h)' "mL/24h"

// part-of-day fluid intake (rows 146-147) - one per morning/evening:
// code = chr-003-observation-code-cs#fluid-intake-part-of-day, valueQuantity in mL, effectivePeriod = the half-day

Instance: obs-003-clinical-course
InstanceOf: UZCoreObservation
Usage: #inline
* status = #final
* code = https://terminology.dhp.uz/fhir/integrations/CodeSystem/form-003-observation-code-cs#clinical-course "Clinical course"   // row 99
* subject = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* encounter = Reference(urn:uuid:00300003-0000-0000-0000-000000000000)
* effectiveDateTime = "2026-02-11T08:00:00+05:00"
* valueString = "Afebrile from day 5, cough and dyspnoea resolving, mobilising independently."

Instance: careplan-003-recommendations
InstanceOf: CarePlan
Usage: #inline
* status = #completed
* intent = #plan
* subject = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* encounter = Reference(urn:uuid:00300003-0000-0000-0000-000000000000)
* note.text = "Oral amoxicillin-clavulanate 875/125 mg BID x5 days. Chest X-ray in 6 weeks. GP review in 3 days."   // row 100

// Rows 52-54: CHR-003 references an existing sick-leave record, it does not
// author one. This is a minimal stand-in the Composition points at; in
// production it is a Reference to the real SickLeaveCarePlan instance.
Instance: careplan-003-sick-leave
InstanceOf: CarePlan
Usage: #inline
* status = #completed
* intent = #order
* subject = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* identifier.system = "https://dhp.uz/fhir/core/sid/doc/uz/sickleave"
* identifier.value = "SL-2026-778812"                        // row 52
* period.start = "2026-02-08"                                // row 53
* period.end = "2026-02-20"                                  // row 54

Instance: obs-003-prev-hospitalizations
InstanceOf: UZCoreObservation
Usage: #inline
* status = #final
* code = https://terminology.dhp.uz/fhir/integrations/CodeSystem/local-observation-code#num-previous-hospitalizations "Number of previous hospitalizations"   // row 44
* subject = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* effectivePeriod.start = "2026-01-01"
* effectivePeriod.end = "2026-12-31"
* valueInteger = 1

Instance: obs-003-work-capacity
InstanceOf: UZCoreObservation
Usage: #inline
* status = #final
* code = https://terminology.dhp.uz/fhir/integrations/CodeSystem/form-003-observation-code-cs#work-capacity-status "Work capacity status"   // row 57
* subject = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* encounter = Reference(urn:uuid:00300003-0000-0000-0000-000000000000)
* effectiveDateTime = "2026-02-18T08:30:00+05:00"
* valueCodeableConcept = https://terminology.dhp.uz/fhir/integrations/CodeSystem/work-capacity-status-cs#chr-0036-0001 "Work capacity fully restored"

Instance: obs-003-treatment-outcome
InstanceOf: UZCoreObservation
Usage: #inline
* status = #final
* code = $sct#12386002 "Patient status determination"       // row 58 - clinical-outcome question
* subject = Reference(urn:uuid:00300002-0000-0000-0000-000000000000)
* encounter = Reference(urn:uuid:00300003-0000-0000-0000-000000000000)
* effectiveDateTime = "2026-02-18T08:30:00+05:00"
* valueCodeableConcept = $sct#268910001 "Patient's condition improved"   // row 58 clinical-outcome axis

Instance: provenance-003-signature
InstanceOf: Provenance
Usage: #inline
* target = Reference(Bundle/example-form-003-inpatient-medical-record)
* recorded = "2026-02-18T09:05:00+05:00"
* agent.type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#attester "Attester"
* agent.who = Reference(urn:uuid:00300011-0000-0000-0000-000000000000) "Rasulov B.B."
* signature.type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.1 "Author's Signature"
* signature.when = "2026-02-18T09:05:00+05:00"
* signature.who = Reference(urn:uuid:00300011-0000-0000-0000-000000000000) "Rasulov B.B."
* signature.sigFormat = #application/pdf
* signature.data = "JVBERi0xLjQK"