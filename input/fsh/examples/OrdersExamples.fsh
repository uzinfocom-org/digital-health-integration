Instance: example-orders-hospitalization-referral
InstanceOf: OrdersServiceRequest
Title: "Example Orders ServiceRequest - State-funded Hospitalization"
Usage: #example
Description: "Example state-insurance referral for planned hospitalization; its approval chain is tracked by the Orders Referral Approval Task examples"
* language = #uz
* extension[paymentType].valueCodeableConcept = https://terminology.dhp.uz/fhir/core/CodeSystem/payment-type-cs#paytype-0001-0004 "Davlat tarifi"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:90cae480-b963-469d-a2d0-5c5af6b00318"
* status = #active
* intent = #order
* category[dhpCategory] = $sct#32485007 "Admission to hospital"
* category[referralPurpose] = OrdersServiceRequestReferralPurposeCS#purpose-0001-0003 "Davolash"
* category[specialty] = $sct#394612005 "Urology"
* priority = #routine
* orderDetail.parameter[basis].code = $loinc#86947-9
* orderDetail.parameter[basis].valueCodeableConcept = $orders-service-request-basis-cs#basis-0001-00001 "Buyrakning yagona toshi (asoratsiz kechishi)"
* code = $sct#310449005 "Referral to hospital"
* subject = Reference(Patient/example-orders-patient)
* occurrencePeriod.start = "2026-03-10"
* occurrencePeriod.end = "2026-03-31"
* authoredOn = "2026-03-05T13:00:00+05:00"
* requester = Reference(PractitionerRole/example-orders-family-doctor-role)
* performer = Reference(HealthcareService/example-orders-urology-service)
* reason[icd10].concept.coding[0] = $icd-10#N20.0
* reason[sbdl].concept = $orders-sbdl-cs#SBDL-000001-0 "Buyrakning yagona toshi (asoratsiz kechishi)"
* extension[fundingResolution].valueCodeableConcept = OrdersFundingResolutionCS#paytype-0001-0006 "5199-sonli qaror"
* supportingInfo.reference = Reference(Observation/example-orders-nodira-benefits)


Instance: example-orders-nodira-benefits
InstanceOf: UZCoreObservation
Title: "Example Orders - Nodira Benefits"
Description: "Example benefits observation for Nodira, supporting her state-funded hospitalization referral"
Usage: #example
* language = #uz
* status = #final
* code.text = "Eligibility for state-funded treatment assessment"
* subject = Reference(Patient/example-orders-patient)
* valueCodeableConcept = https://terminology.dhp.uz/fhir/core/CodeSystem/benefits-cs#regis0004.00009 "\"Ijtimoiy himoya yagona reyestri\" axborot tizimi orqali kam ta'minlangan deb e'tirof etilgan oilalarning a'zolari."
* effectiveDateTime = "2026-03-05"


Instance: example-orders-task-family-doctor
InstanceOf: OrdersReferralApprovalTask
Title: "Example Orders - Task Family Doctor"
Description: "Example of a state-insurance workflow task in which the family doctor approves the referral"
Usage: #example
* language = #uz
* code = https://terminology.dhp.uz/fhir/core/CodeSystem/task-codes-cs#approve-family-doctor "Oilaviy shifokorning roziligi"
* basedOn = Reference(ServiceRequest/example-orders-hospitalization-referral)
* status = #completed
* businessStatus = https://terminology.dhp.uz/fhir/core/CodeSystem/task-business-status-cs#confirmed "Tasdiqlangan"
* intent = #order
* focus = Reference(ServiceRequest/example-orders-hospitalization-referral)
* for = Reference(Patient/example-orders-patient)
* owner = Reference(Organization/example-orders-clinic)
* performer.actor = Reference(PractitionerRole/example-orders-family-doctor-role)
* authoredOn = "2026-03-05T13:00:00+05:00"
* requester = Reference(Organization/example-orders-clinic)
* requestedPerformer.reference = Reference(Organization/example-orders-clinic)
* requestedPeriod
  * start = "2026-03-05T13:00:00+05:00"
  * end = "2026-03-06T18:00:00+05:00"
* executionPeriod
  * start = "2026-03-05T13:10:00+05:00"
  * end = "2026-03-05T13:30:00+05:00"

Instance: example-orders-task-specialist-returned
InstanceOf: OrdersReferralApprovalTask
Title: "Example Orders - Task Specialist Returned"
Description: "Example of a state-insurance workflow task in which the specialist returns the referral for revision because further investigations are needed"
Usage: #example
* language = #uz
* code = https://terminology.dhp.uz/fhir/core/CodeSystem/task-codes-cs#approve-specialist "Mutaxassisning roziligi"
* basedOn = Reference(ServiceRequest/example-orders-hospitalization-referral)
* partOf = Reference(Task/example-orders-task-family-doctor)
* status = #completed
* businessStatus = OrdersTaskBusinessStatusCS#bstatus-0001-00001 "Qayta ishlash uchun qaytarildi"
* statusReason = OrdersTaskStatusReasonCS#reason-0001-00005 "Qo'shimcha tekshiruvlar talab etiladi"
* note.text = "Buyrak va siydik yo'llarining UTT natijasi biriktirilmagan"
* intent = #order
* focus = Reference(ServiceRequest/example-orders-hospitalization-referral)
* for = Reference(Patient/example-orders-patient)
* owner = Reference(Organization/example-orders-hospital)
* performer.actor = Reference(PractitionerRole/example-orders-specialist-role)
* authoredOn = "2026-03-05T14:00:00+05:00"
* requester = Reference(Organization/example-orders-clinic)
* requestedPerformer.reference = Reference(Organization/example-orders-hospital)
* requestedPeriod
  * start = "2026-03-05T14:00:00+05:00"
  * end = "2026-03-07T18:00:00+05:00"
* executionPeriod
  * start = "2026-03-06T10:15:00+05:00"
  * end = "2026-03-06T11:00:00+05:00"

Instance: example-orders-task-specialist
InstanceOf: OrdersReferralApprovalTask
Title: "Example Orders - Task Specialist"
Description: "Example of a state-insurance workflow task in which the specialist approves the revised referral and sends it to the regional commission"
Usage: #example
* language = #uz
* code = https://terminology.dhp.uz/fhir/core/CodeSystem/task-codes-cs#approve-specialist "Mutaxassisning roziligi"
* basedOn = Reference(ServiceRequest/example-orders-hospitalization-referral)
* partOf = Reference(Task/example-orders-task-family-doctor)
* status = #completed
* businessStatus = OrdersTaskBusinessStatusCS#bstatus-0001-00002 "So'rov viloyat komissiyasiga yuborildi"
* intent = #order
* focus = Reference(ServiceRequest/example-orders-hospitalization-referral)
* for = Reference(Patient/example-orders-patient)
* owner = Reference(Organization/example-orders-hospital)
* performer.actor = Reference(PractitionerRole/example-orders-specialist-role)
* authoredOn = "2026-03-07T09:00:00+05:00"
* requester = Reference(Organization/example-orders-clinic)
* requestedPerformer.reference = Reference(Organization/example-orders-hospital)
* requestedPeriod
  * start = "2026-03-07T09:00:00+05:00"
  * end = "2026-03-09T18:00:00+05:00"
* executionPeriod
  * start = "2026-03-07T11:00:00+05:00"
  * end = "2026-03-07T12:00:00+05:00"

Instance: example-orders-task-regional-commission
InstanceOf: OrdersReferralApprovalTask
Title: "Example Orders - Task Regional Commission"
Description: "Example of a state-insurance workflow task in which the regional health commission approves the referral and sends it to the national commission"
Usage: #example
* language = #uz
* code = https://terminology.dhp.uz/fhir/core/CodeSystem/task-codes-cs#approve-regional-commission "Mintaqaviy komissiyaning roziligi"
* basedOn = Reference(ServiceRequest/example-orders-hospitalization-referral)
* partOf = Reference(Task/example-orders-task-specialist)
* status = #completed
* businessStatus = OrdersTaskBusinessStatusCS#bstatus-0001-00003 "So'rov respublika komissiyasiga yuborildi"
* intent = #order
* focus = Reference(ServiceRequest/example-orders-hospitalization-referral)
* for = Reference(Patient/example-orders-patient)
* owner = Reference(Organization/example-orders-regional-commission)
* authoredOn = "2026-03-07T12:00:00+05:00"
* requester = Reference(Organization/example-orders-clinic)
* requestedPerformer.reference = Reference(Organization/example-orders-regional-commission)
* requestedPeriod
  * start = "2026-03-07T12:00:00+05:00"
  * end = "2026-03-10T18:00:00+05:00"
* executionPeriod
  * start = "2026-03-09T10:00:00+05:00"
  * end = "2026-03-09T16:00:00+05:00"

Instance: example-orders-task-national-commission
InstanceOf: OrdersReferralApprovalTask
Title: "Example Orders - Task National Commission"
Description: "Example of a state-insurance workflow task in which the national (republican) health commission approves the referral, leaving the patient to choose the receiving clinic"
Usage: #example
* language = #uz
* code = https://terminology.dhp.uz/fhir/core/CodeSystem/task-codes-cs#approve-national-commission "Respublika komissiyasining roziligi"
* basedOn = Reference(ServiceRequest/example-orders-hospitalization-referral)
* partOf = Reference(Task/example-orders-task-regional-commission)
* status = #completed
* businessStatus = OrdersTaskBusinessStatusCS#bstatus-0001-00004 "Tibbiyot muassasasini tanlash kutilmoqda"
* intent = #order
* focus = Reference(ServiceRequest/example-orders-hospitalization-referral)
* for = Reference(Patient/example-orders-patient)
* owner = Reference(Organization/example-orders-hospital)
* authoredOn = "2026-03-09T16:00:00+05:00"
* requester = Reference(Organization/example-orders-clinic)
* requestedPerformer.reference = Reference(Organization/example-orders-hospital)
* requestedPeriod
  * start = "2026-03-09T16:00:00+05:00"
  * end = "2026-03-12T18:00:00+05:00"
* executionPeriod
  * start = "2026-03-10T10:00:00+05:00"
  * end = "2026-03-11T15:00:00+05:00"

Instance: example-orders-task-hospitalization
InstanceOf: OrdersReferralApprovalTask
Title: "Example Orders - Task Hospitalization"
Description: "Example of a state-insurance workflow task for the hospitalization step at the receiving clinic, completed when the patient is discharged"
Usage: #example
* language = #uz
* code = https://terminology.dhp.uz/fhir/core/CodeSystem/task-codes-cs#approve-hospitalization "Kasalxonaga yotqizishni tasdiqlash"
* basedOn = Reference(ServiceRequest/example-orders-hospitalization-referral)
* partOf = Reference(Task/example-orders-task-national-commission)
* status = #completed
* businessStatus = OrdersTaskBusinessStatusCS#bstatus-0001-00009 "Kasalxonadan chiqarilgan"
* intent = #order
* focus = Reference(ServiceRequest/example-orders-hospitalization-referral)
* for = Reference(Patient/example-orders-patient)
* owner = Reference(Organization/example-orders-hospital)
* performer.actor = Reference(PractitionerRole/example-orders-specialist-role)
* authoredOn = "2026-03-11T15:00:00+05:00"
* requester = Reference(Organization/example-orders-clinic)
* requestedPerformer.reference = Reference(Organization/example-orders-hospital)
* requestedPeriod
  * start = "2026-03-11T15:00:00+05:00"
  * end = "2026-03-31T18:00:00+05:00"
* executionPeriod
  * start = "2026-03-16T09:00:00+05:00"
  * end = "2026-03-24T12:00:00+05:00"
