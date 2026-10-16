ValueSet: Form111_ObstetricHistoryFactorVS
Id: form111-obstetric-history-factor-vs
Title: "Form 111 Obstetric History Factor ValueSet"
Description: "Local value set for obstetric history factors used by the Form 111 information system, with Uzbek and Russian designations."

* insert IntegrationsValueSet(form111-obstetric-history-factor-vs)
* ^experimental = true
* ^language = #uz

* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form111_ObstetricHistoryFactorSnomedCS)

* $sct#40733004 "Infectious disease"
* $sct#8619003 "Infertile"
* $sct#276506001 "Neonatal death"
* $sct#16607004 "Missed miscarriage"
* $sct#161765003 "Past pregnancy history of premature delivery"
* $sct#161743003 "Past pregnancy history of stillbirth"
* $sct#37849005 "Congenital uterine anomaly"

* include codes from system form111-obstetric-history-factor-cs