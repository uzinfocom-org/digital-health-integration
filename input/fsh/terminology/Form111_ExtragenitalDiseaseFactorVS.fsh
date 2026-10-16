ValueSet: Form111_ExtragenitalDiseaseFactorVS
Id: form111-extragenital-disease-factor-vs
Title: "Form 111 Extragenital Disease Factor ValueSet"
Description: "Form 111 Extragenital Disease Factor ValueSet for clinical documents and other knowledge resources in Uzbekistan integrations. Based on Ministry of Health Order 399."

* insert IntegrationsValueSet(form111-extragenital-disease-factor-vs)

* ^experimental = true
* ^status = #draft

* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form111_ExtragenitalDiseaseFactorCS)

* $sct#40733004 "Infectious disease"
* $sct#414022008 "Disorder of cellular component of blood"
* $sct#105969002 "Disorder of connective tissue"
* $sct#362969004 "Disorder of endocrine system"
* $sct#362970003 "Disorder of hemostatic system"
* $sct#235856003 "Disease of liver"
* $sct#19829001 "Disorder of lung"
* $sct#128606002 "Disorder of urinary system"
* $sct#66590003 "Alcohol dependence"
* $sct#1254812006 "Substance dependence"