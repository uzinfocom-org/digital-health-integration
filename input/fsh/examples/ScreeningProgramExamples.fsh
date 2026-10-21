Instance: example-hpv-cervical-plan
InstanceOf: UZCorePlanDefinition
Usage: #example
Title: "Example Screening PlanDefinition - HPV Cervical Program"
Description: "HPV cervical program definition referring to a reusable invitation template."
* language = #uz
* url = "https://dhp.uz/fhir/integrations/PlanDefinition/example-hpv-cervical-plan"
* version = "1.0.0"
* name = "ExampleHpvCervicalPlan"
* title = "Example HPV cervical screening program"
* status = #draft
* experimental = true
* description = "HPV cervical screening program and its invitation template."
* identifier[0].system = $screening-program-type-id
* identifier[0].value = "171149006"
* useContext[screeningFocus].valueCodeableConcept = $sct#360156006 "Screening intent"
* action[0].linkId = "cervical-invitation"
* action[0].title = "Create an HPV cervical screening invitation"
* action[0].definitionCanonical = "https://dhp.uz/fhir/integrations/ActivityDefinition/example-hpv-cervical-invitation-activity|1.0.0"

Instance: example-hpv-cervical-invitation-activity
InstanceOf: UZCoreActivityDefinition
Usage: #example
Title: "Example UZ Core ActivityDefinition - HPV Cervical Invitation"
Description: "A reusable invitation template using the existing UZ Core ActivityDefinition and ServiceRequest profiles. The MIS manages clinical work and plan status."
* language = #uz
* url = "https://dhp.uz/fhir/integrations/ActivityDefinition/example-hpv-cervical-invitation-activity"
* version = "1.0.0"
* name = "ExampleHpvCervicalInvitationActivity"
* title = "Create HPV cervical screening invitation"
* status = #draft
* experimental = true
* identifier[0].system = $screening-program-type-id
* identifier[0].value = "171149006"
* kind = #ServiceRequest
* code = $sct#171149006 "Screening for malignant neoplasm of cervix"
* intent = #plan
* profile = Canonical(UZCoreServiceRequest)
* useContext[0].code = $usage-context-type#focus
* useContext[0].valueCodeableConcept = $sct#360156006 "Screening intent"

Instance: example-dmed-breast-plan
InstanceOf: UZCoreServiceRequest
Usage: #example
Title: "Example Screening MIS Plan - DMED Breast Program"
Description: "DMED's independently created plan uses the distinct local program identifier, and omits source, occurrencePeriod and instantiatesCanonical."
* language = #uz
* intent = #plan
* category[dhpCategory] = $sct#310422005 "Prevention/screening invitation"
* identifier[0].system = $screening-program-type-id
* identifier[0].value = "mserv-0007-00007"
* status = #active
* code.concept = $sct#268547008 "Screening for malignant neoplasm of breast"
* subject = Reference(Patient/lola-oripova)
* authoredOn = "2026-10-09T09:00:00+05:00"
* performer[0] = Reference(Organization/xonobod-medical-association)

Instance: example-hpv-cervical-plan-v2
InstanceOf: UZCorePlanDefinition
Usage: #example
Title: "Example Screening PlanDefinition - Replacement HPV Cervical Program"
Description: "Illustrative replacement definition of the same program; a distinct canonical permits both examples in one IG. No clinical eligibility rule is inferred from this replacement."
* language = #uz
* url = "https://dhp.uz/fhir/integrations/PlanDefinition/example-hpv-cervical-plan-v2"
* version = "2.0.0"
* name = "ExampleHpvCervicalPlanV2"
* title = "Example HPV cervical screening program version 2"
* status = #draft
* experimental = true
* description = "A successor definition of the HPV cervical screening program."
* identifier[0].system = $screening-program-type-id
* identifier[0].value = "171149006"
* useContext[screeningFocus].valueCodeableConcept = $sct#360156006 "Screening intent"
* action[0].linkId = "cervical-invitation"
* action[0].definitionCanonical = "https://dhp.uz/fhir/integrations/ActivityDefinition/example-hpv-cervical-invitation-activity|1.0.0"

Instance: example-hpv-cervical-successor-invitation
InstanceOf: UZCoreServiceRequest
Usage: #example
Title: "Example Screening National Invitation - Successor"
Description: "A current-version invitation refers to its predecessor through replaces; old open invitations must not block it."
* language = #uz
* intent = #plan
* category[dhpCategory] = $sct#310422005 "Prevention/screening invitation"
* identifier[0].system = $screening-program-type-id
* identifier[0].value = "171149006"
* instantiatesCanonical = "https://dhp.uz/fhir/integrations/PlanDefinition/example-hpv-cervical-plan-v2|2.0.0"
* replaces = Reference(ServiceRequest/ServiceRequest-screening-invitation-cervical)
* status = #draft
* subject = Reference(Patient/lola-oripova)
* authoredOn = "2026-10-09T09:00:00+05:00"
* performer[0] = Reference(Organization/xonobod-medical-association)

Instance: example-hpv-breast-mis-plan
InstanceOf: UZCoreServiceRequest
Usage: #example
Title: "Example Screening MIS Plan - HPV Breast Program"
Description: "HPV's plan remains active across repeated screening rounds while it is applicable; it is not the DMED breast plan. The optional clinical code is omitted."
* language = #uz
* intent = #plan
* category[dhpCategory] = $sct#310422005 "Prevention/screening invitation"
* identifier[0].system = $screening-program-type-id
* identifier[0].value = "268547008"
* status = #active
* subject = Reference(Patient/lola-oripova)
* authoredOn = "2026-10-09T09:00:00+05:00"
* performer[0] = Reference(Organization/xonobod-medical-association)

Instance: example-dmed-breast-plan-completed
InstanceOf: UZCoreServiceRequest
Usage: #example
Title: "Example Screening MIS Plan - Completed DMED Breast Program"
Description: "DMED closes its own plan after saving the linked completed QuestionnaireResponse. No state is changed on the distinct HPV program."
* language = #uz
* intent = #plan
* category[dhpCategory] = $sct#310422005 "Prevention/screening invitation"
* identifier[0].system = $screening-program-type-id
* identifier[0].value = "mserv-0007-00007"
* status = #completed
* subject = Reference(Patient/lola-oripova)
* authoredOn = "2026-10-09T09:00:00+05:00"
* performer[0] = Reference(Organization/xonobod-medical-association)
