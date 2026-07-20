Instance: doc-form-number
InstanceOf: NamingSystem
Description: "Official form numbers for standardized clinical documents in Uzbekistan"
Usage: #definition
* name = "UzbekistanDocumentFormNumber"
* status = #active
* kind = #identifier
* publisher = "Uzinfocom"
* responsible = "Ministry of Health of the Republic of Uzbekistan"
* date = "2026-02-03"
* description = "Form numbers for standardized clinical documents (e.g., 053, 086, 094, 095, 138)"
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* usage = "Used in Composition.identifier or CarePlan.identifier when a document corresponds to a standardized form"
* uniqueId[0].type = #uri
* uniqueId[=].value = "https://dhp.uz/fhir/core/sid/doc/uz/form-number"
* uniqueId[=].preferred = true

Instance: doc-template-number
InstanceOf: NamingSystem
Description: "Template numbers for clinical document templates in Uzbekistan"
Usage: #definition
* name = "UzbekistanDocumentTemplateNumber"
* status = #active
* kind = #identifier
* publisher = "Uzinfocom"
* responsible = "Ministry of Health of the Republic of Uzbekistan"
* date = "2026-02-03"
* description = "Template numbers for clinical document templates (distinct from form numbers)"
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* usage = "Used in Composition.identifier or CarePlan.identifier to identify the template used"
* uniqueId[0].type = #uri
* uniqueId[=].value = "https://dhp.uz/fhir/core/sid/doc/uz/template-number"
* uniqueId[=].preferred = true




//mine
Instance: organization-code
InstanceOf: NamingSystem
Description: "NamingSystem defining the canonical URI for organization codes used in Uzbekistan healthcare systems."
Usage: #definition
* name = "OrganizationCode"
* status = #active
* kind = #identifier
* date = "2026-04-22"
* publisher = "UZINFOCOM"
* responsible = "UZINFOCOM"
* description = "Identifier system for organization codes."
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://dhp.uz/fhir/core/sid/uz/organization-code"
* uniqueId[0].preferred = true



Instance: department-code-ns
InstanceOf: NamingSystem
Usage: #definition

* name = "DepartmentCodeNamingSystem"
* status = #active
* kind = #identifier
* date = "2026-05-07"
* publisher = "Uzinfocom"
* responsible = "UZINFOCOM"
* description = "NamingSystem for Uzbekistan department codes"
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://dhp.uz/fhir/core/sid/uz/department-code"
* uniqueId[0].preferred = true


Instance: medical-record-number-system
InstanceOf: NamingSystem
Usage: #definition

* url = "https://terminology.dhp.uz/fhir/integrations/NamingSystem/medical-record-number-system"
* name = "UzbekistanMedicalRecordNumberSystem"
* status = #active
* kind = #identifier
* date = "2026-06-22"
* publisher = "Uzinfocom"
* responsible = "Uzinfocom"
* description = "Identifier system used for medical record numbers assigned to encounters and inpatient records in the Digital Health Platform."
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* uniqueId[0].type = #uri
* uniqueId[=].value = "https://dhp.uz/fhir/core/sid/doc/uz/medical-record-number"
* uniqueId[=].preferred = true
Instance: screening-identifier-system
InstanceOf: NamingSystem
Description: "Identifier system for the Cervical Cancer Screening Quality Assessment and Monitoring and Early Breast Cancer Detection Information System"
Usage: #definition
* url = "https://terminology.dhp.uz/fhir/integrations/NamingSystem/screening-identifier-system"
* name = "ScreeningIdentifierSystem"
* status = #active
* kind = #identifier
* date = "2026-06-03"
* publisher = "Uzinfocom"
* responsible = "Uzinfocom"
* usage = "Business-identifier system for clinical and administrative records within the Cervical Cancer Screening Quality Assessment and Monitoring and Early Breast Cancer Detection Information System (e.g. Observation, Encounter, DiagnosticReport, ServiceRequest, Condition, QuestionnaireResponse, PractitionerRole). Person identities use the pid/pro systems instead."
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://dhp.uz/fhir/core/sid/uz/screening"
* uniqueId[0].preferred = true

Instance: screening-patient-identifier-system
InstanceOf: NamingSystem
Description: "Patient identifier system for the Cervical Cancer Screening Quality Assessment and Monitoring and Early Breast Cancer Detection Information System"
Usage: #definition
* url = "https://terminology.dhp.uz/fhir/integrations/NamingSystem/screening-patient-identifier-system"
* name = "ScreeningPatientIdentifierSystem"
* status = #active
* kind = #identifier
* date = "2026-06-24"
* publisher = "Uzinfocom"
* responsible = "Uzinfocom"
* usage = "Identifier assigned to patients by the screening information system. Follows the dhp.uz patient identifier namespace (sid/pid)."
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://dhp.uz/fhir/core/sid/pid/uz/screening"
* uniqueId[0].preferred = true

Instance: screening-practitioner-identifier-system
InstanceOf: NamingSystem
Description: "Practitioner identifier system for the Cervical Cancer Screening Quality Assessment and Monitoring and Early Breast Cancer Detection Information System"
Usage: #definition
* url = "https://terminology.dhp.uz/fhir/integrations/NamingSystem/screening-practitioner-identifier-system"
* name = "ScreeningPractitionerIdentifierSystem"
* status = #active
* kind = #identifier
* date = "2026-06-24"
* publisher = "Uzinfocom"
* responsible = "Uzinfocom"
* usage = "Identifier assigned to healthcare professionals by the screening information system. Follows the dhp.uz practitioner identifier namespace (sid/pro)."
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://dhp.uz/fhir/core/sid/pro/uz/screening"
* uniqueId[0].preferred = true

Instance: sick-leave-number-system
InstanceOf: NamingSystem
Description: "Identifier system for sick leave certificate numbers (листок нетрудоспособности, ЛН) in Uzbekistan"
Usage: #definition
* url = "https://terminology.dhp.uz/fhir/integrations/NamingSystem/sick-leave-number-system"
* name = "UzbekistanSickLeaveNumber"
* status = #active
* kind = #identifier
* publisher = "Uzinfocom"
* responsible = "Ministry of Health of the Republic of Uzbekistan"
* date = "2026-07-20"
* description = "Certificate series and number of a sick leave document (Номер ЛН), assigned when the листок нетрудоспособности is issued."
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* usage = "Used in CarePlan.identifier[series] for the sick leave certificate number (e.g., 01ТШ 005591125)"
* uniqueId[0].type = #uri
* uniqueId[=].value = "https://dhp.uz/fhir/core/sid/doc/uz/sickleave"
* uniqueId[=].preferred = true
