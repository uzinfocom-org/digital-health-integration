Instance: example-hpv-cervical-plan
InstanceOf: ScreeningPlanDefinition
Usage: #example
Title: "Example Screening PlanDefinition - HPV Cervical Program"
Description: "Illustrative HPV program definition. Cohort and recurrence rules are deliberately omitted pending Ministry agreement."
* language = #en
* url = "https://dhp.uz/fhir/integrations/PlanDefinition/example-hpv-cervical-plan"
* version = "1.0.0"
* name = "ExampleHpvCervicalPlan"
* title = "Example HPV cervical screening program"
* status = #draft
* experimental = true
* description = "Illustrative definition of the HPV cervical program; clinical eligibility and recurrence rules require agreement."
* identifier[program].value = "171149006"
* useContext[screeningFocus].valueCodeableConcept = $sct#360156006 "Screening intent"
* action[0].linkId = "cervical-questionnaire"
* action[0].title = "Complete the HPV cervical risk questionnaire"
* action[0].definitionCanonical = "https://dhp.uz/fhir/integrations/ActivityDefinition/example-hpv-cervical-questionnaire-activity|1.0.0"

Instance: example-hpv-cervical-questionnaire-activity
InstanceOf: ScreeningActivityDefinition
Usage: #example
Title: "Example Screening ActivityDefinition - HPV Cervical Questionnaire"
Description: "A ServiceRequest activity that requires the existing HPV questionnaire through the standard workflow-shallComplyWith extension."
* language = #en
* url = "https://dhp.uz/fhir/integrations/ActivityDefinition/example-hpv-cervical-questionnaire-activity"
* version = "1.0.0"
* name = "ExampleHpvCervicalQuestionnaireActivity"
* title = "Complete HPV cervical risk questionnaire"
* status = #draft
* experimental = true
* identifier[program].value = "171149006"
* kind = #ServiceRequest
* code = $sct#171149006 "Screening for malignant neoplasm of cervix"
* intent = #order
* extension[compliesWith].valueCanonical = Canonical(ScreeningCervicalRiskQuestionnaire)

Instance: example-dmed-breast-plan
InstanceOf: ScreeningMisPlan
Usage: #example
Title: "Example Screening MIS Plan - DMED Breast Program"
Description: "DMED's independently created plan uses the distinct local program identifier, and omits source, occurrencePeriod and instantiatesCanonical."
* language = #en
* identifier[program].value = "mserv-0007-00007"
* status = #active
* code.concept = $sct#268547008 "Screening for malignant neoplasm of breast"
* subject = Reference(Patient/lola-oripova)
* authoredOn = "2026-10-09T09:00:00+05:00"
* performer[0] = Reference(Organization/xonobod-medical-association)

Instance: example-hpv-cervical-plan-v2
InstanceOf: ScreeningPlanDefinition
Usage: #example
Title: "Example Screening PlanDefinition - Replacement HPV Cervical Program"
Description: "Illustrative successor version of the same program; no clinical eligibility rule is inferred from this version change."
* language = #en
* url = "https://dhp.uz/fhir/integrations/PlanDefinition/example-hpv-cervical-plan"
* version = "2.0.0"
* name = "ExampleHpvCervicalPlanV2"
* title = "Example HPV cervical screening program version 2"
* status = #draft
* experimental = true
* description = "Illustrative successor program version; the closure mapping for older patient plans requires agreement."
* identifier[program].value = "171149006"
* useContext[screeningFocus].valueCodeableConcept = $sct#360156006 "Screening intent"
* action[0].linkId = "cervical-questionnaire"
* action[0].definitionCanonical = "https://dhp.uz/fhir/integrations/ActivityDefinition/example-hpv-cervical-questionnaire-activity|1.0.0"

Instance: example-hpv-cervical-successor-invitation
InstanceOf: ScreeningNationalInvitation
Usage: #example
Title: "Example Screening National Invitation - Successor"
Description: "A current-version invitation refers to its predecessor through replaces; old open invitations must not block it."
* language = #en
* identifier[program].value = "171149006"
* instantiatesCanonical = "https://dhp.uz/fhir/integrations/PlanDefinition/example-hpv-cervical-plan|2.0.0"
* replaces = Reference(ServiceRequest/ServiceRequest-screening-invitation-cervical)
* status = #draft
* subject = Reference(Patient/lola-oripova)
* authoredOn = "2026-10-09T09:00:00+05:00"
* performer[0] = Reference(Organization/xonobod-medical-association)

Instance: example-hpv-breast-mis-plan
InstanceOf: ScreeningMisPlan
Usage: #example
Title: "Example Screening MIS Plan - HPV Breast Program"
Description: "HPV's plan remains active across repeated screening rounds while it is applicable; it is not the DMED breast plan. The optional clinical code is omitted."
* language = #en
* identifier[program].value = "268547008"
* status = #active
* subject = Reference(Patient/lola-oripova)
* authoredOn = "2026-10-09T09:00:00+05:00"
* performer[0] = Reference(Organization/xonobod-medical-association)

Instance: example-dmed-breast-plan-completed
InstanceOf: ScreeningMisPlan
Usage: #example
Title: "Example Screening MIS Plan - Completed DMED Breast Program"
Description: "DMED closes its own plan after saving the linked completed QuestionnaireResponse. No state is changed on the distinct HPV program."
* language = #en
* identifier[program].value = "mserv-0007-00007"
* status = #completed
* subject = Reference(Patient/lola-oripova)
* authoredOn = "2026-10-09T09:00:00+05:00"
* performer[0] = Reference(Organization/xonobod-medical-association)
