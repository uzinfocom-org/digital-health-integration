ValueSet: GoalPriorityVS
Id: goal-priority-vs
Title: "Goal Priority VS translations"
Description: "Value Set for Goal Priority translations"
* ^url = "https://dhp.uz/fhir/integrations/ValueSet/goal-priority-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(GoalPriorityCS)

* include codes from system $goal-Priority