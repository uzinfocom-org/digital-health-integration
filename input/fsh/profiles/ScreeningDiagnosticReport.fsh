Profile: ScreeningDiagnosticReport
Parent: DiagnosticReport
Id: screening-diagnostic-report
Title: "Screening Diagnostic Report"
Description: "Profile for storing final medical reports resulting from cervical and breast cancer screening procedures (Mammography, Cytology, Colposcopy)."
* ^experimental = true
* ^status = #active
* ^publisher = "DHP Integration"
* insert ScreeningMetaSource

* identifier MS
* basedOn MS
* status MS
* code MS
* subject MS
* issued MS
* performer MS
* resultsInterpreter MS
* result MS
* note MS
* study MS
* conclusion MS
* conclusionCode MS
* supportingInfo MS
* supportingInfo.type MS
* supportingInfo.reference MS

// * status from $diagnostic-report-status-vs (required)
* code from ScreeningServiceRequestCodesVS (preferred)
* conclusionCode from ScreeningObservationValuesVS (preferred)


Instance: DiagnosticReport-breast-pathology
InstanceOf: ScreeningDiagnosticReport
Usage: #example
Description: "Breast pathology report (histology plus immunohistochemistry), with the patient's prior special treatment history carried as supporting information rather than on the pathology request."
* meta.source = "https://dhp.uz/fhir/source/screening"
* identifier[0].system = $screening-local-id
* identifier[=].value = "126"
* identifier[=].use = #usual
* identifier[+].system = $screening-program-type-id
* identifier[=].value = "268547008"
* basedOn[0] = Reference(ServiceRequest/screening-pathology-request-example)
* status = #final
* code = $sct#714797009 "Histologic test"
* subject = Reference(Patient/lola-oripova)
* subject.display = "Lola Oripova Shakhzodovna"
* issued = "2026-07-17T16:00:00+05:00"
* performer[0] = Reference(PractitionerRole/practitioner-role-pathologist)
* resultsInterpreter[0] = Reference(PractitionerRole/practitioner-role-pathologist)
* result[0] = Reference(Observation/screening-breast-histology-observation-example)
* result[+] = Reference(Observation/screening-immunohistochemistry-observation-example)
* supportingInfo[0].type = $v2-0936#SCI "Supporting Clinical Information"
* supportingInfo[=].reference = Reference(Observation/screening-special-treatment-observation-example)
* conclusion = "Патоморфологическое заключение и связанная ИГХ опубликованы."

Instance: DiagnosticReport-mammography
InstanceOf: ScreeningDiagnosticReport
Usage: #example
Description: "Mammography report (summary and findings)"
* meta.source = "https://dhp.uz/fhir/source/screening"
* identifier[0].system = $screening-local-id
* identifier[=].value = "123"
* identifier[=].use = #usual
* identifier[+].system = $screening-program-type-id
* identifier[=].value = "268547008"
* basedOn[0] = Reference(ServiceRequest/ServiceRequest-mammography)
* status = #final
* code = $sct#71651007 "Mammography"
* subject = Reference(Patient/lola-oripova)
* subject.display = "Lola Oripova Shakhzodovna"
* issued = "2025-11-18T14:27:00Z"
* performer[0] = Reference(PractitionerRole/practitioner-role-radiologist)
* resultsInterpreter[0] = Reference(PractitionerRole/practitioner-role-radiologist)
* result[0] = Reference(Observation/mammography-summary)
* result[+] = Reference(Observation/mammography-right-breast-finding)
* result[+] = Reference(Observation/mammography-left-breast-finding)
* conclusion = "RECOMMENDATIONS! ........"
* conclusionCode[0] = screening-birads-cs#src-birads-2 "2"

Instance: DiagnosticReport-cytology
InstanceOf: ScreeningDiagnosticReport
Usage: #example
Description: "Laboratory report: Liquid-based cytology"
* meta.source = "https://dhp.uz/fhir/source/screening"
* identifier[0].system = $screening-local-id
* identifier[=].value = "124"
* identifier[=].use = #usual
* identifier[+].system = $screening-program-type-id
* identifier[=].value = "171149006"
* basedOn[0] = Reference(ServiceRequest/ServiceRequest-cytology)
* status = #final
* code = $loinc#18500-9 "Microscopic observation [Identifier] in Cervix by Cyto stain.thin prep"  
* subject = Reference(Patient/lola-oripova)
* subject.display = "Lola Oripova Shakhzodovna"
* issued = "2025-11-18T14:27:00Z"
* performer[0] = Reference(Organization/xonobod-medical-association)
* performer[=].display = "Khonobod City Medical Association"
* resultsInterpreter[0] = Reference(PractitionerRole/practitioner-role-laborant)
// Ссылки на наблюдения (Результат врача + Анализ ИИ)
* result[0] = Reference(Observation/cytology-result)
* result[+] = Reference(Observation/cytology-ai-analysis)

Instance: DiagnosticReport-colposcopy
InstanceOf: ScreeningDiagnosticReport
Usage: #example
Description: "Diagnostic report: Colposcopy"
* meta.source = "https://dhp.uz/fhir/source/screening"
* identifier[0].system = $screening-local-id
* identifier[=].value = "125"
* identifier[=].use = #usual
* identifier[+].system = $screening-program-type-id
* identifier[=].value = "171149006"
* basedOn[0] = Reference(ServiceRequest/ServiceRequest-colposcopy)
* status = #final
* code = $sct#392003006 "Colposcopy"
* subject = Reference(Patient/lola-oripova)
* subject.display = "Lola Oripova Shakhzodovna"
* issued = "2025-11-18T14:27:00Z"
* performer[0] = Reference(Organization/xonobod-medical-association)
* performer[=].display = "Khonobod City Medical Association"
* resultsInterpreter[0] = Reference(PractitionerRole/practitioner-role-gynecologist)
// Ссылка на наблюдение
* result[0] = Reference(Observation/colposcopy-result)