ValueSet: RespiratoryAuscultationVS
Id: respiratory-auscultation-vs
Title: "Form097 Respiratory Auscultation ValueSet"
Description: "ValueSet for respiratory auscultation, Form097 newborn development record."
* insert IntegrationsValueSet(respiratory-auscultation-vs)
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form097SnomedSupplementCS)
* ^experimental = true

* include codes from system respiratory-auscultation-cs
* include $sct#77047003 "Vesicular breathing"
* include $sct#17361004 "Tracheal breathing"
* include $sct#58840004 "Decreased breath sounds"
* include $sct#79451004 "Bronchial breathing"
* include $sct#33778004 "Bronchovesicular breath sounds"
* include $sct#65503000 "Absent breath sounds"
