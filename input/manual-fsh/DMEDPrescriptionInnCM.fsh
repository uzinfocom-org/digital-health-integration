Instance: dmed-prescription-inn-to-medication-classification-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED prescription INN to medication classification"
Description: "Maps DMED `inn_id` to the code of `Medication.code` and `Medication.ingredient.item`: the UZ Core INN code where the Pharmaceutical Committee registry gives it without doubt, otherwise the WHO ATC code that every DMED trade name of that INN carries. Built from the Pharmaceutical Committee registry export of 2026-11-02: an INN code is taken only when every registry package of the INN's trade names names the same INN code, or when the registry substance has the same name; an ATC code only when it is a level-5 code shared by all trade names. Combination INNs are not mapped: each component is coded by its own `inn_id`. An `inn_id` without a mapping is rejected with `terminology-crosswalk-not-found`."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-prescription-inn-to-medication-classification-cm"
* name = "DMEDPrescriptionInnToMedicationClassificationCM"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* sourceScopeCanonical = Canonical(DMEDPrescriptionInnVS)

* group[+].source = Canonical(DMEDPrescriptionInnCS)
* group[=].target = "https://terminology.dhp.uz/fhir/core/CodeSystem/inn-medication-name-cs"
* group[=].element[+].code = #2
* group[=].element[=].display = "Salbutamol"
* group[=].element[=].target[+].code = #006391
* group[=].element[=].target[=].display = "salbutamol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3
* group[=].element[=].display = "Bisoprolol"
* group[=].element[=].target[+].code = #001055
* group[=].element[=].target[=].display = "bisoprolol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #5
* group[=].element[=].display = "Valsartan"
* group[=].element[=].target[+].code = #001329
* group[=].element[=].target[=].display = "valsartan"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #7
* group[=].element[=].display = "Klopidogrel"
* group[=].element[=].target[+].code = #003331
* group[=].element[=].target[=].display = "klopidogrel"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #10
* group[=].element[=].display = "Rozuvastatin"
* group[=].element[=].target[+].code = #006261
* group[=].element[=].target[=].display = "rozuvastatin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #13
* group[=].element[=].display = "Beklometazon"
* group[=].element[=].target[+].code = #000844
* group[=].element[=].target[=].display = "beklometazon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #16
* group[=].element[=].display = "Sefepim"
* group[=].element[=].target[+].code = #008541
* group[=].element[=].target[=].display = "sefepim"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17
* group[=].element[=].display = "Tazobaktam"
* group[=].element[=].target[+].code = #006912
* group[=].element[=].target[=].display = "tazobaktam"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21
* group[=].element[=].display = "Amikasin"
* group[=].element[=].target[+].code = #000381
* group[=].element[=].target[=].display = "amikatsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22
* group[=].element[=].display = "Ofloksasin"
* group[=].element[=].target[+].code = #005249
* group[=].element[=].target[=].display = "ofloksatsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24
* group[=].element[=].display = "Klavulan kislotasi"
* group[=].element[=].target[+].code = #003230
* group[=].element[=].target[=].display = "klavulon kislotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #61
* group[=].element[=].display = "Atorvastatin kalsiy trigidrat"
* group[=].element[=].target[+].code = #000668
* group[=].element[=].target[=].display = "atorvastatin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #62
* group[=].element[=].display = "Sefpodoksim"
* group[=].element[=].target[+].code = #008574
* group[=].element[=].target[=].display = "sefpodoksim"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #65
* group[=].element[=].display = "Rosuvastatin"
* group[=].element[=].target[+].code = #005462
* group[=].element[=].target[=].display = "perindopril"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #72
* group[=].element[=].display = "Gliklazid"
* group[=].element[=].target[+].code = #001754
* group[=].element[=].target[=].display = "gliklazid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #73
* group[=].element[=].display = "Klotrimazol"
* group[=].element[=].target[+].code = #003362
* group[=].element[=].target[=].display = "klotrimazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #75
* group[=].element[=].display = "Desmopressin"
* group[=].element[=].target[+].code = #002106
* group[=].element[=].target[=].display = "desmopressin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #76
* group[=].element[=].display = "Tetratsiklin"
* group[=].element[=].target[+].code = #007180
* group[=].element[=].target[=].display = "tetratsiklin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #82
* group[=].element[=].display = "Ibuprofen"
* group[=].element[=].target[+].code = #002612
* group[=].element[=].target[=].display = "ibuprofen"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #87
* group[=].element[=].display = "Vankomitsin"
* group[=].element[=].target[+].code = #001347
* group[=].element[=].target[=].display = "vankomitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #91
* group[=].element[=].display = "Prednizolon"
* group[=].element[=].target[+].code = #005807
* group[=].element[=].target[=].display = "prednizolon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #97
* group[=].element[=].display = "Ketorolak"
* group[=].element[=].target[+].code = #003225
* group[=].element[=].target[=].display = "ketorolak"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #98
* group[=].element[=].display = "Terbinafin"
* group[=].element[=].target[+].code = #007134
* group[=].element[=].target[=].display = "terbinafin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #99
* group[=].element[=].display = "Sefazolin"
* group[=].element[=].target[+].code = #008522
* group[=].element[=].target[=].display = "sefazolin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #103
* group[=].element[=].display = "Nifuroksazid"
* group[=].element[=].target[+].code = #004878
* group[=].element[=].target[=].display = "nifuroksazid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #111
* group[=].element[=].display = "Indapamid"
* group[=].element[=].target[+].code = #002781
* group[=].element[=].target[=].display = "indapamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #114
* group[=].element[=].display = "Bromgeksin"
* group[=].element[=].target[+].code = #001157
* group[=].element[=].target[=].display = "bromgeksin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #116
* group[=].element[=].display = "Gvayfenezin"
* group[=].element[=].target[+].code = #001595
* group[=].element[=].target[=].display = "gvayfenezin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #117
* group[=].element[=].display = "Levomentol"
* group[=].element[=].target[+].code = #003620
* group[=].element[=].target[=].display = "levomentol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #119
* group[=].element[=].display = "Tenoksikam"
* group[=].element[=].target[+].code = #007111
* group[=].element[=].target[=].display = "tenoksikam"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #124
* group[=].element[=].display = "Streptomitsin"
* group[=].element[=].target[+].code = #006738
* group[=].element[=].target[=].display = "streptomitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #126
* group[=].element[=].display = "Etorikoksib"
* group[=].element[=].target[+].code = #009284
* group[=].element[=].target[=].display = "etorikoksib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #128
* group[=].element[=].display = "Empagliflozin"
* group[=].element[=].target[+].code = #008976
* group[=].element[=].target[=].display = "empagliflozin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #134
* group[=].element[=].display = "Diklofenak"
* group[=].element[=].target[+].code = #002203
* group[=].element[=].target[=].display = "diklofenak"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #136
* group[=].element[=].display = "Ambroksol"
* group[=].element[=].target[+].code = #000356
* group[=].element[=].target[=].display = "ambroksol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #143
* group[=].element[=].display = "Vorikonazol"
* group[=].element[=].target[+].code = #001497
* group[=].element[=].target[=].display = "vorikonazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #144
* group[=].element[=].display = "Norfloksasin"
* group[=].element[=].target[+].code = #004945
* group[=].element[=].target[=].display = "norfloksatsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #145
* group[=].element[=].display = "Seftazidim"
* group[=].element[=].target[+].code = #008581
* group[=].element[=].target[=].display = "seftazidim"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #149
* group[=].element[=].display = "Selekoksib"
* group[=].element[=].target[+].code = #008465
* group[=].element[=].target[=].display = "selekoksib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #153
* group[=].element[=].display = "Ambroksol gidroxlorid"
* group[=].element[=].target[+].code = #000356
* group[=].element[=].target[=].display = "ambroksol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #167
* group[=].element[=].display = "Neomitsin"
* group[=].element[=].target[+].code = #004726
* group[=].element[=].target[=].display = "neomitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #171
* group[=].element[=].display = "Gentamisin"
* group[=].element[=].target[+].code = #001644
* group[=].element[=].target[=].display = "gentamitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #183
* group[=].element[=].display = "Naftifin"
* group[=].element[=].target[+].code = #004682
* group[=].element[=].target[=].display = "naftifin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #185
* group[=].element[=].display = "Sulfatsetamid"
* group[=].element[=].target[+].code = #006850
* group[=].element[=].target[=].display = "sulfatsetamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #201
* group[=].element[=].display = "Rifaksimin"
* group[=].element[=].target[+].code = #006237
* group[=].element[=].target[=].display = "rifaksimin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #213
* group[=].element[=].display = "Diaserein"
* group[=].element[=].target[+].code = #002153
* group[=].element[=].target[=].display = "diatserein"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #216
* group[=].element[=].display = "Aseklofenak"
* group[=].element[=].target[+].code = #000714
* group[=].element[=].target[=].display = "atseklofenak"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #233
* group[=].element[=].display = "Setirizin"
* group[=].element[=].target[+].code = #008506
* group[=].element[=].target[=].display = "setirizin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #238
* group[=].element[=].display = "Klaritromisin"
* group[=].element[=].target[+].code = #003243
* group[=].element[=].target[=].display = "klaritromitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #241
* group[=].element[=].display = "Kolistimetat natriy"
* group[=].element[=].target[+].code = #003409
* group[=].element[=].target[=].display = "kolistin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #246
* group[=].element[=].display = "Vildagliptin"
* group[=].element[=].target[+].code = #001431
* group[=].element[=].target[=].display = "vildagliptin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #250
* group[=].element[=].display = "Serratiopeptidaza"
* group[=].element[=].target[+].code = #006524
* group[=].element[=].target[=].display = "serrapeptaza"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #256
* group[=].element[=].display = "Albendazol"
* group[=].element[=].target[+].code = #000204
* group[=].element[=].target[=].display = "albendazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #261
* group[=].element[=].display = "Linezolid"
* group[=].element[=].target[+].code = #003763
* group[=].element[=].target[=].display = "linezolid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #265
* group[=].element[=].display = "Doksisiklin"
* group[=].element[=].target[+].code = #002393
* group[=].element[=].target[=].display = "doksitsiklin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #270
* group[=].element[=].display = "Loksoprofen"
* group[=].element[=].target[+].code = #003827
* group[=].element[=].target[=].display = "loksoprofen"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #282
* group[=].element[=].display = "Spironolakton"
* group[=].element[=].target[+].code = #006706
* group[=].element[=].target[=].display = "spironolakton"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #284
* group[=].element[=].display = "Ipratropiy bromid"
* group[=].element[=].target[+].code = #002945
* group[=].element[=].target[=].display = "ipratropiy bromid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #292
* group[=].element[=].display = "Glimepirid"
* group[=].element[=].target[+].code = #001759
* group[=].element[=].target[=].display = "glimepirid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #331
* group[=].element[=].display = "Nifuratel"
* group[=].element[=].target[+].code = #004868
* group[=].element[=].target[=].display = "nifuratel"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #334
* group[=].element[=].display = "Ekonazol"
* group[=].element[=].target[+].code = #008866
* group[=].element[=].target[=].display = "ekonazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #339
* group[=].element[=].display = "Ketokonazol"
* group[=].element[=].target[+].code = #003222
* group[=].element[=].target[=].display = "ketokonazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #350
* group[=].element[=].display = "Benzilpenisillin"
* group[=].element[=].target[+].code = #000902
* group[=].element[=].target[=].display = "benzilpenitsillin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #355
* group[=].element[=].display = "Lornoksikam"
* group[=].element[=].target[+].code = #003869
* group[=].element[=].target[=].display = "lornoksikam"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #377
* group[=].element[=].display = "Mikonazol"
* group[=].element[=].target[+].code = #004338
* group[=].element[=].target[=].display = "mikonazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #403
* group[=].element[=].display = "Parekoksib"
* group[=].element[=].target[+].code = #005332
* group[=].element[=].target[=].display = "parekoksib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #404
* group[=].element[=].display = "Grizeofulvin"
* group[=].element[=].target[+].code = #001822
* group[=].element[=].target[=].display = "grizeofulvin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #410
* group[=].element[=].display = "Betametazon"
* group[=].element[=].target[+].code = #000983
* group[=].element[=].target[=].display = "betametazon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #424
* group[=].element[=].display = "Gatifloksasin"
* group[=].element[=].target[+].code = #001588
* group[=].element[=].target[=].display = "gatifloksatsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #443
* group[=].element[=].display = "Sultamisillin"
* group[=].element[=].target[+].code = #006795
* group[=].element[=].target[=].display = "sultamitsillin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #450
* group[=].element[=].display = "Linagliptin"
* group[=].element[=].target[+].code = #003758
* group[=].element[=].target[=].display = "linagliptin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #453
* group[=].element[=].display = "Daptomisin"
* group[=].element[=].target[+].code = #001917
* group[=].element[=].target[=].display = "daptomitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #467
* group[=].element[=].display = "Sianokobalamin"
* group[=].element[=].target[+].code = #008604
* group[=].element[=].target[=].display = "sianokobalamin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #473
* group[=].element[=].display = "Domperidon"
* group[=].element[=].target[+].code = #002411
* group[=].element[=].target[=].display = "domperidon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #489
* group[=].element[=].display = "Mekobalamin"
* group[=].element[=].target[+].code = #004048
* group[=].element[=].target[=].display = "mekobalamin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #496
* group[=].element[=].display = "Doripenem"
* group[=].element[=].target[+].code = #002427
* group[=].element[=].target[=].display = "doripenem"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #507
* group[=].element[=].display = "Xlorgeksidin"
* group[=].element[=].target[+].code = #008408
* group[=].element[=].target[=].display = "xlorgeksidin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #514
* group[=].element[=].display = "Atenolol"
* group[=].element[=].target[+].code = #000651
* group[=].element[=].target[=].display = "atenolol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #523
* group[=].element[=].display = "Spiramisin"
* group[=].element[=].target[+].code = #006693
* group[=].element[=].target[=].display = "spiramitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #527
* group[=].element[=].display = "Flurbiprofen"
* group[=].element[=].target[+].code = #008176
* group[=].element[=].target[=].display = "flurbiprofen"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #530
* group[=].element[=].display = "Tinidazol"
* group[=].element[=].target[+].code = #007335
* group[=].element[=].target[=].display = "tinidazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #555
* group[=].element[=].display = "Terkonazol"
* group[=].element[=].target[+].code = #007148
* group[=].element[=].target[=].display = "terkonazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #578
* group[=].element[=].display = "Sikloserin"
* group[=].element[=].target[+].code = #008664
* group[=].element[=].target[=].display = "sikloserin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #583
* group[=].element[=].display = "Nepafenak"
* group[=].element[=].target[+].code = #004731
* group[=].element[=].target[=].display = "nepafenak"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #586
* group[=].element[=].display = "Sefprozil"
* group[=].element[=].target[+].code = #008575
* group[=].element[=].target[=].display = "sefprozil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #616
* group[=].element[=].display = "Mupirotsin"
* group[=].element[=].target[+].code = #004530
* group[=].element[=].target[=].display = "mupirotsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #629
* group[=].element[=].display = "Tenonitrozol"
* group[=].element[=].target[+].code = #007112
* group[=].element[=].target[=].display = "tenonitrozol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #636
* group[=].element[=].display = "Oksasillin"
* group[=].element[=].target[+].code = #005023
* group[=].element[=].target[=].display = "oksatsillin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #641
* group[=].element[=].display = "Piridoksin"
* group[=].element[=].target[+].code = #005627
* group[=].element[=].target[=].display = "piridoksin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #644
* group[=].element[=].display = "Klindamisin"
* group[=].element[=].target[+].code = #003266
* group[=].element[=].target[=].display = "klindamitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #664
* group[=].element[=].display = "Nistatin"
* group[=].element[=].target[+].code = #004835
* group[=].element[=].target[=].display = "nistatin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #703
* group[=].element[=].display = "Ezetimib"
* group[=].element[=].target[+].code = #008848
* group[=].element[=].target[=].display = "ezetimib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #708
* group[=].element[=].display = "Tiamazol"
* group[=].element[=].target[+].code = #007221
* group[=].element[=].target[=].display = "tiamazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #760
* group[=].element[=].display = "Ternidazol"
* group[=].element[=].target[+].code = #007151
* group[=].element[=].target[=].display = "ternidazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #766
* group[=].element[=].display = "Pioglitazon"
* group[=].element[=].target[+].code = #005568
* group[=].element[=].target[=].display = "pioglitazon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #772
* group[=].element[=].display = "Lizinopril"
* group[=].element[=].target[+].code = #003743
* group[=].element[=].target[=].display = "lizinopril"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #886
* group[=].element[=].display = "Bromgeksin gidroxlorid"
* group[=].element[=].target[+].code = #001157
* group[=].element[=].target[=].display = "bromgeksin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #974
* group[=].element[=].display = "Dekstrometorfan"
* group[=].element[=].target[+].code = #002022
* group[=].element[=].target[=].display = "dekstrometorfan"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1087
* group[=].element[=].display = "Natriy geparin"
* group[=].element[=].target[+].code = #001646
* group[=].element[=].target[=].display = "geparin natriy"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1106
* group[=].element[=].display = "Setirizin gidroxlorid"
* group[=].element[=].target[+].code = #008506
* group[=].element[=].target[=].display = "setirizin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1206
* group[=].element[=].display = "Sibutramin"
* group[=].element[=].target[+].code = #006544
* group[=].element[=].target[=].display = "sibutramin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1239
* group[=].element[=].display = "Karbosistein"
* group[=].element[=].target[+].code = #003134
* group[=].element[=].target[=].display = "karbotsistein"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1262
* group[=].element[=].display = "Gidroxlorotiazid"
* group[=].element[=].target[+].code = #001702
* group[=].element[=].target[=].display = "gidroxlorotiazid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1283
* group[=].element[=].display = "Lozartan"
* group[=].element[=].target[+].code = #003817
* group[=].element[=].target[=].display = "lozartan"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1297
* group[=].element[=].display = "Silastatin"
* group[=].element[=].target[+].code = #008683
* group[=].element[=].target[=].display = "silastatin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1298
* group[=].element[=].display = "Imipenem"
* group[=].element[=].target[+].code = #002753
* group[=].element[=].target[=].display = "imipenem"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1321
* group[=].element[=].display = "Xlorfenamin"
* group[=].element[=].target[+].code = #008440
* group[=].element[=].target[=].display = "xlorfenamin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1326
* group[=].element[=].display = "Terbutalin"
* group[=].element[=].target[+].code = #007138
* group[=].element[=].target[=].display = "terbutalin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1386
* group[=].element[=].display = "Verapamil"
* group[=].element[=].target[+].code = #001398
* group[=].element[=].target[=].display = "verapamil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1469
* group[=].element[=].display = "Meropenem"
* group[=].element[=].target[+].code = #004125
* group[=].element[=].target[=].display = "meropenem"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1491
* group[=].element[=].display = "Dapagliflozin"
* group[=].element[=].target[+].code = #001905
* group[=].element[=].target[=].display = "dapagliflozin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1505
* group[=].element[=].display = "Pefloksasin"
* group[=].element[=].target[+].code = #005488
* group[=].element[=].target[=].display = "pefloksatsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1741
* group[=].element[=].display = "Glibenklamid"
* group[=].element[=].target[+].code = #001739
* group[=].element[=].target[=].display = "glibenklamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1868
* group[=].element[=].display = "Oksibutinin"
* group[=].element[=].target[+].code = #005038
* group[=].element[=].target[=].display = "oksibutinin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1907
* group[=].element[=].display = "Gidrotalsit"
* group[=].element[=].target[+].code = #001700
* group[=].element[=].target[=].display = "gidrotalsit"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1909
* group[=].element[=].display = "Sildenafil"
* group[=].element[=].target[+].code = #006552
* group[=].element[=].target[=].display = "sildenafil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1910
* group[=].element[=].display = "Kandesartan"
* group[=].element[=].target[+].code = #003068
* group[=].element[=].target[=].display = "kandesartan"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1911
* group[=].element[=].display = "Pentoksifillin"
* group[=].element[=].target[+].code = #005431
* group[=].element[=].target[=].display = "pentoksifillin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1913
* group[=].element[=].display = "Holekalsiferol"
* group[=].element[=].target[+].code = #003400
* group[=].element[=].target[=].display = "kolekalsiferol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1914
* group[=].element[=].display = "Glisin"
* group[=].element[=].target[+].code = #001771
* group[=].element[=].target[=].display = "glitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1917
* group[=].element[=].display = "Tiamin gidroxloridi"
* group[=].element[=].target[+].code = #007226
* group[=].element[=].target[=].display = "tiamin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1918
* group[=].element[=].display = "Piridoksin gidroxlorid"
* group[=].element[=].target[+].code = #005627
* group[=].element[=].target[=].display = "piridoksin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1919
* group[=].element[=].display = "Difengidramin gidroxlorid"
* group[=].element[=].target[+].code = #002334
* group[=].element[=].target[=].display = "difengidramin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1920
* group[=].element[=].display = "Edavron"
* group[=].element[=].target[+].code = #008821
* group[=].element[=].target[=].display = "edaravon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1922
* group[=].element[=].display = "Linkomisin"
* group[=].element[=].target[+].code = #003766
* group[=].element[=].target[=].display = "linkomitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1923
* group[=].element[=].display = "L-arginin gidroxlorid"
* group[=].element[=].target[+].code = #000586
* group[=].element[=].target[=].display = "arginin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1924
* group[=].element[=].display = "Propofol"
* group[=].element[=].target[+].code = #005934
* group[=].element[=].target[=].display = "propofol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1926
* group[=].element[=].display = "Ketorolak trometamol"
* group[=].element[=].target[+].code = #003225
* group[=].element[=].target[=].display = "ketorolak"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1929
* group[=].element[=].display = "Drtotaverin gidroxlorid"
* group[=].element[=].target[+].code = #002468
* group[=].element[=].target[=].display = "drotaverin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1931
* group[=].element[=].display = "Levosetirizin"
* group[=].element[=].target[+].code = #003652
* group[=].element[=].target[=].display = "levotsetirizin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1934
* group[=].element[=].display = "Natriy sitikolin"
* group[=].element[=].target[+].code = #008792
* group[=].element[=].target[=].display = "sitikolin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1935
* group[=].element[=].display = "Prokain"
* group[=].element[=].target[+].code = #005872
* group[=].element[=].target[=].display = "prokain"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1937
* group[=].element[=].display = "Diazepam"
* group[=].element[=].target[+].code = #002142
* group[=].element[=].target[=].display = "diazepam"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1939
* group[=].element[=].display = "Tioridazin gidroxlorid"
* group[=].element[=].target[+].code = #007366
* group[=].element[=].target[=].display = "tioridazin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1941
* group[=].element[=].display = "Inson insulini"
* group[=].element[=].target[+].code = #002838
* group[=].element[=].target[=].display = "odam insulini"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1943
* group[=].element[=].display = "Enalapril"
* group[=].element[=].target[+].code = #008985
* group[=].element[=].target[=].display = "enalapril"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1944
* group[=].element[=].display = "Bendazol"
* group[=].element[=].target[+].code = #000882
* group[=].element[=].target[=].display = "bendazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1945
* group[=].element[=].display = "Asparigin kislota"
* group[=].element[=].target[+].code = #000628
* group[=].element[=].target[=].display = "asparagin kislotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1948
* group[=].element[=].display = "Risperidon"
* group[=].element[=].target[+].code = #006223
* group[=].element[=].target[=].display = "risperidon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1949
* group[=].element[=].display = "Lidokain gidroxlorid"
* group[=].element[=].target[+].code = #003735
* group[=].element[=].target[=].display = "lidokain"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1950
* group[=].element[=].display = "Tiamin"
* group[=].element[=].target[+].code = #007226
* group[=].element[=].target[=].display = "tiamin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1956
* group[=].element[=].display = "Eslikarbazepin asetat"
* group[=].element[=].target[+].code = #009162
* group[=].element[=].target[=].display = "eslikarbazepin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1959
* group[=].element[=].display = "Fruktozo-1,6-bifosfat"
* group[=].element[=].target[+].code = #008286
* group[=].element[=].target[=].display = "fosfruktoza"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1961
* group[=].element[=].display = "Deksketoprofen trometamol"
* group[=].element[=].target[+].code = #001995
* group[=].element[=].target[=].display = "deksketoprofen"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1962
* group[=].element[=].display = "Sitikolin"
* group[=].element[=].target[+].code = #008792
* group[=].element[=].target[=].display = "sitikolin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1965
* group[=].element[=].display = "Sinnarizin"
* group[=].element[=].target[+].code = #008726
* group[=].element[=].target[=].display = "sinnarizin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1969
* group[=].element[=].display = "Nabumeton"
* group[=].element[=].target[+].code = #004543
* group[=].element[=].target[=].display = "nabumeton"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1972
* group[=].element[=].display = "Pregabalin"
* group[=].element[=].target[+].code = #005802
* group[=].element[=].target[=].display = "pregabalin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1974
* group[=].element[=].display = "Rivaroksaban"
* group[=].element[=].target[+].code = #006169
* group[=].element[=].target[=].display = "rivaroksaban"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1975
* group[=].element[=].display = "Riboflafin natriy fosfat"
* group[=].element[=].target[+].code = #006163
* group[=].element[=].target[=].display = "riboflavin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1976
* group[=].element[=].display = "Nikotinamid"
* group[=].element[=].target[+].code = #004798
* group[=].element[=].target[=].display = "nikotinamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1980
* group[=].element[=].display = "Flutikazon"
* group[=].element[=].target[+].code = #008195
* group[=].element[=].target[=].display = "flutikazon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1981
* group[=].element[=].display = "Oksaliplatin"
* group[=].element[=].target[+].code = #005005
* group[=].element[=].target[=].display = "oksaliplatin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1982
* group[=].element[=].display = "Fentanil sitrat"
* group[=].element[=].target[+].code = #007983
* group[=].element[=].target[=].display = "fentanil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1983
* group[=].element[=].display = "Tigetsiklin"
* group[=].element[=].target[+].code = #007259
* group[=].element[=].target[=].display = "tigetsiklin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1985
* group[=].element[=].display = "Gadopentetat"
* group[=].element[=].target[+].code = #001526
* group[=].element[=].target[=].display = "gadopentet kislotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1986
* group[=].element[=].display = "Kalsiy pantotenat"
* group[=].element[=].target[+].code = #003047
* group[=].element[=].target[=].display = "kalsiy pantotenat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1991
* group[=].element[=].display = "Amantadin"
* group[=].element[=].target[+].code = #000343
* group[=].element[=].target[=].display = "amantadin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1992
* group[=].element[=].display = "Anastrozol"
* group[=].element[=].target[+].code = #000487
* group[=].element[=].target[=].display = "anastrozol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1993
* group[=].element[=].display = "Xorion gonadotropini"
* group[=].element[=].target[+].code = #001810
* group[=].element[=].target[=].display = "gonadotropin xorionicheskiy"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1994
* group[=].element[=].display = "Takrolimus"
* group[=].element[=].target[+].code = #006922
* group[=].element[=].target[=].display = "takrolimus"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1995
* group[=].element[=].display = "Tiazot kislotasining morfolin tuzi"
* group[=].element[=].target[+].code = #007216
* group[=].element[=].target[=].display = "tiazot kislotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1996
* group[=].element[=].display = "L-arginin"
* group[=].element[=].target[+].code = #000586
* group[=].element[=].target[=].display = "arginin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2003
* group[=].element[=].display = "Zopiklon"
* group[=].element[=].target[+].code = #002581
* group[=].element[=].target[=].display = "zopiklon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2004
* group[=].element[=].display = "Droperidol"
* group[=].element[=].target[+].code = #002463
* group[=].element[=].target[=].display = "droperidol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2005
* group[=].element[=].display = "Enalapril maleat"
* group[=].element[=].target[+].code = #008985
* group[=].element[=].target[=].display = "enalapril"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2006
* group[=].element[=].display = "Inozin"
* group[=].element[=].target[+].code = #002817
* group[=].element[=].target[=].display = "inozin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2008
* group[=].element[=].display = "Drospirenon"
* group[=].element[=].target[+].code = #002466
* group[=].element[=].target[=].display = "drospirenon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2010
* group[=].element[=].display = "Indometasin"
* group[=].element[=].target[+].code = #002800
* group[=].element[=].target[=].display = "indometatsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2011
* group[=].element[=].display = "Disikloverin"
* group[=].element[=].target[+].code = #002360
* group[=].element[=].target[=].display = "ditsikloverin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2012
* group[=].element[=].display = "Lidokain"
* group[=].element[=].target[+].code = #003735
* group[=].element[=].target[=].display = "lidokain"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2019
* group[=].element[=].display = "Benzalkoniy xlorid"
* group[=].element[=].target[+].code = #000889
* group[=].element[=].target[=].display = "benzalkoniy xlorid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2020
* group[=].element[=].display = "Etamzilat"
* group[=].element[=].target[+].code = #009195
* group[=].element[=].target[=].display = "etamzilat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2021
* group[=].element[=].display = "Montelukast"
* group[=].element[=].target[+].code = #004487
* group[=].element[=].target[=].display = "montelukast"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2022
* group[=].element[=].display = "Levosetirizin gidroxlorid"
* group[=].element[=].target[+].code = #003652
* group[=].element[=].target[=].display = "levotsetirizin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2025
* group[=].element[=].display = "Ipidakrin"
* group[=].element[=].target[+].code = #002938
* group[=].element[=].target[=].display = "ipidakrin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2026
* group[=].element[=].display = "Trombosin sulfat"
* group[=].element[=].target[+].code = #007426
* group[=].element[=].target[=].display = "tobramitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2027
* group[=].element[=].display = "Fenilefrin"
* group[=].element[=].target[+].code = #007919
* group[=].element[=].target[=].display = "fenilefrin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2028
* group[=].element[=].display = "Nitrofural"
* group[=].element[=].target[+].code = #004856
* group[=].element[=].target[=].display = "nitrofural"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2031
* group[=].element[=].display = "Lamotrijin"
* group[=].element[=].target[+].code = #003539
* group[=].element[=].target[=].display = "lamotridjin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2033
* group[=].element[=].display = "Glyukozamin sulfat"
* group[=].element[=].target[+].code = #001787
* group[=].element[=].target[=].display = "glyukozamin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2035
* group[=].element[=].display = "Valin"
* group[=].element[=].target[+].code = #001318
* group[=].element[=].target[=].display = "valin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2036
* group[=].element[=].display = "Izoleysin"
* group[=].element[=].target[+].code = #002672
* group[=].element[=].target[=].display = "izoleysin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2037
* group[=].element[=].display = "Leysin"
* group[=].element[=].target[+].code = #003665
* group[=].element[=].target[=].display = "leysin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2038
* group[=].element[=].display = "Izoniazid"
* group[=].element[=].target[+].code = #002678
* group[=].element[=].target[=].display = "izoniazid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2039
* group[=].element[=].display = "Metoprolol tartrat"
* group[=].element[=].target[+].code = #004253
* group[=].element[=].target[=].display = "metoprolol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2041
* group[=].element[=].display = "Paklitakse"
* group[=].element[=].target[+].code = #005268
* group[=].element[=].target[=].display = "paklitaksel"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2042
* group[=].element[=].display = "Leflunomid"
* group[=].element[=].target[+].code = #003719
* group[=].element[=].target[=].display = "leflunomid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2045
* group[=].element[=].display = "Kapesitabin"
* group[=].element[=].target[+].code = #003085
* group[=].element[=].target[=].display = "kapetsitabin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2057
* group[=].element[=].display = "L-lizin"
* group[=].element[=].target[+].code = #003742
* group[=].element[=].target[=].display = "lizin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2059
* group[=].element[=].display = "Metoklopramid"
* group[=].element[=].target[+].code = #004242
* group[=].element[=].target[=].display = "metoklopramid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2064
* group[=].element[=].display = "Mannit"
* group[=].element[=].target[+].code = #003962
* group[=].element[=].target[=].display = "mannitola geksanitrat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2066
* group[=].element[=].display = "Gabapentin"
* group[=].element[=].target[+].code = #001511
* group[=].element[=].target[=].display = "gabapentin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2067
* group[=].element[=].display = "Sefepim gidroxlorid"
* group[=].element[=].target[+].code = #008541
* group[=].element[=].target[=].display = "sefepim"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2069
* group[=].element[=].display = "Eflornitin"
* group[=].element[=].target[+].code = #009321
* group[=].element[=].target[=].display = "eflornitin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2071
* group[=].element[=].display = "Pretonamid"
* group[=].element[=].target[+].code = #005829
* group[=].element[=].target[=].display = "pretomanid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2072
* group[=].element[=].display = "Efavirenz"
* group[=].element[=].target[+].code = #009308
* group[=].element[=].target[=].display = "efavirenz"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2073
* group[=].element[=].display = "Pantoprazol"
* group[=].element[=].target[+].code = #005312
* group[=].element[=].target[=].display = "pantoprazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2075
* group[=].element[=].display = "Сипрофлоксатсин гидрохлорид"
* group[=].element[=].target[+].code = #008770
* group[=].element[=].target[=].display = "siprofloksatsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2077
* group[=].element[=].display = "Amitriptilin"
* group[=].element[=].target[+].code = #000417
* group[=].element[=].target[=].display = "amitriptilin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2080
* group[=].element[=].display = "Sofosbuvir"
* group[=].element[=].target[+].code = #006674
* group[=].element[=].target[=].display = "sofosbuvir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2081
* group[=].element[=].display = "Asiklovir"
* group[=].element[=].target[+].code = #000747
* group[=].element[=].target[=].display = "atsiklovir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2082
* group[=].element[=].display = "Ketorolak trometanin"
* group[=].element[=].target[+].code = #003225
* group[=].element[=].target[=].display = "ketorolak"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2083
* group[=].element[=].display = "Azitromisin"
* group[=].element[=].target[+].code = #000136
* group[=].element[=].target[=].display = "azitromitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2084
* group[=].element[=].display = "Metilkobalamin"
* group[=].element[=].target[+].code = #004048
* group[=].element[=].target[=].display = "mekobalamin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2085
* group[=].element[=].display = "Karboplatin"
* group[=].element[=].target[+].code = #003130
* group[=].element[=].target[=].display = "karboplatin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2086
* group[=].element[=].display = "Levotiroksin natriy"
* group[=].element[=].target[+].code = #003645
* group[=].element[=].target[=].display = "levotiroksin natriy"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2087
* group[=].element[=].display = "Meldoniy"
* group[=].element[=].target[+].code = #004075
* group[=].element[=].target[=].display = "meldoniy"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2089
* group[=].element[=].display = "Kalsiy rozuvastatin"
* group[=].element[=].target[+].code = #006261
* group[=].element[=].target[=].display = "rozuvastatin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2091
* group[=].element[=].display = "Xloropiramin"
* group[=].element[=].target[+].code = #008424
* group[=].element[=].target[=].display = "xloropiramin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2092
* group[=].element[=].display = "Feniramin"
* group[=].element[=].target[+].code = #007919
* group[=].element[=].target[=].display = "fenilefrin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2093
* group[=].element[=].display = "Trimetazidin digidroxloridi"
* group[=].element[=].target[+].code = #007649
* group[=].element[=].target[=].display = "trimetazidin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2110
* group[=].element[=].display = "Montelukast natriy"
* group[=].element[=].target[+].code = #004487
* group[=].element[=].target[=].display = "montelukast"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2111
* group[=].element[=].display = "Amikasin sulfat"
* group[=].element[=].target[+].code = #000381
* group[=].element[=].target[=].display = "amikatsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2113
* group[=].element[=].display = "Fenilalanin"
* group[=].element[=].target[+].code = #007914
* group[=].element[=].target[=].display = "fenilalanin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2116
* group[=].element[=].display = "Pensiklovir"
* group[=].element[=].target[+].code = #005441
* group[=].element[=].target[=].display = "pensiklovir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2117
* group[=].element[=].display = "Loperamid gidroxlorid"
* group[=].element[=].target[+].code = #003847
* group[=].element[=].target[=].display = "loperamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2118
* group[=].element[=].display = "Filgrastim"
* group[=].element[=].target[+].code = #008030
* group[=].element[=].target[=].display = "filgrastim"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2119
* group[=].element[=].display = "Prolin"
* group[=].element[=].target[+].code = #005889
* group[=].element[=].target[=].display = "prolin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2120
* group[=].element[=].display = "Alanin"
* group[=].element[=].target[+].code = #000195
* group[=].element[=].target[=].display = "alanin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2121
* group[=].element[=].display = "Argini gidroxlorid"
* group[=].element[=].target[+].code = #000586
* group[=].element[=].target[=].display = "arginin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2123
* group[=].element[=].display = "Nebivolol"
* group[=].element[=].target[+].code = #004690
* group[=].element[=].target[=].display = "nebivolol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2125
* group[=].element[=].display = "Duloksetin"
* group[=].element[=].target[+].code = #002480
* group[=].element[=].target[=].display = "duloksetin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2126
* group[=].element[=].display = "Ergokalsiferol"
* group[=].element[=].target[+].code = #009130
* group[=].element[=].target[=].display = "ergokalsiferol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2132
* group[=].element[=].display = "Povidon"
* group[=].element[=].target[+].code = #005713
* group[=].element[=].target[=].display = "povidon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2133
* group[=].element[=].display = "Salmeterol"
* group[=].element[=].target[+].code = #006384
* group[=].element[=].target[=].display = "salmeterol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2137
* group[=].element[=].display = "Pantenol"
* group[=].element[=].target[+].code = #005311
* group[=].element[=].target[=].display = "pantenol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2138
* group[=].element[=].display = "Ivabradin"
* group[=].element[=].target[+].code = #002617
* group[=].element[=].target[=].display = "ivabradin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2139
* group[=].element[=].display = "Valgansiklovir"
* group[=].element[=].target[+].code = #001314
* group[=].element[=].target[=].display = "valgansiklovir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2140
* group[=].element[=].display = "Tadalafil"
* group[=].element[=].target[+].code = #006901
* group[=].element[=].target[=].display = "tadalafil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2141
* group[=].element[=].display = "Oseltamivir"
* group[=].element[=].target[+].code = #005231
* group[=].element[=].target[=].display = "oseltamivir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2142
* group[=].element[=].display = "Dekstran"
* group[=].element[=].target[+].code = #002019
* group[=].element[=].target[=].display = "dekstran"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2143
* group[=].element[=].display = "Silostazol"
* group[=].element[=].target[+].code = #008691
* group[=].element[=].target[=].display = "silostazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2144
* group[=].element[=].display = "Meglyumin"
* group[=].element[=].target[+].code = #004007
* group[=].element[=].target[=].display = "meglyumin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2145
* group[=].element[=].display = "Natamisin"
* group[=].element[=].target[+].code = #004620
* group[=].element[=].target[=].display = "natamitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2147
* group[=].element[=].display = "Apiksaban"
* group[=].element[=].target[+].code = #000546
* group[=].element[=].target[=].display = "apiksaban"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2148
* group[=].element[=].display = "Aminofillin"
* group[=].element[=].target[+].code = #000403
* group[=].element[=].target[=].display = "aminofillin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2151
* group[=].element[=].display = "Mannitol"
* group[=].element[=].target[+].code = #003962
* group[=].element[=].target[=].display = "mannitola geksanitrat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2153
* group[=].element[=].display = "Seftriakson natriy"
* group[=].element[=].target[+].code = #008594
* group[=].element[=].target[=].display = "seftriakson"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2154
* group[=].element[=].display = "Etambutol"
* group[=].element[=].target[+].code = #009194
* group[=].element[=].target[=].display = "etambutol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2157
* group[=].element[=].display = "Izosorbid dinitrat"
* group[=].element[=].target[+].code = #002688
* group[=].element[=].target[=].display = "izosorbida dinitrat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2159
* group[=].element[=].display = "Seftazidim pentagidrat"
* group[=].element[=].target[+].code = #008581
* group[=].element[=].target[=].display = "seftazidim"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2160
* group[=].element[=].display = "Tiokolxikozid"
* group[=].element[=].target[+].code = #007347
* group[=].element[=].target[=].display = "tiokolxikozid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2162
* group[=].element[=].display = "Tamsulozin gidroxloridi"
* group[=].element[=].target[+].code = #006968
* group[=].element[=].target[=].display = "tamsulozin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2163
* group[=].element[=].display = "Benzobarbital"
* group[=].element[=].target[+].code = #000909
* group[=].element[=].target[=].display = "benzobarbital"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2165
* group[=].element[=].display = "Didrogesteron"
* group[=].element[=].target[+].code = #002181
* group[=].element[=].target[=].display = "didrogesteron"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2167
* group[=].element[=].display = "Fruktoza -1,6 - natriy difosfat tuzi"
* group[=].element[=].target[+].code = #008286
* group[=].element[=].target[=].display = "fosfruktoza"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2168
* group[=].element[=].display = "L-Karnitin"
* group[=].element[=].target[+].code = #003615
* group[=].element[=].target[=].display = "levokarnitin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2169
* group[=].element[=].display = "Fluorourasil"
* group[=].element[=].target[+].code = #008310
* group[=].element[=].target[=].display = "ftoruratsil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2174
* group[=].element[=].display = "Riboflavin"
* group[=].element[=].target[+].code = #006163
* group[=].element[=].target[=].display = "riboflavin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2181
* group[=].element[=].display = "Karbamazepin"
* group[=].element[=].target[+].code = #003110
* group[=].element[=].target[=].display = "karbamazepin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2183
* group[=].element[=].display = "Tolperizon"
* group[=].element[=].target[+].code = #007472
* group[=].element[=].target[=].display = "tolperizon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2184
* group[=].element[=].display = "Kolekalsiferol"
* group[=].element[=].target[+].code = #003400
* group[=].element[=].target[=].display = "kolekalsiferol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2186
* group[=].element[=].display = "Entekavir"
* group[=].element[=].target[+].code = #009050
* group[=].element[=].target[=].display = "entekavir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2190
* group[=].element[=].display = "Sisplatin"
* group[=].element[=].target[+].code = #008782
* group[=].element[=].target[=].display = "sisplatin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2191
* group[=].element[=].display = "Febuksostat"
* group[=].element[=].target[+].code = #007843
* group[=].element[=].target[=].display = "febuksostat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2192
* group[=].element[=].display = "Deksametazon natriy fosfat"
* group[=].element[=].target[+].code = #001980
* group[=].element[=].target[=].display = "deksametazon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2204
* group[=].element[=].display = "L-kloperastin fondizoat"
* group[=].element[=].target[+].code = #003329
* group[=].element[=].target[=].display = "kloperastin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2206
* group[=].element[=].display = "Rimantadin"
* group[=].element[=].target[+].code = #006204
* group[=].element[=].target[=].display = "rimantadin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2207
* group[=].element[=].display = "Rutozid"
* group[=].element[=].target[+].code = #006350
* group[=].element[=].target[=].display = "rutozid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2211
* group[=].element[=].display = "Traneksam kislota"
* group[=].element[=].target[+].code = #007555
* group[=].element[=].target[=].display = "traneksam kislotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2212
* group[=].element[=].display = "Flutikazon propionat"
* group[=].element[=].target[+].code = #008195
* group[=].element[=].target[=].display = "flutikazon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2213
* group[=].element[=].display = "Polikrezulen"
* group[=].element[=].target[+].code = #005737
* group[=].element[=].target[=].display = "polikrezulen"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2214
* group[=].element[=].display = "Niketamid"
* group[=].element[=].target[+].code = #004782
* group[=].element[=].target[=].display = "niketamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2216
* group[=].element[=].display = "Drotaverin"
* group[=].element[=].target[+].code = #002468
* group[=].element[=].target[=].display = "drotaverin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2218
* group[=].element[=].display = "Imatinib"
* group[=].element[=].target[+].code = #002734
* group[=].element[=].target[=].display = "imatinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2219
* group[=].element[=].display = "Tobramitsin"
* group[=].element[=].target[+].code = #007426
* group[=].element[=].target[=].display = "tobramitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2220
* group[=].element[=].display = "Doksorubisin gidroxlorid"
* group[=].element[=].target[+].code = #002394
* group[=].element[=].target[=].display = "doksorubitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2222
* group[=].element[=].display = "Dekstroza"
* group[=].element[=].target[+].code = #002019
* group[=].element[=].target[=].display = "dekstran"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2224
* group[=].element[=].display = "Ondasetron"
* group[=].element[=].target[+].code = #005179
* group[=].element[=].target[=].display = "ondansetron"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2225
* group[=].element[=].display = "Bleomisin"
* group[=].element[=].target[+].code = #001075
* group[=].element[=].target[=].display = "bleomitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2226
* group[=].element[=].display = "Ksilometazolin"
* group[=].element[=].target[+].code = #003500
* group[=].element[=].target[=].display = "ksilometazolin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2230
* group[=].element[=].display = "Rabeprazol"
* group[=].element[=].target[+].code = #006008
* group[=].element[=].target[=].display = "rabeprazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2233
* group[=].element[=].display = "Dapoksetin"
* group[=].element[=].target[+].code = #001913
* group[=].element[=].target[=].display = "dapoksetin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2234
* group[=].element[=].display = "Doksorubisin"
* group[=].element[=].target[+].code = #002394
* group[=].element[=].target[=].display = "doksorubitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2235
* group[=].element[=].display = "Budesonid"
* group[=].element[=].target[+].code = #001187
* group[=].element[=].target[=].display = "budesonid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2237
* group[=].element[=].display = "Simvastatin"
* group[=].element[=].target[+].code = #006563
* group[=].element[=].target[=].display = "simvastatin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2238
* group[=].element[=].display = "Insulin glargin"
* group[=].element[=].target[+].code = #002826
* group[=].element[=].target[=].display = "insulin glargin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2239
* group[=].element[=].display = "Ursodeoksixol kislotasi"
* group[=].element[=].target[+].code = #007787
* group[=].element[=].target[=].display = "ursodezoksixol kislotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2242
* group[=].element[=].display = "Mometazon"
* group[=].element[=].target[+].code = #004475
* group[=].element[=].target[=].display = "mometazon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2243
* group[=].element[=].display = "Umifenovir gidroxlorid monogidrati"
* group[=].element[=].target[+].code = #007768
* group[=].element[=].target[=].display = "umifenovir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2244
* group[=].element[=].display = "Epoetin alfa"
* group[=].element[=].target[+].code = #009094
* group[=].element[=].target[=].display = "epoetin alfa"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2245
* group[=].element[=].display = "Meglumin akridonatsetat"
* group[=].element[=].target[+].code = #004007
* group[=].element[=].target[=].display = "meglyumin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2246
* group[=].element[=].display = "Azatioprin"
* group[=].element[=].target[+].code = #000117
* group[=].element[=].target[=].display = "azatsitidin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2252
* group[=].element[=].display = "Kreatinolfosfat"
* group[=].element[=].target[+].code = #008282
* group[=].element[=].target[=].display = "fosfokreatinin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2253
* group[=].element[=].display = "Fenilefrin gidroxlorid"
* group[=].element[=].target[+].code = #007919
* group[=].element[=].target[=].display = "fenilefrin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2255
* group[=].element[=].display = "Tiazot kislotasi"
* group[=].element[=].target[+].code = #007216
* group[=].element[=].target[=].display = "tiazot kislotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2263
* group[=].element[=].display = "Progesteron"
* group[=].element[=].target[+].code = #005863
* group[=].element[=].target[=].display = "progesteron"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2265
* group[=].element[=].display = "Favipiravir"
* group[=].element[=].target[+].code = #007799
* group[=].element[=].target[=].display = "favipiravir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2267
* group[=].element[=].display = "Xlorgeksidin biglyukonat"
* group[=].element[=].target[+].code = #008408
* group[=].element[=].target[=].display = "xlorgeksidin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2268
* group[=].element[=].display = "Suksametoniy xlorid"
* group[=].element[=].target[+].code = #006753
* group[=].element[=].target[=].display = "suksametoniy xlorid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2274
* group[=].element[=].display = "Pirazinamid"
* group[=].element[=].target[+].code = #005604
* group[=].element[=].target[=].display = "pirazinamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2276
* group[=].element[=].display = "Kalsiy folinat"
* group[=].element[=].target[+].code = #003050
* group[=].element[=].target[=].display = "kalsiy folinat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2278
* group[=].element[=].display = "Tetrakain gidroxlorid"
* group[=].element[=].target[+].code = #007175
* group[=].element[=].target[=].display = "tetrakain"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2279
* group[=].element[=].display = "Fenazon"
* group[=].element[=].target[+].code = #007873
* group[=].element[=].target[=].display = "fenazon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2281
* group[=].element[=].display = "Orlistat"
* group[=].element[=].target[+].code = #005212
* group[=].element[=].target[=].display = "orlistat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2283
* group[=].element[=].display = "L-serin"
* group[=].element[=].target[+].code = #006520
* group[=].element[=].target[=].display = "serin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2285
* group[=].element[=].display = "L-gistidin gidroxlorid monogidrat"
* group[=].element[=].target[+].code = #001721
* group[=].element[=].target[=].display = "gistidin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2287
* group[=].element[=].display = "Siklosporin A"
* group[=].element[=].target[+].code = #008666
* group[=].element[=].target[=].display = "siklosporin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2289
* group[=].element[=].display = "Fitomenadion"
* group[=].element[=].target[+].code = #008052
* group[=].element[=].target[=].display = "fitomenadion"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2293
* group[=].element[=].display = "Pramipeksol"
* group[=].element[=].target[+].code = #005788
* group[=].element[=].target[=].display = "pramipeksol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2299
* group[=].element[=].display = "Levofloksasin gemigidrat"
* group[=].element[=].target[+].code = #003650
* group[=].element[=].target[=].display = "levofloksatsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2301
* group[=].element[=].display = "Torasemid"
* group[=].element[=].target[+].code = #007509
* group[=].element[=].target[=].display = "torasemid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2307
* group[=].element[=].display = "In'yerferon alfa-2b rekombinant inson"
* group[=].element[=].target[+].code = #002845
* group[=].element[=].target[=].display = "interferon alfa"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2308
* group[=].element[=].display = "Kokarboksilaza"
* group[=].element[=].target[+].code = #003398
* group[=].element[=].target[=].display = "kokarboksilaza"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2309
* group[=].element[=].display = "Ximotripsin"
* group[=].element[=].target[+].code = #008359
* group[=].element[=].target[=].display = "ximotripsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2311
* group[=].element[=].display = "Ivabradin gidroxlorid"
* group[=].element[=].target[+].code = #002617
* group[=].element[=].target[=].display = "ivabradin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2313
* group[=].element[=].display = "Protamin"
* group[=].element[=].target[+].code = #005944
* group[=].element[=].target[=].display = "protamina sulfat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2316
* group[=].element[=].display = "Natriy tetradetsilsulfat"
* group[=].element[=].target[+].code = #004653
* group[=].element[=].target[=].display = "natriy tetradetsilsulfat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2317
* group[=].element[=].display = "Trifluoperazin"
* group[=].element[=].target[+].code = #007680
* group[=].element[=].target[=].display = "trifluoperazin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2318
* group[=].element[=].display = "Fonturasetam"
* group[=].element[=].target[+].code = #008243
* group[=].element[=].target[=].display = "fonturatsetam"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2319
* group[=].element[=].display = "Obetixol kislotasi"
* group[=].element[=].target[+].code = #004962
* group[=].element[=].target[=].display = "obetixol kislotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2320
* group[=].element[=].display = "Dorzolamid"
* group[=].element[=].target[+].code = #002426
* group[=].element[=].target[=].display = "dorzolamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2323
* group[=].element[=].display = "Xolin alfosserat"
* group[=].element[=].target[+].code = #008447
* group[=].element[=].target[=].display = "xolina alfosserat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2326
* group[=].element[=].display = "Feniramin"
* group[=].element[=].target[+].code = #007928
* group[=].element[=].target[=].display = "feniramin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2327
* group[=].element[=].display = "Mirtazapin"
* group[=].element[=].target[+].code = #004401
* group[=].element[=].target[=].display = "mirtazapin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2328
* group[=].element[=].display = "Gemsitabin gidroxlorid"
* group[=].element[=].target[+].code = #001642
* group[=].element[=].target[=].display = "gemsitabin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2331
* group[=].element[=].display = "Amlodipin besilat"
* group[=].element[=].target[+].code = #000431
* group[=].element[=].target[=].display = "amlodipin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2332
* group[=].element[=].display = "Perindopril erbumin"
* group[=].element[=].target[+].code = #005462
* group[=].element[=].target[=].display = "perindopril"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2333
* group[=].element[=].display = "Menadion natriy bisulfit"
* group[=].element[=].target[+].code = #004080
* group[=].element[=].target[=].display = "menadion natriy bisulfit"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2335
* group[=].element[=].display = "Foliy kislotasi"
* group[=].element[=].target[+].code = #008227
* group[=].element[=].target[=].display = "foliyevaya kislota"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2336
* group[=].element[=].display = "Olanzapin"
* group[=].element[=].target[+].code = #005125
* group[=].element[=].target[=].display = "olanzapin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2338
* group[=].element[=].display = "Olopatadin"
* group[=].element[=].target[+].code = #005145
* group[=].element[=].target[=].display = "olopatadin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2339
* group[=].element[=].display = "Artikain"
* group[=].element[=].target[+].code = #000615
* group[=].element[=].target[=].display = "artikain"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2341
* group[=].element[=].display = "Klopidrogel bisulfat"
* group[=].element[=].target[+].code = #003331
* group[=].element[=].target[=].display = "klopidogrel"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2344
* group[=].element[=].display = "Natriy askorbat"
* group[=].element[=].target[+].code = #004625
* group[=].element[=].target[=].display = "natriy askorbat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2346
* group[=].element[=].display = "Nafazolin"
* group[=].element[=].target[+].code = #004664
* group[=].element[=].target[=].display = "nafazolin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2347
* group[=].element[=].display = "Venlafaksin"
* group[=].element[=].target[+].code = #001392
* group[=].element[=].target[=].display = "venlafaksin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2349
* group[=].element[=].display = "Laktuloza"
* group[=].element[=].target[+].code = #003536
* group[=].element[=].target[=].display = "laktuloza"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2351
* group[=].element[=].display = "Yogeksol"
* group[=].element[=].target[+].code = #002862
* group[=].element[=].target[=].display = "yogeksol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2352
* group[=].element[=].display = "Levobupivakain"
* group[=].element[=].target[+].code = #003610
* group[=].element[=].target[=].display = "levobupivakain"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2354
* group[=].element[=].display = "Tramadol"
* group[=].element[=].target[+].code = #007549
* group[=].element[=].target[=].display = "tramadol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2356
* group[=].element[=].display = "Metilprednizolon"
* group[=].element[=].target[+].code = #004204
* group[=].element[=].target[=].display = "metilprednizolon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2358
* group[=].element[=].display = "Protamin sulfat"
* group[=].element[=].target[+].code = #005944
* group[=].element[=].target[=].display = "protamina sulfat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2359
* group[=].element[=].display = "Lozartan kaliy"
* group[=].element[=].target[+].code = #003817
* group[=].element[=].target[=].display = "lozartan"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2360
* group[=].element[=].display = "Gemsitabin"
* group[=].element[=].target[+].code = #001642
* group[=].element[=].target[=].display = "gemsitabin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2366
* group[=].element[=].display = "Gipromelloza"
* group[=].element[=].target[+].code = #001713
* group[=].element[=].target[=].display = "gipromelloza"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2369
* group[=].element[=].display = "Furosemid"
* group[=].element[=].target[+].code = #008344
* group[=].element[=].target[=].display = "furosemid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2370
* group[=].element[=].display = "Sefazolinning steril natriyli tuzi"
* group[=].element[=].target[+].code = #008522
* group[=].element[=].target[=].display = "sefazolin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2371
* group[=].element[=].display = "Allopurinol"
* group[=].element[=].target[+].code = #000274
* group[=].element[=].target[=].display = "allopurinol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2372
* group[=].element[=].display = "Levetirasetam"
* group[=].element[=].target[+].code = #003603
* group[=].element[=].target[=].display = "levetiratsetam"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2373
* group[=].element[=].display = "Temozolomid"
* group[=].element[=].target[+].code = #007081
* group[=].element[=].target[=].display = "temozolomid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2375
* group[=].element[=].display = "Bupivakain gidroxlorid"
* group[=].element[=].target[+].code = #001219
* group[=].element[=].target[=].display = "bupivakain"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2376
* group[=].element[=].display = "Pemetreksed"
* group[=].element[=].target[+].code = #005386
* group[=].element[=].target[=].display = "pemetreksed"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2380
* group[=].element[=].display = "Gosogliptin"
* group[=].element[=].target[+].code = #001793
* group[=].element[=].target[=].display = "gozogliptin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2381
* group[=].element[=].display = "Irbesartan"
* group[=].element[=].target[+].code = #002962
* group[=].element[=].target[=].display = "irbesartan"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2382
* group[=].element[=].display = "Karvedilol"
* group[=].element[=].target[+].code = #003140
* group[=].element[=].target[=].display = "karvedilol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2383
* group[=].element[=].display = "Dobutamin"
* group[=].element[=].target[+].code = #002373
* group[=].element[=].target[=].display = "dobutamin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2385
* group[=].element[=].display = "Metionin"
* group[=].element[=].target[+].code = #004223
* group[=].element[=].target[=].display = "metionin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2390
* group[=].element[=].display = "Gidroksizin"
* group[=].element[=].target[+].code = #001682
* group[=].element[=].target[=].display = "gidroksizin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2394
* group[=].element[=].display = "Kapreomisin"
* group[=].element[=].target[+].code = #003090
* group[=].element[=].target[=].display = "kapreomitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2398
* group[=].element[=].display = "Roksitromisin"
* group[=].element[=].target[+].code = #006270
* group[=].element[=].target[=].display = "roksitromitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2403
* group[=].element[=].display = "Siklofosfamid"
* group[=].element[=].target[+].code = #008673
* group[=].element[=].target[=].display = "siklofosfamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2405
* group[=].element[=].display = "Tetrametrin"
* group[=].element[=].target[+].code = #007551
* group[=].element[=].target[=].display = "trametinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2406
* group[=].element[=].display = "Retinol"
* group[=].element[=].target[+].code = #006154
* group[=].element[=].target[=].display = "retinol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2408
* group[=].element[=].display = "Famsiklovir"
* group[=].element[=].target[+].code = #007822
* group[=].element[=].target[=].display = "famsiklovir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2411
* group[=].element[=].display = "Valproev kislota"
* group[=].element[=].target[+].code = #001335
* group[=].element[=].target[=].display = "valproy kilotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2412
* group[=].element[=].display = "Pitofenon"
* group[=].element[=].target[+].code = #005685
* group[=].element[=].target[=].display = "pitofenon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2413
* group[=].element[=].display = "Fenpiveriniy bromid"
* group[=].element[=].target[+].code = #007970
* group[=].element[=].target[=].display = "fenpiveriniy bromid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2414
* group[=].element[=].display = "Zoledron kislota"
* group[=].element[=].target[+].code = #002563
* group[=].element[=].target[=].display = "zoledron kislotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2415
* group[=].element[=].display = "Nifedipin"
* group[=].element[=].target[+].code = #004859
* group[=].element[=].target[=].display = "nifedipin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2422
* group[=].element[=].display = "Felodipin"
* group[=].element[=].target[+].code = #007866
* group[=].element[=].target[=].display = "felodipin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2425
* group[=].element[=].display = "Kolekalsiferol konsentrati"
* group[=].element[=].target[+].code = #003400
* group[=].element[=].target[=].display = "kolekalsiferol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2426
* group[=].element[=].display = "Pantoprazol (natriy sekvigidrat)"
* group[=].element[=].target[+].code = #005312
* group[=].element[=].target[=].display = "pantoprazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2427
* group[=].element[=].display = "Naltrekson"
* group[=].element[=].target[+].code = #004580
* group[=].element[=].target[=].display = "naltrekson"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2428
* group[=].element[=].display = "Triamsinolon"
* group[=].element[=].target[+].code = #007608
* group[=].element[=].target[=].display = "triamsinolon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2429
* group[=].element[=].display = "Feksofenadin"
* group[=].element[=].target[+].code = #007860
* group[=].element[=].target[=].display = "feksofenadin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2431
* group[=].element[=].display = "Betagistin"
* group[=].element[=].target[+].code = #000976
* group[=].element[=].target[=].display = "betagistin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2432
* group[=].element[=].display = "Letrozol"
* group[=].element[=].target[+].code = #003715
* group[=].element[=].target[=].display = "letrozol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2434
* group[=].element[=].display = "Polimiksin B"
* group[=].element[=].target[+].code = #005739
* group[=].element[=].target[=].display = "polimiksin B"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2435
* group[=].element[=].display = "Tiamin xlorid"
* group[=].element[=].target[+].code = #007226
* group[=].element[=].target[=].display = "tiamin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2438
* group[=].element[=].display = "Natriy pikosulfat"
* group[=].element[=].target[+].code = #004649
* group[=].element[=].target[=].display = "natriy pikosulfat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2439
* group[=].element[=].display = "Piroksikam"
* group[=].element[=].target[+].code = #005661
* group[=].element[=].target[=].display = "piroksikam"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2440
* group[=].element[=].display = "Kumush sulfadiazin"
* group[=].element[=].target[+].code = #006804
* group[=].element[=].target[=].display = "sulfadiazin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2443
* group[=].element[=].display = "Levodopa"
* group[=].element[=].target[+].code = #003612
* group[=].element[=].target[=].display = "levodopa"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2444
* group[=].element[=].display = "Karbidopa"
* group[=].element[=].target[+].code = #003122
* group[=].element[=].target[=].display = "karbidopa"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2448
* group[=].element[=].display = "Dosetaksel"
* group[=].element[=].target[+].code = #002439
* group[=].element[=].target[=].display = "dotsetaksel"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2449
* group[=].element[=].display = "Metotrekasat"
* group[=].element[=].target[+].code = #004256
* group[=].element[=].target[=].display = "metotreksat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2454
* group[=].element[=].display = "Vinposetin"
* group[=].element[=].target[+].code = #001454
* group[=].element[=].target[=].display = "vinpotsetin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2456
* group[=].element[=].display = "Distillangan glitserin"
* group[=].element[=].target[+].code = #001767
* group[=].element[=].target[=].display = "glitserol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2457
* group[=].element[=].display = "Nikotin kislota"
* group[=].element[=].target[+].code = #004799
* group[=].element[=].target[=].display = "nikotin kislotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2460
* group[=].element[=].display = "Fluosianolon asetonid"
* group[=].element[=].target[+].code = #008155
* group[=].element[=].target[=].display = "fluotsinolona atsetonid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2461
* group[=].element[=].display = "Palonoserton"
* group[=].element[=].target[+].code = #005290
* group[=].element[=].target[=].display = "palonosetron"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2462
* group[=].element[=].display = "Nitazoksanid"
* group[=].element[=].target[+].code = #004837
* group[=].element[=].target[=].display = "nitazoksanid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2463
* group[=].element[=].display = "Lizinopril"
* group[=].element[=].target[+].code = #003743
* group[=].element[=].target[=].display = "lizinopril"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2464
* group[=].element[=].display = "Seknidazol"
* group[=].element[=].target[+].code = #006462
* group[=].element[=].target[=].display = "seknidazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2466
* group[=].element[=].display = "Timolol"
* group[=].element[=].target[+].code = #007324
* group[=].element[=].target[=].display = "timolol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2470
* group[=].element[=].display = "Lauromakrogol 400"
* group[=].element[=].target[+].code = #003589
* group[=].element[=].target[=].display = "lauromakrogol 400"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2471
* group[=].element[=].display = "Mikronizatsiyalangan budesonid"
* group[=].element[=].target[+].code = #001187
* group[=].element[=].target[=].display = "budesonid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2472
* group[=].element[=].display = "Nimodipin"
* group[=].element[=].target[+].code = #004819
* group[=].element[=].target[=].display = "nimodipin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2473
* group[=].element[=].display = "Povidon-yodid"
* group[=].element[=].target[+].code = #005713
* group[=].element[=].target[=].display = "povidon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2476
* group[=].element[=].display = "Essitalopram"
* group[=].element[=].target[+].code = #009183
* group[=].element[=].target[=].display = "essitalopram"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2478
* group[=].element[=].display = "Sefotaksim natriy"
* group[=].element[=].target[+].code = #008568
* group[=].element[=].target[=].display = "sefotaksim"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2481
* group[=].element[=].display = "Ulinastatin"
* group[=].element[=].target[+].code = #007759
* group[=].element[=].target[=].display = "ulinastatin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2482
* group[=].element[=].display = "Trazodon gidroxloridi"
* group[=].element[=].target[+].code = #007542
* group[=].element[=].target[=].display = "trazodon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2484
* group[=].element[=].display = "Proxlorperazin maleat"
* group[=].element[=].target[+].code = #005961
* group[=].element[=].target[=].display = "proxlorperazin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2486
* group[=].element[=].display = "Tabiiy mikronlashtirilgan progesteron"
* group[=].element[=].target[+].code = #005863
* group[=].element[=].target[=].display = "progesteron"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2489
* group[=].element[=].display = "Kalsiy nadroparin"
* group[=].element[=].target[+].code = #004559
* group[=].element[=].target[=].display = "nadroparin kalsiy"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2492
* group[=].element[=].display = "Pertuzumab"
* group[=].element[=].target[+].code = #005470
* group[=].element[=].target[=].display = "pertuzumab"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2493
* group[=].element[=].display = "Famotidin"
* group[=].element[=].target[+].code = #007817
* group[=].element[=].target[=].display = "famotidin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2495
* group[=].element[=].display = "Sildenafil sitrat"
* group[=].element[=].target[+].code = #006552
* group[=].element[=].target[=].display = "sildenafil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2539
* group[=].element[=].display = "Lamivudin"
* group[=].element[=].target[+].code = #003537
* group[=].element[=].target[=].display = "lamivudin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2540
* group[=].element[=].display = "Ledipasvir"
* group[=].element[=].target[+].code = #003655
* group[=].element[=].target[=].display = "ledipasvir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2542
* group[=].element[=].display = "Triptofan"
* group[=].element[=].target[+].code = #007670
* group[=].element[=].target[=].display = "triptofan"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2546
* group[=].element[=].display = "Rizatriptan"
* group[=].element[=].target[+].code = #006181
* group[=].element[=].target[=].display = "rizatriptan"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2547
* group[=].element[=].display = "Benzokain"
* group[=].element[=].target[+].code = #000912
* group[=].element[=].target[=].display = "benzokain"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2552
* group[=].element[=].display = "Trigeksifenidil"
* group[=].element[=].target[+].code = #007619
* group[=].element[=].target[=].display = "trigeksifenidil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2558
* group[=].element[=].display = "Esmolol"
* group[=].element[=].target[+].code = #009164
* group[=].element[=].target[=].display = "esmolol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2559
* group[=].element[=].display = "Albumin"
* group[=].element[=].target[+].code = #000327
* group[=].element[=].target[=].display = "yodlangan zardobli  odam albumini (125I)"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2568
* group[=].element[=].display = "Tenofovir dizoproksil fumarat"
* group[=].element[=].target[+].code = #007114
* group[=].element[=].target[=].display = "tenofovir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2569
* group[=].element[=].display = "Emtrisitabin"
* group[=].element[=].target[+].code = #008979
* group[=].element[=].target[=].display = "emtritsitabin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2570
* group[=].element[=].display = "Klindamisin fosfat"
* group[=].element[=].target[+].code = #003266
* group[=].element[=].target[=].display = "klindamitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2572
* group[=].element[=].display = "Ivabradon kislota"
* group[=].element[=].target[+].code = #002598
* group[=].element[=].target[=].display = "ibandron kislotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2573
* group[=].element[=].display = "Deksmedetomidin"
* group[=].element[=].target[+].code = #002000
* group[=].element[=].target[=].display = "deksmedetomidin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2575
* group[=].element[=].display = "Simetikon"
* group[=].element[=].target[+].code = #006567
* group[=].element[=].target[=].display = "simetikon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2586
* group[=].element[=].display = "Prometazin"
* group[=].element[=].target[+].code = #005896
* group[=].element[=].target[=].display = "prometazin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2587
* group[=].element[=].display = "Latanoprost"
* group[=].element[=].target[+].code = #003576
* group[=].element[=].target[=].display = "latanoprost"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2589
* group[=].element[=].display = "Kvetiapin"
* group[=].element[=].target[+].code = #003207
* group[=].element[=].target[=].display = "kvetiapin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2591
* group[=].element[=].display = "Amilmetakrezol"
* group[=].element[=].target[+].code = #000384
* group[=].element[=].target[=].display = "amilmetakrezol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2592
* group[=].element[=].display = "Lerkanidipin gidroxlorid"
* group[=].element[=].target[+].code = #003705
* group[=].element[=].target[=].display = "lerkanidipin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2593
* group[=].element[=].display = "Tropikamid"
* group[=].element[=].target[+].code = #007719
* group[=].element[=].target[=].display = "tropikamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2595
* group[=].element[=].display = "Mannitol geksanitrat"
* group[=].element[=].target[+].code = #003962
* group[=].element[=].target[=].display = "mannitola geksanitrat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2608
* group[=].element[=].display = "Biotin"
* group[=].element[=].target[+].code = #001042
* group[=].element[=].target[=].display = "biotin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2609
* group[=].element[=].display = "Diosmin"
* group[=].element[=].target[+].code = #002283
* group[=].element[=].target[=].display = "diosmin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2612
* group[=].element[=].display = "Eltrombopag"
* group[=].element[=].target[+].code = #008944
* group[=].element[=].target[=].display = "eltrombopag"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2613
* group[=].element[=].display = "Sefiksim trigidrat"
* group[=].element[=].target[+].code = #008547
* group[=].element[=].target[=].display = "sefiksim"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2614
* group[=].element[=].display = "Itrakonazol"
* group[=].element[=].target[+].code = #002993
* group[=].element[=].target[=].display = "itrakonazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2619
* group[=].element[=].display = "Meldoniy digidrat"
* group[=].element[=].target[+].code = #004075
* group[=].element[=].target[=].display = "meldoniy"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2621
* group[=].element[=].display = "Tolperizon gidroxloridi"
* group[=].element[=].target[+].code = #007472
* group[=].element[=].target[=].display = "tolperizon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2622
* group[=].element[=].display = "Trifluridin"
* group[=].element[=].target[+].code = #007683
* group[=].element[=].target[=].display = "trifluridin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2623
* group[=].element[=].display = "Tipirasil"
* group[=].element[=].target[+].code = #007381
* group[=].element[=].target[=].display = "tipiratsil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2624
* group[=].element[=].display = "Kreatin fosfat natriy tuzi"
* group[=].element[=].target[+].code = #008282
* group[=].element[=].target[=].display = "fosfokreatinin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2625
* group[=].element[=].display = "Memantin gidroxorid"
* group[=].element[=].target[+].code = #004076
* group[=].element[=].target[=].display = "memantin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2627
* group[=].element[=].display = "Izotretinoin"
* group[=].element[=].target[+].code = #002694
* group[=].element[=].target[=].display = "izotretinoin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2628
* group[=].element[=].display = "Menformin gidroxlorid"
* group[=].element[=].target[+].code = #004274
* group[=].element[=].target[=].display = "metformin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2629
* group[=].element[=].display = "Sitarabin"
* group[=].element[=].target[+].code = #008787
* group[=].element[=].target[=].display = "sitarabin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2630
* group[=].element[=].display = "Piperasillin"
* group[=].element[=].target[+].code = #005582
* group[=].element[=].target[=].display = "piperatsillin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2634
* group[=].element[=].display = "Vortioksetin gidrobromid"
* group[=].element[=].target[+].code = #001503
* group[=].element[=].target[=].display = "vortioksetin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2636
* group[=].element[=].display = "Doksazozin"
* group[=].element[=].target[+].code = #002382
* group[=].element[=].target[=].display = "doksazozin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2637
* group[=].element[=].display = "Fentanil"
* group[=].element[=].target[+].code = #007983
* group[=].element[=].target[=].display = "fentanil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2638
* group[=].element[=].display = "Fosfomitsin"
* group[=].element[=].target[+].code = #008283
* group[=].element[=].target[=].display = "fosfomitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2639
* group[=].element[=].display = "Teofillin"
* group[=].element[=].target[+].code = #000403
* group[=].element[=].target[=].display = "aminofillin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2642
* group[=].element[=].display = "Fruktoza dinatriy fosfat"
* group[=].element[=].target[+].code = #008286
* group[=].element[=].target[=].display = "fosfruktoza"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2643
* group[=].element[=].display = "Irinotekan gidroxlorid trigidrat"
* group[=].element[=].target[+].code = #002965
* group[=].element[=].target[=].display = "irinotekan"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2644
* group[=].element[=].display = "Fruktoza"
* group[=].element[=].target[+].code = #008286
* group[=].element[=].target[=].display = "fosfruktoza"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2645
* group[=].element[=].display = "Setroreliks (setroreliks atsetat shaklida)"
* group[=].element[=].target[+].code = #008517
* group[=].element[=].target[=].display = "setroreliks"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2647
* group[=].element[=].display = "Mebgidrolin"
* group[=].element[=].target[+].code = #003992
* group[=].element[=].target[=].display = "mebgidrolin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2648
* group[=].element[=].display = "Galantamin gidroxlorid"
* group[=].element[=].target[+].code = #001534
* group[=].element[=].target[=].display = "galantamin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2649
* group[=].element[=].display = "Ruksolitinib"
* group[=].element[=].target[+].code = #006343
* group[=].element[=].target[=].display = "ruksolitinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2651
* group[=].element[=].display = "Ziprasidon"
* group[=].element[=].target[+].code = #002555
* group[=].element[=].target[=].display = "ziprasidon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2652
* group[=].element[=].display = "Aminokapron kislota"
* group[=].element[=].target[+].code = #000394
* group[=].element[=].target[=].display = "aminokapron kislotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2654
* group[=].element[=].display = "Erdostein"
* group[=].element[=].target[+].code = #009134
* group[=].element[=].target[=].display = "erdostein"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2655
* group[=].element[=].display = "Klobetazol propionat"
* group[=].element[=].target[+].code = #003279
* group[=].element[=].target[=].display = "klobetazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2656
* group[=].element[=].display = "Karboprost trometamin"
* group[=].element[=].target[+].code = #003131
* group[=].element[=].target[=].display = "karboprost"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2657
* group[=].element[=].display = "Xloroparamin gidroxloridi"
* group[=].element[=].target[+].code = #008424
* group[=].element[=].target[=].display = "xloropiramin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2664
* group[=].element[=].display = "Trometamol"
* group[=].element[=].target[+].code = #007711
* group[=].element[=].target[=].display = "trometamol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2665
* group[=].element[=].display = "Gimekromon"
* group[=].element[=].target[+].code = #001707
* group[=].element[=].target[=].display = "gimekromon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2666
* group[=].element[=].display = "Rituksimab"
* group[=].element[=].target[+].code = #006235
* group[=].element[=].target[=].display = "rituksimab"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2667
* group[=].element[=].display = "Epinefrin"
* group[=].element[=].target[+].code = #009078
* group[=].element[=].target[=].display = "epinefrin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2668
* group[=].element[=].display = "Klobetazol"
* group[=].element[=].target[+].code = #003279
* group[=].element[=].target[=].display = "klobetazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2669
* group[=].element[=].display = "Idoksurudin"
* group[=].element[=].target[+].code = #002637
* group[=].element[=].target[=].display = "idoksuridin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2670
* group[=].element[=].display = "Fruktoza-1,6-difosfat uchnatriyli tuzi trigidrati"
* group[=].element[=].target[+].code = #008286
* group[=].element[=].target[=].display = "fosfruktoza"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2672
* group[=].element[=].display = "Fluvoksamin"
* group[=].element[=].target[+].code = #008105
* group[=].element[=].target[=].display = "fluvoksamin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2681
* group[=].element[=].display = "Dofamin gidroxlorid"
* group[=].element[=].target[+].code = #002416
* group[=].element[=].target[=].display = "dopamin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2683
* group[=].element[=].display = "Baklofen"
* group[=].element[=].target[+].code = #000763
* group[=].element[=].target[=].display = "baklofen"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2684
* group[=].element[=].display = "Tretinoin"
* group[=].element[=].target[+].code = #007597
* group[=].element[=].target[=].display = "tretinoin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2685
* group[=].element[=].display = "Galoperidol"
* group[=].element[=].target[+].code = #001553
* group[=].element[=].target[=].display = "galoperidol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2686
* group[=].element[=].display = "Adapalen"
* group[=].element[=].target[+].code = #000059
* group[=].element[=].target[=].display = "adapalen"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2687
* group[=].element[=].display = "Metamizol"
* group[=].element[=].target[+].code = #004159
* group[=].element[=].target[=].display = "metamizol natriy"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2690
* group[=].element[=].display = "Enalaprilat"
* group[=].element[=].target[+].code = #008985
* group[=].element[=].target[=].display = "enalapril"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2692
* group[=].element[=].display = "Siklosporin"
* group[=].element[=].target[+].code = #008666
* group[=].element[=].target[=].display = "siklosporin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2694
* group[=].element[=].display = "Gopanten kislotasi"
* group[=].element[=].target[+].code = #001811
* group[=].element[=].target[=].display = "gopanten kislotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2697
* group[=].element[=].display = "Steril natriy tuzi sefotaksim"
* group[=].element[=].target[+].code = #008568
* group[=].element[=].target[=].display = "sefotaksim"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2699
* group[=].element[=].display = "Brimonidin"
* group[=].element[=].target[+].code = #001126
* group[=].element[=].target[=].display = "brimonidin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2700
* group[=].element[=].display = "Dutaserid"
* group[=].element[=].target[+].code = #002491
* group[=].element[=].target[=].display = "dutasterid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2701
* group[=].element[=].display = "Tamsulozin"
* group[=].element[=].target[+].code = #006968
* group[=].element[=].target[=].display = "tamsulozin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2702
* group[=].element[=].display = "Velpatasvir"
* group[=].element[=].target[+].code = #001386
* group[=].element[=].target[=].display = "velpatasvir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2703
* group[=].element[=].display = "Aripiprazol"
* group[=].element[=].target[+].code = #000595
* group[=].element[=].target[=].display = "aripiprazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2706
* group[=].element[=].display = "Sitagliptin fosfat monogidrat"
* group[=].element[=].target[+].code = #006591
* group[=].element[=].target[=].display = "sitagliptin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2710
* group[=].element[=].display = "Natriy pantorpozol"
* group[=].element[=].target[+].code = #005312
* group[=].element[=].target[=].display = "pantoprazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2711
* group[=].element[=].display = "Krizotinib"
* group[=].element[=].target[+].code = #003445
* group[=].element[=].target[=].display = "krizotinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2713
* group[=].element[=].display = "Oksitosin"
* group[=].element[=].target[+].code = #005069
* group[=].element[=].target[=].display = "oksitotsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2714
* group[=].element[=].display = "Trimetazidin"
* group[=].element[=].target[+].code = #007649
* group[=].element[=].target[=].display = "trimetazidin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2718
* group[=].element[=].display = "Varfarin"
* group[=].element[=].target[+].code = #001362
* group[=].element[=].target[=].display = "varfarin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2719
* group[=].element[=].display = "Bisoprolol fumarat"
* group[=].element[=].target[+].code = #001055
* group[=].element[=].target[=].display = "bisoprolol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2720
* group[=].element[=].display = "Doksilamin"
* group[=].element[=].target[+].code = #002391
* group[=].element[=].target[=].display = "doksilamin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2724
* group[=].element[=].display = "Mebendazol"
* group[=].element[=].target[+].code = #003995
* group[=].element[=].target[=].display = "mebendazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2727
* group[=].element[=].display = "Finasterid"
* group[=].element[=].target[+].code = #008038
* group[=].element[=].target[=].display = "finasterid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2728
* group[=].element[=].display = "Kabergolin"
* group[=].element[=].target[+].code = #003010
* group[=].element[=].target[=].display = "kabergolin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2732
* group[=].element[=].display = "Serrapeptaza"
* group[=].element[=].target[+].code = #006524
* group[=].element[=].target[=].display = "serrapeptaza"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2733
* group[=].element[=].display = "Rebamipid"
* group[=].element[=].target[+].code = #006083
* group[=].element[=].target[=].display = "rebamipid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2734
* group[=].element[=].display = "Doferaziroks"
* group[=].element[=].target[+].code = #002126
* group[=].element[=].target[=].display = "deferaziroks"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2737
* group[=].element[=].display = "Izoksuprin"
* group[=].element[=].target[+].code = #002671
* group[=].element[=].target[=].display = "izoksuprin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2738
* group[=].element[=].display = "Amorf darunavir"
* group[=].element[=].target[+].code = #001932
* group[=].element[=].target[=].display = "darunavir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2740
* group[=].element[=].display = "Dimetilsulfoksid"
* group[=].element[=].target[+].code = #002243
* group[=].element[=].target[=].display = "dimetilsulfoksid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2753
* group[=].element[=].display = "Gistidin"
* group[=].element[=].target[+].code = #001721
* group[=].element[=].target[=].display = "gistidin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2754
* group[=].element[=].display = "Gopanten kislotasining kalsiy tuzi"
* group[=].element[=].target[+].code = #001811
* group[=].element[=].target[=].display = "gopanten kislotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2757
* group[=].element[=].display = "Dezloratadin"
* group[=].element[=].target[+].code = #001960
* group[=].element[=].target[=].display = "dezloratadin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2758
* group[=].element[=].display = "Olanzapin digidroxlorid trigidrat"
* group[=].element[=].target[+].code = #005125
* group[=].element[=].target[=].display = "olanzapin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2760
* group[=].element[=].display = "Timolol maleat"
* group[=].element[=].target[+].code = #007324
* group[=].element[=].target[=].display = "timolol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2763
* group[=].element[=].display = "Levonorgestrel"
* group[=].element[=].target[+].code = #003633
* group[=].element[=].target[=].display = "levonorgestrel"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2764
* group[=].element[=].display = "Lopinavir"
* group[=].element[=].target[+].code = #003849
* group[=].element[=].target[=].display = "lopinavir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2765
* group[=].element[=].display = "Ritonavir"
* group[=].element[=].target[+].code = #006232
* group[=].element[=].target[=].display = "ritonavir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2768
* group[=].element[=].display = "Deksibuprofen"
* group[=].element[=].target[+].code = #001990
* group[=].element[=].target[=].display = "deksibuprofen"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2770
* group[=].element[=].display = "Irinotekan"
* group[=].element[=].target[+].code = #002965
* group[=].element[=].target[=].display = "irinotekan"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2771
* group[=].element[=].display = "Ketamin"
* group[=].element[=].target[+].code = #003216
* group[=].element[=].target[=].display = "ketamin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2772
* group[=].element[=].display = "Steril natriyli seftriakson tuzi"
* group[=].element[=].target[+].code = #008594
* group[=].element[=].target[=].display = "seftriakson"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2774
* group[=].element[=].display = "Sertralin"
* group[=].element[=].target[+].code = #006527
* group[=].element[=].target[=].display = "sertralin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2780
* group[=].element[=].display = "Fluosinolon asetonid"
* group[=].element[=].target[+].code = #008155
* group[=].element[=].target[=].display = "fluotsinolona atsetonid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2781
* group[=].element[=].display = "Atazanavir"
* group[=].element[=].target[+].code = #000641
* group[=].element[=].target[=].display = "atazanavir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2782
* group[=].element[=].display = "Dinoproston"
* group[=].element[=].target[+].code = #002269
* group[=].element[=].target[=].display = "dinoproston"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2784
* group[=].element[=].display = "Teykoplanin"
* group[=].element[=].target[+].code = #007044
* group[=].element[=].target[=].display = "teykoplanin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2785
* group[=].element[=].display = "Doksazozin mezilat"
* group[=].element[=].target[+].code = #002382
* group[=].element[=].target[=].display = "doksazozin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2787
* group[=].element[=].display = "Zonizamid"
* group[=].element[=].target[+].code = #002580
* group[=].element[=].target[=].display = "zonisamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2788
* group[=].element[=].display = "Ifosfamid"
* group[=].element[=].target[+].code = #003006
* group[=].element[=].target[=].display = "ifosfamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2789
* group[=].element[=].display = "Riboksin (inozin)"
* group[=].element[=].target[+].code = #002817
* group[=].element[=].target[=].display = "inozin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2790
* group[=].element[=].display = "Bevasizumab"
* group[=].element[=].target[+].code = #000815
* group[=].element[=].target[=].display = "bevatsizumab"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2791
* group[=].element[=].display = "Lizin"
* group[=].element[=].target[+].code = #003742
* group[=].element[=].target[=].display = "lizin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2793
* group[=].element[=].display = "Mesalazin"
* group[=].element[=].target[+].code = #004129
* group[=].element[=].target[=].display = "mesalazin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2794
* group[=].element[=].display = "Fuzidiy kislota"
* group[=].element[=].target[+].code = #008315
* group[=].element[=].target[=].display = "fuzid kislotasi/"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2798
* group[=].element[=].display = "Remdesivir"
* group[=].element[=].target[+].code = #009341
* group[=].element[=].target[=].display = "remdesivir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2803
* group[=].element[=].display = "Azitromitsin digidrat"
* group[=].element[=].target[+].code = #000136
* group[=].element[=].target[=].display = "azitromitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2806
* group[=].element[=].display = "Repaglinid"
* group[=].element[=].target[+].code = #006137
* group[=].element[=].target[=].display = "repaglinid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2809
* group[=].element[=].display = "Pirantel"
* group[=].element[=].target[+].code = #005610
* group[=].element[=].target[=].display = "pirantel"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2810
* group[=].element[=].display = "Xorioganodotropin alfa"
* group[=].element[=].target[+].code = #008453
* group[=].element[=].target[=].display = "xoriogonadotropin alfa"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2811
* group[=].element[=].display = "Doksilamin suksinat"
* group[=].element[=].target[+].code = #002391
* group[=].element[=].target[=].display = "doksilamin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2812
* group[=].element[=].display = "Dimipiridamol"
* group[=].element[=].target[+].code = #002288
* group[=].element[=].target[=].display = "dipiridamol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2813
* group[=].element[=].display = "Travoprost"
* group[=].element[=].target[+].code = #007537
* group[=].element[=].target[=].display = "travoprost"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2814
* group[=].element[=].display = "Udenafil"
* group[=].element[=].target[+].code = #007754
* group[=].element[=].target[=].display = "udenafil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2815
* group[=].element[=].display = "Etifoksin gidroxloridi"
* group[=].element[=].target[+].code = #009257
* group[=].element[=].target[=].display = "etifoksin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2821
* group[=].element[=].display = "Asetilsistein"
* group[=].element[=].target[+].code = #000733
* group[=].element[=].target[=].display = "atsetilsistein"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2822
* group[=].element[=].display = "Bupivakain"
* group[=].element[=].target[+].code = #001219
* group[=].element[=].target[=].display = "bupivakain"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2823
* group[=].element[=].display = "Xlorfenamin maleat"
* group[=].element[=].target[+].code = #008440
* group[=].element[=].target[=].display = "xlorfenamin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2826
* group[=].element[=].display = "Mometazon furoat monogidrat"
* group[=].element[=].target[+].code = #004475
* group[=].element[=].target[=].display = "mometazon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2829
* group[=].element[=].display = "Kanamitsin"
* group[=].element[=].target[+].code = #003065
* group[=].element[=].target[=].display = "kanamitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2830
* group[=].element[=].display = "Kalsiy gopantenat"
* group[=].element[=].target[+].code = #001811
* group[=].element[=].target[=].display = "gopanten kislotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2831
* group[=].element[=].display = "Donepezilla gidroxlorid monogidrat"
* group[=].element[=].target[+].code = #002412
* group[=].element[=].target[=].display = "donepezil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2833
* group[=].element[=].display = "Sulpirid"
* group[=].element[=].target[+].code = #006792
* group[=].element[=].target[=].display = "sulpirid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2834
* group[=].element[=].display = "Interferon alfa-2b"
* group[=].element[=].target[+].code = #002845
* group[=].element[=].target[=].display = "interferon alfa"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2835
* group[=].element[=].display = "Oksimetazolin"
* group[=].element[=].target[+].code = #005052
* group[=].element[=].target[=].display = "oksimetazolin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2838
* group[=].element[=].display = "Bendamustin gidroxlorid"
* group[=].element[=].target[+].code = #000884
* group[=].element[=].target[=].display = "bendamustin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2839
* group[=].element[=].display = "Bortezomib"
* group[=].element[=].target[+].code = #001099
* group[=].element[=].target[=].display = "bortezomib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2840
* group[=].element[=].display = "Gidrokortizon asetat"
* group[=].element[=].target[+].code = #001678
* group[=].element[=].target[=].display = "gidrokortizon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2841
* group[=].element[=].display = "Vareniklin"
* group[=].element[=].target[+].code = #001358
* group[=].element[=].target[=].display = "vareniklin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2845
* group[=].element[=].display = "Urofollitropin"
* group[=].element[=].target[+].code = #007786
* group[=].element[=].target[=].display = "urofollitropin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2847
* group[=].element[=].display = "Lerkarnidipin"
* group[=].element[=].target[+].code = #003705
* group[=].element[=].target[=].display = "lerkanidipin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2848
* group[=].element[=].display = "Xlopromazin"
* group[=].element[=].target[+].code = #008433
* group[=].element[=].target[=].display = "xlorpromazin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2850
* group[=].element[=].display = "Etofenamat"
* group[=].element[=].target[+].code = #009290
* group[=].element[=].target[=].display = "etofenamat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2851
* group[=].element[=].display = "Erlotinib"
* group[=].element[=].target[+].code = #009147
* group[=].element[=].target[=].display = "erlotinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2855
* group[=].element[=].display = "Rasementol"
* group[=].element[=].target[+].code = #006074
* group[=].element[=].target[=].display = "ratsementol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2858
* group[=].element[=].display = "Zaleplon"
* group[=].element[=].target[+].code = #002504
* group[=].element[=].target[=].display = "zaleplon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2860
* group[=].element[=].display = "Digoksin"
* group[=].element[=].target[+].code = #002177
* group[=].element[=].target[=].display = "digoksin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2861
* group[=].element[=].display = "3-(2,2,2 - trimetilgidraziniy) propionat digidrat (meldoniy)"
* group[=].element[=].target[+].code = #004075
* group[=].element[=].target[=].display = "meldoniy"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2863
* group[=].element[=].display = "Meropenem trigidrat"
* group[=].element[=].target[+].code = #004125
* group[=].element[=].target[=].display = "meropenem"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2864
* group[=].element[=].display = "Testosteron"
* group[=].element[=].target[+].code = #007167
* group[=].element[=].target[=].display = "testosteron"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2865
* group[=].element[=].display = "Trokserutin"
* group[=].element[=].target[+].code = #007698
* group[=].element[=].target[=].display = "trokserutin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2866
* group[=].element[=].display = "Karbazoxrom"
* group[=].element[=].target[+].code = #003106
* group[=].element[=].target[=].display = "karbazoxrom"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2868
* group[=].element[=].display = "Mizoprostol"
* group[=].element[=].target[+].code = #004334
* group[=].element[=].target[=].display = "mizoprostol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2870
* group[=].element[=].display = "Sitagliptin fosfat"
* group[=].element[=].target[+].code = #006591
* group[=].element[=].target[=].display = "sitagliptin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2871
* group[=].element[=].display = "Sorafenib"
* group[=].element[=].target[+].code = #006650
* group[=].element[=].target[=].display = "sorafenib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2873
* group[=].element[=].display = "Amitriptilin gidroxlorid"
* group[=].element[=].target[+].code = #000417
* group[=].element[=].target[=].display = "amitriptilin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2875
* group[=].element[=].display = "Idebenon"
* group[=].element[=].target[+].code = #002633
* group[=].element[=].target[=].display = "idebenon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2876
* group[=].element[=].display = "Pentaeritritil tetranitran"
* group[=].element[=].target[+].code = #005417
* group[=].element[=].target[=].display = "pentaeritritila tetranitrat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2880
* group[=].element[=].display = "Somatotropin"
* group[=].element[=].target[+].code = #006632
* group[=].element[=].target[=].display = "somatropin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2881
* group[=].element[=].display = "Silodozin"
* group[=].element[=].target[+].code = #006557
* group[=].element[=].target[=].display = "silodozin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2884
* group[=].element[=].display = "Lomefloksasin"
* group[=].element[=].target[+].code = #003835
* group[=].element[=].target[=].display = "lomefloksatsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2889
* group[=].element[=].display = "Totsilizumab"
* group[=].element[=].target[+].code = #007532
* group[=].element[=].target[=].display = "totsilizumab"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2890
* group[=].element[=].display = "Levamizol"
* group[=].element[=].target[+].code = #003597
* group[=].element[=].target[=].display = "levamizol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2891
* group[=].element[=].display = "Terlipressin"
* group[=].element[=].target[+].code = #007150
* group[=].element[=].target[=].display = "terlipressin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2892
* group[=].element[=].display = "Etinilestradiol"
* group[=].element[=].target[+].code = #009240
* group[=].element[=].target[=].display = "etinilestradiol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2893
* group[=].element[=].display = "Dozogestreal"
* group[=].element[=].target[+].code = #001965
* group[=].element[=].target[=].display = "dezogestrel"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2896
* group[=].element[=].display = "Kvetiapin fumarat"
* group[=].element[=].target[+].code = #003207
* group[=].element[=].target[=].display = "kvetiapin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2900
* group[=].element[=].display = "Kaspofungin"
* group[=].element[=].target[+].code = #003192
* group[=].element[=].target[=].display = "kaspofungin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2902
* group[=].element[=].display = "Deklatasvir"
* group[=].element[=].target[+].code = #001867
* group[=].element[=].target[=].display = "daklatasvir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2904
* group[=].element[=].display = "Epirubisin"
* group[=].element[=].target[+].code = #009082
* group[=].element[=].target[=].display = "epirubitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2905
* group[=].element[=].display = "Lapatinib"
* group[=].element[=].target[+].code = #003560
* group[=].element[=].target[=].display = "lapatinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2906
* group[=].element[=].display = "Robeprazol natriy"
* group[=].element[=].target[+].code = #006008
* group[=].element[=].target[=].display = "rabeprazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2908
* group[=].element[=].display = "Geparin"
* group[=].element[=].target[+].code = #001646
* group[=].element[=].target[=].display = "geparin natriy"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2921
* group[=].element[=].display = "Milrinon"
* group[=].element[=].target[+].code = #004354
* group[=].element[=].target[=].display = "milrinon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2922
* group[=].element[=].display = "Klozapin"
* group[=].element[=].target[+].code = #003293
* group[=].element[=].target[=].display = "klozapin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2924
* group[=].element[=].display = "Tiotropiy bromid"
* group[=].element[=].target[+].code = #007373
* group[=].element[=].target[=].display = "tiotropiy bromid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2926
* group[=].element[=].display = "Megaldrat"
* group[=].element[=].target[+].code = #003937
* group[=].element[=].target[=].display = "magaldrat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2927
* group[=].element[=].display = "Sultamisillina"
* group[=].element[=].target[+].code = #006795
* group[=].element[=].target[=].display = "sultamitsillin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2939
* group[=].element[=].display = "Donepezil"
* group[=].element[=].target[+].code = #002412
* group[=].element[=].target[=].display = "donepezil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2943
* group[=].element[=].display = "Doksofillin"
* group[=].element[=].target[+].code = #002395
* group[=].element[=].target[=].display = "doksofillin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2944
* group[=].element[=].display = "Moksifloksasin gidroxlorid"
* group[=].element[=].target[+].code = #004462
* group[=].element[=].target[=].display = "moksifloksatsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2945
* group[=].element[=].display = "Tetratsiklin gidroxloridi"
* group[=].element[=].target[+].code = #007180
* group[=].element[=].target[=].display = "tetratsiklin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2947
* group[=].element[=].display = "Timopentin"
* group[=].element[=].target[+].code = #007327
* group[=].element[=].target[=].display = "timopentin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2950
* group[=].element[=].display = "Vinorelbin"
* group[=].element[=].target[+].code = #001452
* group[=].element[=].target[=].display = "vinorelbin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2954
* group[=].element[=].display = "Mikofenol kislota"
* group[=].element[=].target[+].code = #004339
* group[=].element[=].target[=].display = "mikofenol kislotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2959
* group[=].element[=].display = "Besilat atrakurium"
* group[=].element[=].target[+].code = #000672
* group[=].element[=].target[=].display = "atrakuriya bezilat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2961
* group[=].element[=].display = "Klasifediol monogidrat"
* group[=].element[=].target[+].code = #003038
* group[=].element[=].target[=].display = "kalsifediol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2963
* group[=].element[=].display = "Enoksolon"
* group[=].element[=].target[+].code = #009029
* group[=].element[=].target[=].display = "enoksolon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2964
* group[=].element[=].display = "Dekvaliniy xlorid"
* group[=].element[=].target[+].code = #001973
* group[=].element[=].target[=].display = "dekvaliniy xlorid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2965
* group[=].element[=].display = "Tirotritsin"
* group[=].element[=].target[+].code = #007405
* group[=].element[=].target[=].display = "tirotritsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2966
* group[=].element[=].display = "Glyukozamin"
* group[=].element[=].target[+].code = #001787
* group[=].element[=].target[=].display = "glyukozamin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2972
* group[=].element[=].display = "Sinxokain"
* group[=].element[=].target[+].code = #008747
* group[=].element[=].target[=].display = "sinxokain"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2983
* group[=].element[=].display = "Xlorgeksidin diglyukonat"
* group[=].element[=].target[+].code = #008408
* group[=].element[=].target[=].display = "xlorgeksidin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2984
* group[=].element[=].display = "Makrogol"
* group[=].element[=].target[+].code = #003949
* group[=].element[=].target[=].display = "makrogol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2986
* group[=].element[=].display = "Gramisidin"
* group[=].element[=].target[+].code = #001815
* group[=].element[=].target[=].display = "gramitsidin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2987
* group[=].element[=].display = "Setilpiridin xlorid"
* group[=].element[=].target[+].code = #008505
* group[=].element[=].target[=].display = "setilpiridiniy xlorid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2988
* group[=].element[=].display = "Oksibuprokai"
* group[=].element[=].target[+].code = #005037
* group[=].element[=].target[=].display = "oksibuprokain"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2991
* group[=].element[=].display = "Metoprolol"
* group[=].element[=].target[+].code = #004253
* group[=].element[=].target[=].display = "metoprolol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2992
* group[=].element[=].display = "Merkaptopurin"
* group[=].element[=].target[+].code = #004120
* group[=].element[=].target[=].display = "merkaptopurin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2993
* group[=].element[=].display = "Oksitetrasisklin"
* group[=].element[=].target[+].code = #005067
* group[=].element[=].target[=].display = "oksitetratsiklin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2998
* group[=].element[=].display = "Pantoprazol natriy seskvigidrat"
* group[=].element[=].target[+].code = #005312
* group[=].element[=].target[=].display = "pantoprazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3005
* group[=].element[=].display = "Fenazopiridin"
* group[=].element[=].target[+].code = #007874
* group[=].element[=].target[=].display = "fenazopiridin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3007
* group[=].element[=].display = "Diklofenak natriy"
* group[=].element[=].target[+].code = #002203
* group[=].element[=].target[=].display = "diklofenak"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3019
* group[=].element[=].display = "Fosfokreatinin"
* group[=].element[=].target[+].code = #008282
* group[=].element[=].target[=].display = "fosfokreatinin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3026
* group[=].element[=].display = "Dalteparin natriy"
* group[=].element[=].target[+].code = #001884
* group[=].element[=].target[=].display = "dalteparin natriy"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3027
* group[=].element[=].display = "Disulfiram"
* group[=].element[=].target[+].code = #002314
* group[=].element[=].target[=].display = "disulfiram"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3030
* group[=].element[=].display = "Salitsilamid"
* group[=].element[=].target[+].code = #006380
* group[=].element[=].target[=].display = "salitsilamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3031
* group[=].element[=].display = "Fenilbutazon"
* group[=].element[=].target[+].code = #007915
* group[=].element[=].target[=].display = "fenilbutazon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3032
* group[=].element[=].display = "Amantadin sulfat"
* group[=].element[=].target[+].code = #000343
* group[=].element[=].target[=].display = "amantadin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3035
* group[=].element[=].display = "Lenalidomid"
* group[=].element[=].target[+].code = #003685
* group[=].element[=].target[=].display = "lenalidomid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3036
* group[=].element[=].display = "Zidovudin"
* group[=].element[=].target[+].code = #002536
* group[=].element[=].target[=].display = "zidovudin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3038
* group[=].element[=].display = "Gliserin"
* group[=].element[=].target[+].code = #001767
* group[=].element[=].target[=].display = "glitserol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3040
* group[=].element[=].display = "Abirateron asetat"
* group[=].element[=].target[+].code = #000017
* group[=].element[=].target[=].display = "abirateron"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3044
* group[=].element[=].display = "Follitropin"
* group[=].element[=].target[+].code = #008230
* group[=].element[=].target[=].display = "follitropin alfa"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3047
* group[=].element[=].display = "Kalsiy atorvastatin"
* group[=].element[=].target[+].code = #000668
* group[=].element[=].target[=].display = "atorvastatin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3048
* group[=].element[=].display = "Protionamid"
* group[=].element[=].target[+].code = #005949
* group[=].element[=].target[=].display = "protionamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3050
* group[=].element[=].display = "Epalrestat"
* group[=].element[=].target[+].code = #009064
* group[=].element[=].target[=].display = "epalrestat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3051
* group[=].element[=].display = "Izofluran"
* group[=].element[=].target[+].code = #002697
* group[=].element[=].target[=].display = "izofluran"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3053
* group[=].element[=].display = "Eplerenon"
* group[=].element[=].target[+].code = #009089
* group[=].element[=].target[=].display = "eplerenon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3055
* group[=].element[=].display = "Bikalutamid"
* group[=].element[=].target[+].code = #001017
* group[=].element[=].target[=].display = "bikalutamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3059
* group[=].element[=].display = "Dimetikon"
* group[=].element[=].target[+].code = #002242
* group[=].element[=].target[=].display = "dimetikon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3061
* group[=].element[=].display = "Dolutegravir"
* group[=].element[=].target[+].code = #002402
* group[=].element[=].target[=].display = "dolutegravir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3064
* group[=].element[=].display = "Xlormadinon"
* group[=].element[=].target[+].code = #008413
* group[=].element[=].target[=].display = "xlormadinon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3066
* group[=].element[=].display = "Aklidiniy bromid"
* group[=].element[=].target[+].code = #000158
* group[=].element[=].target[=].display = "aklidiniy bromid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3076
* group[=].element[=].display = "Vardenafil"
* group[=].element[=].target[+].code = #001357
* group[=].element[=].target[=].display = "vardenafil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3080
* group[=].element[=].display = "Fluoksetin"
* group[=].element[=].target[+].code = #008149
* group[=].element[=].target[=].display = "fluoksetin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3082
* group[=].element[=].display = "Triptorelina"
* group[=].element[=].target[+].code = #007669
* group[=].element[=].target[=].display = "triptorelin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3083
* group[=].element[=].display = "Gestoden"
* group[=].element[=].target[+].code = #001659
* group[=].element[=].target[=].display = "gestoden"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3084
* group[=].element[=].display = "Esmalol gidroxlorid"
* group[=].element[=].target[+].code = #009164
* group[=].element[=].target[=].display = "esmolol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3085
* group[=].element[=].display = "Tamoksifen sitrat"
* group[=].element[=].target[+].code = #006965
* group[=].element[=].target[=].display = "tamoksifen"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3086
* group[=].element[=].display = "Gefitinib"
* group[=].element[=].target[+].code = #001666
* group[=].element[=].target[=].display = "gefitinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3090
* group[=].element[=].display = "Delamanid"
* group[=].element[=].target[+].code = #002037
* group[=].element[=].target[=].display = "delamanid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3093
* group[=].element[=].display = "Diyenogest"
* group[=].element[=].target[+].code = #002182
* group[=].element[=].target[=].display = "diyenogest"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3094
* group[=].element[=].display = "Metronidazol benzoat"
* group[=].element[=].target[+].code = #004272
* group[=].element[=].target[=].display = "metronidazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3096
* group[=].element[=].display = "Fozinopril"
* group[=].element[=].target[+].code = #008221
* group[=].element[=].target[=].display = "fozinopril"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3098
* group[=].element[=].display = "Foliniy kislota"
* group[=].element[=].target[+].code = #003050
* group[=].element[=].target[=].display = "kalsiy folinat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3100
* group[=].element[=].display = "Suvsiz bortezomib"
* group[=].element[=].target[+].code = #001099
* group[=].element[=].target[=].display = "bortezomib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3102
* group[=].element[=].display = "Betametazon dipropionat"
* group[=].element[=].target[+].code = #000983
* group[=].element[=].target[=].display = "betametazon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3109
* group[=].element[=].display = "Nevirapin"
* group[=].element[=].target[+].code = #004697
* group[=].element[=].target[=].display = "nevirapin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3110
* group[=].element[=].display = "Nitrendipin"
* group[=].element[=].target[+].code = #004846
* group[=].element[=].target[=].display = "nitrendipin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3113
* group[=].element[=].display = "Mirabergon"
* group[=].element[=].target[+].code = #004382
* group[=].element[=].target[=].display = "mirabegron"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3117
* group[=].element[=].display = "Levamizol gidroxlorid"
* group[=].element[=].target[+].code = #003597
* group[=].element[=].target[=].display = "levamizol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3118
* group[=].element[=].display = "Gidroksazin gidroxlorid"
* group[=].element[=].target[+].code = #001682
* group[=].element[=].target[=].display = "gidroksizin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3119
* group[=].element[=].display = "Ebastin"
* group[=].element[=].target[+].code = #008796
* group[=].element[=].target[=].display = "ebastin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3121
* group[=].element[=].display = "Topiramat"
* group[=].element[=].target[+].code = #007501
* group[=].element[=].target[=].display = "topiramat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3122
* group[=].element[=].display = "Vinkamin"
* group[=].element[=].target[+].code = #001443
* group[=].element[=].target[=].display = "vinkamin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3124
* group[=].element[=].display = "Sunitib"
* group[=].element[=].target[+].code = #006868
* group[=].element[=].target[=].display = "sunitinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3125
* group[=].element[=].display = "Klioxinol"
* group[=].element[=].target[+].code = #003271
* group[=].element[=].target[=].display = "klioxinol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3126
* group[=].element[=].display = "Flumetazon"
* group[=].element[=].target[+].code = #008132
* group[=].element[=].target[=].display = "flumetazon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3130
* group[=].element[=].display = "Entekavir monogidrat, entekavirga tenglashtirilgan"
* group[=].element[=].target[+].code = #009050
* group[=].element[=].target[=].display = "entekavir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3132
* group[=].element[=].display = "Sisatrakuriy besilat"
* group[=].element[=].target[+].code = #008779
* group[=].element[=].target[=].display = "sisatrakuriya bezilat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3133
* group[=].element[=].display = "Ketotifen fumarat"
* group[=].element[=].target[+].code = #003227
* group[=].element[=].target[=].display = "ketotifen"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3134
* group[=].element[=].display = "Levofloksasin laktat"
* group[=].element[=].target[+].code = #003650
* group[=].element[=].target[=].display = "levofloksatsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3137
* group[=].element[=].display = "Afatinib"
* group[=].element[=].target[+].code = #000688
* group[=].element[=].target[=].display = "afatinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3139
* group[=].element[=].display = "Dekstran 40"
* group[=].element[=].target[+].code = #002019
* group[=].element[=].target[=].display = "dekstran"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3149
* group[=].element[=].display = "Paklitaksel (paklitakselning albumin bilan bog‘langan nanozarrachalari)"
* group[=].element[=].target[+].code = #005268
* group[=].element[=].target[=].display = "paklitaksel"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3152
* group[=].element[=].display = "Mometazon furoat"
* group[=].element[=].target[+].code = #004475
* group[=].element[=].target[=].display = "mometazon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3159
* group[=].element[=].display = "Propafenon"
* group[=].element[=].target[+].code = #005908
* group[=].element[=].target[=].display = "propafenon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3160
* group[=].element[=].display = "Nitrofurantoin"
* group[=].element[=].target[+].code = #004857
* group[=].element[=].target[=].display = "nitrofurantoin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3161
* group[=].element[=].display = "Jozamisin"
* group[=].element[=].target[+].code = #002140
* group[=].element[=].target[=].display = "djozamitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3163
* group[=].element[=].display = "Noskapin"
* group[=].element[=].target[+].code = #004952
* group[=].element[=].target[=].display = "noskapin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3166
* group[=].element[=].display = "Itoprid Gidroxlorid"
* group[=].element[=].target[+].code = #002992
* group[=].element[=].target[=].display = "itoprid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3169
* group[=].element[=].display = "Etanersept"
* group[=].element[=].target[+].code = #009201
* group[=].element[=].target[=].display = "etanersept"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3170
* group[=].element[=].display = "Meglyumina natriy suktsinat"
* group[=].element[=].target[+].code = #004007
* group[=].element[=].target[=].display = "meglyumin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3172
* group[=].element[=].display = "Mikofenalat mofetil"
* group[=].element[=].target[+].code = #004339
* group[=].element[=].target[=].display = "mikofenol kislotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3176
* group[=].element[=].display = "Fenoterol"
* group[=].element[=].target[+].code = #007963
* group[=].element[=].target[=].display = "fenoterol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3178
* group[=].element[=].display = "Gatifloksatsin seskvigidrat"
* group[=].element[=].target[+].code = #001588
* group[=].element[=].target[=].display = "gatifloksatsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3179
* group[=].element[=].display = "Bisoprolol gemifumarat"
* group[=].element[=].target[+].code = #001055
* group[=].element[=].target[=].display = "bisoprolol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3181
* group[=].element[=].display = "Dekstran 4000"
* group[=].element[=].target[+].code = #002019
* group[=].element[=].target[=].display = "dekstran"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3183
* group[=].element[=].display = "Dekspantenol"
* group[=].element[=].target[+].code = #002008
* group[=].element[=].target[=].display = "dekspantenol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3187
* group[=].element[=].display = "Treonin"
* group[=].element[=].target[+].code = #007585
* group[=].element[=].target[=].display = "treonin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3188
* group[=].element[=].display = "Tirozin"
* group[=].element[=].target[+].code = #007401
* group[=].element[=].target[=].display = "tirozin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3189
* group[=].element[=].display = "Natriy kromoglikat"
* group[=].element[=].target[+].code = #003461
* group[=].element[=].target[=].display = "kromoglitsik kislotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3190
* group[=].element[=].display = "Tizanidin"
* group[=].element[=].target[+].code = #007270
* group[=].element[=].target[=].display = "tizanidin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3191
* group[=].element[=].display = "Xolin salisilat"
* group[=].element[=].target[+].code = #008449
* group[=].element[=].target[=].display = "xolina salitsilat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3195
* group[=].element[=].display = "Natriy ampissilin"
* group[=].element[=].target[+].code = #000453
* group[=].element[=].target[=].display = "ampitsillin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3197
* group[=].element[=].display = "Liraglutid"
* group[=].element[=].target[+].code = #003780
* group[=].element[=].target[=].display = "liraglutid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3198
* group[=].element[=].display = "Natriy valproat"
* group[=].element[=].target[+].code = #001335
* group[=].element[=].target[=].display = "valproy kilotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3200
* group[=].element[=].display = "Neostigmin metilsulfat"
* group[=].element[=].target[+].code = #004727
* group[=].element[=].target[=].display = "neostigmina bromid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3201
* group[=].element[=].display = "Azelastin gidroxlorid"
* group[=].element[=].target[+].code = #000119
* group[=].element[=].target[=].display = "azelastin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3202
* group[=].element[=].display = "Tamoksifen"
* group[=].element[=].target[+].code = #006965
* group[=].element[=].target[=].display = "tamoksifen"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3208
* group[=].element[=].display = "Pipemid kislota"
* group[=].element[=].target[+].code = #005576
* group[=].element[=].target[=].display = "pipemid kislotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3210
* group[=].element[=].display = "Nitroksolin"
* group[=].element[=].target[+].code = #004852
* group[=].element[=].target[=].display = "nitroksolin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3212
* group[=].element[=].display = "Tropisetron"
* group[=].element[=].target[+].code = #007721
* group[=].element[=].target[=].display = "tropisetron"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3214
* group[=].element[=].display = "Sefdinir"
* group[=].element[=].target[+].code = #008537
* group[=].element[=].target[=].display = "sefdinir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3215
* group[=].element[=].display = "Natriy dolutegravir"
* group[=].element[=].target[+].code = #002402
* group[=].element[=].target[=].display = "dolutegravir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3217
* group[=].element[=].display = "Furazolidon"
* group[=].element[=].target[+].code = #008325
* group[=].element[=].target[=].display = "furazolidon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3218
* group[=].element[=].display = "Taurin"
* group[=].element[=].target[+].code = #007003
* group[=].element[=].target[=].display = "taurin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3221
* group[=].element[=].display = "Olopatadin gidroxlorid"
* group[=].element[=].target[+].code = #005145
* group[=].element[=].target[=].display = "olopatadin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3223
* group[=].element[=].display = "Sitagliptin gidrxlorid monogidrat"
* group[=].element[=].target[+].code = #006591
* group[=].element[=].target[=].display = "sitagliptin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3224
* group[=].element[=].display = "Natriy sulfasil"
* group[=].element[=].target[+].code = #006850
* group[=].element[=].target[=].display = "sulfatsetamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3226
* group[=].element[=].display = "Natriy fondaparinuks"
* group[=].element[=].target[+].code = #008241
* group[=].element[=].target[=].display = "fondaparinuks natriy"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3230
* group[=].element[=].display = "Tikartsillin"
* group[=].element[=].target[+].code = #007283
* group[=].element[=].target[=].display = "tikarsillin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3235
* group[=].element[=].display = "Yodiksanol"
* group[=].element[=].target[+].code = #002873
* group[=].element[=].target[=].display = "yodiksanol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3236
* group[=].element[=].display = "Dimetinden maleat"
* group[=].element[=].target[+].code = #002246
* group[=].element[=].target[=].display = "dimetinden"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3237
* group[=].element[=].display = "Bendamustin"
* group[=].element[=].target[+].code = #000884
* group[=].element[=].target[=].display = "bendamustin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3239
* group[=].element[=].display = "Darunavir"
* group[=].element[=].target[+].code = #001932
* group[=].element[=].target[=].display = "darunavir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3240
* group[=].element[=].display = "Kobozantinib S-malat"
* group[=].element[=].target[+].code = #003013
* group[=].element[=].target[=].display = "kabozantinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3248
* group[=].element[=].display = "Tiotropiy bromid suvsiz"
* group[=].element[=].target[+].code = #007373
* group[=].element[=].target[=].display = "tiotropiy bromid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3249
* group[=].element[=].display = "Etodolak"
* group[=].element[=].target[+].code = #009261
* group[=].element[=].target[=].display = "etodolak"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3250
* group[=].element[=].display = "Brolusizumab"
* group[=].element[=].target[+].code = #001151
* group[=].element[=].target[=].display = "brolutsizumab"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3255
* group[=].element[=].display = "Streptokinaza"
* group[=].element[=].target[+].code = #006737
* group[=].element[=].target[=].display = "streptokinaza"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3256
* group[=].element[=].display = "Streptodornaza"
* group[=].element[=].target[+].code = #006735
* group[=].element[=].target[=].display = "streptodornaza"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3257
* group[=].element[=].display = "Prokain gidroxlorid"
* group[=].element[=].target[+].code = #005872
* group[=].element[=].target[=].display = "prokain"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3266
* group[=].element[=].display = "Noretisteron"
* group[=].element[=].target[+].code = #004951
* group[=].element[=].target[=].display = "noretisteron"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3267
* group[=].element[=].display = "Xlorzoksazon"
* group[=].element[=].target[+].code = #008411
* group[=].element[=].target[=].display = "xlorzoksazon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3268
* group[=].element[=].display = "Moroktokog alfa"
* group[=].element[=].target[+].code = #004502
* group[=].element[=].target[=].display = "moroktokog alfa"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3273
* group[=].element[=].display = "Oksazepam"
* group[=].element[=].target[+].code = #005000
* group[=].element[=].target[=].display = "oksazepam"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3275
* group[=].element[=].display = "Ranolazin"
* group[=].element[=].target[+].code = #006064
* group[=].element[=].target[=].display = "ranolazin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3279
* group[=].element[=].display = "Oktreotid"
* group[=].element[=].target[+].code = #005118
* group[=].element[=].target[=].display = "oktreotid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3283
* group[=].element[=].display = "Rezerpin"
* group[=].element[=].target[+].code = #006106
* group[=].element[=].target[=].display = "rezerpin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3284
* group[=].element[=].display = "Digidralazin"
* group[=].element[=].target[+].code = #002171
* group[=].element[=].target[=].display = "digidralazin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3286
* group[=].element[=].display = "Gemifloksasin"
* group[=].element[=].target[+].code = #001630
* group[=].element[=].target[=].display = "gemifloksatsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3295
* group[=].element[=].display = "Vinorelbin tartrat"
* group[=].element[=].target[+].code = #001452
* group[=].element[=].target[=].display = "vinorelbin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3296
* group[=].element[=].display = "Azelastin"
* group[=].element[=].target[+].code = #000119
* group[=].element[=].target[=].display = "azelastin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3298
* group[=].element[=].display = "Niklozamid"
* group[=].element[=].target[+].code = #004783
* group[=].element[=].target[=].display = "niklozamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3299
* group[=].element[=].display = "Dobrafenib"
* group[=].element[=].target[+].code = #009335
* group[=].element[=].target[=].display = "dabrafenib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3302
* group[=].element[=].display = "Natriy asiklovir"
* group[=].element[=].target[+].code = #000747
* group[=].element[=].target[=].display = "atsiklovir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3303
* group[=].element[=].display = "Nalbufin"
* group[=].element[=].target[+].code = #004570
* group[=].element[=].target[=].display = "nalbufin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3305
* group[=].element[=].display = "Ranibizumab"
* group[=].element[=].target[+].code = #006059
* group[=].element[=].target[=].display = "ranibizumab"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3307
* group[=].element[=].display = "Bilastin"
* group[=].element[=].target[+].code = #001024
* group[=].element[=].target[=].display = "bilastin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3315
* group[=].element[=].display = "S-amlodipin besilat"
* group[=].element[=].target[+].code = #000431
* group[=].element[=].target[=].display = "amlodipin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3316
* group[=].element[=].display = "Mifepriston"
* group[=].element[=].target[+].code = #004429
* group[=].element[=].target[=].display = "mifepriston"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3317
* group[=].element[=].display = "Asparagin kislota"
* group[=].element[=].target[+].code = #000628
* group[=].element[=].target[=].display = "asparagin kislotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3318
* group[=].element[=].display = "Klomifen"
* group[=].element[=].target[+].code = #003316
* group[=].element[=].target[=].display = "klomifen"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3320
* group[=].element[=].display = "Fenofibrat"
* group[=].element[=].target[+].code = #007966
* group[=].element[=].target[=].display = "fenofibrat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3321
* group[=].element[=].display = "Gialuronidaza"
* group[=].element[=].target[+].code = #001669
* group[=].element[=].target[=].display = "gialuronidaza"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3324
* group[=].element[=].display = "Lomustin"
* group[=].element[=].target[+].code = #003839
* group[=].element[=].target[=].display = "lomustin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3331
* group[=].element[=].display = "Polioksidoniy® (Azoksimera bromid)"
* group[=].element[=].target[+].code = #000140
* group[=].element[=].target[=].display = "azoksimer bromid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3333
* group[=].element[=].display = "Pembrolizumab"
* group[=].element[=].target[+].code = #005383
* group[=].element[=].target[=].display = "pembrolizumab"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3334
* group[=].element[=].display = "Tikagrelor"
* group[=].element[=].target[+].code = #007280
* group[=].element[=].target[=].display = "tikagrelor"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3335
* group[=].element[=].display = "Nivolumab"
* group[=].element[=].target[+].code = #004768
* group[=].element[=].target[=].display = "nivolumab"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3336
* group[=].element[=].display = "Benzidamin gidroxlorid"
* group[=].element[=].target[+].code = #000898
* group[=].element[=].target[=].display = "benzidamin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3343
* group[=].element[=].display = "Mikronizirlangan progesteron"
* group[=].element[=].target[+].code = #005863
* group[=].element[=].target[=].display = "progesteron"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3344
* group[=].element[=].display = "Bovgialuronidaza azoksimer"
* group[=].element[=].target[+].code = #001669
* group[=].element[=].target[=].display = "gialuronidaza"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3345
* group[=].element[=].display = "Alimemazin tartrat"
* group[=].element[=].target[+].code = #000249
* group[=].element[=].target[=].display = "alimemazin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3350
* group[=].element[=].display = "Gozerelin"
* group[=].element[=].target[+].code = #001792
* group[=].element[=].target[=].display = "gozerelin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3351
* group[=].element[=].display = "Dapagliflozin propandiol monogidrat"
* group[=].element[=].target[+].code = #001905
* group[=].element[=].target[=].display = "dapagliflozin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3352
* group[=].element[=].display = "Dimengidrinat"
* group[=].element[=].target[+].code = #002231
* group[=].element[=].target[=].display = "dimengidrinat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3353
* group[=].element[=].display = "Metoprolol suksinat"
* group[=].element[=].target[+].code = #004253
* group[=].element[=].target[=].display = "metoprolol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3354
* group[=].element[=].display = "Dazatinib"
* group[=].element[=].target[+].code = #001857
* group[=].element[=].target[=].display = "dazatinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3355
* group[=].element[=].display = "Nalbufin gidroxlorid digidrat"
* group[=].element[=].target[+].code = #004570
* group[=].element[=].target[=].display = "nalbufin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3362
* group[=].element[=].display = "Bomatoprost"
* group[=].element[=].target[+].code = #001027
* group[=].element[=].target[=].display = "bimatoprost"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3366
* group[=].element[=].display = "Sumatriptan"
* group[=].element[=].target[+].code = #006863
* group[=].element[=].target[=].display = "sumatriptan"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3368
* group[=].element[=].display = "Butamirat sitrat"
* group[=].element[=].target[+].code = #001242
* group[=].element[=].target[=].display = "butamirat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3372
* group[=].element[=].display = "Natriy gansiklovir"
* group[=].element[=].target[+].code = #001581
* group[=].element[=].target[=].display = "gansiklovir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3385
* group[=].element[=].display = "Bisakodil"
* group[=].element[=].target[+].code = #001049
* group[=].element[=].target[=].display = "bisakodil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3386
* group[=].element[=].display = "Klomifen sitrat"
* group[=].element[=].target[+].code = #003316
* group[=].element[=].target[=].display = "klomifen"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3389
* group[=].element[=].display = "Tetrakain"
* group[=].element[=].target[+].code = #007175
* group[=].element[=].target[=].display = "tetrakain"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3391
* group[=].element[=].display = "Nilotinib"
* group[=].element[=].target[+].code = #004810
* group[=].element[=].target[=].display = "nilotinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3397
* group[=].element[=].display = "Gidroksiprogesteron kapronat"
* group[=].element[=].target[+].code = #001689
* group[=].element[=].target[=].display = "gidroksiprogesterona kaproat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3398
* group[=].element[=].display = "Everolimus"
* group[=].element[=].target[+].code = #008806
* group[=].element[=].target[=].display = "everolimus"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3399
* group[=].element[=].display = "Insulin lizpro"
* group[=].element[=].target[+].code = #002833
* group[=].element[=].target[=].display = "insulin lizpro"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3402
* group[=].element[=].display = "Siklopiroks"
* group[=].element[=].target[+].code = #008657
* group[=].element[=].target[=].display = "siklopiroks"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3404
* group[=].element[=].display = "Tofatsitinib sitrati"
* group[=].element[=].target[+].code = #007523
* group[=].element[=].target[=].display = "tofatsitinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3405
* group[=].element[=].display = "Gidroksikarbamid"
* group[=].element[=].target[+].code = #001683
* group[=].element[=].target[=].display = "gidroksikarbamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3407
* group[=].element[=].display = "Pirantel embonat"
* group[=].element[=].target[+].code = #005610
* group[=].element[=].target[=].display = "pirantel"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3411
* group[=].element[=].display = "Ivermektin"
* group[=].element[=].target[+].code = #002620
* group[=].element[=].target[=].display = "ivermektin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3414
* group[=].element[=].display = "Benzidamin"
* group[=].element[=].target[+].code = #000898
* group[=].element[=].target[=].display = "benzidamin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3418
* group[=].element[=].display = "Aviptadil"
* group[=].element[=].target[+].code = #000037
* group[=].element[=].target[=].display = "aviptadil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3420
* group[=].element[=].display = "Xifenadin gidroxlorid"
* group[=].element[=].target[+].code = #008394
* group[=].element[=].target[=].display = "xifenadin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3421
* group[=].element[=].display = "Rekombinant inson follikulostimullovchi gormoni"
* group[=].element[=].target[+].code = #008230
* group[=].element[=].target[=].display = "follitropin alfa"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3423
* group[=].element[=].display = "Tiopental"
* group[=].element[=].target[+].code = #007359
* group[=].element[=].target[=].display = "tiopental natriy"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3424
* group[=].element[=].display = "Rekombinant inson insulini"
* group[=].element[=].target[+].code = #002838
* group[=].element[=].target[=].display = "odam insulini"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3431
* group[=].element[=].display = "Fenspirid"
* group[=].element[=].target[+].code = #007981
* group[=].element[=].target[=].display = "fenspirid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3435
* group[=].element[=].display = "Regorafenib"
* group[=].element[=].target[+].code = #006101
* group[=].element[=].target[=].display = "regorafenib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3436
* group[=].element[=].display = "Riluzol"
* group[=].element[=].target[+].code = #006201
* group[=].element[=].target[=].display = "riluzol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3437
* group[=].element[=].display = "Lansoprazol"
* group[=].element[=].target[+].code = #003558
* group[=].element[=].target[=].display = "lansoprazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3438
* group[=].element[=].display = "Glikvidon"
* group[=].element[=].target[+].code = #001753
* group[=].element[=].target[=].display = "glikvidon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3440
* group[=].element[=].display = "Mikafungin"
* group[=].element[=].target[+].code = #004337
* group[=].element[=].target[=].display = "mikafungin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3441
* group[=].element[=].display = "Mikofenolat natriy"
* group[=].element[=].target[+].code = #004339
* group[=].element[=].target[=].display = "mikofenol kislotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3443
* group[=].element[=].display = "Pomalidomid"
* group[=].element[=].target[+].code = #005752
* group[=].element[=].target[=].display = "pomalidomid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3445
* group[=].element[=].display = "Ribosiklib"
* group[=].element[=].target[+].code = #006164
* group[=].element[=].target[=].display = "ribotsiklib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3450
* group[=].element[=].display = "Zolmitriptan"
* group[=].element[=].target[+].code = #002571
* group[=].element[=].target[=].display = "zolmitriptan"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3457
* group[=].element[=].display = "Interferon beta 1 a"
* group[=].element[=].target[+].code = #002847
* group[=].element[=].target[=].display = "interferon beta"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3466
* group[=].element[=].display = "Fulvestrant"
* group[=].element[=].target[+].code = #008318
* group[=].element[=].target[=].display = "fulvestrant"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3467
* group[=].element[=].display = "Buserelin asetat"
* group[=].element[=].target[+].code = #001230
* group[=].element[=].target[=].display = "buserelin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3468
* group[=].element[=].display = "Dapoksetin gidroxlorid"
* group[=].element[=].target[+].code = #001913
* group[=].element[=].target[=].display = "dapoksetin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3475
* group[=].element[=].display = "Solifenasin suksinat"
* group[=].element[=].target[+].code = #006617
* group[=].element[=].target[=].display = "solifenatsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3478
* group[=].element[=].display = "Amantadin gidroxlorid"
* group[=].element[=].target[+].code = #000343
* group[=].element[=].target[=].display = "amantadin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3487
* group[=].element[=].display = "valasiklovir gidroxlorid"
* group[=].element[=].target[+].code = #001312
* group[=].element[=].target[=].display = "valatsiklovir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3489
* group[=].element[=].display = "Amiodaron gidroxlorid"
* group[=].element[=].target[+].code = #000407
* group[=].element[=].target[=].display = "amiodaron"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3491
* group[=].element[=].display = "5-Ftorurasil"
* group[=].element[=].target[+].code = #008310
* group[=].element[=].target[=].display = "ftoruratsil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3492
* group[=].element[=].display = "Donepezil gidroxlorid"
* group[=].element[=].target[+].code = #002412
* group[=].element[=].target[=].display = "donepezil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3502
* group[=].element[=].display = "Midekamisin"
* group[=].element[=].target[+].code = #004326
* group[=].element[=].target[=].display = "midekamitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3503
* group[=].element[=].display = "Interferon alfa"
* group[=].element[=].target[+].code = #002845
* group[=].element[=].target[=].display = "interferon alfa"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3505
* group[=].element[=].display = "Paroksetin"
* group[=].element[=].target[+].code = #005341
* group[=].element[=].target[=].display = "paroksetin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3506
* group[=].element[=].display = "Umifenovir gidroxlorid"
* group[=].element[=].target[+].code = #007768
* group[=].element[=].target[=].display = "umifenovir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3509
* group[=].element[=].display = "Nefopam"
* group[=].element[=].target[+].code = #004759
* group[=].element[=].target[=].display = "nefopam"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3513
* group[=].element[=].display = "Testosteron propionati"
* group[=].element[=].target[+].code = #007167
* group[=].element[=].target[=].display = "testosteron"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3518
* group[=].element[=].display = "Sefaklor"
* group[=].element[=].target[+].code = #008523
* group[=].element[=].target[=].display = "sefaklor"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3526
* group[=].element[=].display = "Pezopanib"
* group[=].element[=].target[+].code = #005265
* group[=].element[=].target[=].display = "pazopanib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3527
* group[=].element[=].display = "Okskarbazepin"
* group[=].element[=].target[+].code = #005082
* group[=].element[=].target[=].display = "okskarbazepin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3529
* group[=].element[=].display = "Metoklopramid gidroxlorid"
* group[=].element[=].target[+].code = #004242
* group[=].element[=].target[=].display = "metoklopramid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3530
* group[=].element[=].display = "Tamsulozin gidroxlorid pelletlari, tamsulozinni o‘z ichiga oladi"
* group[=].element[=].target[+].code = #006968
* group[=].element[=].target[=].display = "tamsulozin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3531
* group[=].element[=].display = "Enzalumid"
* group[=].element[=].target[+].code = #009005
* group[=].element[=].target[=].display = "enzalutamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3541
* group[=].element[=].display = "Ondasetrona gidroxloris"
* group[=].element[=].target[+].code = #005179
* group[=].element[=].target[=].display = "ondansetron"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3550
* group[=].element[=].display = "Iopamidol"
* group[=].element[=].target[+].code = #002901
* group[=].element[=].target[=].display = "yopamidol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3557
* group[=].element[=].display = "Dekarbazin"
* group[=].element[=].target[+].code = #001866
* group[=].element[=].target[=].display = "dakarbazin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3559
* group[=].element[=].display = "Alprostadil"
* group[=].element[=].target[+].code = #000307
* group[=].element[=].target[=].display = "alprostadil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3561
* group[=].element[=].display = "Ornitin"
* group[=].element[=].target[+].code = #005218
* group[=].element[=].target[=].display = "ornitin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3563
* group[=].element[=].display = "Levamlodipin"
* group[=].element[=].target[+].code = #003598
* group[=].element[=].target[=].display = "levamlodipin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3565
* group[=].element[=].display = "Pirantel pamoat"
* group[=].element[=].target[+].code = #005610
* group[=].element[=].target[=].display = "pirantel"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3567
* group[=].element[=].display = "Formoterol"
* group[=].element[=].target[+].code = #008255
* group[=].element[=].target[=].display = "formoterol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3570
* group[=].element[=].display = "Mebeverin gidroxlorid 80% li pellet"
* group[=].element[=].target[+].code = #003993
* group[=].element[=].target[=].display = "mebeverin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3571
* group[=].element[=].display = "Fluoksetin gidroxlorid"
* group[=].element[=].target[+].code = #008149
* group[=].element[=].target[=].display = "fluoksetin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3576
* group[=].element[=].display = "Granisetron"
* group[=].element[=].target[+].code = #001817
* group[=].element[=].target[=].display = "granisetron"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3578
* group[=].element[=].display = "Sulfasalazin"
* group[=].element[=].target[+].code = #006835
* group[=].element[=].target[=].display = "sulfasalazin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3579
* group[=].element[=].display = "Levotiroksin"
* group[=].element[=].target[+].code = #003645
* group[=].element[=].target[=].display = "levotiroksin natriy"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3585
* group[=].element[=].display = "Flufenazin"
* group[=].element[=].target[+].code = #008204
* group[=].element[=].target[=].display = "flufenazin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3586
* group[=].element[=].display = "Serin"
* group[=].element[=].target[+].code = #006520
* group[=].element[=].target[=].display = "serin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3604
* group[=].element[=].display = "Lenvatinib"
* group[=].element[=].target[+].code = #003688
* group[=].element[=].target[=].display = "lenvatinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3609
* group[=].element[=].display = "Tamsulozin gidroxlorid pellet 0,2%"
* group[=].element[=].target[+].code = #006968
* group[=].element[=].target[=].display = "tamsulozin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3612
* group[=].element[=].display = "Glyukozaminglikan-peptid kompleksi"
* group[=].element[=].target[+].code = #001787
* group[=].element[=].target[=].display = "glyukozamin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3613
* group[=].element[=].display = "Fentikonazol"
* group[=].element[=].target[+].code = #007987
* group[=].element[=].target[=].display = "fentikonazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3617
* group[=].element[=].display = "Razagilin mesilat"
* group[=].element[=].target[+].code = #006023
* group[=].element[=].target[=].display = "razagilin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3619
* group[=].element[=].display = "Mikronizasiyalangan nimesulid"
* group[=].element[=].target[+].code = #004816
* group[=].element[=].target[=].display = "nimesulid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3620
* group[=].element[=].display = "Levodopropizin"
* group[=].element[=].target[+].code = #003613
* group[=].element[=].target[=].display = "levodropropizin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3625
* group[=].element[=].display = "Prilokain"
* group[=].element[=].target[+].code = #005839
* group[=].element[=].target[=].display = "prilokain"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3632
* group[=].element[=].display = "Permetrin"
* group[=].element[=].target[+].code = #005467
* group[=].element[=].target[=].display = "permetrin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3634
* group[=].element[=].display = "Minoksidil"
* group[=].element[=].target[+].code = #004369
* group[=].element[=].target[=].display = "minoksidil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3646
* group[=].element[=].display = "Inson insulin"
* group[=].element[=].target[+].code = #002838
* group[=].element[=].target[=].display = "odam insulini"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3651
* group[=].element[=].display = "Midazolam"
* group[=].element[=].target[+].code = #004321
* group[=].element[=].target[=].display = "midazolam"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3652
* group[=].element[=].display = "Tenofovir alafenamid"
* group[=].element[=].target[+].code = #007115
* group[=].element[=].target[=].display = "tenofovir alafenamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3658
* group[=].element[=].display = "Brimonidin tartrat"
* group[=].element[=].target[+].code = #001126
* group[=].element[=].target[=].display = "brimonidin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3664
* group[=].element[=].display = "Karbaxol"
* group[=].element[=].target[+].code = #003115
* group[=].element[=].target[=].display = "karbaxol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3680
* group[=].element[=].display = "Otiloniy bromid"
* group[=].element[=].target[+].code = #005245
* group[=].element[=].target[=].display = "otiloniy bromid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3681
* group[=].element[=].display = "Ftalilsulfatiazol"
* group[=].element[=].target[+].code = #008304
* group[=].element[=].target[=].display = "ftalilsulfatiazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3689
* group[=].element[=].display = "Nonakog alfa"
* group[=].element[=].target[+].code = #004913
* group[=].element[=].target[=].display = "nonakog alfa"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3691
* group[=].element[=].display = "Estradiol gemigidrat"
* group[=].element[=].target[+].code = #009171
* group[=].element[=].target[=].display = "estradiol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3692
* group[=].element[=].display = "Sildenafil (sitrat shaklida)"
* group[=].element[=].target[+].code = #006552
* group[=].element[=].target[=].display = "sildenafil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3694
* group[=].element[=].display = "Tetrizolin"
* group[=].element[=].target[+].code = #007182
* group[=].element[=].target[=].display = "tetrizolin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3695
* group[=].element[=].display = "Tetrizolin gidroxlorid"
* group[=].element[=].target[+].code = #007182
* group[=].element[=].target[=].display = "tetrizolin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3700
* group[=].element[=].display = "Rizedron kislotasi"
* group[=].element[=].target[+].code = #006182
* group[=].element[=].target[=].display = "rizedron kislotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3705
* group[=].element[=].display = "Estron"
* group[=].element[=].target[+].code = #009179
* group[=].element[=].target[=].display = "estron"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3709
* group[=].element[=].display = "Sinakelset"
* group[=].element[=].target[+].code = #008705
* group[=].element[=].target[=].display = "sinakalset"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3711
* group[=].element[=].display = "Tafluprost"
* group[=].element[=].target[+].code = #007012
* group[=].element[=].target[=].display = "tafluprost"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3716
* group[=].element[=].display = "Atezolizumab"
* group[=].element[=].target[+].code = #000649
* group[=].element[=].target[=].display = "atezolizumab"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3717
* group[=].element[=].display = "Prasugrel"
* group[=].element[=].target[+].code = #005778
* group[=].element[=].target[=].display = "prazugrel"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3724
* group[=].element[=].display = "Trelagliptin"
* group[=].element[=].target[+].code = #007574
* group[=].element[=].target[=].display = "trelagliptin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3731
* group[=].element[=].display = "Xlortalidon"
* group[=].element[=].target[+].code = #008437
* group[=].element[=].target[=].display = "xlortalidon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3736
* group[=].element[=].display = "Metoksalen"
* group[=].element[=].target[+].code = #004243
* group[=].element[=].target[=].display = "metoksamin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3739
* group[=].element[=].display = "Laktuloza eritmasi BP"
* group[=].element[=].target[+].code = #003536
* group[=].element[=].target[=].display = "laktuloza"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3740
* group[=].element[=].display = "Sefepim gidroxlorid monogidrat"
* group[=].element[=].target[+].code = #008541
* group[=].element[=].target[=].display = "sefepim"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3741
* group[=].element[=].display = "Siproteron"
* group[=].element[=].target[+].code = #008768
* group[=].element[=].target[=].display = "siproteron"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3745
* group[=].element[=].display = "Nisergolin"
* group[=].element[=].target[+].code = #004892
* group[=].element[=].target[=].display = "nitsergolin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3747
* group[=].element[=].display = "Klaritromisin granulalari"
* group[=].element[=].target[+].code = #003243
* group[=].element[=].target[=].display = "klaritromitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3753
* group[=].element[=].display = "Etonogestrel"
* group[=].element[=].target[+].code = #009280
* group[=].element[=].target[=].display = "etonogestrel"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3759
* group[=].element[=].display = "Teofillin efedrin"
* group[=].element[=].target[+].code = #007122
* group[=].element[=].target[=].display = "teofillin efedrin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3760
* group[=].element[=].display = "Palonosetron gidroxlorid"
* group[=].element[=].target[+].code = #005290
* group[=].element[=].target[=].display = "palonosetron"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3763
* group[=].element[=].display = "Liksisenatid"
* group[=].element[=].target[+].code = #003751
* group[=].element[=].target[=].display = "liksisenatid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3769
* group[=].element[=].display = "Izofan-insulin"
* group[=].element[=].target[+].code = #002838
* group[=].element[=].target[=].display = "odam insulini"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3770
* group[=].element[=].display = "Sitikolinning natriyli tuzi"
* group[=].element[=].target[+].code = #008792
* group[=].element[=].target[=].display = "sitikolin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3772
* group[=].element[=].display = "Streptomisin sulfat"
* group[=].element[=].target[+].code = #006738
* group[=].element[=].target[=].display = "streptomitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3773
* group[=].element[=].display = "Intrakonazol"
* group[=].element[=].target[+].code = #002993
* group[=].element[=].target[=].display = "itrakonazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3774
* group[=].element[=].display = "Rokuroniy bromid"
* group[=].element[=].target[+].code = #006274
* group[=].element[=].target[=].display = "rokuroniy bromid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3775
* group[=].element[=].display = "Tramadol gidroxlorid"
* group[=].element[=].target[+].code = #007549
* group[=].element[=].target[=].display = "tramadol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3783
* group[=].element[=].display = "Pemetreksed dinatriy"
* group[=].element[=].target[+].code = #005386
* group[=].element[=].target[=].display = "pemetreksed"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3784
* group[=].element[=].display = "Sefpodoksim proksetil"
* group[=].element[=].target[+].code = #008574
* group[=].element[=].target[=].display = "sefpodoksim"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3785
* group[=].element[=].display = "Orotat kislota"
* group[=].element[=].target[+].code = #005221
* group[=].element[=].target[=].display = "orot kislotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3786
* group[=].element[=].display = "Fosfomisin trometamol"
* group[=].element[=].target[+].code = #008283
* group[=].element[=].target[=].display = "fosfomitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3790
* group[=].element[=].display = "Feksofenadin gidroxlorid"
* group[=].element[=].target[+].code = #007860
* group[=].element[=].target[=].display = "feksofenadin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3809
* group[=].element[=].display = "Gidroksixloroxin sulfat"
* group[=].element[=].target[+].code = #001695
* group[=].element[=].target[=].display = "gidroksixloroxin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3810
* group[=].element[=].display = "Betagistin gidroxlorid"
* group[=].element[=].target[+].code = #000976
* group[=].element[=].target[=].display = "betagistin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3814
* group[=].element[=].display = "Levomepromazin maleat"
* group[=].element[=].target[+].code = #003621
* group[=].element[=].target[=].display = "levomepromazin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3815
* group[=].element[=].display = "Barisinitib"
* group[=].element[=].target[+].code = #000794
* group[=].element[=].target[=].display = "baritsitinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3816
* group[=].element[=].display = "Terbinafin gidroxlorid"
* group[=].element[=].target[+].code = #007134
* group[=].element[=].target[=].display = "terbinafin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3817
* group[=].element[=].display = "Seftriakson natriysi (steril)"
* group[=].element[=].target[+].code = #008594
* group[=].element[=].target[=].display = "seftriakson"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3818
* group[=].element[=].display = "Linkomisn gidroxlorid"
* group[=].element[=].target[+].code = #003766
* group[=].element[=].target[=].display = "linkomitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3820
* group[=].element[=].display = "Erlotinib gidroxlorid"
* group[=].element[=].target[+].code = #009147
* group[=].element[=].target[=].display = "erlotinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3821
* group[=].element[=].display = "Gipermelloza"
* group[=].element[=].target[+].code = #001713
* group[=].element[=].target[=].display = "gipromelloza"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3827
* group[=].element[=].display = "Leypoprelin asetat"
* group[=].element[=].target[+].code = #003662
* group[=].element[=].target[=].display = "leyprorelin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3828
* group[=].element[=].display = "Trifluoperazin gidroxloridi"
* group[=].element[=].target[+].code = #007680
* group[=].element[=].target[=].display = "trifluoperazin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3830
* group[=].element[=].display = "Framisetin"
* group[=].element[=].target[+].code = #008294
* group[=].element[=].target[=].display = "framitsetin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3832
* group[=].element[=].display = "Nandrolon"
* group[=].element[=].target[+].code = #004590
* group[=].element[=].target[=].display = "nandrolon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3838
* group[=].element[=].display = "Imikvimod"
* group[=].element[=].target[+].code = #002758
* group[=].element[=].target[=].display = "imiximod"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3839
* group[=].element[=].display = "Kaptopril"
* group[=].element[=].target[+].code = #003097
* group[=].element[=].target[=].display = "kaptopril"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3845
* group[=].element[=].display = "Oseltamivir fosfat"
* group[=].element[=].target[+].code = #005231
* group[=].element[=].target[=].display = "oseltamivir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3851
* group[=].element[=].display = "Kolestiramin rezin"
* group[=].element[=].target[+].code = #003405
* group[=].element[=].target[=].display = "kolestiramin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3858
* group[=].element[=].display = "Moksonidin"
* group[=].element[=].target[+].code = #004464
* group[=].element[=].target[=].display = "moksonidin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3863
* group[=].element[=].display = "Sekukinumab"
* group[=].element[=].target[+].code = #006467
* group[=].element[=].target[=].display = "sekukinumab"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3871
* group[=].element[=].display = "Steril teykoplanin"
* group[=].element[=].target[+].code = #007044
* group[=].element[=].target[=].display = "teykoplanin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3873
* group[=].element[=].display = "Amiodaron"
* group[=].element[=].target[+].code = #000407
* group[=].element[=].target[=].display = "amiodaron"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3878
* group[=].element[=].display = "Relugoliks"
* group[=].element[=].target[+].code = #006121
* group[=].element[=].target[=].display = "relugoliks"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3880
* group[=].element[=].display = "Karbetosin"
* group[=].element[=].target[+].code = #003121
* group[=].element[=].target[=].display = "karbetotsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3881
* group[=].element[=].display = "Netakimab"
* group[=].element[=].target[+].code = #009337
* group[=].element[=].target[=].display = "netakimab"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3883
* group[=].element[=].display = "Olaparib"
* group[=].element[=].target[+].code = #005126
* group[=].element[=].target[=].display = "olaparib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3885
* group[=].element[=].display = "Nikorandil"
* group[=].element[=].target[+].code = #004795
* group[=].element[=].target[=].display = "nikorandil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3886
* group[=].element[=].display = "Vonoprozan fumarat"
* group[=].element[=].target[+].code = #001492
* group[=].element[=].target[=].display = "vonoprazan"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3891
* group[=].element[=].display = "Izokonazol"
* group[=].element[=].target[+].code = #002666
* group[=].element[=].target[=].display = "izokonazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3892
* group[=].element[=].display = "Diflurkortolon"
* group[=].element[=].target[+].code = #002347
* group[=].element[=].target[=].display = "diflukortolon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3894
* group[=].element[=].display = "Pikloksidin"
* group[=].element[=].target[+].code = #005521
* group[=].element[=].target[=].display = "pikloksidin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3897
* group[=].element[=].display = "Siklopentolat gidroxlorid"
* group[=].element[=].target[+].code = #008656
* group[=].element[=].target[=].display = "siklopentolat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3898
* group[=].element[=].display = "Ulipristal"
* group[=].element[=].target[+].code = #007760
* group[=].element[=].target[=].display = "ulipristal"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3899
* group[=].element[=].display = "Ademetionin butandisulfonat"
* group[=].element[=].target[+].code = #000069
* group[=].element[=].target[=].display = "ademetionin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3903
* group[=].element[=].display = "Kreatin fosfat natriy"
* group[=].element[=].target[+].code = #008282
* group[=].element[=].target[=].display = "fosfokreatinin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3905
* group[=].element[=].display = "Trimebutin maleat"
* group[=].element[=].target[+].code = #007642
* group[=].element[=].target[=].display = "trimebutin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3910
* group[=].element[=].display = "Mefenam kislota"
* group[=].element[=].target[+].code = #004288
* group[=].element[=].target[=].display = "myefenam kislotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3912
* group[=].element[=].display = "Asetazolamid"
* group[=].element[=].target[+].code = #000724
* group[=].element[=].target[=].display = "atsetazolamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3916
* group[=].element[=].display = "Klemastin"
* group[=].element[=].target[+].code = #003247
* group[=].element[=].target[=].display = "klemastin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3917
* group[=].element[=].display = "Naftizin"
* group[=].element[=].target[+].code = #004664
* group[=].element[=].target[=].display = "nafazolin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3924
* group[=].element[=].display = "Siprogeptadin"
* group[=].element[=].target[+].code = #008761
* group[=].element[=].target[=].display = "siprogeptadin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3926
* group[=].element[=].display = "Demoksitosin"
* group[=].element[=].target[+].code = #002072
* group[=].element[=].target[=].display = "demoksitotsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3927
* group[=].element[=].display = "Oksirasetam"
* group[=].element[=].target[+].code = #005064
* group[=].element[=].target[=].display = "oksiratsetam"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3928
* group[=].element[=].display = "Sulodeksid"
* group[=].element[=].target[+].code = #006770
* group[=].element[=].target[=].display = "sulodeksid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3931
* group[=].element[=].display = "Natriy naproksen"
* group[=].element[=].target[+].code = #004601
* group[=].element[=].target[=].display = "naproksen"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3940
* group[=].element[=].display = "Azilsartan medoksomil"
* group[=].element[=].target[+].code = #000130
* group[=].element[=].target[=].display = "azilsartan medoksomil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3943
* group[=].element[=].display = "Tofizopam"
* group[=].element[=].target[+].code = #007527
* group[=].element[=].target[=].display = "tofizopam"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3946
* group[=].element[=].display = "Kalsiy zofenopril"
* group[=].element[=].target[+].code = #002589
* group[=].element[=].target[=].display = "zofenopril"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3958
* group[=].element[=].display = "Levosulpirid"
* group[=].element[=].target[+].code = #003644
* group[=].element[=].target[=].display = "levosulpirid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3961
* group[=].element[=].display = "Epirubisin gidroxloridi"
* group[=].element[=].target[+].code = #009082
* group[=].element[=].target[=].display = "epirubitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3963
* group[=].element[=].display = "Mometazon furoat mikronizatsiyalangan"
* group[=].element[=].target[+].code = #004475
* group[=].element[=].target[=].display = "mometazon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3964
* group[=].element[=].display = "Propranolol gidroxloridi"
* group[=].element[=].target[+].code = #005935
* group[=].element[=].target[=].display = "propranolol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3968
* group[=].element[=].display = "Ketamin gidroxlorid"
* group[=].element[=].target[+].code = #003216
* group[=].element[=].target[=].display = "ketamin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3969
* group[=].element[=].display = "Oksetakain"
* group[=].element[=].target[+].code = #005031
* group[=].element[=].target[=].display = "oksetakain"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3972
* group[=].element[=].display = "Somatropin"
* group[=].element[=].target[+].code = #006632
* group[=].element[=].target[=].display = "somatropin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3974
* group[=].element[=].display = "Nitizinon"
* group[=].element[=].target[+].code = #004840
* group[=].element[=].target[=].display = "nitizinon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3979
* group[=].element[=].display = "Pipekuroniy bromid"
* group[=].element[=].target[+].code = #005575
* group[=].element[=].target[=].display = "pipekuroniy bromid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3981
* group[=].element[=].display = "Pirfenidon"
* group[=].element[=].target[+].code = #005679
* group[=].element[=].target[=].display = "pirfenidon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3982
* group[=].element[=].display = "Lulikanozol"
* group[=].element[=].target[+].code = #003899
* group[=].element[=].target[=].display = "lulikonazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3983
* group[=].element[=].display = "Okrelizumab"
* group[=].element[=].target[+].code = #004992
* group[=].element[=].target[=].display = "okrelizumab"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3985
* group[=].element[=].display = "Norgestrel"
* group[=].element[=].target[+].code = #004928
* group[=].element[=].target[=].display = "norgestrel"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3986
* group[=].element[=].display = "Epinefrin gidrotartrat (adrenalin tartretet)"
* group[=].element[=].target[+].code = #009078
* group[=].element[=].target[=].display = "epinefrin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3987
* group[=].element[=].display = "Teneligliptin"
* group[=].element[=].target[+].code = #007097
* group[=].element[=].target[=].display = "teneligliptin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3990
* group[=].element[=].display = "Fenindion"
* group[=].element[=].target[+].code = #007922
* group[=].element[=].target[=].display = "fenindion"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4000
* group[=].element[=].display = "Neratinib"
* group[=].element[=].target[+].code = #004738
* group[=].element[=].target[=].display = "neratinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4001
* group[=].element[=].display = "Flutamid"
* group[=].element[=].target[+].code = #008189
* group[=].element[=].target[=].display = "flutamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4003
* group[=].element[=].display = "Kaspofungin atsetat"
* group[=].element[=].target[+].code = #003192
* group[=].element[=].target[=].display = "kaspofungin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4007
* group[=].element[=].display = "Eksemestan"
* group[=].element[=].target[+].code = #008879
* group[=].element[=].target[=].display = "eksemestan"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4009
* group[=].element[=].display = "Tiaprid"
* group[=].element[=].target[+].code = #007234
* group[=].element[=].target[=].display = "tiaprid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4013
* group[=].element[=].display = "Akalabrutinib"
* group[=].element[=].target[+].code = #000149
* group[=].element[=].target[=].display = "akalabrutinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4014
* group[=].element[=].display = "Natriy sefuroksim"
* group[=].element[=].target[+].code = #008597
* group[=].element[=].target[=].display = "sefuroksim"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4020
* group[=].element[=].display = "Fetikonazol nitrat"
* group[=].element[=].target[+].code = #007987
* group[=].element[=].target[=].display = "fentikonazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4021
* group[=].element[=].display = "Azilsartan Kamedoksomil"
* group[=].element[=].target[+].code = #000130
* group[=].element[=].target[=].display = "azilsartan medoksomil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4022
* group[=].element[=].display = "Mianserin"
* group[=].element[=].target[+].code = #004305
* group[=].element[=].target[=].display = "mianserin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4024
* group[=].element[=].display = "Sumatriptan suktsinati"
* group[=].element[=].target[+].code = #006863
* group[=].element[=].target[=].display = "sumatriptan"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4025
* group[=].element[=].display = "Insulin glulizin"
* group[=].element[=].target[+].code = #002827
* group[=].element[=].target[=].display = "insulin glulizin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4027
* group[=].element[=].display = "Itoprid"
* group[=].element[=].target[+].code = #002992
* group[=].element[=].target[=].display = "itoprid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4031
* group[=].element[=].display = "Setuksimab"
* group[=].element[=].target[+].code = #008518
* group[=].element[=].target[=].display = "setuksimab"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4032
* group[=].element[=].display = "Ibrutinib"
* group[=].element[=].target[+].code = #002608
* group[=].element[=].target[=].display = "ibrutinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4037
* group[=].element[=].display = "Ftorurasil"
* group[=].element[=].target[+].code = #008310
* group[=].element[=].target[=].display = "ftoruratsil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4042
* group[=].element[=].display = "Levsimendan"
* group[=].element[=].target[+].code = #003643
* group[=].element[=].target[=].display = "levosimendan"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4051
* group[=].element[=].display = "Metokarbamol"
* group[=].element[=].target[+].code = #004241
* group[=].element[=].target[=].display = "metokarbamol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4056
* group[=].element[=].display = "Medroksiprogesteron"
* group[=].element[=].target[+].code = #004021
* group[=].element[=].target[=].display = "medroksiprogesteron"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4058
* group[=].element[=].display = "Umifenovir"
* group[=].element[=].target[+].code = #007768
* group[=].element[=].target[=].display = "umifenovir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4077
* group[=].element[=].display = "Pinaveriy bromid"
* group[=].element[=].target[+].code = #005556
* group[=].element[=].target[=].display = "pinaveriy bromid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4080
* group[=].element[=].display = "Alimemazin"
* group[=].element[=].target[+].code = #000249
* group[=].element[=].target[=].display = "alimemazin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4083
* group[=].element[=].display = "Tiazot kislotasi"
* group[=].element[=].target[+].code = #007216
* group[=].element[=].target[=].display = "tiazot kislotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4085
* group[=].element[=].display = "Dorzolamid gidroxloridi"
* group[=].element[=].target[+].code = #002426
* group[=].element[=].target[=].display = "dorzolamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4086
* group[=].element[=].display = "Ipidakrin gidroxlorid monogidrat"
* group[=].element[=].target[+].code = #002938
* group[=].element[=].target[=].display = "ipidakrin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4087
* group[=].element[=].display = "Ofatumumab"
* group[=].element[=].target[+].code = #005248
* group[=].element[=].target[=].display = "ofatumumab"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4088
* group[=].element[=].display = "Proksimetakain gidroxlorid"
* group[=].element[=].target[+].code = #005884
* group[=].element[=].target[=].display = "proksimetakain"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4095
* group[=].element[=].display = "Ibandronat natriy monogidrat"
* group[=].element[=].target[+].code = #002598
* group[=].element[=].target[=].display = "ibandron kislotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4098
* group[=].element[=].display = "Dopamin"
* group[=].element[=].target[+].code = #002416
* group[=].element[=].target[=].display = "dopamin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4099
* group[=].element[=].display = "Eletptriptan"
* group[=].element[=].target[+].code = #008913
* group[=].element[=].target[=].display = "eletriptan"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4100
* group[=].element[=].display = "Metamizol natriy"
* group[=].element[=].target[+].code = #004159
* group[=].element[=].target[=].display = "metamizol natriy"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4102
* group[=].element[=].display = "Zanamivir"
* group[=].element[=].target[+].code = #002512
* group[=].element[=].target[=].display = "zanamivir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4106
* group[=].element[=].display = "Xolin alfosserat"
* group[=].element[=].target[+].code = #008447
* group[=].element[=].target[=].display = "xolina alfosserat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4109
* group[=].element[=].display = "Kalsifediol"
* group[=].element[=].target[+].code = #003038
* group[=].element[=].target[=].display = "kalsifediol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4117
* group[=].element[=].display = "Bensiklan"
* group[=].element[=].target[+].code = #000954
* group[=].element[=].target[=].display = "bensiklan"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4125
* group[=].element[=].display = "Natriy tiopental"
* group[=].element[=].target[+].code = #007359
* group[=].element[=].target[=].display = "tiopental natriy"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4128
* group[=].element[=].display = "Nonivamid"
* group[=].element[=].target[+].code = #004919
* group[=].element[=].target[=].display = "nonivamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4129
* group[=].element[=].display = "Nikoboksil"
* group[=].element[=].target[+].code = #004785
* group[=].element[=].target[=].display = "nikoboksil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4132
* group[=].element[=].display = "Kreatin fosfat natriy tetragidrati"
* group[=].element[=].target[+].code = #008282
* group[=].element[=].target[=].display = "fosfokreatinin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4154
* group[=].element[=].display = "Biklotimol"
* group[=].element[=].target[+].code = #001019
* group[=].element[=].target[=].display = "biklotimol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4166
* group[=].element[=].display = "Kolistin"
* group[=].element[=].target[+].code = #003409
* group[=].element[=].target[=].display = "kolistin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4167
* group[=].element[=].display = "Kallidinogenaza"
* group[=].element[=].target[+].code = #003029
* group[=].element[=].target[=].display = "kallidinogenaza"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4172
* group[=].element[=].display = "Sekvifenadin"
* group[=].element[=].target[+].code = #006460
* group[=].element[=].target[=].display = "sekvifenadin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4179
* group[=].element[=].display = "Naltrekson dekanoat"
* group[=].element[=].target[+].code = #004580
* group[=].element[=].target[=].display = "naltrekson"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4187
* group[=].element[=].display = "Amisulpirid"
* group[=].element[=].target[+].code = #000412
* group[=].element[=].target[=].display = "amisulprid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4188
* group[=].element[=].display = "Flutikazon furoat mikronizatsiyalangan"
* group[=].element[=].target[+].code = #008196
* group[=].element[=].target[=].display = "flutikazona furoat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4189
* group[=].element[=].display = "Rupatadin fumarat"
* group[=].element[=].target[+].code = #006344
* group[=].element[=].target[=].display = "rupatadin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4195
* group[=].element[=].display = "Pipemid kislota trigidrati"
* group[=].element[=].target[+].code = #005576
* group[=].element[=].target[=].display = "pipemid kislotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4197
* group[=].element[=].display = "Benserazid"
* group[=].element[=].target[+].code = #000940
* group[=].element[=].target[=].display = "benserazid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4209
* group[=].element[=].display = "Oksimertinib"
* group[=].element[=].target[+].code = #005234
* group[=].element[=].target[=].display = "osimertinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4216
* group[=].element[=].display = "Levomepromazin"
* group[=].element[=].target[+].code = #003621
* group[=].element[=].target[=].display = "levomepromazin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4223
* group[=].element[=].display = "Melfalan gidroxlorid"
* group[=].element[=].target[+].code = #004072
* group[=].element[=].target[=].display = "melfalan"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4225
* group[=].element[=].display = "N-atsetilsistein"
* group[=].element[=].target[+].code = #000733
* group[=].element[=].target[=].display = "atsetilsistein"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4227
* group[=].element[=].display = "Tenofovir alafenamid gemifumarat"
* group[=].element[=].target[+].code = #007115
* group[=].element[=].target[=].display = "tenofovir alafenamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4232
* group[=].element[=].display = "Gidrokortizon natriy susksinat"
* group[=].element[=].target[+].code = #001678
* group[=].element[=].target[=].display = "gidrokortizon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4243
* group[=].element[=].display = "Karisoprodol"
* group[=].element[=].target[+].code = #003147
* group[=].element[=].target[=].display = "karizoprodol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4246
* group[=].element[=].display = "Glyukozamin sulfat natriy tuzi"
* group[=].element[=].target[+].code = #001787
* group[=].element[=].target[=].display = "glyukozamin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4266
* group[=].element[=].display = "Sitikolinga ekvivalent natriy sitikolin"
* group[=].element[=].target[+].code = #008792
* group[=].element[=].target[=].display = "sitikolin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4271
* group[=].element[=].display = "Ketoprofen lysinat"
* group[=].element[=].target[+].code = #003224
* group[=].element[=].target[=].display = "ketoprofen"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4275
* group[=].element[=].display = "Nimorazol"
* group[=].element[=].target[+].code = #004820
* group[=].element[=].target[=].display = "nimorazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4277
* group[=].element[=].display = "Trimebutin"
* group[=].element[=].target[+].code = #007642
* group[=].element[=].target[=].display = "trimebutin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4282
* group[=].element[=].display = "Kalsitriol"
* group[=].element[=].target[+].code = #003037
* group[=].element[=].target[=].display = "kalsitriol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4283
* group[=].element[=].display = "Sefazolin natriy"
* group[=].element[=].target[+].code = #008522
* group[=].element[=].target[=].display = "sefazolin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4288
* group[=].element[=].display = "Klonidin gidroxlorid (klofelin)"
* group[=].element[=].target[+].code = #003322
* group[=].element[=].target[=].display = "klonidin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4297
* group[=].element[=].display = "Deksametazon fosfat"
* group[=].element[=].target[+].code = #001980
* group[=].element[=].target[=].display = "deksametazon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4298
* group[=].element[=].display = "Epoetin beta"
* group[=].element[=].target[+].code = #009095
* group[=].element[=].target[=].display = "epoetin beta"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4300
* group[=].element[=].display = "Inkliziran"
* group[=].element[=].target[+].code = #002815
* group[=].element[=].target[=].display = "inklisiran"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4302
* group[=].element[=].display = "Infliksimab"
* group[=].element[=].target[+].code = #002855
* group[=].element[=].target[=].display = "infliksimab"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4309
* group[=].element[=].display = "Kapsasin"
* group[=].element[=].target[+].code = #003094
* group[=].element[=].target[=].display = "Kapsaitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4317
* group[=].element[=].display = "Perindopril"
* group[=].element[=].target[+].code = #005462
* group[=].element[=].target[=].display = "perindopril"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #5764
* group[=].element[=].display = "L-lizin"
* group[=].element[=].target[+].code = #003742
* group[=].element[=].target[=].display = "lizin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #5793
* group[=].element[=].display = "Tiloron"
* group[=].element[=].target[+].code = #007310
* group[=].element[=].target[=].display = "tiloron"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #5831
* group[=].element[=].display = "Ezomeperazol magniy trigidrat"
* group[=].element[=].target[+].code = #008850
* group[=].element[=].target[=].display = "ezomeprazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #5932
* group[=].element[=].display = "Enisamiyum yodid"
* group[=].element[=].target[+].code = #009014
* group[=].element[=].target[=].display = "enisamiy yodid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #6020
* group[=].element[=].display = "Ketorek"
* group[=].element[=].target[+].code = #003225
* group[=].element[=].target[=].display = "ketorolak"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #6628
* group[=].element[=].display = "Dabigatran eteksilat"
* group[=].element[=].target[+].code = #001847
* group[=].element[=].target[=].display = "dabigatrana eteksilat"
* group[=].element[=].target[=].relationship = #equivalent

* group[+].source = Canonical(DMEDPrescriptionInnCS)
* group[=].target = "http://www.whocc.no/atc"
* group[=].element[+].code = #1903
* group[=].element[=].display = "Kalsiy xlorid"
* group[=].element[=].target[+].code = #B05XA07
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #1916
* group[=].element[=].display = "Oksiglutation"
* group[=].element[=].target[+].code = #V03AB32
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #1927
* group[=].element[=].display = "O‘tlarning chang allergenlari"
* group[=].element[=].target[+].code = #V01AA02
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #1930
* group[=].element[=].display = "Akasiya yelimi"
* group[=].element[=].target[+].code = #D10AB02
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #1947
* group[=].element[=].display = "Magniy oksid"
* group[=].element[=].target[+].code = #A12CC10
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #1953
* group[=].element[=].display = "Pergidrol"
* group[=].element[=].target[+].code = #D08AX01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #1971
* group[=].element[=].display = "Kalsiy digidrati xlorid"
* group[=].element[=].target[+].code = #B05XA07
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #1973
* group[=].element[=].display = "Natriy tiosulfat"
* group[=].element[=].target[+].code = #V03AB06
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #1988
* group[=].element[=].display = "Glyukoza"
* group[=].element[=].target[+].code = #B05CX01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #1990
* group[=].element[=].display = "Rux sulfat"
* group[=].element[=].target[+].code = #A12CB01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2024
* group[=].element[=].display = "A-tokoferol asetat"
* group[=].element[=].target[+].code = #A11HA03
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2056
* group[=].element[=].display = "Kanakunjut moyi"
* group[=].element[=].target[+].code = #A06AB05
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2109
* group[=].element[=].display = "Vodorod peroksid"
* group[=].element[=].target[+].code = #D08AX01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2115
* group[=].element[=].display = "Pankreatin pelletlari"
* group[=].element[=].target[+].code = #A09AA02
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2149
* group[=].element[=].display = "Ksilitol"
* group[=].element[=].target[+].code = #B05XA31
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2166
* group[=].element[=].display = "O‘rta zanjirli triglitseridlar"
* group[=].element[=].target[+].code = #B05BA02
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2171
* group[=].element[=].display = "Papaverin gidroxloridi"
* group[=].element[=].target[+].code = #A03AD01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2173
* group[=].element[=].display = "Ketomaks"
* group[=].element[=].target[+].code = #M01AE03
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2240
* group[=].element[=].display = "Gidroksietil kraxmal-130/042"
* group[=].element[=].target[+].code = #B05AA07
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2248
* group[=].element[=].display = "Tiklangan glutation"
* group[=].element[=].target[+].code = #V03AB32
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2254
* group[=].element[=].display = "Alfa-lipoy kislotasi"
* group[=].element[=].target[+].code = #A16AX01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2290
* group[=].element[=].display = "Alfa-tokoferol"
* group[=].element[=].target[+].code = #A11HA03
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2298
* group[=].element[=].display = "Soya yog'i"
* group[=].element[=].target[+].code = #B05BA02
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2314
* group[=].element[=].display = "Bromokriptin"
* group[=].element[=].target[+].code = #N04BC01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2325
* group[=].element[=].display = "Sennozid A va B"
* group[=].element[=].target[+].code = #A06AB06
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2342
* group[=].element[=].display = "Sefkapen"
* group[=].element[=].target[+].code = #J01DD16
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2353
* group[=].element[=].display = "Glyukoza monogidrat"
* group[=].element[=].target[+].code = #B05CX01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2361
* group[=].element[=].display = "Natriy aminosalitsilat digidrat"
* group[=].element[=].target[+].code = #J02AC01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2364
* group[=].element[=].display = "Eritropoetin"
* group[=].element[=].target[+].code = #B03XA01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2367
* group[=].element[=].display = "Glikorazmulin"
* group[=].element[=].target[+].code = #A10BB09
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2368
* group[=].element[=].display = "Stronsiy ranelat suvsiz"
* group[=].element[=].target[+].code = #M05BX03
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2374
* group[=].element[=].display = "6 turli o‘simlik allergenlari aralashmasi"
* group[=].element[=].target[+].code = #V01AA02
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2409
* group[=].element[=].display = "bo‘g‘ma anatoksini"
* group[=].element[=].target[+].code = #J06AA02
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2410
* group[=].element[=].display = "Botulizmga qarshi antitoksin"
* group[=].element[=].target[+].code = #J07AM01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2423
* group[=].element[=].display = "Suyultirilgan kislorod"
* group[=].element[=].target[+].code = #V03AN01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2430
* group[=].element[=].display = "Бивалентная, оральная вакцина против полиомиелита, живая аттенуированная"
* group[=].element[=].target[+].code = #J07BF04
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2447
* group[=].element[=].display = "Zig‘ir yog‘i"
* group[=].element[=].target[+].code = #A06AC02
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2452
* group[=].element[=].display = "Valeriana"
* group[=].element[=].target[+].code = #N05CM09
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2475
* group[=].element[=].display = "Gidroksietilkraxmal 200/0.5"
* group[=].element[=].target[+].code = #B05AA07
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2497
* group[=].element[=].display = "Soxta kashtan"
* group[=].element[=].target[+].code = #C05CX03
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2537
* group[=].element[=].display = "Natriy betametazon fosfat"
* group[=].element[=].target[+].code = #D07AC01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2556
* group[=].element[=].display = "Umeklidiniy"
* group[=].element[=].target[+].code = #R03BB07
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2565
* group[=].element[=].display = "Suvsiz Glyukoza"
* group[=].element[=].target[+].code = #B05CX01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2585
* group[=].element[=].display = "Yoximbin kislotasi"
* group[=].element[=].target[+].code = #G04BE04
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2594
* group[=].element[=].display = "Papaverolin"
* group[=].element[=].target[+].code = #A03AD01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2602
* group[=].element[=].display = "Kariprazin"
* group[=].element[=].target[+].code = #N05AX15
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2631
* group[=].element[=].display = "Papaverin"
* group[=].element[=].target[+].code = #A03AD01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2635
* group[=].element[=].display = "dalachoy"
* group[=].element[=].target[+].code = #N06AX25
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2646
* group[=].element[=].display = "Silga qarshi tirik kuchsizlantirilgan vaksina"
* group[=].element[=].target[+].code = #V04CF01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2709
* group[=].element[=].display = "Glilagin"
* group[=].element[=].target[+].code = #A10BJ02
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2721
* group[=].element[=].display = "Qizamiq virusi"
* group[=].element[=].target[+].code = #J07BD01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2759
* group[=].element[=].display = "Allergen tuberkuloprotein"
* group[=].element[=].target[+].code = #V04CF01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2796
* group[=].element[=].display = "Estriol suksinat"
* group[=].element[=].target[+].code = #G03CA04
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2801
* group[=].element[=].display = "Gamma-aminomoy kislota"
* group[=].element[=].target[+].code = #N03AG03
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2802
* group[=].element[=].display = "Yashovchi laktobakteriyalar"
* group[=].element[=].target[+].code = #A07FA01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2825
* group[=].element[=].display = "Azilsartan"
* group[=].element[=].target[+].code = #C09CA09
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2827
* group[=].element[=].display = "Morfin gidroxlorid trigidrat"
* group[=].element[=].target[+].code = #N02AA01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2832
* group[=].element[=].display = "Karbonat lantan (III)"
* group[=].element[=].target[+].code = #V03AE03
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2857
* group[=].element[=].display = "Suksametoniy yodid"
* group[=].element[=].target[+].code = #M03AB01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2867
* group[=].element[=].display = "Menotropinlar - inson menopauzal gonadotropini"
* group[=].element[=].target[+].code = #G03GA02
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2869
* group[=].element[=].display = "Glutation"
* group[=].element[=].target[+].code = #V03AB32
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2872
* group[=].element[=].display = "Flateron"
* group[=].element[=].target[+].code = #A05BA03
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2894
* group[=].element[=].display = "Temir fumarat"
* group[=].element[=].target[+].code = #B03AA02
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2895
* group[=].element[=].display = "Para-aminosalisil kislota"
* group[=].element[=].target[+].code = #J02AC01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2910
* group[=].element[=].display = "Do‘lana"
* group[=].element[=].target[+].code = #C01EB09
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2918
* group[=].element[=].display = "Labetalol"
* group[=].element[=].target[+].code = #C07AG01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2920
* group[=].element[=].display = "Tozalangan pnevmokokk kapsulali polisaxarid"
* group[=].element[=].target[+].code = #J07AL02
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2962
* group[=].element[=].display = "Interferon beta"
* group[=].element[=].target[+].code = #L03AB07
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2967
* group[=].element[=].display = "Natriy xondroitin sulfat"
* group[=].element[=].target[+].code = #M01AX25
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2973
* group[=].element[=].display = "Poraktant alfa"
* group[=].element[=].target[+].code = #R07AA02
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2982
* group[=].element[=].display = "Gidroksietilsellyuloza"
* group[=].element[=].target[+].code = #S01XA20
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2997
* group[=].element[=].display = "Inson Villebrand omili"
* group[=].element[=].target[+].code = #B02BD02
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #2999
* group[=].element[=].display = "Disiklomin"
* group[=].element[=].target[+].code = #A03AA07
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3006
* group[=].element[=].display = "Gemalin"
* group[=].element[=].target[+].code = #B06AC01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3020
* group[=].element[=].display = "Aksaritmin"
* group[=].element[=].target[+].code = #C01BD01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3021
* group[=].element[=].display = "Pidotimod"
* group[=].element[=].target[+].code = #L03AX05
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3022
* group[=].element[=].display = "Inson normal immunoglobulini"
* group[=].element[=].target[+].code = #J06BA02
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3028
* group[=].element[=].display = "Fluorometolon"
* group[=].element[=].target[+].code = #S01BA07
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3034
* group[=].element[=].display = "Ko‘lbor iloni zahariga qarshi zardob"
* group[=].element[=].target[+].code = #J06AA03
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3041
* group[=].element[=].display = "Betaksolol"
* group[=].element[=].target[+].code = #S01ED02
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3054
* group[=].element[=].display = "Glatiramer asetat"
* group[=].element[=].target[+].code = #L03AX13
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3060
* group[=].element[=].display = "Nфtriy tiosulfat pentagidrat"
* group[=].element[=].target[+].code = #V03AB06
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3062
* group[=].element[=].display = "Remindevir (VV 116)"
* group[=].element[=].target[+].code = #J05AB16
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3067
* group[=].element[=].display = "Flanorin"
* group[=].element[=].target[+].code = #A05BA03
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3068
* group[=].element[=].display = "Linestrenol"
* group[=].element[=].target[+].code = #G03AC02
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3074
* group[=].element[=].display = "Inozin pranobeks"
* group[=].element[=].target[+].code = #J05AX05
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3081
* group[=].element[=].display = "Fidaksomisin"
* group[=].element[=].target[+].code = #A07AA12
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3103
* group[=].element[=].display = "Kalmett-Geren batsilla shtammi 1-19,2x108 Koloniya hosil qiluvchi birlik"
* group[=].element[=].target[+].code = #L03AX03
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3116
* group[=].element[=].display = "Xantal kukuni"
* group[=].element[=].target[+].code = #M02AX10
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3123
* group[=].element[=].display = "Kobalt-30"
* group[=].element[=].target[+].code = #V09XX01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3138
* group[=].element[=].display = "Bromdigidroxlorfenilbenzodiazepin"
* group[=].element[=].target[+].code = #N05CD08
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3150
* group[=].element[=].display = "Natriy bromfenak seskvigidrat"
* group[=].element[=].target[+].code = #S01BC11
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3180
* group[=].element[=].display = "Sabala mevasining konsentratsiyalangan ekstrakti"
* group[=].element[=].target[+].code = #G04CX02
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3184
* group[=].element[=].display = "Zofenopril"
* group[=].element[=].target[+].code = #C09AA15
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3193
* group[=].element[=].display = "Karbidopa monogidrat"
* group[=].element[=].target[+].code = #L02AE01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3196
* group[=].element[=].display = "Ko'ka barglari"
* group[=].element[=].target[+].code = #R05CB13
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3219
* group[=].element[=].display = "Amorolfin"
* group[=].element[=].target[+].code = #D01AE16
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3228
* group[=].element[=].display = "Nitrogliserin"
* group[=].element[=].target[+].code = #C01DA02
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3229
* group[=].element[=].display = "Srfaleksin"
* group[=].element[=].target[+].code = #J01DC10
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3231
* group[=].element[=].display = "Inson albumini"
* group[=].element[=].target[+].code = #B05AA01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3241
* group[=].element[=].display = "Silimarin"
* group[=].element[=].target[+].code = #A05BA03
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3245
* group[=].element[=].display = "Ribavirin"
* group[=].element[=].target[+].code = #J05AP01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3253
* group[=].element[=].display = "Pamidron kislota"
* group[=].element[=].target[+].code = #M05BA03
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3258
* group[=].element[=].display = "Mesna"
* group[=].element[=].target[+].code = #V03AF01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3259
* group[=].element[=].display = "Shuvoq bargli ambroziya allergeni"
* group[=].element[=].target[+].code = #V01AA10
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3274
* group[=].element[=].display = "Pimekrolimus"
* group[=].element[=].target[+].code = #D11AH02
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3276
* group[=].element[=].display = "Isfaguli"
* group[=].element[=].target[+].code = #A06AC01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3290
* group[=].element[=].display = "Inson zardobi albumini"
* group[=].element[=].target[+].code = #B05AA01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3293
* group[=].element[=].display = "Propranolol"
* group[=].element[=].target[+].code = #C07AA05
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3294
* group[=].element[=].display = "Inson omili IX"
* group[=].element[=].target[+].code = #B02BD04
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3311
* group[=].element[=].display = "Tirik attenuirlangan BSJ tayoqchalari, Moro Braziliya kichik shtammi"
* group[=].element[=].target[+].code = #J07BF03
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3314
* group[=].element[=].display = "Piribedil"
* group[=].element[=].target[+].code = #N04BC08
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3319
* group[=].element[=].display = "Yoyilib o‘suvchi molochay quruq ekstrakti"
* group[=].element[=].target[+].code = #C05AX03
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3340
* group[=].element[=].display = "Qo'ng'irbosh gulchangi allergeni ekstraktining muzlatilgan tomchilari"
* group[=].element[=].target[+].code = #V01AA02
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3349
* group[=].element[=].display = "Karboksimetilsellyuloza"
* group[=].element[=].target[+].code = #S01XA20
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3363
* group[=].element[=].display = "Tifga qarshi vaksinalar"
* group[=].element[=].target[+].code = #J07AP03
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3365
* group[=].element[=].display = "Mofetil"
* group[=].element[=].target[+].code = #L04AA06
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3369
* group[=].element[=].display = "Omalizumab"
* group[=].element[=].target[+].code = #R03DX05
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3403
* group[=].element[=].display = "Rotavirus vaksinasi, tirik, peroral, pentavalent"
* group[=].element[=].target[+].code = #J07BH02
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3429
* group[=].element[=].display = "Sporogen laktobakteriyalar"
* group[=].element[=].target[+].code = #A07FA01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3439
* group[=].element[=].display = "Glyutation"
* group[=].element[=].target[+].code = #V03AB32
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3444
* group[=].element[=].display = "BSJ vaksinasi (tirik, kuchsizlantirilgan) (Bacillus Calmette Guerin shtammi)"
* group[=].element[=].target[+].code = #J07AN01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3447
* group[=].element[=].display = "Litiy karbonat"
* group[=].element[=].target[+].code = #N05AN01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3449
* group[=].element[=].display = "Alfa-tokoferiasetat"
* group[=].element[=].target[+].code = #A11HA03
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3453
* group[=].element[=].display = "Proparakain gidroxlorid"
* group[=].element[=].target[+].code = #S01HA04
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3456
* group[=].element[=].display = "Agomelatin"
* group[=].element[=].target[+].code = #N06AX22
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3470
* group[=].element[=].display = "Limono‘t"
* group[=].element[=].target[+].code = #N05CM09
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3472
* group[=].element[=].display = "Metilprednizolona atseponat"
* group[=].element[=].target[+].code = #D07AC14
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3500
* group[=].element[=].display = "Melatonin"
* group[=].element[=].target[+].code = #N05CH01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3504
* group[=].element[=].display = "Ergometrin"
* group[=].element[=].target[+].code = #G02AB03
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3514
* group[=].element[=].display = "Gepatit A vaksinasi"
* group[=].element[=].target[+].code = #J07BC01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3525
* group[=].element[=].display = "Temir gidroksidining polimaltoza kompleksi"
* group[=].element[=].target[+].code = #B03AB04
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3533
* group[=].element[=].display = "Zolpidem"
* group[=].element[=].target[+].code = #N05CF02
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3536
* group[=].element[=].display = "Faollashtirilgan ko'mir"
* group[=].element[=].target[+].code = #A07BA01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3553
* group[=].element[=].display = "Urapidil"
* group[=].element[=].target[+].code = #C02CA06
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3556
* group[=].element[=].display = "Sut kislotasi"
* group[=].element[=].target[+].code = #G01AD01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3560
* group[=].element[=].display = "Dekstrabeprazol natriy"
* group[=].element[=].target[+].code = #A02BC07
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3587
* group[=].element[=].display = "Morfin sulfati"
* group[=].element[=].target[+].code = #N02AA01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3590
* group[=].element[=].display = "Purkab quritilgan akatsiya"
* group[=].element[=].target[+].code = #B01AD01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3591
* group[=].element[=].display = "Odamning quturish virusiga monoklonal antitanalari (rDNK)"
* group[=].element[=].target[+].code = #N01BB02
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3596
* group[=].element[=].display = "Tirostimulin"
* group[=].element[=].target[+].code = #H01AA01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3623
* group[=].element[=].display = "Pilokarpina gidroxlorid"
* group[=].element[=].target[+].code = #S01EB01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3631
* group[=].element[=].display = "Poliplatillen"
* group[=].element[=].target[+].code = #L01XA05
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3636
* group[=].element[=].display = "Ilon rauvolfiya ildizlari"
* group[=].element[=].target[+].code = #C02AA04
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3653
* group[=].element[=].display = "Subtsitrat vismuti"
* group[=].element[=].target[+].code = #A02BX05
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3656
* group[=].element[=].display = "Kalsiy polistirolsulfonat"
* group[=].element[=].target[+].code = #V03AE01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3661
* group[=].element[=].display = "Pilokarpin"
* group[=].element[=].target[+].code = #N07AX01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3690
* group[=].element[=].display = "Silimarin 80%"
* group[=].element[=].target[+].code = #A05BA03
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3729
* group[=].element[=].display = "Iopromid"
* group[=].element[=].target[+].code = #V08AB05
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3737
* group[=].element[=].display = "Botulizmning B turi toksini"
* group[=].element[=].target[+].code = #J06AA04
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3746
* group[=].element[=].display = "Limaprost"
* group[=].element[=].target[+].code = #C01EA01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3748
* group[=].element[=].display = "Gadobutrol"
* group[=].element[=].target[+].code = #V08CA09
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3754
* group[=].element[=].display = "psevdoefedrin"
* group[=].element[=].target[+].code = #A12CA01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3755
* group[=].element[=].display = "Koloxisin"
* group[=].element[=].target[+].code = #M04AC01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3758
* group[=].element[=].display = "Paroksetin gidroxloridning yarim gidrati"
* group[=].element[=].target[+].code = #N06AB05
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3764
* group[=].element[=].display = "Etasizin"
* group[=].element[=].target[+].code = #C01BC09
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3788
* group[=].element[=].display = "Temir oqsili suksinil"
* group[=].element[=].target[+].code = #B03AB09
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3789
* group[=].element[=].display = "Сульфат бария"
* group[=].element[=].target[+].code = #V08BA02
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3812
* group[=].element[=].display = "Podofillotoksin"
* group[=].element[=].target[+].code = #D06BB04
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3819
* group[=].element[=].display = "3-borm-2,4,6-trimetilfenilkarbamoilmetiliminodiuksus kislotasi"
* group[=].element[=].target[+].code = #V09DA04
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3822
* group[=].element[=].display = "Strofantin"
* group[=].element[=].target[+].code = #C01AC01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3829
* group[=].element[=].display = "Izosorbid mononitrat"
* group[=].element[=].target[+].code = #C01DA14
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3852
* group[=].element[=].display = "Teofilin suvsiz"
* group[=].element[=].target[+].code = #R03DA04
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3861
* group[=].element[=].display = "Floroglyusinol digidrat"
* group[=].element[=].target[+].code = #A03AX12
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3874
* group[=].element[=].display = "Indakaterol"
* group[=].element[=].target[+].code = #R03AC18
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3882
* group[=].element[=].display = "Siklopentolat"
* group[=].element[=].target[+].code = #S01FA04
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3884
* group[=].element[=].display = "Kalsiy glyukonat monogidrat"
* group[=].element[=].target[+].code = #A12AA03
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3908
* group[=].element[=].display = "Kulrang opadray 04F575000"
* group[=].element[=].target[+].code = #C01EB10
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3918
* group[=].element[=].display = "Tikanli sho‘ra allergeni"
* group[=].element[=].target[+].code = #V01AA10
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3929
* group[=].element[=].display = "Dimetilfumarat"
* group[=].element[=].target[+].code = #L04AX07
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3932
* group[=].element[=].display = "Spetsifik immunoglobulinlar"
* group[=].element[=].target[+].code = #J06AA03
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3939
* group[=].element[=].display = "Sulfaguanidin"
* group[=].element[=].target[+].code = #A07AB03
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3954
* group[=].element[=].display = "Qora mingdevona"
* group[=].element[=].target[+].code = #A03BA01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3960
* group[=].element[=].display = "Anti-ingibitor koagulyant kompleksi faolligi"
* group[=].element[=].target[+].code = #B02BD03
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3962
* group[=].element[=].display = "Leyprorelin"
* group[=].element[=].target[+].code = #L02AE02
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3965
* group[=].element[=].display = "QIZAMIQ, PAROTIT, QIZILCHA VA SUVCHECHAKNING OLDINI OLISH VAKSINASI"
* group[=].element[=].target[+].code = #J07BD52
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3966
* group[=].element[=].display = "Natriy karmelloza"
* group[=].element[=].target[+].code = #S01XA20
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3967
* group[=].element[=].display = "Furagin"
* group[=].element[=].target[+].code = #J01XE03
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #3991
* group[=].element[=].display = "Botulizm toksini E"
* group[=].element[=].target[+].code = #J06AA04
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #4006
* group[=].element[=].display = "Virus shtammlarining gemagglyutininlari"
* group[=].element[=].target[+].code = #J07BB02
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #4010
* group[=].element[=].display = "Ko‘lbor, efa, kobra iloni zahariga qarshi zardob"
* group[=].element[=].target[+].code = #J06AA03
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #4033
* group[=].element[=].display = "Quturishga qarshi vaksina"
* group[=].element[=].target[+].code = #J07BG01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #4035
* group[=].element[=].display = "Odam immunoglobulini antirezus anti-D"
* group[=].element[=].target[+].code = #J06BB01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #4036
* group[=].element[=].display = "qayin allergeni"
* group[=].element[=].target[+].code = #V01AA05
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #4048
* group[=].element[=].display = "Metapramin"
* group[=].element[=].target[+].code = #J01XD01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #4062
* group[=].element[=].display = "Metilparagidroksibenzoat"
* group[=].element[=].target[+].code = #J05AF08
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #4066
* group[=].element[=].display = "Morfin gidroxlorid"
* group[=].element[=].target[+].code = #N02AA01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #4068
* group[=].element[=].display = "rekombinant oqsil"
* group[=].element[=].target[+].code = #V01AA20
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #4069
* group[=].element[=].display = "Markogol 4000"
* group[=].element[=].target[+].code = #A06AD15
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #4070
* group[=].element[=].display = "Dimerkaptoyantar kislota"
* group[=].element[=].target[+].code = #V09FX01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #4072
* group[=].element[=].display = "Antirabik kulturali konsentrlangan tozalangan inaktivatsiyalangan quruq vaksina"
* group[=].element[=].target[+].code = #J07BG01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #4078
* group[=].element[=].display = "Gidrosmin"
* group[=].element[=].target[+].code = #C05CA05
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #4084
* group[=].element[=].display = "Dezonid"
* group[=].element[=].target[+].code = #D07AB08
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #4096
* group[=].element[=].display = "L-asparaginaza"
* group[=].element[=].target[+].code = #L01XX02
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #4097
* group[=].element[=].display = "Emoklot"
* group[=].element[=].target[+].code = #B02BD02
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #4101
* group[=].element[=].display = "Diltiazem"
* group[=].element[=].target[+].code = #C08DB01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #4108
* group[=].element[=].display = "Silibinin"
* group[=].element[=].target[+].code = #A05BA03
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #4115
* group[=].element[=].display = "Tinospora poyasi yoki Guduchi"
* group[=].element[=].target[+].code = #A03BA01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #4116
* group[=].element[=].display = "Pnevmokokkli polivalent polisaxarid vaksina"
* group[=].element[=].target[+].code = #J07AL52
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #4119
* group[=].element[=].display = "BSJ (bakterial suspenziya)"
* group[=].element[=].target[+].code = #J07AN01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #4136
* group[=].element[=].display = "Dorivor valeriana"
* group[=].element[=].target[+].code = #N05CM09
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #4139
* group[=].element[=].display = "Fosfor pirofosfat ionlari shaklida"
* group[=].element[=].target[+].code = #V09BA03
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #4149
* group[=].element[=].display = "Trospiy xlorid"
* group[=].element[=].target[+].code = #G04BD09
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #4156
* group[=].element[=].display = "Dietilentriaminpentauksusning kalsiy-trinatriyli tuzi"
* group[=].element[=].target[+].code = #V09CA01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #4163
* group[=].element[=].display = "Zarangbargli chinor"
* group[=].element[=].target[+].code = #V01AA05
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #4165
* group[=].element[=].display = "Qoraqurt o‘rgimchagi zahariga qarshi tozalangan konsentrlangan suyuq ot zardobi"
* group[=].element[=].target[+].code = #J06AA02
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #4168
* group[=].element[=].display = "Morfin glyukuronid"
* group[=].element[=].target[+].code = #N02AA01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #4178
* group[=].element[=].display = "Tegafur"
* group[=].element[=].target[+].code = #L01BC03
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #4181
* group[=].element[=].display = "Avanafil"
* group[=].element[=].target[+].code = #G04BE10
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #4182
* group[=].element[=].display = "Galotan"
* group[=].element[=].target[+].code = #N01AB01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #4186
* group[=].element[=].display = "Tabiiy allergen ekstrakti tikanli archa"
* group[=].element[=].target[+].code = #V01AA05
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #4196
* group[=].element[=].display = "Qoqshol toksinini neytrallashtiruvchi maxsus immunoglobulinlar"
* group[=].element[=].target[+].code = #J06AA02
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #4202
* group[=].element[=].display = "Atropin"
* group[=].element[=].target[+].code = #A03BA01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #4203
* group[=].element[=].display = "Prifiniy bromid"
* group[=].element[=].target[+].code = #A03AB18
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #4204
* group[=].element[=].display = "Natriy alendronat"
* group[=].element[=].target[+].code = #M05BA04
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #4205
* group[=].element[=].display = "Para-aminosalisil kislotasining natriyli tuzi, digidrat"
* group[=].element[=].target[+].code = #J02AC01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #4214
* group[=].element[=].display = "Undetsilen kislotasining monoetanolamidi"
* group[=].element[=].target[+].code = #D01AE04
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #4272
* group[=].element[=].display = "Ranelin kislota"
* group[=].element[=].target[+].code = #M05BX03
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #4299
* group[=].element[=].display = "Estriol"
* group[=].element[=].target[+].code = #G03CA04
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #4303
* group[=].element[=].display = "Mepivakain"
* group[=].element[=].target[+].code = #N01BB03
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #4311
* group[=].element[=].display = "Serenoya"
* group[=].element[=].target[+].code = #G04CX02
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #4313
* group[=].element[=].display = "Ganireliks"
* group[=].element[=].target[+].code = #H01CC01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #5996
* group[=].element[=].display = "Vismut trikaliy ditsitrat"
* group[=].element[=].target[+].code = #A02BX05
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #6019
* group[=].element[=].display = "Alteya quruq ekstrakti"
* group[=].element[=].target[+].code = #R05CA05
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #6072
* group[=].element[=].display = "Senadeksin"
* group[=].element[=].target[+].code = #A06AB06
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #6083
* group[=].element[=].display = "Zveroboy prodiryavlennyy"
* group[=].element[=].target[+].code = #N06AX25
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #6101
* group[=].element[=].display = "Benzilbenzoat"
* group[=].element[=].target[+].code = #P03AX01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #6106
* group[=].element[=].display = "Sigir lipidlari ekstraksiya qilingan surfaktant"
* group[=].element[=].target[+].code = #R07AA02
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #6213
* group[=].element[=].display = "Liofilizatsiyalanganmurda bakteriyakletkalari"
* group[=].element[=].target[+].code = #J01XX01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #6224
* group[=].element[=].display = "Inozin pranobeks"
* group[=].element[=].target[+].code = #J05AX05
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #6260
* group[=].element[=].display = "SaxaromitsetBoulardi"
* group[=].element[=].target[+].code = #A07FA02
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #6356
* group[=].element[=].display = "Bugʻdoyyumshoq"
* group[=].element[=].target[+].code = #A06AC07
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #6418
* group[=].element[=].display = "Senna barglari quruq ekstrakti"
* group[=].element[=].target[+].code = #A06AB06
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #6480
* group[=].element[=].display = "Molochnokislayapalochka"
* group[=].element[=].target[+].code = #G01AD01
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #6588
* group[=].element[=].display = "Dioktaedrik smektit"
* group[=].element[=].target[+].code = #A07BC05
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
* group[=].element[+].code = #6660
* group[=].element[=].display = "Yodamin"
* group[=].element[=].target[+].code = #D08AG03
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[=].target[=].comment = "No UZ Core INN code; all DMED trade names of this INN carry this ATC code."
