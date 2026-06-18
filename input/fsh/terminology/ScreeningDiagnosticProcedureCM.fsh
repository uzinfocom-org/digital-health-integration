Instance: screening-diagnostic-procedure-to-snomed
InstanceOf: ConceptMap
Usage: #definition
Title: "Diagnostic Procedures to SNOMED CT"
Description: "Maps local UZ screening diagnostic procedure codes to SNOMED CT."
* url = "https://terminology.dhp.uz/ConceptMap/screening-diagnostic-procedure-to-snomed"
* name = "ScreeningDiagnosticProcedureToSnomed"
* status = #draft
* experimental = false
* publisher = "DHP Integration"

* group.source = Canonical(ScreeningDiagnosticProcedureCS)
* sourceScopeCanonical = Canonical(ScreeningDiagnosticProcedureVS)
* group.target = $sct
* targetScopeCanonical = $sct-vs // Требует алиаса: Alias: $sct-vs = http://snomed.info/sct?fhir_vs

// 1. УЗИ
* group.element[+].code = #scr-diag-1
* group.element[=].display = "Breast Ultrasound"
* group.element[=].target[+].code = #47079000
* group.element[=].target[=].display = "Ultrasound of breast"
* group.element[=].target[=].relationship = #equivalent

// 2. Биопсия молочной железы
* group.element[+].code = #scr-diag-2
* group.element[=].display = "Breast Biopsy"
* group.element[=].target[+].code = #122548005
* group.element[=].target[=].display = "Biopsy of breast"
* group.element[=].target[=].relationship = #equivalent

// 3. Эксцизия
* group.element[+].code = #scr-diag-3
* group.element[=].display = "Excision"
* group.element[=].target[+].code = #65801008
* group.element[=].target[=].display = "Excision"
* group.element[=].target[=].relationship = #equivalent

// 4. Маммография
* group.element[+].code = #scr-diag-4
* group.element[=].display = "Mammography"
* group.element[=].target[+].code = #71651007
* group.element[=].target[=].display = "Mammography"
* group.element[=].target[=].relationship = #equivalent

// 5. Конизация
* group.element[+].code = #scr-diag-5
* group.element[=].display = "Conization"
* group.element[=].target[+].code = #54535009
* group.element[=].target[=].display = "Cone biopsy of cervix"
* group.element[=].target[=].relationship = #equivalent

// 6. Кольпоскопия
* group.element[+].code = #scr-diag-6
* group.element[=].display = "Colposcopy"
* group.element[=].target[+].code = #392003006
* group.element[=].target[=].display = "Colposcopy"
* group.element[=].target[=].relationship = #equivalent

// 7. Биопсия шейки матки
* group.element[+].code = #scr-diag-7
* group.element[=].display = "Cervical Biopsy"
* group.element[=].target[+].code = #50796003
* group.element[=].target[=].display = "Cervical biopsy"
* group.element[=].target[=].relationship = #equivalent