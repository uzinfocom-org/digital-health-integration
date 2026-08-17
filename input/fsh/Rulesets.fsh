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