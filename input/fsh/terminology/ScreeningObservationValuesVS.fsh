ValueSet: ScreeningObservationValuesVS
Id: screening-observation-values-vs
Title: "Screening Observation Values Composite ValueSet"
Description: "Combined value set of screening result codes for Observation.value[x], including Cytology, HPV, Colposcopy, Transformation Zone, BI-RADS, Breast Density, and Image Quality findings"
* ^url = "https://dhp.uz/fhir/integrations/ValueSet/screening-observation-values-vs"
* ^experimental = true

// Объединяем все справочники результатов
* include codes from system screening-cervical-cytology-cs
* include codes from system screening-hpv-cs
* include codes from system screening-colposcopy-cs
* include codes from system screening-transformation-zone-cs
* include codes from system screening-birads-cs
* include codes from system screening-breast-form-cs
* include codes from system screening-image-quality-cs