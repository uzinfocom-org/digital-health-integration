ValueSet: GoalStartEventVS
Id: goal-start-event-vs
Title: "Goal Start Event VS translations"
Description: "Value Set for Goal Start Event translations"

* ^url = "https://dhp.uz/fhir/integrations/ValueSet/goal-start-event-vs"
* ^experimental = true

* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(GoalStartEventCS)

/* SNOMED kodlarini alohida qo‘shish */
* include $sct#32485007
* include $sct#308283009
* include $sct#442137000
* include $sct#386216000
