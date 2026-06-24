Profile: ScreeningObservation
Parent: UZCoreObservation
Id: screening-observation
Title: "Screening Observation"
Description: "Profile for storing cervical and breast cancer screening results (laboratory tests, findings, and biometric measurements)."
* ^experimental = true
* ^status = #active
* ^publisher = "DHP Integration"

* bodySite MS

// Привязка справочников (Терминология)
* code from ScreeningObservationCodesVS (preferred)
* valueCodeableConcept from ScreeningObservationValuesVS (preferred)
* bodySite from ScreeningBodySiteVS (required)

* bodySite.extension contains BreastQuadrantExtension named quadrant 0..* MS
* bodySite.extension[quadrant].valueCodeableConcept from ScreeningBreastQuadrantVS (required)

* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Sliced by the code identifying each screening measurement."
* component contains
    transformationZone 0..1 MS and
    birads 0..1 MS and
    breastDensity 0..1 MS and
    imageQuality 0..1 MS

* component[transformationZone] ^short = "Cervical transformation zone type (colposcopy)"
* component[transformationZone].code = $sct#1285652007
* component[transformationZone].value[x] only CodeableConcept
* component[transformationZone].value[x] from ScreeningTransformationZoneVS (required)

* component[birads] ^short = "BI-RADS assessment category (mammography)"
* component[birads].code = $sct#1348266008
* component[birads].value[x] only CodeableConcept
* component[birads].value[x] from ScreeningBiradsVS (required)

* component[breastDensity] ^short = "Mammographic breast density (mammography)"
* component[breastDensity].code = $sct#129793001
* component[breastDensity].value[x] only CodeableConcept
* component[breastDensity].value[x] from ScreeningBreastFormVS (required)

* component[imageQuality] ^short = "Image quality (mammography)"
* component[imageQuality].code = $sct#246646005
* component[imageQuality].value[x] only CodeableConcept
* component[imageQuality].value[x] from ScreeningImageQualityVS (required)


Instance: patient-workplace
InstanceOf: ScreeningObservation
Usage: #example
Description: "Patient's place of work and employer, recorded as social history."
* identifier[0].system = $screening-local-id
* identifier[=].value = "340"
* identifier[=].use = #usual
* status = #final
* code = $sct#224406003 "Details relating to place of work and employer"
* subject = Reference(Patient/lola-oripova)
* subject.display = "Lola Oripova Shakhzodovna"
* encounter = Reference(Encounter/Encounter-general)
* issued = "2025-11-17T13:28:17.239+02:00"
* effectiveDateTime = "2025-11-17T13:28:17+02:00"
* performer = Reference(PractitionerRole/practitioner-role-nurse)
* valueString = "Professor at the National University"

Instance: cytology-result
InstanceOf: ScreeningObservation
Usage: #example
Description: "Result of cytological smear examination: LSIL."
* identifier[0].system = $screening-local-id
* identifier[=].value = "333"
* identifier[=].use = #usual
* basedOn = Reference(ServiceRequest/ServiceRequest-cytology)
* status = #final
* code = $loinc#18500-9 "Microscopic observation [Identifier] in Cervix by Cyto stain.thin prep"  
* subject = Reference(Patient/lola-oripova)
* subject.display = "Lola Oripova Shakhzodovna"
* encounter = Reference(Encounter/Encounter-laboratory)
* effectiveDateTime = "2025-11-17T13:28:17+02:00"
* issued = "2025-11-17T13:28:17.239+02:00"
* performer = Reference(PractitionerRole/practitioner-role-laborant)
* valueCodeableConcept = screening-cervical-cytology-cs#scr-cyt-3 "LSIL"

Instance: cytology-ai-analysis
InstanceOf: ScreeningObservation
Usage: #example
Description: "Cytological smear analysis performed by an AI system."
* identifier[0].system = $screening-local-id
* identifier[=].value = "333"
* identifier[=].use = #usual
* basedOn = Reference(ServiceRequest/ServiceRequest-cytology)
* status = #final
* code = $loinc#18500-9 "Microscopic observation [Identifier] in Cervix by Cyto stain.thin prep"  
* subject = Reference(Patient/lola-oripova)
* subject.display = "Lola Oripova Shakhzodovna"
* encounter = Reference(Encounter/Encounter-laboratory)
* issued = "2025-11-17T13:28:17.239+02:00"
* effectiveDateTime = "2025-11-17T13:28:17+02:00"
* performer = Reference(PractitionerRole/practitioner-role-laborant)
* valueString = "ai result"

Instance: hpv-result
InstanceOf: ScreeningObservation
Usage: #example
Description: "High-risk HPV DNA test result."
* identifier[0].system = $screening-local-id
* identifier[=].value = "333"
* identifier[=].use = #usual
* basedOn = Reference(ServiceRequest/ServiceRequest-hpv)
* status = #final
* code = $loinc#82675-0 "HPV I/H Risk 4 DNA Cvx Ql NAA+probe"
* effectiveDateTime = "2025-11-17T13:28:17+02:00"
* subject = Reference(Patient/lola-oripova)
* subject.display = "Lola Oripova Shakhzodovna"
* encounter = Reference(Encounter/Encounter-laboratory)
* performer = Reference(PractitionerRole/practitioner-role-laborant)
* valueCodeableConcept = screening-hpv-cs#scr-hpv-3 "Positive"

Instance: colposcopy-result
InstanceOf: ScreeningObservation
Usage: #example
Description: "Colposcopy conclusion including transformation zone assessment."
* identifier[0].system = $screening-local-id
* identifier[=].value = "334"
* identifier[=].use = #usual
* basedOn = Reference(ServiceRequest/ServiceRequest-colposcopy)
* status = #final
* code = $sct#392003006 "Colposcopy"
* subject = Reference(Patient/lola-oripova)
* subject.display = "Lola Oripova Shakhzodovna"
* encounter = Reference(Encounter/Encounter-diagnostics)
* issued = "2025-11-17T13:28:17.239+02:00"
* effectiveDateTime = "2025-11-17T13:28:17+02:00"
* performer = Reference(PractitionerRole/practitioner-role-gynecologist)
* valueCodeableConcept = screening-colposcopy-cs#scr-colpo-2 "LSIL"
* component[0].code = $sct#1285652007 "Structure of transition zone of cervix uteri"
* component[=].valueCodeableConcept = screening-transformation-zone-cs#scr-tz-2 "Type 2 (partially in canal)"

Instance: mammography-summary
InstanceOf: ScreeningObservation
Usage: #example
Description: "Mammography summary including BI-RADS category, breast density, and image quality."
* identifier[0].system = $screening-local-id
* identifier[=].value = "335"
* identifier[=].use = #usual
* basedOn = Reference(ServiceRequest/ServiceRequest-mammography)
* status = #final
* code = $sct#71651007 "Mammography"
* subject = Reference(Patient/lola-oripova)
* subject.display = "Lola Oripova Shakhzodovna"
* encounter = Reference(Encounter/Encounter-radiology)
* issued = "2025-11-17T13:28:17.239+02:00"
* effectiveDateTime = "2025-11-17T13:28:17+02:00"
* performer = Reference(PractitionerRole/practitioner-role-radiologist)
* component[0].code = $sct#1348266008 "Breast Imaging and Reporting and Data System"
* component[=].valueCodeableConcept = screening-birads-cs#src-birads-2 "2"
* component[+].code = $sct#129793001 "Mammographic breast density"
* component[=].valueCodeableConcept = screening-breast-form-cs#src-breast-density-4 "Type D"
* component[+].code = $sct#246646005 "Quality of visual image"
* component[=].valueCodeableConcept = screening-image-quality-cs#src-img-quality-3 "Moderate"

Instance: mammography-right-breast-finding
InstanceOf: ScreeningObservation
Usage: #example
Description: "Finding (mole) detected in the right breast during mammography."
* identifier[0].system = $screening-local-id
* identifier[=].value = "335"
* identifier[=].use = #usual
* basedOn = Reference(ServiceRequest/ServiceRequest-mammography)
* status = #final
* code = $sct#71651007 "Mammography"
* subject = Reference(Patient/lola-oripova)
* subject.display = "Lola Oripova Shakhzodovna"
* encounter = Reference(Encounter/Encounter-radiology)
* issued = "2025-11-17T13:28:17.239+02:00"
* effectiveDateTime = "2025-11-17T13:28:17+02:00"
* performer = Reference(PractitionerRole/practitioner-role-radiologist)
* bodySite = $sct#73056007 "Right breast structure"
* bodySite.extension[quadrant].valueCodeableConcept = screening-breast-quadrant-cs#src-breast-quadrant-2
* component[0].code = $sct#109285009 "Melanocytic nevus of skin of breast"
* component[0].valueBoolean = true

Instance: mammography-left-breast-finding
InstanceOf: ScreeningObservation
Usage: #example
Description: "Finding (skin thickening) detected in the left breast during mammography."
* identifier[0].system = $screening-local-id
* identifier[=].value = "335"
* identifier[=].use = #usual
* basedOn = Reference(ServiceRequest/ServiceRequest-mammography)
* status = #final
* code = $sct#71651007 "Mammography"
* subject = Reference(Patient/lola-oripova)
* subject.display = "Lola Oripova Shakhzodovna"
* encounter = Reference(Encounter/Encounter-radiology)
* issued = "2025-11-17T13:28:17.239+02:00"
* effectiveDateTime = "2025-11-17T13:28:17+02:00"
* performer = Reference(PractitionerRole/practitioner-role-radiologist)
* bodySite = $sct#80248007 "Left breast structure"
* bodySite.extension[quadrant].valueCodeableConcept = screening-breast-quadrant-cs#src-breast-quadrant-1
* component[0].code = $sct#129797000 "Mammographic skin thickening of breast"
* component[0].valueBoolean = true

Instance: gynecological-physical-exam
InstanceOf: ScreeningObservation
Usage: #example
Description: "Medical history obtained during gynecological examination. Anthropometrics (height, weight, BMI) are recorded as separate vital-signs Observations."
* identifier[0].system = $screening-local-id
* identifier[=].value = "336"
* identifier[=].use = #usual
* status = #final
* code = $sct#5880005 "Physical examination"
* subject = Reference(Patient/lola-oripova)
* subject.display = "Lola Oripova Shakhzodovna"
* encounter = Reference(Encounter/Encounter-general)
* issued = "2025-11-17T13:28:17.239+02:00"
* effectiveDateTime = "2025-11-17T13:28:17+02:00"
* performer = Reference(PractitionerRole/practitioner-role-gynecologist)
* note[0].text = "Menarche at age 13, 2 pregnancies, 2 deliveries."

Instance: gynecological-complaints
InstanceOf: ScreeningObservation
Usage: #example
Description: "Patient-reported symptoms and complaints during gynecological consultation."
* identifier[0].system = $screening-local-id
* identifier[=].value = "337"
* identifier[=].use = #usual
* status = #final
* code = $sct#1269489004 "Chief complaint"
* subject = Reference(Patient/lola-oripova)
* subject.display = "Lola Oripova Shakhzodovna"
* encounter = Reference(Encounter/Encounter-general)
* issued = "2025-11-17T13:28:17.239+02:00"
* effectiveDateTime = "2025-11-17T13:28:17+02:00"
* performer = Reference(PractitionerRole/practitioner-role-gynecologist)
* note[0].text = "Menstrual dysfunction"
* note[+].text = "Lower abdominal pain"

Instance: oncogynecological-followup
InstanceOf: ScreeningObservation
Usage: #example
Description: "Data from examination in the oncology follow-up office (complaints, contraindications)."

* identifier[0].system = $screening-local-id
* identifier[=].value = "338"
* identifier[=].use = #usual
* status = #final
* code = $sct#281036007 "Follow-up consultation"
* subject = Reference(Patient/lola-oripova)
* subject.display = "Lola Oripova Shakhzodovna"
* encounter = Reference(Encounter/Encounter-general)
* issued = "2025-11-17T13:28:17.239+02:00"
* effectiveDateTime = "2025-11-17T13:28:17+02:00"
* performer = Reference(PractitionerRole/practitioner-role-nurse)
* component[0].code = $sct#1269489004 "Chief complaint"
* component[=].valueString = "stomach pain"
* component[+].code = $sct#103306004 "Contraindication to"
* component[=].valueString = "painkillers should not be taken"
* component[+].code.text = "Comment"
* component[=].valueString = "better to send to the laboratory"


Instance: body-height
InstanceOf: bodyheight
Usage: #example
Description: "Patient body height, recorded as a vital sign during the screening examination."
* identifier[0].system = $screening-local-id
* identifier[=].value = "341"
* identifier[=].use = #usual
* status = #final
* category[VSCat] = $observation-category#vital-signs "Vital Signs"
* code = $loinc#8302-2 "Body height"
* subject = Reference(Patient/lola-oripova)
* subject.display = "Lola Oripova Shakhzodovna"
* encounter = Reference(Encounter/Encounter-general)
* effectiveDateTime = "2025-11-17T13:28:17+02:00"
* performer = Reference(PractitionerRole/practitioner-role-gynecologist)
* valueQuantity = 160 'cm' "cm"

Instance: body-weight
InstanceOf: bodyweight
Usage: #example
Description: "Patient body weight, recorded as a vital sign during the screening examination."
* identifier[0].system = $screening-local-id
* identifier[=].value = "342"
* identifier[=].use = #usual
* status = #final
* category[VSCat] = $observation-category#vital-signs "Vital Signs"
* code = $loinc#29463-7 "Body weight"
* subject = Reference(Patient/lola-oripova)
* subject.display = "Lola Oripova Shakhzodovna"
* encounter = Reference(Encounter/Encounter-general)
* effectiveDateTime = "2025-11-17T13:28:17+02:00"
* performer = Reference(PractitionerRole/practitioner-role-gynecologist)
* valueQuantity = 52 'kg' "kg"

Instance: body-mass-index
InstanceOf: bmi
Usage: #example
Description: "Patient body mass index, recorded as a vital sign during the screening examination."
* identifier[0].system = $screening-local-id
* identifier[=].value = "343"
* identifier[=].use = #usual
* status = #final
* category[VSCat] = $observation-category#vital-signs "Vital Signs"
* code = $loinc#39156-5 "Body mass index (BMI) [Ratio]"
* subject = Reference(Patient/lola-oripova)
* subject.display = "Lola Oripova Shakhzodovna"
* encounter = Reference(Encounter/Encounter-general)
* effectiveDateTime = "2025-11-17T13:28:17+02:00"
* performer = Reference(PractitionerRole/practitioner-role-gynecologist)
* valueQuantity = 20.3 'kg/m2' "kg/m2"