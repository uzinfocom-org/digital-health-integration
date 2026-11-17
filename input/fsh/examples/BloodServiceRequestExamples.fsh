Instance: example-blood-laboratory-order
InstanceOf: BloodServiceRequest
Title: "Example Blood ServiceRequest - Laboratory Test 1975-2"
Description: "One donor laboratory test or panel. Separate requests for this donation share requisition; category identifies the receiving laboratory."
Usage: #example
* language = #uz
* status = #active
* intent = #order
* identifier[orderNumber].value = "XON-SR-2026-0001"
* identifier[orderNumber].assigner = Reference(Organization/xonobod-medical-association)
* requisition.value = "DON-2025-0088231"
* requisition.assigner = Reference(Organization/xonobod-medical-association)
* category[dhpCategory] = $lab-categories-cs#lab-category-04 "Biokimyo"
* code.concept = $loinc#1975-2 "Zardob yoki plazmada umumiy bilirubin miqdori"
* subject = Reference(Patient/example-salim)
* encounter = Reference(Encounter/example-blood-donation-encounter)
* authoredOn = "2026-11-10T09:05:00+05:00"
* requester = Reference(PractitionerRole/example-practitionerrole)
* priority = #routine
* occurrenceDateTime = "2026-11-10"
* performer = Reference(Organization/xonobod-medical-association)
* location = Reference(Location/example-blood-service-laboratory)
* reason.concept = $icd-10#Z52.0 "Blood donor"
* supportingInfo = Reference(Observation/example-blood-donor-registration-staff)
* specimen = Reference(Specimen/example-blood-whole-blood-specimen)

Instance: example-blood-alt-laboratory-order
InstanceOf: BloodServiceRequest
Title: "Example Blood ServiceRequest - Laboratory Test 1742-6"
Description: "One donor laboratory test or panel. Separate requests for this donation share requisition; category identifies the receiving laboratory."
Usage: #example
* language = #uz
* status = #active
* intent = #order
* identifier[orderNumber].value = "XON-SR-2026-0002"
* identifier[orderNumber].assigner = Reference(Organization/xonobod-medical-association)
* requisition.value = "DON-2025-0088231"
* requisition.assigner = Reference(Organization/xonobod-medical-association)
* category[dhpCategory] = $lab-categories-cs#lab-category-04 "Biokimyo"
* code.concept = $loinc#1742-6 "Zardob yoki plazmada alanin aminotransferaza fermenti faolligi"
* subject = Reference(Patient/example-salim)
* encounter = Reference(Encounter/example-blood-donation-encounter)
* authoredOn = "2026-11-10T09:05:00+05:00"
* requester = Reference(PractitionerRole/example-practitionerrole)
* priority = #routine
* occurrenceDateTime = "2026-11-10"
* performer = Reference(Organization/xonobod-medical-association)
* location = Reference(Location/example-blood-service-laboratory)
* reason.concept = $icd-10#Z52.0 "Blood donor"
* supportingInfo = Reference(Observation/example-blood-donor-registration-staff)
* specimen = Reference(Specimen/example-blood-whole-blood-specimen)

Instance: example-blood-immunology-laboratory-order
InstanceOf: BloodServiceRequest
Title: "Example Blood ServiceRequest - Laboratory Test 883-9"
Description: "One donor laboratory test or panel. Separate requests for this donation share requisition; category identifies the receiving laboratory."
Usage: #example
* language = #uz
* status = #active
* intent = #order
* identifier[orderNumber].value = "XON-SR-2026-0003"
* identifier[orderNumber].assigner = Reference(Organization/xonobod-medical-association)
* requisition.value = "DON-2025-0088231"
* requisition.assigner = Reference(Organization/xonobod-medical-association)
* category[dhpCategory] = $lab-categories-cs#lab-category-05 "Immunologiya"
* code.concept = $loinc#883-9 "Qonda ABO guruhi turi"
* subject = Reference(Patient/example-salim)
* encounter = Reference(Encounter/example-blood-donation-encounter)
* authoredOn = "2026-11-10T09:05:00+05:00"
* requester = Reference(PractitionerRole/example-practitionerrole)
* priority = #routine
* occurrenceDateTime = "2026-11-10"
* performer = Reference(Organization/xonobod-medical-association)
* location = Reference(Location/example-blood-service-laboratory)
* reason.concept = $icd-10#Z52.0 "Blood donor"
* supportingInfo = Reference(Observation/example-blood-donor-registration-staff)
* specimen = Reference(Specimen/example-blood-whole-blood-specimen)

Instance: example-blood-rh-laboratory-order
InstanceOf: BloodServiceRequest
Title: "Example Blood ServiceRequest - Laboratory Test 10331-7"
Description: "One donor laboratory test or panel. Separate requests for this donation share requisition; category identifies the receiving laboratory."
Usage: #example
* language = #uz
* status = #active
* intent = #order
* identifier[orderNumber].value = "XON-SR-2026-0004"
* identifier[orderNumber].assigner = Reference(Organization/xonobod-medical-association)
* requisition.value = "DON-2025-0088231"
* requisition.assigner = Reference(Organization/xonobod-medical-association)
* category[dhpCategory] = $lab-categories-cs#lab-category-05 "Immunologiya"
* code.concept = $loinc#10331-7 "Qonda Rh turi"
* subject = Reference(Patient/example-salim)
* encounter = Reference(Encounter/example-blood-donation-encounter)
* authoredOn = "2026-11-10T09:05:00+05:00"
* requester = Reference(PractitionerRole/example-practitionerrole)
* priority = #routine
* occurrenceDateTime = "2026-11-10"
* performer = Reference(Organization/xonobod-medical-association)
* location = Reference(Location/example-blood-service-laboratory)
* reason.concept = $icd-10#Z52.0 "Blood donor"
* supportingInfo = Reference(Observation/example-blood-donor-registration-staff)
* specimen = Reference(Specimen/example-blood-whole-blood-specimen)

Instance: example-blood-transfusion-infections-laboratory-order
InstanceOf: BloodServiceRequest
Title: "Example Blood ServiceRequest - Laboratory Test 16128-1"
Description: "One donor laboratory test or panel. Separate requests for this donation share requisition; category identifies the receiving laboratory."
Usage: #example
* language = #uz
* status = #active
* intent = #order
* identifier[orderNumber].value = "XON-SR-2026-0005"
* identifier[orderNumber].assigner = Reference(Organization/xonobod-medical-association)
* requisition.value = "DON-2025-0088231"
* requisition.assigner = Reference(Organization/xonobod-medical-association)
* category[dhpCategory] = $lab-categories-cs#lab-category-20 "Infeksion diagnostika"
* code.concept = $loinc#16128-1 "Hepatitis C virus Ab [Presence] in Serum"
* subject = Reference(Patient/example-salim)
* encounter = Reference(Encounter/example-blood-donation-encounter)
* authoredOn = "2026-11-10T09:05:00+05:00"
* requester = Reference(PractitionerRole/example-practitionerrole)
* priority = #routine
* occurrenceDateTime = "2026-11-10"
* performer = Reference(Organization/xonobod-medical-association)
* location = Reference(Location/example-blood-service-laboratory)
* reason.concept = $icd-10#Z52.0 "Blood donor"
* supportingInfo = Reference(Observation/example-blood-donor-registration-staff)
* specimen = Reference(Specimen/example-blood-whole-blood-specimen)

Instance: example-blood-syphilis-laboratory-order
InstanceOf: BloodServiceRequest
Title: "Example Blood ServiceRequest - Laboratory Test 20507-0"
Description: "One donor laboratory test or panel. Separate requests for this donation share requisition; category identifies the receiving laboratory."
Usage: #example
* language = #uz
* status = #active
* intent = #order
* identifier[orderNumber].value = "XON-SR-2026-0006"
* identifier[orderNumber].assigner = Reference(Organization/xonobod-medical-association)
* requisition.value = "DON-2025-0088231"
* requisition.assigner = Reference(Organization/xonobod-medical-association)
* category[dhpCategory] = $lab-categories-cs#lab-category-20 "Infeksion diagnostika"
* code.concept = $loinc#20507-0 "Reagin Ab [Presence] in Serum by RPR"
* subject = Reference(Patient/example-salim)
* encounter = Reference(Encounter/example-blood-donation-encounter)
* authoredOn = "2026-11-10T09:05:00+05:00"
* requester = Reference(PractitionerRole/example-practitionerrole)
* priority = #routine
* occurrenceDateTime = "2026-11-10"
* performer = Reference(Organization/xonobod-medical-association)
* location = Reference(Location/example-blood-service-laboratory)
* reason.concept = $icd-10#Z52.0 "Blood donor"
* supportingInfo = Reference(Observation/example-blood-donor-registration-staff)
* specimen = Reference(Specimen/example-blood-whole-blood-specimen)

Instance: example-blood-hbsag-laboratory-order
InstanceOf: BloodServiceRequest
Title: "Example Blood ServiceRequest - Laboratory Test 5195-3"
Description: "One donor laboratory test or panel. Separate requests for this donation share requisition; category identifies the receiving laboratory."
Usage: #example
* language = #uz
* status = #active
* intent = #order
* identifier[orderNumber].value = "XON-SR-2026-0007"
* identifier[orderNumber].assigner = Reference(Organization/xonobod-medical-association)
* requisition.value = "DON-2025-0088231"
* requisition.assigner = Reference(Organization/xonobod-medical-association)
* category[dhpCategory] = $lab-categories-cs#lab-category-20 "Infeksion diagnostika"
* code.concept = $loinc#5195-3 "Hepatitis B virus surface Ag [Presence] in Serum"
* subject = Reference(Patient/example-salim)
* encounter = Reference(Encounter/example-blood-donation-encounter)
* authoredOn = "2026-11-10T09:05:00+05:00"
* requester = Reference(PractitionerRole/example-practitionerrole)
* priority = #routine
* occurrenceDateTime = "2026-11-10"
* performer = Reference(Organization/xonobod-medical-association)
* location = Reference(Location/example-blood-service-laboratory)
* reason.concept = $icd-10#Z52.0 "Blood donor"
* supportingInfo = Reference(Observation/example-blood-donor-registration-staff)
* specimen = Reference(Specimen/example-blood-whole-blood-specimen)

Instance: example-blood-hiv-laboratory-order
InstanceOf: BloodServiceRequest
Title: "Example Blood ServiceRequest - Laboratory Test 95523-7"
Description: "One donor laboratory test or panel. Separate requests for this donation share requisition; category identifies the receiving laboratory."
Usage: #example
* language = #uz
* status = #active
* intent = #order
* identifier[orderNumber].value = "XON-SR-2026-0008"
* identifier[orderNumber].assigner = Reference(Organization/xonobod-medical-association)
* requisition.value = "DON-2025-0088231"
* requisition.assigner = Reference(Organization/xonobod-medical-association)
* category[dhpCategory] = $lab-categories-cs#lab-category-20 "Infeksion diagnostika"
* code.concept = $loinc#95523-7 "HIV 1 and 2 Ab panel - Serum or Plasma by Immunoassay"
* subject = Reference(Patient/example-salim)
* encounter = Reference(Encounter/example-blood-donation-encounter)
* authoredOn = "2026-11-10T09:05:00+05:00"
* requester = Reference(PractitionerRole/example-practitionerrole)
* priority = #routine
* occurrenceDateTime = "2026-11-10"
* performer = Reference(Organization/xonobod-medical-association)
* location = Reference(Location/example-blood-service-laboratory)
* reason.concept = $icd-10#Z52.0 "Blood donor"
* supportingInfo = Reference(Observation/example-blood-donor-registration-staff)
* specimen = Reference(Specimen/example-blood-whole-blood-specimen)

Instance: example-blood-bacteriology-laboratory-order
InstanceOf: BloodServiceRequest
Title: "Example Blood ServiceRequest - Laboratory Test 30202-6"
Description: "One donor laboratory test or panel. Separate requests for this donation share requisition; category identifies the receiving laboratory."
Usage: #example
* language = #uz
* status = #active
* intent = #order
* identifier[orderNumber].value = "XON-SR-2026-0009"
* identifier[orderNumber].assigner = Reference(Organization/xonobod-medical-association)
* requisition.value = "DON-2025-0088231"
* requisition.assigner = Reference(Organization/xonobod-medical-association)
* category[dhpCategory] = $lab-categories-cs#lab-category-08 "Bakteriologiya"
* code.concept = $loinc#30202-6 "Brucella sp Ab [Presence] in Serum"
* subject = Reference(Patient/example-salim)
* encounter = Reference(Encounter/example-blood-donation-encounter)
* authoredOn = "2026-11-10T09:05:00+05:00"
* requester = Reference(PractitionerRole/example-practitionerrole)
* priority = #routine
* occurrenceDateTime = "2026-11-10"
* performer = Reference(Organization/xonobod-medical-association)
* location = Reference(Location/example-blood-service-laboratory)
* reason.concept = $icd-10#Z52.0 "Blood donor"
* supportingInfo = Reference(Observation/example-blood-donor-registration-staff)
* specimen[0] = Reference(Specimen/example-blood-whole-blood-specimen)
* specimen[+] = Reference(Specimen/example-blood-serum-specimen)

Instance: example-blood-malaria-laboratory-order
InstanceOf: BloodServiceRequest
Title: "Example Blood ServiceRequest - Laboratory Test 32700-7"
Description: "One donor laboratory test or panel. Separate requests for this donation share requisition; category identifies the receiving laboratory."
Usage: #example
* language = #uz
* status = #active
* intent = #order
* identifier[orderNumber].value = "XON-SR-2026-0010"
* identifier[orderNumber].assigner = Reference(Organization/xonobod-medical-association)
* requisition.value = "DON-2025-0088231"
* requisition.assigner = Reference(Organization/xonobod-medical-association)
* category[dhpCategory] = $lab-categories-cs#lab-category-08 "Bakteriologiya"
* code.concept = $loinc#32700-7 "Microscopic observation [Identifier] in Blood by Malaria smear"
* subject = Reference(Patient/example-salim)
* encounter = Reference(Encounter/example-blood-donation-encounter)
* authoredOn = "2026-11-10T09:05:00+05:00"
* requester = Reference(PractitionerRole/example-practitionerrole)
* priority = #routine
* occurrenceDateTime = "2026-11-10"
* performer = Reference(Organization/xonobod-medical-association)
* location = Reference(Location/example-blood-service-laboratory)
* reason.concept = $icd-10#Z52.0 "Blood donor"
* supportingInfo = Reference(Observation/example-blood-donor-registration-staff)
* specimen[0] = Reference(Specimen/example-blood-whole-blood-specimen)
* specimen[+] = Reference(Specimen/example-blood-serum-specimen)

Instance: example-blood-hematology-laboratory-order
InstanceOf: BloodServiceRequest
Title: "Example Blood ServiceRequest - Laboratory Test 58410-2"
Description: "One donor laboratory test or panel. Separate requests for this donation share requisition; category identifies the receiving laboratory."
Usage: #example
* language = #uz
* status = #active
* intent = #order
* identifier[orderNumber].value = "XON-SR-2026-0011"
* identifier[orderNumber].assigner = Reference(Organization/xonobod-medical-association)
* requisition.value = "DON-2025-0088231"
* requisition.assigner = Reference(Organization/xonobod-medical-association)
* category[dhpCategory] = $lab-categories-cs#lab-category-02 "Gematologiya"
* code.concept = $loinc#58410-2 "CBC panel - Blood by Automated count"
* subject = Reference(Patient/example-salim)
* encounter = Reference(Encounter/example-blood-donation-encounter)
* authoredOn = "2026-11-10T09:05:00+05:00"
* requester = Reference(PractitionerRole/example-practitionerrole)
* priority = #routine
* occurrenceDateTime = "2026-11-10"
* performer = Reference(Organization/xonobod-medical-association)
* location = Reference(Location/example-blood-service-laboratory)
* reason.concept = $icd-10#Z52.0 "Blood donor"
* supportingInfo = Reference(Observation/example-blood-donor-registration-staff)
* specimen = Reference(Specimen/example-blood-whole-blood-specimen)

Instance: example-blood-component-processing-order
InstanceOf: BloodServiceRequest
Title: "Example Blood ServiceRequest - Washing"
Description: "One blood component processing operation requested by the blood service for its stock. The subject is the processing location, not the donor."
Usage: #example
* language = #uz
* status = #active
* intent = #order
* identifier[orderNumber].value = "XON-SR-2026-0012"
* identifier[orderNumber].assigner = Reference(Organization/xonobod-medical-association)
* requisition.value = "DON-2025-0088231"
* requisition.assigner = Reference(Organization/xonobod-medical-association)
* code.concept = $sct#58059003 "Washing RBC for transfusion"
* subject = Reference(Location/example-blood-service-laboratory)
* authoredOn = "2026-11-10T10:00:00+05:00"
* requester = Reference(PractitionerRole/example-practitionerrole)
* priority = #urgent
* occurrenceDateTime = "2026-11-10T14:00:00+05:00"
* performer = Reference(Organization/xonobod-medical-association)
* location = Reference(Location/example-blood-service-laboratory)
* focus = Reference(BiologicallyDerivedProduct/example-blood-component-product)
* note.text = "Ehtiyotkorlik bilan qayta ishlang."

Instance: example-blood-component-irradiation-order
InstanceOf: BloodServiceRequest
Title: "Example Blood ServiceRequest - Irradiation"
Description: "One blood component processing operation requested by the blood service for its stock. The subject is the processing location, not the donor."
Usage: #example
* language = #uz
* status = #active
* intent = #order
* identifier[orderNumber].value = "XON-SR-2026-0013"
* identifier[orderNumber].assigner = Reference(Organization/xonobod-medical-association)
* requisition.value = "DON-2025-0088231"
* requisition.assigner = Reference(Organization/xonobod-medical-association)
* code.concept = BloodComponentProcessingCS#bcproc-0001-00002 "Nurlantirish"
* subject = Reference(Location/example-blood-service-laboratory)
* authoredOn = "2026-11-10T10:00:00+05:00"
* requester = Reference(PractitionerRole/example-practitionerrole)
* priority = #urgent
* occurrenceDateTime = "2026-11-10T14:00:00+05:00"
* performer = Reference(Organization/xonobod-medical-association)
* location = Reference(Location/example-blood-service-laboratory)
* focus = Reference(BiologicallyDerivedProduct/example-blood-component-product)
* note.text = "Ehtiyotkorlik bilan qayta ishlang."

Instance: example-blood-component-freezing-order
InstanceOf: BloodServiceRequest
Title: "Example Blood ServiceRequest - Freezing"
Description: "One blood component processing operation requested by the blood service for its stock. The subject is the processing location, not the donor."
Usage: #example
* language = #uz
* status = #active
* intent = #order
* identifier[orderNumber].value = "XON-SR-2026-0014"
* identifier[orderNumber].assigner = Reference(Organization/xonobod-medical-association)
* requisition.value = "DON-2025-0088231"
* requisition.assigner = Reference(Organization/xonobod-medical-association)
* code.concept = $sct#71643009 "Frozen blood preparation"
* subject = Reference(Location/example-blood-service-laboratory)
* authoredOn = "2026-11-10T10:00:00+05:00"
* requester = Reference(PractitionerRole/example-practitionerrole)
* priority = #urgent
* occurrenceDateTime = "2026-11-10T14:00:00+05:00"
* performer = Reference(Organization/xonobod-medical-association)
* location = Reference(Location/example-blood-service-laboratory)
* focus = Reference(BiologicallyDerivedProduct/example-blood-component-product)
* note.text = "Ehtiyotkorlik bilan qayta ishlang."

Instance: example-blood-component-thawing-order
InstanceOf: BloodServiceRequest
Title: "Example Blood ServiceRequest - Thawing"
Description: "One blood component processing operation requested by the blood service for its stock. The subject is the processing location, not the donor."
Usage: #example
* language = #uz
* status = #active
* intent = #order
* identifier[orderNumber].value = "XON-SR-2026-0015"
* identifier[orderNumber].assigner = Reference(Organization/xonobod-medical-association)
* requisition.value = "DON-2025-0088231"
* requisition.assigner = Reference(Organization/xonobod-medical-association)
* code.concept = $sct#35382002 "Frozen blood thawing and processing"
* subject = Reference(Location/example-blood-service-laboratory)
* authoredOn = "2026-11-10T10:00:00+05:00"
* requester = Reference(PractitionerRole/example-practitionerrole)
* priority = #urgent
* occurrenceDateTime = "2026-11-10T14:00:00+05:00"
* performer = Reference(Organization/xonobod-medical-association)
* location = Reference(Location/example-blood-service-laboratory)
* focus = Reference(BiologicallyDerivedProduct/example-blood-component-product)
* note.text = "Ehtiyotkorlik bilan qayta ishlang."
