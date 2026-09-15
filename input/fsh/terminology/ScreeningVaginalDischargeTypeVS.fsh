ValueSet: ScreeningVaginalDischargeTypeVS
Id: screening-vaginal-discharge-type-vs
Title: "Screening Vaginal Discharge Type ValueSet"
Description: "Defines Screening Vaginal Discharge Type"
* insert IntegrationsValueSet(screening-vaginal-discharge-type-vs)
* ^experimental = true
* ^language = #uz
* include $sct#289566007 "Normal vaginal secretions"
* include $sct#289546003 "Frothy vaginal discharge"
* include $sct#289547007 "Bloodstained vaginal discharge"
* include $sct#289548002 "Mucoid vaginal discharge"
* include $sct#289550005 "Purulent vaginal discharge"
* include codes from system screening-vaginal-discharge-type-cs
