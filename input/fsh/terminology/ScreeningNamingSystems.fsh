Instance: ScreeningQuestionnaireIdNamingSystem
InstanceOf: NamingSystem
Usage: #definition
Title: "Screening Questionnaire Identifier NamingSystem"
Description: "NamingSystem for numeric Questionnaire identifiers assigned by Screening."
* name = "ScreeningQuestionnaireIdNamingSystem"
* status = #active
* kind = #identifier
* date = 2026-08-05
* publisher = "DHP Integration"
* responsible = "Screening"
* description = "Numeric identifier assigned to a questionnaire definition by Screening."
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://dhp.uz/fhir/integrations/sid/screening/questionnaire-id"
* uniqueId[0].preferred = true

Instance: ScreeningQuestionnaireCodeNamingSystem
InstanceOf: NamingSystem
Usage: #definition
Title: "Screening Questionnaire Code NamingSystem"
Description: "NamingSystem for stable Questionnaire codes assigned by Screening."
* name = "ScreeningQuestionnaireCodeNamingSystem"
* status = #active
* kind = #identifier
* date = 2026-08-05
* publisher = "DHP Integration"
* responsible = "Screening"
* description = "Stable business code assigned to a questionnaire definition by Screening."
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://dhp.uz/fhir/integrations/sid/screening/questionnaire-code"
* uniqueId[0].preferred = true

Instance: ScreeningPublicHealthCaseNamingSystem
InstanceOf: NamingSystem
Usage: #definition
Title: "Screening Public Health Case Identifier NamingSystem"
Description: "NamingSystem for Screening public-health case and questionnaire response identifiers."
* name = "ScreeningPublicHealthCaseNamingSystem"
* status = #active
* kind = #identifier
* date = 2026-08-05
* publisher = "DHP Integration"
* responsible = "Screening"
* description = "Identifier assigned by Screening to a public-health case or questionnaire response."
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://dhp.uz/fhir/core/sid/org/uz/screening"
* uniqueId[0].preferred = true

Instance: ScreeningForm025IdNamingSystem
InstanceOf: NamingSystem
Usage: #definition
Title: "Screening Form 025 Identifier NamingSystem"
Description: "NamingSystem for source form 025 identifiers assigned by Screening."
* name = "ScreeningForm025IdNamingSystem"
* status = #active
* kind = #identifier
* date = 2026-08-05
* publisher = "DHP Integration"
* responsible = "Screening"
* description = "Source identifier of a Screening form 025 record."
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://dhp.uz/fhir/integrations/sid/screening/form025-id"
* uniqueId[0].preferred = true

Instance: UzbekistanPinflNamingSystem
InstanceOf: NamingSystem
Usage: #definition
Title: "Uzbekistan PINFL NamingSystem"
Description: "NamingSystem for the personal identification number of an individual in Uzbekistan."
* name = "UzbekistanPinflNamingSystem"
* status = #active
* kind = #identifier
* date = 2026-08-05
* publisher = "DHP Integration"
* responsible = "Digital Health Platform"
* description = "Personal identification number of an individual (PINFL) in Uzbekistan."
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://dhp.uz/fhir/core/sid/uz/pinfl"
* uniqueId[0].preferred = true
