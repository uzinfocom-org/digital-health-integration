ValueSet: ScreeningCervicalMaterialTypeVS
Id: screening-cervical-material-type-vs
Title: "Screening Cervical Material Type ValueSet"
Description: "Defines Screening Cervical Material Type"
* insert IntegrationsValueSet(screening-cervical-material-type-vs)
* ^experimental = true
* ^language = #uz
// Conization and cone biopsy both map to Cone biopsy of cervix: the retired
// 265891003 (Conisation of cervix) has no separate active successor.
* include $sct#51675008
* include $sct#52889002
* include $sct#8889005
* include $sct#54535009
