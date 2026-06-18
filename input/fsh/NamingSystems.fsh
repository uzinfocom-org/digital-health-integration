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

Instance: passport-identifier-ns
InstanceOf: NamingSystem
Description: "NamingSystem defining the canonical URI for passport identifiers used for patient identification."
Usage: #definition
* name = "PassportIdentifierNamingSystem"
* status = #active
* kind = #identifier
* date = "2026-01-15"
* uniqueId[0].type = #uri
* uniqueId[=].value = "https://dhp.uz/fhir/core/sid/passport"
* uniqueId[=].preferred = true

Instance: registration-number
InstanceOf: NamingSystem
Description: "NamingSystem defining the canonical URI for document registration numbers in healthcare documents."
Usage: #definition
* name = "DocumentRegistrationNumber"
* status = #active
* kind = #identifier
* date = "2026-04-22"
* publisher = "UZINFOCOM"
* responsible = "UZINFOCOM"
* description = "Identifier system for document registration numbers."
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://dhp.uz/fhir/core/sid/doc/uz/registration-number"
* uniqueId[0].preferred = true

Instance: medical-record-number
InstanceOf: NamingSystem
Description: "NamingSystem defining the canonical URI for medical record numbers assigned by healthcare organizations."
Usage: #definition
* name = "MedicalRecordNumber"
* status = #active
* kind = #identifier
* date = "2026-04-22"
* publisher = "UZINFOCOM"
* responsible = "UZINFOCOM"
* description = "Identifier system for hospital medical record numbers."
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://dhp.uz/fhir/core/sid/doc/uz/medical-record-number"
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

Instance: screening-identifier-system
InstanceOf: NamingSystem
Description: "Identifier system for the Cervical Cancer Screening Quality Assessment and Monitoring and Early Breast Cancer Detection Information System"
Usage: #definition
* url = "https://dhp.uz/fhir/integrations/NamingSystem/screening-identifier-system"
* name = "ScreeningIdentifierSystem"
* status = #active
* kind = #identifier
* date = "2026-06-03"
* publisher = "Uzinfocom"
* responsible = "Uzinfocom"
* usage = "Identifier system used for records within the Cervical Cancer Screening Quality Assessment and Monitoring and Early Breast Cancer Detection Information System."
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://dhp.uz/fhir/core/sid/uz/screening"
* uniqueId[0].preferred = true