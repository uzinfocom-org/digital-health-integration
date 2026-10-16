ValueSet: Form111_AnalysisTestCodeVS
Id: form111-analysis-test-code-vs
Title: "Form 111 Analysis Test Code ValueSet"
Description: "Form 111 Analysis Test Code ValueSet for clinical documents and other knowledge resources in Uzbekistan integrations. Based on Ministry of Health Order 399."
* insert IntegrationsValueSet(form111-analysis-test-code-vs)
* ^experimental = true
* ^status = #draft

* include codes from system form111-analysis-test-code-cs
* $loinc#5195-3 "Hepatitis B virus surface Ag [Presence] in Serum"
* $loinc#7918-6 "HIV 1+2 Ab [Presence] in Serum"
* $loinc#14361-0 "Microscopic observation [Identifier] in Vaginal fluid by Gram stain"
* $loinc#10704-5 "Ova and parasites identified in Stool by Light microscopy"
* $loinc#22577-1 "Toxoplasma gondii Ab [Presence] in Serum"
* $loinc#24356-8 "Urinalysis complete panel - Urine"
* $loinc#22461-8 "Reagin Ab [Presence] in Serum"