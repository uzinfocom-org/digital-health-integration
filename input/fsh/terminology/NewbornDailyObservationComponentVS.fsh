ValueSet: NewbornDailyObservationComponentVS
Id: newborn-daily-observation-component-vs
Title: "Form097 Newborn Daily Observation Component ValueSet"
Description: "ValueSet for the daily newborn observation panel and its components, Form097 newborn development record."
* insert IntegrationsValueSet(newborn-daily-observation-component-vs)
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form097SnomedSupplementCS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form097LoincSupplementCS)
* ^experimental = true

* include codes from system newborn-daily-observation-component-cs
* include $loinc#10206-1 "Physical findings of Skin Narrative"
* include $loinc#10197-2 "Physical findings of Eye Narrative"
* include $loinc#11412-4 "Physical findings of Respiratory system Narrative"
* include $loinc#3141-9 "Body weight Measured"
* include $loinc#8310-5 "Body temperature"
* include $loinc#63895-7 "Breastfeeding status"
* include $sct#62315008 "Diarrhea"
* include $sct#364198000 "Frequency of urination"
* include $sct#364594006 "Umbilical stump observable"
* include $newborn-daily-monitoring-cs#chr-0125-0003 "Feeding tolerance"
