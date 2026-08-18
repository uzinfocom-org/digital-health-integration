Profile: ScreeningDiagnosticReport
Parent: DiagnosticReport
Id: screening-diagnostic-report
Title: "Screening Diagnostic Report"
Description: "Profile for storing final medical reports resulting from cervical and breast cancer screening procedures (Mammography, Cytology, Colposcopy)."
* ^experimental = true
* ^status = #active
* ^publisher = "DHP Integration"

* identifier MS
* basedOn MS
* status MS
* code MS
* subject MS
* encounter MS
* issued MS
* performer MS
* resultsInterpreter MS
* result MS
* note MS
* study MS
* conclusion MS
* conclusionCode MS

// * status from $diagnostic-report-status-vs (required)
* code from ScreeningServiceRequestCodesVS (preferred)
* conclusionCode from ScreeningObservationValuesVS (preferred)


Instance: DiagnosticReport-mammography
InstanceOf: ScreeningDiagnosticReport
Usage: #example
Description: "Mammography report (summary and findings)"
* identifier[0].system = $screening-local-id
* identifier[=].value = "123"
* identifier[=].use = #usual
* basedOn[0] = Reference(ServiceRequest/ServiceRequest-mammography)
* status = #final
* code = $sct#71651007 "Mammography"
* subject = Reference(Patient/lola-oripova)
* subject.display = "Lola Oripova Shakhzodovna"
* encounter = Reference(Encounter/Encounter-radiology)
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
* identifier[0].system = $screening-local-id
* identifier[=].value = "124"
* identifier[=].use = #usual
* basedOn[0] = Reference(ServiceRequest/ServiceRequest-cytology)
* status = #final
* code = $loinc#18500-9 "Microscopic observation [Identifier] in Cervix by Cyto stain.thin prep"  
* subject = Reference(Patient/lola-oripova)
* subject.display = "Lola Oripova Shakhzodovna"
* encounter = Reference(Encounter/Encounter-laboratory)
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
* identifier[0].system = $screening-local-id
* identifier[=].value = "125"
* identifier[=].use = #usual
* basedOn[0] = Reference(ServiceRequest/ServiceRequest-colposcopy)
* status = #final
* code = $sct#392003006 "Colposcopy"
* subject = Reference(Patient/lola-oripova)
* subject.display = "Lola Oripova Shakhzodovna"
* encounter = Reference(Encounter/Encounter-diagnostics)
* issued = "2025-11-18T14:27:00Z"
* performer[0] = Reference(Organization/xonobod-medical-association)
* performer[=].display = "Khonobod City Medical Association"
* resultsInterpreter[0] = Reference(PractitionerRole/practitioner-role-gynecologist)
// Ссылка на наблюдение
* result[0] = Reference(Observation/colposcopy-result)