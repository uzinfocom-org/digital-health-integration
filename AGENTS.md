# DHP Integrations FHIR Implementation Guide

HL7 FHIR R5 Implementation Guide for third-party systems integrating with the Digital Health Platform, authored in FHIR Shorthand (FSH) and built with SUSHI / the HL7 IG Publisher. It depends on the [UZ Core IG](https://github.com/uzinfocom-org/digital-health-ig).

## Modelling guidelines (required reading)

Before creating or modifying any FHIR profile, extension, value set, code system, naming system, instance, or other modelling artifact, you MUST read the core IG's [`modelling-guidelines.md`](https://github.com/uzinfocom-org/digital-health-ig/blob/main/modelling-guidelines.md) in full and follow it. It defines the naming conventions, canonical URL patterns, identifier systems, cardinality rules, binding strengths, slicing patterns, terminology and versioning rules, and structural conventions every artifact must follow. It applies here too, with the canonical bases below instead of the core ones.

New clinical forms follow `docs/new-form.ru.md`.

## Build Commands
- **Full build**: `./_genonce.sh` (runs SUSHI itself - don't run SUSHI separately)
- **Narrative only**: `./fast-narrative-rebuild.sh` re-renders `input/pagecontent/*.md` in all languages without the publisher
- **Update publisher**: `./_updatePublisher.sh`

## Code Style & Conventions
- **FSH files**: `input/fsh/` (profiles in `profiles/`, examples in `examples/`, terminology in `terminology/`); extra-large code systems in `input/manual-fsh/`, pre-rendered as JSON in `input/vocabulary/`
- **Content**: Markdown pages in `input/pagecontent/`, translations in `input/translations/{ru,uz}/`
- **Canonical base**: `https://dhp.uz/fhir/integrations` for profiles and `https://terminology.dhp.uz/fhir/integrations` for terminologies
- **Identifier systems**: reuse the core `https://dhp.uz/fhir/core/sid/{namespace}/{country}/{type}` systems (modelling guidelines §2.8)
- **Questionnaires**: a questionnaire that belongs to an integration names it in a `program` useContext coded from `integration-area-cs`, so the [questionnaires](input/pagecontent/forms.md) page can group it
