RuleSet: OriginalCodeSystemDraft(id)
* ^url = "https://dhp.uz/fhir/integrations/CodeSystem/{id}"
* ^status = #draft
* ^content = #complete
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^language = #uz
* ^experimental = true

RuleSet: OriginalCodeSystem(id)
* ^url = "https://dhp.uz/fhir/integrations/CodeSystem/{id}"
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^language = #uz
* ^experimental = false

RuleSet: SupplementCodeSystemDraft(id, supplements, version)
* ^url = "https://dhp.uz/fhir/integrations/CodeSystem/{id}"
* ^status = #draft
* ^content = #supplement
* ^supplements = "{supplements}"
* ^version = "{version}"
* ^language = #en
* ^experimental = true

RuleSet: SupplementCodeSystem(id, supplements, version)
* ^url = "https://dhp.uz/fhir/integrations/CodeSystem/{id}"
* ^status = #active
* ^content = #supplement
* ^supplements = "{supplements}"
* ^version = "{version}"
* ^language = #en
* ^experimental = false