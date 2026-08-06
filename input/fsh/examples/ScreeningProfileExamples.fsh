// Minimal but clinically coherent examples for every specialized Screening profile.
// Each example includes the elements required by its profile and can be extended
// by implementers without changing the profile conformance contract.

Instance: ScreeningBreastBiopsyRequestExample
InstanceOf: ScreeningBreastBiopsyServiceRequest
Usage: #example
Title: "Screening Breast Biopsy Request Example"
Description: "Example request for an ultrasound-guided breast core biopsy."
* id = "screening-breast-biopsy-request-example"
* identifier[0].system = "https://dhp.uz/fhir/core/sid/uz/screening"
* identifier[0].value = "BIOPSY-REQ-1001"
* status = #active
* intent = #order
* code.concept = ScreeningBreastBiopsySubtypeCS#scrn-0061-00005
* subject.reference = "Patient/lola-oripova"
* encounter.reference = "Encounter/Encounter-onco-followup"
* authoredOn = 2026-07-17T11:30:00+05:00
* requester.reference = "PractitionerRole/practitioner-role-surgeon"

Instance: ScreeningBreastBiopsyProcedureExample
InstanceOf: ScreeningBreastBiopsyProcedure
Usage: #example
Title: "Screening Breast Biopsy Procedure Example"
Description: "Example completed ultrasound-guided breast core biopsy."
* id = "screening-breast-biopsy-procedure-example"
* identifier[0].system = "https://dhp.uz/fhir/core/sid/uz/screening"
* identifier[0].value = "BIOPSY-PROC-1001"
* status = #completed
* code = ScreeningBreastBiopsySubtypeCS#scrn-0061-00005
* subject.reference = "Patient/lola-oripova"
* encounter.reference = "Encounter/Encounter-onco-followup"
* occurrenceDateTime = 2026-07-17T12:00:00+05:00
* performer[0].actor.reference = "PractitionerRole/practitioner-role-surgeon"

Instance: ScreeningPathologyRequestExample
InstanceOf: ScreeningPathologyServiceRequest
Usage: #example
Title: "Screening Pathology Request Example"
Description: "Example pathology request for a breast biopsy specimen with its biopsy subtype."
* id = "screening-pathology-request-example"
* identifier[0].system = "https://dhp.uz/fhir/core/sid/uz/screening"
* identifier[0].value = "PATH-REQ-1001"
* status = #active
* intent = #order
* code.concept = http://snomed.info/sct#714797009 "Histologic test"
* subject.reference = "Patient/lola-oripova"
* encounter.reference = "Encounter/Encounter-onco-followup"
* authoredOn = 2026-07-17T12:10:00+05:00
* requester.reference = "PractitionerRole/practitioner-role-surgeon"
* orderDetail.parameter[materialClass].code = ScreeningHistologyOrderParameterCS#scrn-0069-00001
* orderDetail.parameter[materialClass].valueCodeableConcept = ScreeningBreastMaterialClassCS#scrn-0072-00001
* orderDetail.parameter[biopsySubtype].code = ScreeningHistologyOrderParameterCS#scrn-0069-00002
* orderDetail.parameter[biopsySubtype].valueCodeableConcept = ScreeningBreastBiopsySubtypeCS#scrn-0061-00005

Instance: ScreeningSpecimenExample
InstanceOf: ScreeningSpecimen
Usage: #example
Title: "Screening Breast Biopsy Specimen Example"
Description: "Example breast biopsy specimen collected for the pathology request."
* id = "screening-breast-biopsy-specimen-example"
* identifier[0].system = "https://dhp.uz/fhir/core/sid/uz/screening"
* identifier[0].value = "SPEC-1001"
* status = #available
* type = ScreeningBreastMaterialClassCS#scrn-0072-00001
* subject.reference = "Patient/lola-oripova"
* request[0].reference = "ServiceRequest/screening-pathology-request-example"
* collection.collector.reference = "PractitionerRole/practitioner-role-surgeon"
* collection.collectedDateTime = 2026-07-17T12:00:00+05:00

Instance: ScreeningBreastCytologyObservationExample
InstanceOf: ScreeningBreastCytologyObservation
Usage: #example
Title: "Screening Breast Cytology Observation Example"
Description: "Example final breast cytology conclusion classified as Yokohama C3."
* id = "screening-breast-cytology-observation-example"
* identifier[0].system = "https://dhp.uz/fhir/core/sid/uz/screening"
* identifier[0].value = "CYT-1001"
* basedOn[0].reference = "ServiceRequest/screening-pathology-request-example"
* status = #final
* code = ScreeningSpecializedObservationParameterCS#scrn-0073-00029
* subject.reference = "Patient/lola-oripova"
* encounter.reference = "Encounter/Encounter-onco-followup"
* effectiveDateTime = 2026-07-17T16:00:00+05:00
* performer[0].reference = "PractitionerRole/practitioner-role-pathologist"
* valueCodeableConcept = ScreeningYokohamaCategoryCS#scrn-0084-00003
* component[materialClass].code = ScreeningSpecializedObservationParameterCS#scrn-0073-00007
* component[materialClass].valueCodeableConcept = ScreeningBreastMaterialClassCS#scrn-0072-00003
* component[primaryConclusion].code = ScreeningSpecializedObservationParameterCS#scrn-0073-00048
* component[primaryConclusion].valueBoolean = true

Instance: ScreeningBreastHistologyObservationExample
InstanceOf: ScreeningBreastHistologyObservation
Usage: #example
Title: "Screening Breast Histology Observation Example"
Description: "Example final breast biopsy histology result."
* id = "screening-breast-histology-observation-example"
* identifier[0].system = "https://dhp.uz/fhir/core/sid/uz/screening"
* identifier[0].value = "HIST-1001"
* basedOn[0].reference = "ServiceRequest/screening-pathology-request-example"
* status = #final
* code = ScreeningSpecializedObservationParameterCS#scrn-0073-00005
* subject.reference = "Patient/lola-oripova"
* encounter.reference = "Encounter/Encounter-onco-followup"
* effectiveDateTime = 2026-07-17T16:00:00+05:00
* performer[0].reference = "PractitionerRole/practitioner-role-pathologist"
* component[materialClass].code = ScreeningSpecializedObservationParameterCS#scrn-0073-00007
* component[materialClass].valueCodeableConcept = ScreeningBreastMaterialClassCS#scrn-0072-00001
* component[primaryConclusion].code = ScreeningSpecializedObservationParameterCS#scrn-0073-00048
* component[primaryConclusion].valueBoolean = true

Instance: ScreeningBreastUltrasoundObservationExample
InstanceOf: ScreeningBreastUltrasoundObservation
Usage: #example
Title: "Screening Breast Ultrasound Observation Example"
Description: "Example final breast ultrasonography result with one coded finding."
* id = "screening-breast-ultrasound-observation-example"
* identifier[0].system = "https://dhp.uz/fhir/core/sid/uz/screening"
* identifier[0].value = "US-1001"
* status = #final
* code = http://snomed.info/sct#47079000 "Ultrasonography of breast"
* subject.reference = "Patient/lola-oripova"
* encounter.reference = "Encounter/Encounter-onco-followup"
* effectiveDateTime = 2026-07-17T11:00:00+05:00
* performer[0].reference = "PractitionerRole/practitioner-role-ultrasound-doctor"
* component[breastFinding].code = ScreeningSpecializedObservationParameterCS#scrn-0073-00004
* component[breastFinding].valueCodeableConcept = ScreeningBreastFindingCS#scrn-0028-00007

Instance: ScreeningCervicalHistologyObservationExample
InstanceOf: ScreeningCervicalHistologyObservation
Usage: #example
Title: "Screening Cervical Histology Observation Example"
Description: "Example final cervical histology conclusion classified as CIN 2."
* id = "screening-cervical-histology-observation-example"
* identifier[0].system = "https://dhp.uz/fhir/core/sid/uz/screening"
* identifier[0].value = "CERV-HIST-1001"
* status = #final
* code = ScreeningSpecializedObservationParameterCS#scrn-0073-00017
* subject.reference = "Patient/lola-oripova"
* encounter.reference = "Encounter/Encounter-onco-followup"
* effectiveDateTime = 2026-07-18T15:00:00+05:00
* performer[0].reference = "PractitionerRole/practitioner-role-pathologist"
* bodySite = http://snomed.info/sct#71252005 "Cervix uteri structure"
* valueCodeableConcept = ScreeningCervicalHistologyMorphologyCS#scrn-0075-00002
* component[primaryConclusion].code = ScreeningSpecializedObservationParameterCS#scrn-0073-00048
* component[primaryConclusion].valueBoolean = true

Instance: ScreeningImmunohistochemistryObservationExample
InstanceOf: ScreeningImmunohistochemistryObservation
Usage: #example
Title: "Screening Immunohistochemistry Observation Example"
Description: "Example immunohistochemistry result derived from the breast histology observation."
* id = "screening-immunohistochemistry-observation-example"
* identifier[0].system = "https://dhp.uz/fhir/core/sid/uz/screening"
* identifier[0].value = "IHC-1001"
* status = #final
* code = ScreeningSpecializedObservationParameterCS#scrn-0073-00001
* subject.reference = "Patient/lola-oripova"
* encounter.reference = "Encounter/Encounter-onco-followup"
* effectiveDateTime = 2026-07-17T16:30:00+05:00
* performer[0].reference = "PractitionerRole/practitioner-role-pathologist"
* derivedFrom[0].reference = "Observation/screening-breast-histology-observation-example"
* component[allredER].code = ScreeningSpecializedObservationParameterCS#scrn-0073-00002
* component[allredER].valueInteger = 7

Instance: ScreeningMammographyObservationExample
InstanceOf: ScreeningMammographyObservation
Usage: #example
Title: "Screening Mammography Observation Example"
Description: "Example final mammography result with BI-RADS, density, image quality and reading number."
* id = "screening-mammography-observation-example"
* identifier[0].system = "https://dhp.uz/fhir/core/sid/uz/screening"
* identifier[0].value = "MAMMO-1001"
* status = #final
* code = http://snomed.info/sct#71651007 "Mammography"
* subject.reference = "Patient/lola-oripova"
* encounter.reference = "Encounter/Encounter-onco-followup"
* effectiveDateTime = 2026-07-17T10:00:00+05:00
* performer[0].reference = "PractitionerRole/practitioner-role-radiologist"
* component[birads].code = http://snomed.info/sct#1348266008 "Breast Imaging and Reporting and Data System"
* component[birads].valueCodeableConcept = ScreeningBiradsCS#src-birads-2
* component[breastDensity].code = http://snomed.info/sct#129793001 "Mammographic breast density"
* component[breastDensity].valueCodeableConcept = ScreeningBreastFormCS#src-breast-density-2
* component[imageQuality].code = http://snomed.info/sct#246646005 "Quality of visual image"
* component[imageQuality].valueCodeableConcept = ScreeningImageQualityCS#src-img-quality-2
* component[readingNumber].code = ScreeningSpecializedObservationParameterCS#scrn-0073-00026
* component[readingNumber].valueInteger = 1
