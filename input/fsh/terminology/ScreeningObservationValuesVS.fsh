ValueSet: ScreeningObservationValuesVS
Id: screening-observation-values-vs
Title: "Screening Observation Values Composite ValueSet"
Description: "Combined value set of screening result codes for Observation.value[x], including Cytology, HPV, Colposcopy, Transformation Zone, BI-RADS, and Image Quality findings"
* ^url = "https://dhp.uz/fhir/integrations/ValueSet/screening-observation-values-vs"
* ^experimental = true

// Объединяем все справочники результатов
* include codes from system scr-cyt-cs
* include codes from system scr-hpv-cs
* include codes from system scr-colpo-cs
* include codes from system scr-tz-cs
* include codes from system src-birads-cs
* include codes from system src-img-quality-cs