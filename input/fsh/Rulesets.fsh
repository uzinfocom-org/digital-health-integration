RuleSet: IntegrationsValueSet(id)
// A ValueSet's canonical is on the terminology host regardless of whether it
// draws from an original or a supplement code system, so one URL rule covers all.
* ^url = "https://terminology.dhp.uz/fhir/integrations/ValueSet/{id}"

RuleSet: OriginalCodeSystemDraft(id)
* ^url = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/{id}"
* ^status = #draft
* ^content = #complete
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^language = #uz
* ^experimental = true

RuleSet: OriginalCodeSystem(id)
* ^url = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/{id}"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^language = #uz
* ^experimental = false

RuleSet: SupplementCodeSystemDraft(id, supplements, version)
* ^url = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/{id}"
* ^status = #draft
* ^content = #supplement
* ^supplements = {supplements}
* ^version = "{version}"
* ^language = #en
* ^experimental = true


RuleSet: SupplementCodeSystem(id, supplements, version)
* ^url = "https://terminology.dhp.uz/fhir/integrations/CodeSystem/{id}"
* ^status = #active
* ^content = #supplement
* ^supplements = {supplements}
* ^version = "{version}"
* ^language = #en
* ^experimental = false

Invariant: smeta-1
Description: "meta.source identifies the DMED or HPV screening system"
Severity: #error
Expression: "meta.source.replaceMatches('#.*$', '') in ('https://dhp.uz/fhir/source/screening' | 'https://dhp.uz/fhir/source/dmed')"

RuleSet: ScreeningMetaSource
* meta 1..1 MS
* meta.source 1..1 MS
* meta.source ^short = "https://dhp.uz/fhir/source/screening | https://dhp.uz/fhir/source/dmed"
* meta.source ^comment = "Identifies which system created this resource: the HPV (ВПЧ) screening system or DMED. Do not infer source system from the presence of an identifier from screening-identifier-system -- that system's usage does not indicate which system produced a resource; DMED currently not writing to it is an implementation detail, not a guarantee."
* obeys smeta-1