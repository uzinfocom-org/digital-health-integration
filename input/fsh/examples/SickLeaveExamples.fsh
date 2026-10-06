Instance: sick-leave-extended
InstanceOf: SickLeaveCarePlan
Title: "Example Sick Leave - Extended and Closed"
Description: "Sick leave for a disease, extended once and closed; the preliminary diagnosis was refined"
Usage: #example
* language = #en
* meta.versionId = "3"
* meta.lastUpdated = "2026-08-12T16:42:11+05:00"
* identifier[code].system = "https://dhp.uz/fhir/core/sid/doc/uz/sickleave"
* identifier[code].value = "02QR008593426"
* status = #completed
* intent = #plan
* category = SickLeaveCategoryCS#SL "Sick Leave"
* subject = Reference(sick-leave-patient)
* created = "2026-08-04T09:15:32+05:00"
* period.start = "2026-08-04"
* period.end = "2026-08-12"
* contributor = Reference(sick-leave-practitioner)
* custodian = Reference(sick-leave-organization)
* addresses[reason].concept = CarePlanReasonCS#DIS "Disease"
* addresses[diagnosis][0].reference = Reference(sick-leave-extended-diagnosis-preliminary)
* addresses[diagnosis][+].reference = Reference(sick-leave-extended-diagnosis-final)
* extension[workflowStatus].valueCode = #closed
* extension[statusHistory][0].extension[status].valueCode = #opened
* extension[statusHistory][=].extension[period].valuePeriod.start = "2026-08-04"
* extension[statusHistory][=].extension[period].valuePeriod.end = "2026-08-06"
* extension[statusHistory][+].extension[status].valueCode = #extended
* extension[statusHistory][=].extension[period].valuePeriod.start = "2026-08-07"
* extension[statusHistory][=].extension[period].valuePeriod.end = "2026-08-12"
* extension[statusHistory][+].extension[status].valueCode = #closed
* extension[statusHistory][=].extension[period].valuePeriod.start = "2026-08-12"
* extension[statusHistory][=].extension[period].valuePeriod.end = "2026-08-12"
* extension[incapacityPeriod][0].valuePeriod.start = "2026-08-04"
* extension[incapacityPeriod][=].valuePeriod.end = "2026-08-06"
* extension[incapacityPeriod][+].valuePeriod.start = "2026-08-07"
* extension[incapacityPeriod][=].valuePeriod.end = "2026-08-12"
* extension[headPractitioner].valueReference = Reference(sick-leave-head-practitioner)

Instance: sick-leave-extended-observation
InstanceOf: SickLeaveObservation
Title: "Example Sick Leave Observation - Extended and Closed"
Description: "Attributes of the extended and closed sick leave: urban resident, issued at the place of residence"
Usage: #example
* language = #en
* status = #final
* basedOn = Reference(sick-leave-extended)
* code = $sct#224459001 "On sick leave from work"
* subject = Reference(sick-leave-patient)
* effectiveDateTime = "2026-08-04"
* component[urbanResident].code = SickLeaveComponentCS#urban-resident "Urban resident"
* component[urbanResident].valueBoolean = true
* component[nonLocal].code = SickLeaveComponentCS#non-local "Issued outside the place of residence"
* component[nonLocal].valueBoolean = false

Instance: sick-leave-extended-diagnosis-preliminary
InstanceOf: SickLeaveCondition
Title: "Example Sick Leave Diagnosis - Preliminary"
Description: "Preliminary diagnosis of the extended and closed sick leave"
Usage: #example
* language = #en
* clinicalStatus = $condition-clinical#resolved
* verificationStatus = $condition-ver-status#provisional
* code = $icd-10#J06.9
* code.text = "Acute upper respiratory infection, unspecified"
* subject = Reference(sick-leave-patient)

Instance: sick-leave-extended-diagnosis-final
InstanceOf: SickLeaveCondition
Title: "Example Sick Leave Diagnosis - Final"
Description: "Final diagnosis of the extended and closed sick leave"
Usage: #example
* language = #en
* clinicalStatus = $condition-clinical#resolved
* verificationStatus = $condition-ver-status#confirmed
* code = $icd-10#J18.9
* code.text = "Pneumonia, unspecified"
* subject = Reference(sick-leave-patient)

Instance: sick-leave-family-care
InstanceOf: SickLeaveCarePlan
Title: "Example Sick Leave - Family Care"
Description: "Open sick leave for the care of a sick family member, issued outside the place of residence"
Usage: #example
* language = #en
* meta.versionId = "1"
* meta.lastUpdated = "2026-09-01T10:05:00+05:00"
* identifier[code].system = "https://dhp.uz/fhir/core/sid/doc/uz/sickleave"
* identifier[code].value = "02QR008600112"
* status = #active
* intent = #plan
* category = SickLeaveCategoryCS#SL "Sick Leave"
* subject = Reference(sick-leave-patient)
* created = "2026-09-01T10:05:00+05:00"
* period.start = "2026-09-01"
* period.end = "2026-09-07"
* contributor = Reference(sick-leave-practitioner)
* custodian = Reference(sick-leave-organization)
* addresses[reason].concept = CarePlanReasonCS#FMC "Family Member Care"
* addresses[diagnosis].reference = Reference(sick-leave-family-care-diagnosis)
* extension[workflowStatus].valueCode = #opened
* extension[statusHistory].extension[status].valueCode = #opened
* extension[statusHistory].extension[period].valuePeriod.start = "2026-09-01"
* extension[incapacityPeriod].valuePeriod.start = "2026-09-01"
* extension[incapacityPeriod].valuePeriod.end = "2026-09-07"
* extension[relatedPerson].valueReference = Reference(sick-leave-related-person-mother)

Instance: sick-leave-family-care-observation
InstanceOf: SickLeaveObservation
Title: "Example Sick Leave Observation - Family Care"
Description: "Attributes of the family care sick leave: urban resident, issued outside the place of residence, with epidemiological history"
Usage: #example
* language = #en
* status = #final
* basedOn = Reference(sick-leave-family-care)
* code = $sct#224459001 "On sick leave from work"
* subject = Reference(sick-leave-patient)
* effectiveDateTime = "2026-09-01"
* component[urbanResident].code = SickLeaveComponentCS#urban-resident "Urban resident"
* component[urbanResident].valueBoolean = true
* component[nonLocal].code = SickLeaveComponentCS#non-local "Issued outside the place of residence"
* component[nonLocal].valueBoolean = true
* component[epidemiologicalHistory].code = SickLeaveComponentCS#epidemiological-history "Epidemiological history"
* component[epidemiologicalHistory].valueString = "No contact with infectious patients in the last 21 days"

Instance: sick-leave-family-care-diagnosis
InstanceOf: SickLeaveCondition
Title: "Example Sick Leave Diagnosis - Family Care"
Description: "Preliminary diagnosis of the family care sick leave"
Usage: #example
* language = #en
* clinicalStatus = $condition-clinical#active
* verificationStatus = $condition-ver-status#provisional
* code = $icd-10#I63.9
* code.text = "Cerebral infarction, unspecified"
* subject = Reference(sick-leave-patient)

Instance: sick-leave-related-person-mother
InstanceOf: SickLeaveRelatedPerson
Title: "Example Sick Leave Related Person - Mother"
Description: "Mother of the patient, cared for under the family care sick leave"
Usage: #example
* language = #en
* patient = Reference(sick-leave-patient)
* name.use = #official
* name.text = "Mother Patient"
* name.family = "Patient"
* name.given = "Mother"
* gender = #female
* birthDate = "1962-03-15"

Instance: sick-leave-cancelled
InstanceOf: SickLeaveCarePlan
Title: "Example Sick Leave - Cancelled"
Description: "Certificate of incapacity for a student (095/x), cancelled"
Usage: #example
* language = #en
* meta.versionId = "2"
* meta.lastUpdated = "2026-08-21T11:20:00+05:00"
* identifier[code].system = "https://dhp.uz/fhir/core/sid/doc/uz/sickleave"
* identifier[code].value = "02QR008597004"
* status = #revoked
* intent = #plan
* category = SickLeaveCategoryCS#ED "Education"
* subject = Reference(sick-leave-patient)
* created = "2026-08-20T08:40:00+05:00"
* period.start = "2026-08-20"
* period.end = "2026-08-22"
* contributor = Reference(sick-leave-practitioner)
* custodian = Reference(sick-leave-organization)
* addresses[reason].concept = CarePlanReasonCS#QRT "Quarantine"
* extension[workflowStatus].valueCode = #cancelled
* extension[statusHistory][0].extension[status].valueCode = #opened
* extension[statusHistory][=].extension[period].valuePeriod.start = "2026-08-20"
* extension[statusHistory][=].extension[period].valuePeriod.end = "2026-08-21"
* extension[statusHistory][+].extension[status].valueCode = #cancelled
* extension[statusHistory][=].extension[period].valuePeriod.start = "2026-08-21"
* extension[statusHistory][=].extension[period].valuePeriod.end = "2026-08-21"
* extension[incapacityPeriod].valuePeriod.start = "2026-08-20"
* extension[incapacityPeriod].valuePeriod.end = "2026-08-22"

Instance: sick-leave-cancelled-observation
InstanceOf: SickLeaveObservation
Title: "Example Sick Leave Observation - Cancelled"
Description: "Attributes of the cancelled certificate: rural resident"
Usage: #example
* language = #en
* status = #final
* basedOn = Reference(sick-leave-cancelled)
* code = $sct#224459001 "On sick leave from work"
* subject = Reference(sick-leave-patient)
* effectiveDateTime = "2026-08-20"
* component[urbanResident].code = SickLeaveComponentCS#urban-resident "Urban resident"
* component[urbanResident].valueBoolean = false

Instance: sick-leave-patient
InstanceOf: UZCorePatient
Title: "Example Sick Leave Patient - Test Patient"
Description: "Patient the example sick leaves are issued to"
Usage: #example
* language = #en
* identifier[nationalId].value = "12345678901112"
* name.use = #official
* name.text = "Test Patient"
* name.family = "Patient"
* name.given = "Test"
* telecom.system = #phone
* telecom.value = "+998901234567"
* gender = #male
* birthDate = "1990-01-01"

Instance: sick-leave-practitioner
InstanceOf: UZCorePractitioner
Title: "Example Sick Leave Practitioner - Issuing Doctor"
Description: "Practitioner who issues the example sick leaves"
Usage: #example
* language = #en
* identifier[nationalId].value = "12345678901113"
* name.use = #official
* name.text = "Test Doctor"
* name.family = "Doctor"
* name.given = "Test"

Instance: sick-leave-head-practitioner
InstanceOf: UZCorePractitioner
Title: "Example Sick Leave Practitioner - Chief Physician"
Description: "Chief physician who approves the example sick leave"
Usage: #example
* language = #en
* identifier[nationalId].value = "12345678901114"
* name.use = #official
* name.text = "Test Headdoctor"
* name.family = "Headdoctor"
* name.given = "Test"

Instance: sick-leave-organization
InstanceOf: UZCoreOrganization
Title: "Example Sick Leave Organization - Issuing Clinic"
Description: "Medical organization that issues the example sick leaves"
Usage: #example
* language = #en
* identifier[taxId].value = "1234556"
* name = "Test medical organization"
* contact.address.line = "1 A. Fitrat Street"
* contact.address.state = "1726"
* contact.address.district = "1726264"
* contact.address.country = "UZ"
