ValueSet: FertilityQuestionnaireVS
Id: fertility-questionnaire-vs
Title: "Fertility Questionnaire ValueSet"
Description: "Answer codes valueset for the fertility questionnaire"
* insert IntegrationsValueSet(fertility-questionnaire-vs)
* ^experimental = true

* ^compose.include[0].system = $v2-0532
* ^compose.include[=].concept[0].code = #Y
* ^compose.include[=].concept[=].designation[0].language = #uz
* ^compose.include[=].concept[=].designation[=].value = "Ha"
* ^compose.include[=].concept[+].code = #N
* ^compose.include[=].concept[=].designation[0].language = #uz
* ^compose.include[=].concept[=].designation[=].value = "Yo'q"
* ^compose.include[+].system = $sct
* ^compose.include[=].concept[0].code = #60890002
* ^compose.include[=].concept[=].designation[0].language = #uz
* ^compose.include[=].concept[=].designation[=].value = "Jarrohlik — ayol sterilizatsiyasi"
* ^compose.include[=].concept[+].code = #830148006
* ^compose.include[=].concept[=].designation[0].language = #uz
* ^compose.include[=].concept[=].designation[=].value = "Jarrohlik — vazektomiya"
* ^compose.include[=].concept[+].code = #225371000
* ^compose.include[=].concept[=].designation[0].language = #uz
* ^compose.include[=].concept[=].designation[=].value = "Jarrohliksiz — tabiiy"
* ^compose.include[=].concept[+].code = #225370004
* ^compose.include[=].concept[=].designation[0].language = #uz
* ^compose.include[=].concept[=].designation[=].value = "Jarrohliksiz — baryer"
* ^compose.include[=].concept[+].code = #268466006
* ^compose.include[=].concept[=].designation[0].language = #uz
* ^compose.include[=].concept[=].designation[=].value = "Jarrohliksiz — kimyoviy"
* ^compose.include[=].concept[+].code = #312081001
* ^compose.include[=].concept[=].designation[0].language = #uz
* ^compose.include[=].concept[=].designation[=].value = "Jarrohliksiz — bachadon ichi"
* ^compose.include[=].concept[+].code = #1237404009
* ^compose.include[=].concept[=].designation[0].language = #uz
* ^compose.include[=].concept[=].designation[=].value = "Jarrohliksiz — gormonal"
* ^compose.include[=].concept[+].code = #445375000
* ^compose.include[=].concept[=].designation[0].language = #uz
* ^compose.include[=].concept[=].designation[=].value = "Foydalanilmaydi"
* ^compose.include[=].concept[+].code = #297106006
* ^compose.include[=].concept[=].designation[0].language = #uz
* ^compose.include[=].concept[=].designation[=].value = "Birlamchi"
* ^compose.include[=].concept[+].code = #297121000
* ^compose.include[=].concept[=].designation[0].language = #uz
* ^compose.include[=].concept[=].designation[=].value = "Ikkilamchi"
