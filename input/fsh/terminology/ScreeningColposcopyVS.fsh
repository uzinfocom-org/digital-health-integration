ValueSet: ScreeningColposcopyVS
Id: screening-colposcopy-vs
Title: "Colposcopy Results ValueSet"
Description: "Screening colposcopy conclusion values: SNOMED CT concepts where equivalent and local codes for atypical change and the combined CIN 2+ category."
* insert IntegrationsValueSet(screening-colposcopy-vs)
* ^experimental = true

* include $sct#373887005 "Negative for intraepithelial lesion or malignancy"
* include $sct#416030007 "Cervicovaginal cytology: Low grade squamous intraepithelial lesion"
* include $sct#22725004 "High-grade squamous intraepithelial lesion"
* include $sct#373878001 "Atypical squamous cells, cannot exclude high-grade squamous intraepithelial lesion"
* include $sct#285836003 "Cervical intraepithelial neoplasia grade 1"
* include codes from system screening-colposcopy-cs
