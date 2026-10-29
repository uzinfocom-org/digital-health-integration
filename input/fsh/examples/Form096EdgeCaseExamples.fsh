// Form 096 edge-case document examples: a document with no optional sections,
// an author identified without a position, and the two stillbirth outcomes.
// They reuse the mother, organization and staff of example-form-096-maternity-medical-record.

Instance: example-form-096-minimal
InstanceOf: Bundle
Usage: #example
Title: "Form 096 - Minimal document"
Description: "Form 096 document with only the required header and no optional clinical sections, for a sender whose DMED record has no clinical data yet."
* language = #en
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:09600200-1111-2222-3333-444444444444"
* type = #document
* timestamp = "2026-08-18T15:30:00+05:00"
* entry[0].fullUrl = "urn:uuid:09600201-1111-2222-3333-444444444444"
* entry[=].resource = composition-096-minimal
* entry[+].fullUrl = "urn:uuid:09600002-1111-2222-3333-444444444444"
* entry[=].resource = patient-096-mother
* entry[+].fullUrl = "urn:uuid:09600202-1111-2222-3333-444444444444"
* entry[=].resource = encounter-096-minimal
* entry[+].fullUrl = "urn:uuid:09600004-1111-2222-3333-444444444444"
* entry[=].resource = organization-096-001
* entry[+].fullUrl = "urn:uuid:09600005-1111-2222-3333-444444444444"
* entry[=].resource = practitioner-096-doctor
* entry[+].fullUrl = "urn:uuid:09600007-1111-2222-3333-444444444444"
* entry[=].resource = practitionerrole-096-doctor

Instance: composition-096-minimal
InstanceOf: Form096MaternityMedicalRecordComposition
Usage: #inline
* language = #en
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:09600251-1111-2222-3333-444444444444"
* status = #final
* type = $composition-type-cs#emdoc-0010-0016 "Maternity (delivery) medical record"
* category[dhpCategory] = $composition-category-cs#Comp-001-0001 "Medical record"
* category[formCategory] = $document-category-cs#form-096
* subject = Reference(urn:uuid:09600002-1111-2222-3333-444444444444)
* encounter = Reference(urn:uuid:09600202-1111-2222-3333-444444444444)
* date = "2026-08-18T15:30:00+05:00"
* author = Reference(urn:uuid:09600007-1111-2222-3333-444444444444)
* title = "Form 096 - Minimal document"
* custodian = Reference(urn:uuid:09600004-1111-2222-3333-444444444444)

Instance: encounter-096-minimal
InstanceOf: UZCoreEncounter
Usage: #inline
* language = #en
* status = #completed
* identifier.system = "https://dhp.uz/fhir/core/sid/doc/uz/medical-record-number"
* identifier.value = "SYNTHETIC-096-minimal"
* class = $v3-ActCode#IMP
* type = $encounter-type-cs#mserv-0001-00004
* subject = Reference(urn:uuid:09600002-1111-2222-3333-444444444444)
* serviceProvider = Reference(urn:uuid:09600004-1111-2222-3333-444444444444)

Instance: example-form-096-author-without-role
InstanceOf: Bundle
Usage: #example
Title: "Form 096 - Author without a position"
Description: "Form 096 document whose author is an identified Practitioner sent without a PractitionerRole, because DMED has no position code for them."
* language = #en
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:09600210-1111-2222-3333-444444444444"
* type = #document
* timestamp = "2026-08-18T15:30:00+05:00"
* entry[0].fullUrl = "urn:uuid:09600211-1111-2222-3333-444444444444"
* entry[=].resource = composition-096-author-without-role
* entry[+].fullUrl = "urn:uuid:09600002-1111-2222-3333-444444444444"
* entry[=].resource = patient-096-mother
* entry[+].fullUrl = "urn:uuid:09600212-1111-2222-3333-444444444444"
* entry[=].resource = encounter-096-author-without-role
* entry[+].fullUrl = "urn:uuid:09600004-1111-2222-3333-444444444444"
* entry[=].resource = organization-096-001
* entry[+].fullUrl = "urn:uuid:09600005-1111-2222-3333-444444444444"
* entry[=].resource = practitioner-096-doctor

Instance: composition-096-author-without-role
InstanceOf: Form096MaternityMedicalRecordComposition
Usage: #inline
* language = #en
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:09600261-1111-2222-3333-444444444444"
* status = #final
* type = $composition-type-cs#emdoc-0010-0016 "Maternity (delivery) medical record"
* category[dhpCategory] = $composition-category-cs#Comp-001-0001 "Medical record"
* category[formCategory] = $document-category-cs#form-096
* subject = Reference(urn:uuid:09600002-1111-2222-3333-444444444444)
* encounter = Reference(urn:uuid:09600212-1111-2222-3333-444444444444)
* date = "2026-08-18T15:30:00+05:00"
* author = Reference(urn:uuid:09600005-1111-2222-3333-444444444444)
* title = "Form 096 - Author without a position"
* custodian = Reference(urn:uuid:09600004-1111-2222-3333-444444444444)

Instance: encounter-096-author-without-role
InstanceOf: UZCoreEncounter
Usage: #inline
* language = #en
* status = #completed
* identifier.system = "https://dhp.uz/fhir/core/sid/doc/uz/medical-record-number"
* identifier.value = "SYNTHETIC-096-author-without-role"
* class = $v3-ActCode#IMP
* type = $encounter-type-cs#mserv-0001-00004
* subject = Reference(urn:uuid:09600002-1111-2222-3333-444444444444)
* serviceProvider = Reference(urn:uuid:09600004-1111-2222-3333-444444444444)

Instance: example-form-096-antepartum-stillbirth
InstanceOf: Bundle
Usage: #example
Title: "Form 096 - Antepartum stillbirth"
Description: "Form 096 document recording an antepartum stillbirth: the stillborn child is a deceased Patient, and the live/stillbirth status Observation carries SNOMED CT 713202001 \"Antepartum stillbirth\", as in Form 111."
* language = #en
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:09600220-1111-2222-3333-444444444444"
* type = #document
* timestamp = "2026-08-18T15:30:00+05:00"
* entry[0].fullUrl = "urn:uuid:09600221-1111-2222-3333-444444444444"
* entry[=].resource = composition-096-antepartum-stillbirth
* entry[+].fullUrl = "urn:uuid:09600002-1111-2222-3333-444444444444"
* entry[=].resource = patient-096-mother
* entry[+].fullUrl = "urn:uuid:09600223-1111-2222-3333-444444444444"
* entry[=].resource = patient-096-antepartum-stillborn
* entry[+].fullUrl = "urn:uuid:09600222-1111-2222-3333-444444444444"
* entry[=].resource = encounter-096-antepartum-stillbirth
* entry[+].fullUrl = "urn:uuid:09600004-1111-2222-3333-444444444444"
* entry[=].resource = organization-096-001
* entry[+].fullUrl = "urn:uuid:09600005-1111-2222-3333-444444444444"
* entry[=].resource = practitioner-096-doctor
* entry[+].fullUrl = "urn:uuid:09600007-1111-2222-3333-444444444444"
* entry[=].resource = practitionerrole-096-doctor
* entry[+].fullUrl = "urn:uuid:09600224-1111-2222-3333-444444444444"
* entry[=].resource = observation-096-antepartum-stillbirth-status

Instance: composition-096-antepartum-stillbirth
InstanceOf: Form096MaternityMedicalRecordComposition
Usage: #inline
* language = #en
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:09600271-1111-2222-3333-444444444444"
* status = #final
* type = $composition-type-cs#emdoc-0010-0016 "Maternity (delivery) medical record"
* category[dhpCategory] = $composition-category-cs#Comp-001-0001 "Medical record"
* category[formCategory] = $document-category-cs#form-096
* subject = Reference(urn:uuid:09600002-1111-2222-3333-444444444444)
* encounter = Reference(urn:uuid:09600222-1111-2222-3333-444444444444)
* date = "2026-08-18T15:30:00+05:00"
* author = Reference(urn:uuid:09600007-1111-2222-3333-444444444444)
* title = "Form 096 - Antepartum stillbirth"
* custodian = Reference(urn:uuid:09600004-1111-2222-3333-444444444444)
* section[newbornDeliveryRecord].title = "Newborn delivery record"
* section[newbornDeliveryRecord].code = $loinc#57075-4 "Newborn delivery information"
* section[newbornDeliveryRecord].entry[0] = Reference(urn:uuid:09600223-1111-2222-3333-444444444444)
* section[newbornDeliveryRecord].entry[+] = Reference(urn:uuid:09600224-1111-2222-3333-444444444444)

Instance: encounter-096-antepartum-stillbirth
InstanceOf: UZCoreEncounter
Usage: #inline
* language = #en
* status = #completed
* identifier.system = "https://dhp.uz/fhir/core/sid/doc/uz/medical-record-number"
* identifier.value = "SYNTHETIC-096-antepartum-stillbirth"
* class = $v3-ActCode#IMP
* type = $encounter-type-cs#mserv-0001-00004
* subject = Reference(urn:uuid:09600002-1111-2222-3333-444444444444)
* serviceProvider = Reference(urn:uuid:09600004-1111-2222-3333-444444444444)

Instance: patient-096-antepartum-stillborn
InstanceOf: UZCorePatient
Usage: #inline
* language = #en
* identifier[healthCardId].system = "https://dhp.uz/fhir/core/sid/pid/uz/hc"
* identifier[healthCardId].type = $identifier-type#HC
* identifier[healthCardId].use = #official
* identifier[healthCardId].value = "NB-096-2026-000220-1"
* name.text = "Synthetic stillborn child"
* gender = #male
* birthDate = "2026-08-16"
* deceasedBoolean = true
* managingOrganization = Reference(urn:uuid:09600004-1111-2222-3333-444444444444)

Instance: observation-096-antepartum-stillbirth-status
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* code = $form111-general-obs-cs#chr-0035-00013 "Live/stillbirth status"
* subject = Reference(urn:uuid:09600223-1111-2222-3333-444444444444)
* encounter = Reference(urn:uuid:09600222-1111-2222-3333-444444444444)
* effectiveDateTime = "2026-08-16"
* performer = Reference(urn:uuid:09600007-1111-2222-3333-444444444444)
* valueCodeableConcept = $sct#713202001 "Antepartum stillbirth"

Instance: example-form-096-intrapartum-stillbirth
InstanceOf: Bundle
Usage: #example
Title: "Form 096 - Intrapartum stillbirth"
Description: "Form 096 document recording an intrapartum stillbirth: the stillborn child is a deceased Patient, and the live/stillbirth status Observation carries SNOMED CT 237362003 \"Fetal intrapartum death\", as in Form 111."
* language = #en
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:09600230-1111-2222-3333-444444444444"
* type = #document
* timestamp = "2026-08-18T15:30:00+05:00"
* entry[0].fullUrl = "urn:uuid:09600231-1111-2222-3333-444444444444"
* entry[=].resource = composition-096-intrapartum-stillbirth
* entry[+].fullUrl = "urn:uuid:09600002-1111-2222-3333-444444444444"
* entry[=].resource = patient-096-mother
* entry[+].fullUrl = "urn:uuid:09600233-1111-2222-3333-444444444444"
* entry[=].resource = patient-096-intrapartum-stillborn
* entry[+].fullUrl = "urn:uuid:09600232-1111-2222-3333-444444444444"
* entry[=].resource = encounter-096-intrapartum-stillbirth
* entry[+].fullUrl = "urn:uuid:09600004-1111-2222-3333-444444444444"
* entry[=].resource = organization-096-001
* entry[+].fullUrl = "urn:uuid:09600005-1111-2222-3333-444444444444"
* entry[=].resource = practitioner-096-doctor
* entry[+].fullUrl = "urn:uuid:09600007-1111-2222-3333-444444444444"
* entry[=].resource = practitionerrole-096-doctor
* entry[+].fullUrl = "urn:uuid:09600234-1111-2222-3333-444444444444"
* entry[=].resource = observation-096-intrapartum-stillbirth-status

Instance: composition-096-intrapartum-stillbirth
InstanceOf: Form096MaternityMedicalRecordComposition
Usage: #inline
* language = #en
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:09600281-1111-2222-3333-444444444444"
* status = #final
* type = $composition-type-cs#emdoc-0010-0016 "Maternity (delivery) medical record"
* category[dhpCategory] = $composition-category-cs#Comp-001-0001 "Medical record"
* category[formCategory] = $document-category-cs#form-096
* subject = Reference(urn:uuid:09600002-1111-2222-3333-444444444444)
* encounter = Reference(urn:uuid:09600232-1111-2222-3333-444444444444)
* date = "2026-08-18T15:30:00+05:00"
* author = Reference(urn:uuid:09600007-1111-2222-3333-444444444444)
* title = "Form 096 - Intrapartum stillbirth"
* custodian = Reference(urn:uuid:09600004-1111-2222-3333-444444444444)
* section[newbornDeliveryRecord].title = "Newborn delivery record"
* section[newbornDeliveryRecord].code = $loinc#57075-4 "Newborn delivery information"
* section[newbornDeliveryRecord].entry[0] = Reference(urn:uuid:09600233-1111-2222-3333-444444444444)
* section[newbornDeliveryRecord].entry[+] = Reference(urn:uuid:09600234-1111-2222-3333-444444444444)

Instance: encounter-096-intrapartum-stillbirth
InstanceOf: UZCoreEncounter
Usage: #inline
* language = #en
* status = #completed
* identifier.system = "https://dhp.uz/fhir/core/sid/doc/uz/medical-record-number"
* identifier.value = "SYNTHETIC-096-intrapartum-stillbirth"
* class = $v3-ActCode#IMP
* type = $encounter-type-cs#mserv-0001-00004
* subject = Reference(urn:uuid:09600002-1111-2222-3333-444444444444)
* serviceProvider = Reference(urn:uuid:09600004-1111-2222-3333-444444444444)

Instance: patient-096-intrapartum-stillborn
InstanceOf: UZCorePatient
Usage: #inline
* language = #en
* identifier[healthCardId].system = "https://dhp.uz/fhir/core/sid/pid/uz/hc"
* identifier[healthCardId].type = $identifier-type#HC
* identifier[healthCardId].use = #official
* identifier[healthCardId].value = "NB-096-2026-000230-1"
* name.text = "Synthetic stillborn child"
* gender = #male
* birthDate = "2026-08-16"
* deceasedBoolean = true
* managingOrganization = Reference(urn:uuid:09600004-1111-2222-3333-444444444444)

Instance: observation-096-intrapartum-stillbirth-status
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* code = $form111-general-obs-cs#chr-0035-00013 "Live/stillbirth status"
* subject = Reference(urn:uuid:09600233-1111-2222-3333-444444444444)
* encounter = Reference(urn:uuid:09600232-1111-2222-3333-444444444444)
* effectiveDateTime = "2026-08-16"
* performer = Reference(urn:uuid:09600007-1111-2222-3333-444444444444)
* valueCodeableConcept = $sct#237362003 "Fetal intrapartum death"
