// Versioned risk scoring for the canonical Screening questionnaires.
// The external system submits statusRisk. DHP evaluates expectedRiskCode independently and
// rejects a completed QuestionnaireResponse when its submitted Coding.code does not match.
// Every scored source answer is required; unknown/missing answers produce no score.

RuleSet: ScreeningBreastRiskScoring
// Source: input/excel/risk_questionnaires.xlsx (РМЖ_вопросы, Шкала_риска); questionnaire version 1.1.0.
// Risk bands: 0-5 low, 6-12 medium, 13-19 high, 20+ very high.
* item[0].required = true
* extension[+].url = $variable
* extension[=].valueExpression.name = #riskQ118
* extension[=].valueExpression.language = #"text/fhirpath"
* extension[=].valueExpression.expression = "%resource.item.where(linkId='118').answer.value.ofType(Boolean).single()"
* item[1].required = true
* extension[+].url = $variable
* extension[=].valueExpression.name = #riskQ119
* extension[=].valueExpression.language = #"text/fhirpath"
* extension[=].valueExpression.expression = "%resource.item.where(linkId='119').answer.value.ofType(Coding).code.single()"
* item[2].required = true
* extension[+].url = $variable
* extension[=].valueExpression.name = #riskQ34
* extension[=].valueExpression.language = #"text/fhirpath"
* extension[=].valueExpression.expression = "%resource.item.where(linkId='34').answer.value.ofType(Coding).code.single()"
* item[3].required = true
* extension[+].url = $variable
* extension[=].valueExpression.name = #riskQ117
* extension[=].valueExpression.language = #"text/fhirpath"
* extension[=].valueExpression.expression = "%resource.item.where(linkId='117').answer.value.ofType(Boolean).single()"
* item[4].required = true
* extension[+].url = $variable
* extension[=].valueExpression.name = #riskQ120
* extension[=].valueExpression.language = #"text/fhirpath"
* extension[=].valueExpression.expression = "%resource.item.where(linkId='120').answer.value.ofType(Coding).code.single()"
* item[5].required = true
* extension[+].url = $variable
* extension[=].valueExpression.name = #riskQ121
* extension[=].valueExpression.language = #"text/fhirpath"
* extension[=].valueExpression.expression = "%resource.item.where(linkId='121').answer.value.ofType(Coding).code.single()"
* item[6].required = true
* extension[+].url = $variable
* extension[=].valueExpression.name = #riskQ122
* extension[=].valueExpression.language = #"text/fhirpath"
* extension[=].valueExpression.expression = "%resource.item.where(linkId='122').answer.value.ofType(Coding).code.single()"
* item[7].required = true
* extension[+].url = $variable
* extension[=].valueExpression.name = #riskQ123
* extension[=].valueExpression.language = #"text/fhirpath"
* extension[=].valueExpression.expression = "%resource.item.where(linkId='123').answer.value.ofType(Boolean).single()"
* item[8].required = true
* extension[+].url = $variable
* extension[=].valueExpression.name = #riskQ124
* extension[=].valueExpression.language = #"text/fhirpath"
* extension[=].valueExpression.expression = "%resource.item.where(linkId='124').answer.value.ofType(Coding).code.single()"
* item[9].required = true
* extension[+].url = $variable
* extension[=].valueExpression.name = #riskQ125
* extension[=].valueExpression.language = #"text/fhirpath"
* extension[=].valueExpression.expression = "%resource.item.where(linkId='125').answer.value.ofType(Coding).code.single()"
* item[10].required = true
* extension[+].url = $variable
* extension[=].valueExpression.name = #riskQ126
* extension[=].valueExpression.language = #"text/fhirpath"
* extension[=].valueExpression.expression = "%resource.item.where(linkId='126').answer.value.ofType(Boolean).single()"
* item[11].required = true
* extension[+].url = $variable
* extension[=].valueExpression.name = #rawScore
* extension[=].valueExpression.language = #"text/fhirpath"
* extension[=].valueExpression.expression = "iif(%riskQ118 = true, 5, iif(%riskQ118 = false, 0, {})) + iif(%riskQ119 = 'scrn-0070-00001', 3, iif(%riskQ119 = 'scrn-0070-00002', 0, iif(%riskQ119 = 'scrn-0070-00003', 2, {}))) + iif(%riskQ34 = 'scrn-0070-00004', 0, iif(%riskQ34 = 'scrn-0070-00005', 1, iif(%riskQ34 = 'scrn-0070-00006', 3, {}))) + iif(%riskQ117 = true, 5, iif(%riskQ117 = false, 0, {})) + iif(%riskQ120 = 'scrn-0070-00009', 3, iif(%riskQ120 = 'scrn-0070-00010', 4, iif(%riskQ120 = 'scrn-0070-00007', 0, iif(%riskQ120 = 'scrn-0070-00008', 2, {})))) + iif(%riskQ121 = 'scrn-0070-00013', 4, iif(%riskQ121 = 'scrn-0070-00011', 0, iif(%riskQ121 = 'scrn-0070-00012', 2, {}))) + iif(%riskQ122 = 'scrn-0070-00014', 0, iif(%riskQ122 = 'scrn-0070-00015', 2, iif(%riskQ122 = 'scrn-0070-00016', 3, {}))) + iif(%riskQ123 = true, 6, iif(%riskQ123 = false, 0, {})) + iif(%riskQ124 = 'scrn-0070-00017', 0, iif(%riskQ124 = 'scrn-0070-00018', 4, iif(%riskQ124 = 'scrn-0070-00019', 6, {}))) + iif(%riskQ125 = 'scrn-0070-00020', 0, iif(%riskQ125 = 'scrn-0070-00021', 5, iif(%riskQ125 = 'scrn-0070-00022', 2, {}))) + iif(%riskQ126 = true, 3, iif(%riskQ126 = false, 0, {}))"
* extension[+].url = $variable
* extension[=].valueExpression.name = #totalScore
* extension[=].valueExpression.language = #"text/fhirpath"
* extension[=].valueExpression.expression = "iif(%rawScore < 0, 0, %rawScore)"
* extension[+].url = $variable
* extension[=].valueExpression.name = #expectedRiskCode
* extension[=].valueExpression.language = #"text/fhirpath"
* extension[=].valueExpression.expression = "iif(%totalScore.exists(), iif(%totalScore <= 5, 'scrn-0081-00001', iif(%totalScore <= 12, 'scrn-0081-00002', iif(%totalScore <= 19, 'scrn-0081-00003', 'scrn-0081-00004'))), {})"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/targetConstraint"
* extension[=].extension[0].url = "key"
* extension[=].extension[0].valueId = "screening-risk-match"
* extension[=].extension[1].url = "severity"
* extension[=].extension[1].valueCode = #error
* extension[=].extension[2].url = "expression"
* extension[=].extension[2].valueExpression.language = #"text/fhirpath"
* extension[=].extension[2].valueExpression.expression = "%expectedRiskCode.exists() and %resource.item.where(linkId='statusRisk').count() = 1 and %resource.item.where(linkId='statusRisk').answer.count() = 1 and %resource.item.where(linkId='statusRisk').answer.value.ofType(Coding).system.single() = 'https://terminology.dhp.uz/fhir/integrations/CodeSystem/screening-risk-level-cs' and %resource.item.where(linkId='statusRisk').answer.value.ofType(Coding).code.single() = %expectedRiskCode"
* extension[=].extension[3].url = "human"
* extension[=].extension[3].valueString = "Submitted statusRisk must equal the risk recalculated from all answers."
* item[12].linkId = "totalScore"
* item[12].text = "Umumiy xavf balli"
* item[12].type = #integer
* item[12].readOnly = true
* item[12].extension[0].url = $sdc-calculated-expression
* item[12].extension[0].valueExpression.language = #"text/fhirpath"
* item[12].extension[0].valueExpression.expression = "%totalScore"

RuleSet: ScreeningCervicalRiskScoring
// Source: input/excel/risk_questionnaires.xlsx (РШМ_вопросы, Шкала_риска); questionnaire version 1.1.0.
// Risk bands: 0-6 low, 7-12 medium, 13-15 high, 16+ very high.
// Vaccination contributes -3; totalScore is floored at 0 to stay within the defined risk bands.
* item[0].required = true
* extension[+].url = $variable
* extension[=].valueExpression.name = #riskQ35
* extension[=].valueExpression.language = #"text/fhirpath"
* extension[=].valueExpression.expression = "%resource.item.where(linkId='35').answer.value.ofType(Coding).code.single()"
* item[1].required = true
* extension[+].url = $variable
* extension[=].valueExpression.name = #riskQ103
* extension[=].valueExpression.language = #"text/fhirpath"
* extension[=].valueExpression.expression = "%resource.item.where(linkId='103').answer.value.ofType(Coding).code.single()"
* item[2].required = true
* extension[+].url = $variable
* extension[=].valueExpression.name = #riskQ104
* extension[=].valueExpression.language = #"text/fhirpath"
* extension[=].valueExpression.expression = "%resource.item.where(linkId='104').answer.value.ofType(Boolean).single()"
* item[3].required = true
* extension[+].url = $variable
* extension[=].valueExpression.name = #riskQ105
* extension[=].valueExpression.language = #"text/fhirpath"
* extension[=].valueExpression.expression = "%resource.item.where(linkId='105').answer.value.ofType(Coding).code.single()"
* item[4].required = true
* extension[+].url = $variable
* extension[=].valueExpression.name = #riskQ106
* extension[=].valueExpression.language = #"text/fhirpath"
* extension[=].valueExpression.expression = "%resource.item.where(linkId='106').answer.value.ofType(Coding).code.single()"
* item[5].required = true
* extension[+].url = $variable
* extension[=].valueExpression.name = #riskQ36
* extension[=].valueExpression.language = #"text/fhirpath"
* extension[=].valueExpression.expression = "%resource.item.where(linkId='36').answer.value.ofType(Boolean).single()"
* item[6].required = true
* extension[+].url = $variable
* extension[=].valueExpression.name = #riskQ37
* extension[=].valueExpression.language = #"text/fhirpath"
* extension[=].valueExpression.expression = "%resource.item.where(linkId='37').answer.value.ofType(Boolean).single()"
* item[7].required = true
* extension[+].url = $variable
* extension[=].valueExpression.name = #riskQ107
* extension[=].valueExpression.language = #"text/fhirpath"
* extension[=].valueExpression.expression = "%resource.item.where(linkId='107').answer.value.ofType(Coding).code.single()"
* item[8].required = true
* extension[+].url = $variable
* extension[=].valueExpression.name = #riskQ41
* extension[=].valueExpression.language = #"text/fhirpath"
* extension[=].valueExpression.expression = "%resource.item.where(linkId='41').answer.value.ofType(Boolean).single()"
* item[9].required = true
* extension[+].url = $variable
* extension[=].valueExpression.name = #riskQ108
* extension[=].valueExpression.language = #"text/fhirpath"
* extension[=].valueExpression.expression = "%resource.item.where(linkId='108').answer.value.ofType(Coding).code.single()"
* item[10].required = true
* extension[+].url = $variable
* extension[=].valueExpression.name = #riskQ109
* extension[=].valueExpression.language = #"text/fhirpath"
* extension[=].valueExpression.expression = "%resource.item.where(linkId='109').answer.value.ofType(Coding).code.single()"
* item[11].required = true
* extension[+].url = $variable
* extension[=].valueExpression.name = #riskQ110
* extension[=].valueExpression.language = #"text/fhirpath"
* extension[=].valueExpression.expression = "%resource.item.where(linkId='110').answer.value.ofType(Coding).code.single()"
* item[12].required = true
* extension[+].url = $variable
* extension[=].valueExpression.name = #riskQ111
* extension[=].valueExpression.language = #"text/fhirpath"
* extension[=].valueExpression.expression = "%resource.item.where(linkId='111').answer.value.ofType(Coding).code.single()"
* item[13].required = true
* extension[+].url = $variable
* extension[=].valueExpression.name = #riskQ112
* extension[=].valueExpression.language = #"text/fhirpath"
* extension[=].valueExpression.expression = "%resource.item.where(linkId='112').answer.value.ofType(Coding).code.single()"
* item[14].required = true
* extension[+].url = $variable
* extension[=].valueExpression.name = #riskQ113
* extension[=].valueExpression.language = #"text/fhirpath"
* extension[=].valueExpression.expression = "%resource.item.where(linkId='113').answer.value.ofType(Coding).code.single()"
* item[15].required = true
* extension[+].url = $variable
* extension[=].valueExpression.name = #riskQ114
* extension[=].valueExpression.language = #"text/fhirpath"
* extension[=].valueExpression.expression = "%resource.item.where(linkId='114').answer.value.ofType(Coding).code.single()"
* item[16].required = true
* extension[+].url = $variable
* extension[=].valueExpression.name = #riskQ115
* extension[=].valueExpression.language = #"text/fhirpath"
* extension[=].valueExpression.expression = "%resource.item.where(linkId='115').answer.value.ofType(Boolean).single()"
* item[17].required = true
* extension[+].url = $variable
* extension[=].valueExpression.name = #riskQ116
* extension[=].valueExpression.language = #"text/fhirpath"
* extension[=].valueExpression.expression = "%resource.item.where(linkId='116').answer.value.ofType(Boolean).single()"
* item[18].required = true
* extension[+].url = $variable
* extension[=].valueExpression.name = #rawScore
* extension[=].valueExpression.language = #"text/fhirpath"
* extension[=].valueExpression.expression = "iif(%riskQ35 = 'scrn-0071-00002', 1, iif(%riskQ35 = 'scrn-0071-00005', 2, iif(%riskQ35 = 'scrn-0071-00006', 2, iif(%riskQ35 = 'scrn-0071-00003', 2, iif(%riskQ35 = 'scrn-0071-00004', 1, iif(%riskQ35 = 'scrn-0071-00007', 1, iif(%riskQ35 = 'scrn-0071-00001', 0, {}))))))) + iif(%riskQ103 = 'scrn-0071-00008', 0, iif(%riskQ103 = 'scrn-0071-00009', 5, {})) + iif(%riskQ104 = true, 5, iif(%riskQ104 = false, 0, {})) + iif(%riskQ105 = 'scrn-0071-00010', 1, iif(%riskQ105 = 'scrn-0071-00011', 2, iif(%riskQ105 = 'scrn-0071-00012', 2, iif(%riskQ105 = 'scrn-0071-00013', 2, {})))) + iif(%riskQ106 = 'scrn-0071-00014', 3, iif(%riskQ106 = 'scrn-0071-00015', 1, {})) + iif(%riskQ36 = true, 10, iif(%riskQ36 = false, 0, {})) + iif(%riskQ37 = true, 5, iif(%riskQ37 = false, 0, {})) + iif(%riskQ107 = 'scrn-0071-00016', 1, iif(%riskQ107 = 'scrn-0071-00017', 3, {})) + iif(%riskQ41 = true, 0, iif(%riskQ41 = false, 2, {})) + iif(%riskQ108 = 'scrn-0071-00018', 2, iif(%riskQ108 = 'scrn-0071-00019', 0, iif(%riskQ108 = 'scrn-0071-00020', 1, {}))) + iif(%riskQ109 = 'scrn-0071-00021', 0, iif(%riskQ109 = 'scrn-0071-00022', 1, iif(%riskQ109 = 'scrn-0071-00023', 2, iif(%riskQ109 = 'scrn-0071-00024', 3, iif(%riskQ109 = 'scrn-0071-00025', 4, {}))))) + iif(%riskQ110 = 'scrn-0071-00027', 5, iif(%riskQ110 = 'scrn-0071-00028', 2, iif(%riskQ110 = 'scrn-0071-00026', 0, {}))) + iif(%riskQ111 = 'scrn-0071-00029', 2, iif(%riskQ111 = 'scrn-0071-00030', 2, iif(%riskQ111 = 'scrn-0071-00031', 0, iif(%riskQ111 = 'scrn-0071-00032', 1, iif(%riskQ111 = 'scrn-0071-00033', 1, {}))))) + iif(%riskQ112 = 'scrn-0071-00034', 0, iif(%riskQ112 = 'scrn-0071-00035', 3, iif(%riskQ112 = 'scrn-0071-00036', 1, {}))) + iif(%riskQ113 = 'scrn-0071-00037', 0, iif(%riskQ113 = 'scrn-0071-00038', 5, iif(%riskQ113 = 'scrn-0071-00039', 2, {}))) + iif(%riskQ114 = 'scrn-0071-00040', 0, iif(%riskQ114 = 'scrn-0071-00041', 3, iif(%riskQ114 = 'scrn-0071-00042', 1, {}))) + iif(%riskQ115 = true, -3, iif(%riskQ115 = false, 3, {})) + iif(%riskQ116 = true, 5, iif(%riskQ116 = false, 0, {}))"
* extension[+].url = $variable
* extension[=].valueExpression.name = #totalScore
* extension[=].valueExpression.language = #"text/fhirpath"
* extension[=].valueExpression.expression = "iif(%rawScore < 0, 0, %rawScore)"
* extension[+].url = $variable
* extension[=].valueExpression.name = #expectedRiskCode
* extension[=].valueExpression.language = #"text/fhirpath"
* extension[=].valueExpression.expression = "iif(%totalScore.exists(), iif(%totalScore <= 6, 'scrn-0081-00001', iif(%totalScore <= 12, 'scrn-0081-00002', iif(%totalScore <= 15, 'scrn-0081-00003', 'scrn-0081-00004'))), {})"
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/targetConstraint"
* extension[=].extension[0].url = "key"
* extension[=].extension[0].valueId = "screening-risk-match"
* extension[=].extension[1].url = "severity"
* extension[=].extension[1].valueCode = #error
* extension[=].extension[2].url = "expression"
* extension[=].extension[2].valueExpression.language = #"text/fhirpath"
* extension[=].extension[2].valueExpression.expression = "%expectedRiskCode.exists() and %resource.item.where(linkId='statusRisk').count() = 1 and %resource.item.where(linkId='statusRisk').answer.count() = 1 and %resource.item.where(linkId='statusRisk').answer.value.ofType(Coding).system.single() = 'https://terminology.dhp.uz/fhir/integrations/CodeSystem/screening-risk-level-cs' and %resource.item.where(linkId='statusRisk').answer.value.ofType(Coding).code.single() = %expectedRiskCode"
* extension[=].extension[3].url = "human"
* extension[=].extension[3].valueString = "Submitted statusRisk must equal the risk recalculated from all answers."
* item[19].linkId = "totalScore"
* item[19].text = "Umumiy xavf balli"
* item[19].type = #integer
* item[19].readOnly = true
* item[19].extension[0].url = $sdc-calculated-expression
* item[19].extension[0].valueExpression.language = #"text/fhirpath"
* item[19].extension[0].valueExpression.expression = "%totalScore"
