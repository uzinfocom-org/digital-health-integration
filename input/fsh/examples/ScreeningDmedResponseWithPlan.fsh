Instance: example-dmed-breast-response-with-plan
InstanceOf: UZCoreQuestionnaireResponse
Usage: #example
Title: "Example DMED Breast QuestionnaireResponse with Plan"
Description: "An existing DMED breast response example with unchanged answers, linked to its completed DMED plan."
* questionnaire = Canonical(BreastCancerScreeningQuestionnaire)
* identifier[0].system = $screening-program-type-id
* identifier[0].value = "mserv-0007-00007"
* meta.source = "https://dhp.uz/fhir/source/dmed"
* status = #completed
* subject = Reference(lola-oripova)
* authored = "2026-10-09T09:15:00+05:00"
* language = #uz

* item[+]
  * linkId = "mastitis-history"
  * answer[+].valueCoding = $v2-0532#N "No"

* item[+]
  * linkId = "breast-surgery-history"
  * answer[+].valueCoding = $v2-0532#N "No"

* item[+]
  * linkId = "breast-trauma-history"
  * answer[+].valueCoding = $v2-0532#Y "Yes"

* item[+]
  * linkId = "fibrocystic-mastopathy"
  * answer[+].valueCoding = $v2-0532#N "No"

* item[+]
  * linkId = "axillary-lymph-node-changes"
  * answer[+].valueCoding = $v2-0532#N "No"

* item[+]
  * linkId = "breast-local-changes"
  * answer[+].valueCoding = $v2-0532#N "No"

* item[+]
  * linkId = "gynecological-diseases"
  * answer[+].valueCoding = $v2-0532#Y "Yes"

* item[+]
  * linkId = "cyclic-breast-pain"
  * answer[+].valueCoding = $v2-0532#Y "Yes"

* item[+]
  * linkId = "thyroid-disease"
  * answer[+].valueCoding = $v2-0532#N "No"

* item[+]
  * linkId = "relation"
  * answer[+].valueCoding = $v2-0532#N "No"

* item[+]
  * linkId = "breast-cancer-risk-result"
  * item[+]
    * linkId = "breast-cancer-total-score"
    * answer[+].valueInteger = 9
  * item[+]
    * linkId = "breast-cancer-risk-category"
    * answer[+].valueCoding = $breast-cancer-risk-category-cs#low "Past xavf"

* basedOn[0] = Reference(ServiceRequest/example-dmed-breast-plan-completed)
