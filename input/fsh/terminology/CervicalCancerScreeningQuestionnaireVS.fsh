ValueSet: CervicalCancerScreeningQuestionnaireVS
Id: cervical-cancer-screening-questionnaire-vs
Title: "Cervical Cancer Screening Questionnaire ValueSet"
Description: "Value set containing Cervical Cancer Screening Questionnaire"
* insert IntegrationsValueSet(cervical-cancer-screening-questionnaire-vs)
* ^experimental = true

* ^compose.include[0].system = $sct
* ^compose.include[=].concept[0].code = #302757007
* ^compose.include[=].concept[=].designation[0].language = #uz
* ^compose.include[=].concept[=].designation[=].value = "Muntazam"
* ^compose.include[=].concept[+].code = #80182007
* ^compose.include[=].concept[=].designation[0].language = #uz
* ^compose.include[=].concept[=].designation[=].value = "Muntazamsiz"
