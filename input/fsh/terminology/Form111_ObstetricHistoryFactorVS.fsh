ValueSet: Form111_ObstetricHistoryFactorVS
Id: form111-obstetric-history-factor-vs
Title: "Form 111 Obstetric History Factor ValueSet"
Description: "Form 111 Obstetric History Factor ValueSet for clinical documents and other knowledge resources in Uzbekistan integrations. Based on Ministry of Health Order 399."
* insert IntegrationsValueSet(form111-obstetric-history-factor-vs)
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form111SnomedSupplementCS)

* include codes from system form111-obstetric-history-factor-cs

// SNOMED CT equivalents of the DMED tokens; the remaining local codes have no standard match.
* $sct#8619003 "Infertile"
* $sct#1290167007 "Past pregnancy history of neonatal death"
* $sct#16607004 "Missed miscarriage"
* $sct#161765003 "Past pregnancy history of premature delivery"
* $sct#161743003 "Past pregnancy history of stillbirth"
* $sct#37849005 "Congenital uterine anomaly"

* ^experimental = true
* ^status = #draft
