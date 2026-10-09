Invariant: screening-plan-1
Description: "A screening plan has exactly one program identifier and cannot use the unspecified result classification"
Severity: #error
Expression: "identifier.where(system = 'https://dhp.uz/fhir/core/sid/prg/uz/program').count() = 1 and identifier.where(system = 'https://dhp.uz/fhir/core/sid/prg/uz/program').where(value = 'breast-cervical-unspecified').empty()"

Invariant: screening-national-1
Description: "A national invitation pins the canonical and version of its screening PlanDefinition"
Severity: #error
Expression: "instantiatesCanonical.all(matches('^[^|]+[|][^|]+$'))"

Profile: ScreeningPlanServiceRequest
Parent: UZCoreServiceRequest
Id: screening-plan-service-request
Title: "Screening Plan ServiceRequest"
Description: "Patient-specific screening plan used for a Ministry invitation or a MIS-created plan. Clinical test orders continue to use ScreeningServiceRequest."
* ^status = #draft
* ^experimental = true
* obeys screening-plan-1
* intent = #plan
* subject only Reference(UZCorePatient)
* authoredOn 1..1 MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains program 1..1 MS
* identifier[program].system 1..1
* identifier[program].system = $screening-program-type-id
* identifier[program].value 1..1
* identifier[program].value ^comment = "Use the exact program code from the core ScreeningProgramTypeVS. Identifier.value is a string, so a terminology binding cannot be applied to it. DMED breast/cervical program values are not aliases of the HPV SNOMED values."
* category[dhpCategory] 1..1
* category[dhpCategory] = $sct#310422005 "Prevention/screening invitation"
* code ^comment = "Optional clinical service coding, when present in code.concept. The program is determined by identifier[program], not by this code."
* code.reference 0..0
* code.concept 1..1
* occurrencePeriod 0..0
* meta.source 0..0
* performer 1..* MS
* performer only Reference(UZCoreOrganization or UZCorePractitionerRole or UZCorePractitioner or UZCoreHealthcareService)
* performer ^comment = "The assigned service provider. The application maps the program identifier to the DMED or HPV system; meta.source is not routing information."
* instantiatesCanonical MS
* instantiatesCanonical only Canonical(ScreeningPlanDefinition)
* replaces MS
* replaces only Reference(ScreeningPlanServiceRequest)
* extension contains http://hl7.org/fhir/StructureDefinition/request-statusReason named statusReason 0..1 MS
* extension[statusReason].valueCodeableConcept from ScreeningPlanClosureReasonVS (example)
* extension[statusReason] ^comment = "Optional draft closure reasons pending agreement. No proposed reason-to-status mapping is enforced by this profile."

Profile: ScreeningNationalInvitation
Parent: ScreeningPlanServiceRequest
Id: screening-national-invitation
Title: "Screening National Invitation"
Description: "A Ministry screening invitation linked to the exact version of the screening PlanDefinition."
* ^status = #draft
* ^experimental = true
* obeys screening-national-1
* instantiatesCanonical 1..1
* instantiatesCanonical ^comment = "Use canonical|version. The current PlanDefinition version must be resolved before reusing an invitation."

Profile: ScreeningMisPlan
Parent: ScreeningPlanServiceRequest
Id: screening-mis-plan
Title: "Screening MIS Plan"
Description: "A plan created by a MIS independently of a Ministry invitation; instantiatesCanonical is absent."
* ^status = #draft
* ^experimental = true
* instantiatesCanonical 0..0
