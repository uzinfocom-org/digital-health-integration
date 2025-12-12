ValueSet: GoalAchievementVS
Id: goal-achievement-vs
Title: "Goal Achievement VS translations"
Description: "Value Set for Goal Achievement translations"
* ^url = "https://dhp.uz/fhir/integrations/ValueSet/goal-achievement-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(GoalAchievementCS)

* include codes from system $goal-achievement