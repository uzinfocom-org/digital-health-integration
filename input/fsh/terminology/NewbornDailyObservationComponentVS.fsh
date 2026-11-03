ValueSet: NewbornDailyObservationComponentVS
Id: newborn-daily-observation-component-vs
Title: "Form097 Newborn Daily Observation Component ValueSet"
Description: "ValueSet for the daily newborn observation panel and its components, Form097 newborn development record."
* insert IntegrationsValueSet(newborn-daily-observation-component-vs)
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form097SnomedSupplementCS)
* ^experimental = true

* include codes from system newborn-daily-observation-component-cs
* include $sct#106076001 "Skin finding"
* include $sct#118235002 "Eye / vision finding"
* include $sct#271825005 "Respiratory distress"
* include $loinc#3141-9 "Body weight Measured"
* include $loinc#8310-5 "Body temperature"
* include $loinc#63895-7 "Breastfeeding status"
* include $sct#62315008 "Diarrhea"
* include $sct#300471006 "Finding of frequency of urination"
* include $sct#772131003 "Umbilical cord stump separated"
* include $sct#249229001 "Finding of umbilical stump"
* include $newborn-daily-monitoring-cs#chr-0125-0003 "Feeding tolerance"
