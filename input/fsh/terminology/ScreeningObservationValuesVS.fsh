ValueSet: ScreeningObservationValuesVS
Id: screening-observation-values-vs
Title: "Screening Observation Values Composite ValueSet"
Description: "Combined value set of screening result codes for Observation.value[x], including Cytology, HPV, Colposcopy, Transformation Zone, BI-RADS, Breast Density, and Image Quality findings"
* insert IntegrationsValueSet(screening-observation-values-vs)
* ^experimental = true

// Объединяем все справочники результатов
* include codes from system screening-cervical-cytology-cs
* include codes from system screening-hpv-cs
* include $sct#373887005 "Negative for intraepithelial lesion or malignancy"
* include $sct#416030007 "Cervicovaginal cytology: Low grade squamous intraepithelial lesion"
* include $sct#22725004 "High-grade squamous intraepithelial lesion"
* include $sct#373878001 "Atypical squamous cells, cannot exclude high-grade squamous intraepithelial lesion"
* include $sct#285836003 "Cervical intraepithelial neoplasia grade 1"
* include codes from system screening-colposcopy-cs
* include codes from system screening-transformation-zone-cs
* include codes from system screening-birads-cs
* include codes from system screening-breast-form-cs
* include codes from system screening-image-quality-cs

// Supplements providing screening display languages.
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ScreeningSnomedTranslationsCS)
