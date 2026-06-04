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

Instance: certificate-number
InstanceOf: NamingSystem
Description: "Certificate serial number system for Form 044 medical certificates issued in Uzbekistan"
Usage: #definition
* name = "UzbekistanCertificateNumber"
* status = #active
* kind = #identifier
* publisher = "Uzinfocom"
* responsible = "Ministry of Health of the Republic of Uzbekistan"
* date = "2026-02-03"
* description = "Serial number system for individual medical certificates (e.g. Form 044). Each issued certificate receives a unique sequential number within the issuing organization."
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* usage = "Used in Composition.identifier.system for the certificate serial number (Malumotnoma raqami) field"
* uniqueId[0].type = #uri
* uniqueId[=].value = "https://dhp.uz/fhir/core/sid/doc/uz/certificate-number"
* uniqueId[=].preferred = true

Instance: healthcard-identifier
InstanceOf: NamingSystem
Description: "Health card identifier system issued by the State Social Protection Fund of Uzbekistan (SSV)"
Usage: #definition
* name = "UzbekistanHealthCardIdentifier"
* status = #active
* kind = #identifier
* publisher = "Uzinfocom"
* responsible = "State Social Protection Fund of the Republic of Uzbekistan (SSV)"
* date = "2026-02-03"
* description = "Identifier system for patient health cards (tibbiy karta raqami) issued by the State Social Protection Fund (Davlat ijtimoiy ta'minot jamg'armasi — SSV). Used in Patient.identifier to record the medical chart number (Med ID raqami)."
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* usage = "Used in Patient.identifier.system for the medical chart number (Med ID raqami) field"
* uniqueId[0].type = #uri
* uniqueId[=].value = "https://gov.uz/ssv/identifier/healthcard"
* uniqueId[=].preferred = true

Instance: organization-tax-identifier
InstanceOf: NamingSystem
Description: "Organization tax identification number system issued by the Tax Committee of Uzbekistan (Soliq qo'mitasi)"
Usage: #definition
* name = "UzbekistanOrganizationTaxIdentifier"
* status = #active
* kind = #identifier
* publisher = "Uzinfocom"
* responsible = "Tax Committee of the Republic of Uzbekistan (Soliq qo'mitasi)"
* date = "2026-02-03"
* description = "Identifier system for organization tax identification numbers (STIR) issued by the Tax Committee of Uzbekistan. Used in Organization.identifier to record the legal entity tax ID."
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* usage = "Used in Organization.identifier.system for the tax identification number (STIR) field"
* uniqueId[0].type = #uri
* uniqueId[=].value = "https://soliq.uz"
* uniqueId[=].preferred = true
