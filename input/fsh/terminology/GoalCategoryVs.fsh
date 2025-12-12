ValueSet: GoalCategoryVs
Id: goal-category-vs
Title: "Goal Category VS translations"
Description: "Value Set for Goal Category translations"
* ^url = "https://dhp.uz/fhir/integrations/ValueSet/goal-category-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(GoalCategoryCS)

* include codes from system $goal-category