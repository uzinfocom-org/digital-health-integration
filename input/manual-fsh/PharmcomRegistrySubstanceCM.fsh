Instance: pharmcom-registry-substance-to-inn-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "Pharmaceutical Committee registry active substance to UZ Core INN"
Description: "Maps Pharmaceutical Committee drug registry active substances (`substance_id`) to UZ Core INN codes for `Medication.ingredient.item`, built from the registry exports of 2026-11-02 and 2026-11-17. A substance whose name is the INN name maps as `equivalent`. A salt, hydrate or other form of an INN maps to that INN as `source-is-narrower-than-target`: taken from the products where it is the only substance left after the others matched their INN by name, or found by its name without the salt part. A substance with no INN in UZ Core has no mapping and is sent as text."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/pharmcom-registry-substance-to-inn-cm"
* name = "PharmcomRegistrySubstanceToInnCM"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* sourceScopeCanonical = Canonical(PharmcomRegistrySubstanceVS)

* group[+].source = Canonical(PharmcomRegistrySubstanceCS)
* group[=].target = $inn-medication-name-cs
* group[=].element[+].code = #10030
* group[=].element[=].display = "пропилпарагидроксибензоат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10060
* group[=].element[=].display = "Дротаверина гидрохлорид"
* group[=].element[=].target[+].code = #002468
* group[=].element[=].target[=].display = "drotaverin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10080
* group[=].element[=].display = "фоллитропин делта"
* group[=].element[=].target[+].code = #008233
* group[=].element[=].target[=].display = "follitropin delta"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10100
* group[=].element[=].display = "левоцетиризина гидрохлорид"
* group[=].element[=].target[+].code = #003652
* group[=].element[=].target[=].display = "levotsetirizin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10145
* group[=].element[=].display = "коровяк обыкновенный"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10160
* group[=].element[=].display = "трелаглиптин"
* group[=].element[=].target[+].code = #007574
* group[=].element[=].target[=].display = "trelagliptin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #10161
* group[=].element[=].display = "Бролуцизумаб"
* group[=].element[=].target[+].code = #001151
* group[=].element[=].target[=].display = "brolutsizumab"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #10163
* group[=].element[=].display = "рацеметионин"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10167
* group[=].element[=].display = "тенофовира алафенамида"
* group[=].element[=].target[+].code = #007115
* group[=].element[=].target[=].display = "tenofovir alafenamid"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10172
* group[=].element[=].display = "претоманид"
* group[=].element[=].target[+].code = #005829
* group[=].element[=].target[=].display = "pretomanid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #10185
* group[=].element[=].display = "Триамцинолона ацетонид"
* group[=].element[=].target[+].code = #007608
* group[=].element[=].target[=].display = "triamsinolon"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10186
* group[=].element[=].display = "Цитрат тофацитиниба"
* group[=].element[=].target[+].code = #007523
* group[=].element[=].target[=].display = "tofatsitinib"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10187
* group[=].element[=].display = "миконазола нитрат"
* group[=].element[=].target[+].code = #004338
* group[=].element[=].target[=].display = "mikonazol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10189
* group[=].element[=].display = "флуоксетина гидрохлорид"
* group[=].element[=].target[+].code = #008149
* group[=].element[=].target[=].display = "fluoksetin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10190
* group[=].element[=].display = "Fluocinalone acetonide"
* group[=].element[=].target[+].code = #008155
* group[=].element[=].target[=].display = "fluotsinolona atsetonid"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10191
* group[=].element[=].display = "Клиндамицина фосфат"
* group[=].element[=].target[+].code = #003266
* group[=].element[=].target[=].display = "klindamitsin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10201
* group[=].element[=].display = "поликрезулен"
* group[=].element[=].target[+].code = #005737
* group[=].element[=].target[=].display = "polikrezulen"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #10203
* group[=].element[=].display = "осимертиниб"
* group[=].element[=].target[+].code = #005234
* group[=].element[=].target[=].display = "osimertinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #10220
* group[=].element[=].display = "Кофеин безводный"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10260
* group[=].element[=].display = "Пантопразол (натрия сесквигидрат)"
* group[=].element[=].target[+].code = #005312
* group[=].element[=].target[=].display = "pantoprazol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10263
* group[=].element[=].display = "Гидроксипропил целлюлоза"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10267
* group[=].element[=].display = "Лактоза"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10300
* group[=].element[=].display = "магний"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10308
* group[=].element[=].display = "Рибоциклиб сукцинат"
* group[=].element[=].target[+].code = #006164
* group[=].element[=].target[=].display = "ribotsiklib"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10316
* group[=].element[=].display = "лецитин"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10322
* group[=].element[=].display = "Фруктоолигосахариды"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10325
* group[=].element[=].display = "сульфацетамид натрия"
* group[=].element[=].target[+].code = #006850
* group[=].element[=].target[=].display = "sulfatsetamid"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10326
* group[=].element[=].display = "Цинка фенолсульфонат октагидрат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10327
* group[=].element[=].display = "Нафазолина гидрохлорид"
* group[=].element[=].target[+].code = #004664
* group[=].element[=].target[=].display = "nafazolin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10342
* group[=].element[=].display = "Хлористоводородная кислота"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10343
* group[=].element[=].display = "Изопропанол"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10345
* group[=].element[=].display = "метформин гидрохлорид"
* group[=].element[=].target[+].code = #004274
* group[=].element[=].target[=].display = "metformin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10346
* group[=].element[=].display = "Инклизиран"
* group[=].element[=].target[+].code = #002815
* group[=].element[=].target[=].display = "inklisiran"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10349
* group[=].element[=].display = "толперизон гидрохлорид"
* group[=].element[=].target[+].code = #007472
* group[=].element[=].target[=].display = "tolperizon"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10360
* group[=].element[=].display = "индапамид гемигидрат"
* group[=].element[=].target[+].code = #002781
* group[=].element[=].target[=].display = "indapamid"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10361
* group[=].element[=].display = "2,4-дихлорбензил этанол"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10362
* group[=].element[=].display = "железо холинат цитрат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10363
* group[=].element[=].display = "кодеин"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10366
* group[=].element[=].display = "динатрия эдетат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10372
* group[=].element[=].display = "коллоидный диоксид силикона"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10387
* group[=].element[=].display = "D-Сорбит"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10388
* group[=].element[=].display = "инозитол"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10390
* group[=].element[=].display = "калия гидроксид"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10396
* group[=].element[=].display = "бендамустина гидрохлорид"
* group[=].element[=].target[+].code = #000884
* group[=].element[=].target[=].display = "bendamustin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10410
* group[=].element[=].display = "двухосновной кальция фосфат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10412
* group[=].element[=].display = "бетакаротин"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10413
* group[=].element[=].display = "железа фурамат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10414
* group[=].element[=].display = "тимолол малеат"
* group[=].element[=].target[+].code = #007324
* group[=].element[=].target[=].display = "timolol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10415
* group[=].element[=].display = "натрия дисульфит"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10419
* group[=].element[=].display = "натрия сульфит"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10447
* group[=].element[=].display = "суматриптан сукцинат"
* group[=].element[=].target[+].code = #006863
* group[=].element[=].target[=].display = "sumatriptan"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10451
* group[=].element[=].display = "метил гидроксибензоат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10460
* group[=].element[=].display = "ароматизатор лимон"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10495
* group[=].element[=].display = "меглюмин"
* group[=].element[=].target[+].code = #004007
* group[=].element[=].target[=].display = "meglyumin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #10498
* group[=].element[=].display = "Дихлорметан"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10504
* group[=].element[=].display = "крахмал"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10506
* group[=].element[=].display = "декстран 70"
* group[=].element[=].target[+].code = #002019
* group[=].element[=].target[=].display = "dekstran"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10517
* group[=].element[=].display = "кабозантиниб-S-малат"
* group[=].element[=].target[+].code = #003013
* group[=].element[=].target[=].display = "kabozantinib"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10518
* group[=].element[=].display = "лейцина альфа-кетоаналог кальциевая соль"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10519
* group[=].element[=].display = "кальция 2-оксо-3-фенилпропионат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10520
* group[=].element[=].display = "кальция 3-метил-2-оксо валерат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10521
* group[=].element[=].display = "кальция 3-метил-2-оксо бутират"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10522
* group[=].element[=].display = "кальция DL-2-гидрокси-4-метил бутират"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10538
* group[=].element[=].display = "L-гистидин гидрохлорид моногидрат"
* group[=].element[=].target[+].code = #001721
* group[=].element[=].target[=].display = "gistidin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10539
* group[=].element[=].display = "а-кетоглутаровая кислота"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10540
* group[=].element[=].display = "полиэтиленгликоль"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10544
* group[=].element[=].display = "ленватиниб"
* group[=].element[=].target[+].code = #003688
* group[=].element[=].target[=].display = "lenvatinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #10552
* group[=].element[=].display = "хлоргексидин гидрохлорид"
* group[=].element[=].target[+].code = #008408
* group[=].element[=].target[=].display = "xlorgeksidin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10560
* group[=].element[=].display = "l-ментол"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10569
* group[=].element[=].display = "карбонат натрия стерильный"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10574
* group[=].element[=].display = "натрия карбонат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10575
* group[=].element[=].display = "Монтеллукаст натрия"
* group[=].element[=].target[+].code = #004487
* group[=].element[=].target[=].display = "montelukast"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10577
* group[=].element[=].display = "Эзомепразол натрия"
* group[=].element[=].target[+].code = #008850
* group[=].element[=].target[=].display = "ezomeprazol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10579
* group[=].element[=].display = "Бетаметазона дипропионат (микронизированный)"
* group[=].element[=].target[+].code = #000983
* group[=].element[=].target[=].display = "betametazon"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10596
* group[=].element[=].display = "Лимонной кислоты моногидрат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10605
* group[=].element[=].display = "Гидрокортизона ацетат"
* group[=].element[=].target[+].code = #001678
* group[=].element[=].target[=].display = "gidrokortizon"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10606
* group[=].element[=].display = "сорбит"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10665
* group[=].element[=].display = "бикарбонат натрия"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10667
* group[=].element[=].display = "натриевая соль сульфобутилового эфира бета-циклодекстрина"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10675
* group[=].element[=].display = "L-аргинина гидрохлорид"
* group[=].element[=].target[+].code = #000586
* group[=].element[=].target[=].display = "arginin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10682
* group[=].element[=].display = "кальция карбонат 70 с сорбитолом"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10684
* group[=].element[=].display = "Цетиризин дигидрохлорид"
* group[=].element[=].target[+].code = #008506
* group[=].element[=].target[=].display = "setirizin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10685
* group[=].element[=].display = "римантадин гидрохлорид"
* group[=].element[=].target[+].code = #006204
* group[=].element[=].target[=].display = "rimantadin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10686
* group[=].element[=].display = "фенсулкал"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10692
* group[=].element[=].display = "Лидокаина гидрохлорид"
* group[=].element[=].target[+].code = #003735
* group[=].element[=].target[=].display = "lidokain"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10693
* group[=].element[=].display = "Кальция хлорид дигидрат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10694
* group[=].element[=].display = "рабепразол натрия"
* group[=].element[=].target[+].code = #006008
* group[=].element[=].target[=].display = "rabeprazol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10704
* group[=].element[=].display = "цинка сульфат моногидрат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10706
* group[=].element[=].display = "хлоргексидина ацетат"
* group[=].element[=].target[+].code = #008408
* group[=].element[=].target[=].display = "xlorgeksidin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10713
* group[=].element[=].display = "магния лактат дигидрат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10724
* group[=].element[=].display = "Мельдония дигидрат"
* group[=].element[=].target[+].code = #004075
* group[=].element[=].target[=].display = "meldoniy"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10736
* group[=].element[=].display = "декстран 40000"
* group[=].element[=].target[+].code = #002019
* group[=].element[=].target[=].display = "dekstran"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10738
* group[=].element[=].display = "Кармеллоза натрия"
* group[=].element[=].target[+].code = #003157
* group[=].element[=].target[=].display = "karmelloza"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10745
* group[=].element[=].display = "DL-метионин"
* group[=].element[=].target[+].code = #004223
* group[=].element[=].target[=].display = "metionin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10748
* group[=].element[=].display = "цитиколин натрия"
* group[=].element[=].target[+].code = #008792
* group[=].element[=].target[=].display = "sitikolin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10753
* group[=].element[=].display = "преднизолон ацетат"
* group[=].element[=].target[+].code = #005807
* group[=].element[=].target[=].display = "prednizolon"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10754
* group[=].element[=].display = "лауромакрагол 600"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10756
* group[=].element[=].display = "глицерин"
* group[=].element[=].target[+].code = #001767
* group[=].element[=].target[=].display = "glitserol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10770
* group[=].element[=].display = "артикаина гидрохлорид"
* group[=].element[=].target[+].code = #000615
* group[=].element[=].target[=].display = "artikain"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10786
* group[=].element[=].display = "Грамицидина С дигидрохлорид"
* group[=].element[=].target[+].code = #001816
* group[=].element[=].target[=].display = "gramitsidin C"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10823
* group[=].element[=].display = "марганец"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10825
* group[=].element[=].display = "Бортезомиб безводный"
* group[=].element[=].target[+].code = #001099
* group[=].element[=].target[=].display = "bortezomib"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10829
* group[=].element[=].display = "Осельтамивир фосфат"
* group[=].element[=].target[+].code = #005231
* group[=].element[=].target[=].display = "oseltamivir"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10880
* group[=].element[=].display = "бисопролола фумарат"
* group[=].element[=].target[+].code = #001055
* group[=].element[=].target[=].display = "bisoprolol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10900
* group[=].element[=].display = "Цефиксим тригидрат"
* group[=].element[=].target[+].code = #008547
* group[=].element[=].target[=].display = "sefiksim"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10902
* group[=].element[=].display = "Лактитол моногидрат"
* group[=].element[=].target[+].code = #003535
* group[=].element[=].target[=].display = "laktitol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10929
* group[=].element[=].display = "L-триптофан"
* group[=].element[=].target[+].code = #007670
* group[=].element[=].target[=].display = "triptofan"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10930
* group[=].element[=].display = "L-изолейцин"
* group[=].element[=].target[+].code = #002672
* group[=].element[=].target[=].display = "izoleysin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10931
* group[=].element[=].display = "L-лейцин"
* group[=].element[=].target[+].code = #003665
* group[=].element[=].target[=].display = "leysin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10932
* group[=].element[=].display = "L-фенилаланин"
* group[=].element[=].target[+].code = #007914
* group[=].element[=].target[=].display = "fenilalanin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10933
* group[=].element[=].display = "L-валин"
* group[=].element[=].target[+].code = #001318
* group[=].element[=].target[=].display = "valin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10934
* group[=].element[=].display = "L-гистидин"
* group[=].element[=].target[+].code = #001721
* group[=].element[=].target[=].display = "gistidin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10938
* group[=].element[=].display = "Олопатадина гидрохлорид"
* group[=].element[=].target[+].code = #005145
* group[=].element[=].target[=].display = "olopatadin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10943
* group[=].element[=].display = "L-пролин"
* group[=].element[=].target[+].code = #005889
* group[=].element[=].target[=].display = "prolin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10953
* group[=].element[=].display = "диоксид титана (Е171)"
* group[=].element[=].noMap = true
* group[=].element[+].code = #10980
* group[=].element[=].display = "Эсциталопрам оксалат"
* group[=].element[=].target[+].code = #009183
* group[=].element[=].target[=].display = "essitalopram"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #10982
* group[=].element[=].display = "Акалабрутиниб"
* group[=].element[=].target[+].code = #000149
* group[=].element[=].target[=].display = "akalabrutinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #11007
* group[=].element[=].display = "рибоциклиб"
* group[=].element[=].target[+].code = #006164
* group[=].element[=].target[=].display = "ribotsiklib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #11018
* group[=].element[=].display = "Бутамират цитрат"
* group[=].element[=].target[+].code = #001242
* group[=].element[=].target[=].display = "butamirat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11022
* group[=].element[=].display = "Паклитаксел"
* group[=].element[=].target[+].code = #005268
* group[=].element[=].target[=].display = "paklitaksel"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #11063
* group[=].element[=].display = "декстрин"
* group[=].element[=].noMap = true
* group[=].element[+].code = #11069
* group[=].element[=].display = "бацитрацина цинк"
* group[=].element[=].target[+].code = #000812
* group[=].element[=].target[=].display = "batsitratsin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11070
* group[=].element[=].display = "неомицина сульфат"
* group[=].element[=].target[+].code = #004726
* group[=].element[=].target[=].display = "neomitsin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11082
* group[=].element[=].display = "Витамин Е"
* group[=].element[=].noMap = true
* group[=].element[+].code = #11083
* group[=].element[=].display = "L-лизина ацетат"
* group[=].element[=].target[+].code = #003742
* group[=].element[=].target[=].display = "lizin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11093
* group[=].element[=].display = "L-аргинин"
* group[=].element[=].target[+].code = #000586
* group[=].element[=].target[=].display = "arginin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11094
* group[=].element[=].display = "цетиризин гидрохлорид"
* group[=].element[=].target[+].code = #008506
* group[=].element[=].target[=].display = "setirizin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11097
* group[=].element[=].display = "рафинированное масло соевых бобов"
* group[=].element[=].noMap = true
* group[=].element[+].code = #11102
* group[=].element[=].display = "Микрокристаллическая целлюлоза (pH102)"
* group[=].element[=].noMap = true
* group[=].element[+].code = #11151
* group[=].element[=].display = "Дифенилгидрамин гидрохлорид"
* group[=].element[=].target[+].code = #002334
* group[=].element[=].target[=].display = "difengidramin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11152
* group[=].element[=].display = "диклофенак диэтиламина"
* group[=].element[=].target[+].code = #002203
* group[=].element[=].target[=].display = "diklofenak"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11158
* group[=].element[=].display = "Тобрамицина сульфат"
* group[=].element[=].target[+].code = #007426
* group[=].element[=].target[=].display = "tobramitsin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11172
* group[=].element[=].display = "Вонопразан фумарат"
* group[=].element[=].target[+].code = #001492
* group[=].element[=].target[=].display = "vonoprazan"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11173
* group[=].element[=].display = "гидрокортизона натрия сукцинат"
* group[=].element[=].target[+].code = #001678
* group[=].element[=].target[=].display = "gidrokortizon"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11174
* group[=].element[=].display = "хлоропирамина гидрохлорид"
* group[=].element[=].target[+].code = #008424
* group[=].element[=].target[=].display = "xloropiramin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11176
* group[=].element[=].display = "2,4-дихлорбензиловый спирт"
* group[=].element[=].noMap = true
* group[=].element[+].code = #11180
* group[=].element[=].display = "беклометазона дипропионат"
* group[=].element[=].target[+].code = #000844
* group[=].element[=].target[=].display = "beklometazon"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11182
* group[=].element[=].display = "фосфомицин натрия"
* group[=].element[=].target[+].code = #008283
* group[=].element[=].target[=].display = "fosfomitsin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11186
* group[=].element[=].display = "левоцетиризина дигидрохлорид"
* group[=].element[=].target[+].code = #003652
* group[=].element[=].target[=].display = "levotsetirizin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11188
* group[=].element[=].display = "мемантина гидрохлорид"
* group[=].element[=].target[+].code = #004076
* group[=].element[=].target[=].display = "memantin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11197
* group[=].element[=].display = "Сальбутамол сульфат"
* group[=].element[=].target[+].code = #006391
* group[=].element[=].target[=].display = "salbutamol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11199
* group[=].element[=].display = "стерильная вода для инъекций"
* group[=].element[=].noMap = true
* group[=].element[+].code = #11200
* group[=].element[=].display = "Рибонуклеаза"
* group[=].element[=].noMap = true
* group[=].element[+].code = #11204
* group[=].element[=].display = "Солифенацина сукцинат"
* group[=].element[=].target[+].code = #006617
* group[=].element[=].target[=].display = "solifenatsin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11207
* group[=].element[=].display = "тербинафина гидрохлорид"
* group[=].element[=].target[+].code = #007134
* group[=].element[=].target[=].display = "terbinafin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11209
* group[=].element[=].display = "Доксиламина сукцинат"
* group[=].element[=].target[+].code = #002391
* group[=].element[=].target[=].display = "doksilamin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11213
* group[=].element[=].display = "Вортиоксетин гидробромид"
* group[=].element[=].target[+].code = #001503
* group[=].element[=].target[=].display = "vortioksetin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11220
* group[=].element[=].display = "Нетакимаб"
* group[=].element[=].target[+].code = #009337
* group[=].element[=].target[=].display = "netakimab"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #11224
* group[=].element[=].display = "Розувастатин кальция"
* group[=].element[=].target[+].code = #006261
* group[=].element[=].target[=].display = "rozuvastatin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11227
* group[=].element[=].display = "масло укропное"
* group[=].element[=].noMap = true
* group[=].element[+].code = #11235
* group[=].element[=].display = "Хлоргексидин глюконат"
* group[=].element[=].target[+].code = #008408
* group[=].element[=].target[=].display = "xlorgeksidin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11238
* group[=].element[=].display = "иринотекана гидрохлорид тригидрат"
* group[=].element[=].target[+].code = #002965
* group[=].element[=].target[=].display = "irinotekan"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11250
* group[=].element[=].display = "тетракаин гидрохлорид"
* group[=].element[=].target[+].code = #007175
* group[=].element[=].target[=].display = "tetrakain"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11261
* group[=].element[=].display = "эсмалол гидрохлорид"
* group[=].element[=].target[+].code = #009164
* group[=].element[=].target[=].display = "esmolol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11284
* group[=].element[=].display = "лозартан калия"
* group[=].element[=].target[+].code = #003817
* group[=].element[=].target[=].display = "lozartan"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11285
* group[=].element[=].display = "клопидогрел бисульфат"
* group[=].element[=].target[+].code = #003331
* group[=].element[=].target[=].display = "klopidogrel"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11289
* group[=].element[=].display = "Атезолизумаб"
* group[=].element[=].target[+].code = #000649
* group[=].element[=].target[=].display = "atezolizumab"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #11312
* group[=].element[=].display = "Бусерелина ацетат"
* group[=].element[=].target[+].code = #001230
* group[=].element[=].target[=].display = "buserelin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11314
* group[=].element[=].display = "L- Аланин"
* group[=].element[=].target[+].code = #000195
* group[=].element[=].target[=].display = "alanin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11315
* group[=].element[=].display = "L- глютаминовая кислота"
* group[=].element[=].noMap = true
* group[=].element[+].code = #11316
* group[=].element[=].display = "L-Лизин"
* group[=].element[=].target[+].code = #003742
* group[=].element[=].target[=].display = "lizin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11317
* group[=].element[=].display = "L-Глицин"
* group[=].element[=].target[+].code = #001771
* group[=].element[=].target[=].display = "glitsin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11318
* group[=].element[=].display = "Меропенема тригидрата"
* group[=].element[=].target[+].code = #004125
* group[=].element[=].target[=].display = "meropenem"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11319
* group[=].element[=].display = "Калиевая соль висмута субцитрата"
* group[=].element[=].noMap = true
* group[=].element[+].code = #11320
* group[=].element[=].display = "Тетрациклина гидрохлорид"
* group[=].element[=].target[+].code = #007180
* group[=].element[=].target[=].display = "tetratsiklin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11321
* group[=].element[=].display = "Монтелукаст Натрия"
* group[=].element[=].target[+].code = #004487
* group[=].element[=].target[=].display = "montelukast"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11343
* group[=].element[=].display = "Ампициллин натрия"
* group[=].element[=].target[+].code = #000453
* group[=].element[=].target[=].display = "ampitsillin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11378
* group[=].element[=].display = "Пиоглитазона гидрохлорид"
* group[=].element[=].target[+].code = #005568
* group[=].element[=].target[=].display = "pioglitazon"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11382
* group[=].element[=].display = "Цефепима гидрохлорид"
* group[=].element[=].target[+].code = #008541
* group[=].element[=].target[=].display = "sefepim"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11383
* group[=].element[=].display = "Тазобактам натрия"
* group[=].element[=].target[+].code = #006912
* group[=].element[=].target[=].display = "tazobaktam"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11384
* group[=].element[=].display = "Кетамина гидрохлорид"
* group[=].element[=].target[+].code = #003216
* group[=].element[=].target[=].display = "ketamin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11385
* group[=].element[=].display = "Промедола гидрохлорид"
* group[=].element[=].target[+].code = #007647
* group[=].element[=].target[=].display = "trimeperidin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11394
* group[=].element[=].display = "пембролизумаб"
* group[=].element[=].target[+].code = #005383
* group[=].element[=].target[=].display = "pembrolizumab"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #11397
* group[=].element[=].display = "Серная кислота"
* group[=].element[=].noMap = true
* group[=].element[+].code = #11398
* group[=].element[=].display = "Глюкоза моногидрат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #11401
* group[=].element[=].display = "Моксифлоксацинa гидрохлорид"
* group[=].element[=].target[+].code = #004462
* group[=].element[=].target[=].display = "moksifloksatsin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11402
* group[=].element[=].display = "Сульбактам натрия"
* group[=].element[=].target[+].code = #006779
* group[=].element[=].target[=].display = "sulbaktam"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11423
* group[=].element[=].display = "Азеластина гидрохлорид"
* group[=].element[=].target[+].code = #000119
* group[=].element[=].target[=].display = "azelastin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11425
* group[=].element[=].display = "карнитина оротата"
* group[=].element[=].noMap = true
* group[=].element[+].code = #11426
* group[=].element[=].display = "Антитоксической фракции экстракта печени"
* group[=].element[=].noMap = true
* group[=].element[+].code = #11427
* group[=].element[=].display = "аденина гидрохлорида"
* group[=].element[=].noMap = true
* group[=].element[+].code = #11428
* group[=].element[=].display = "бифенилдиметилдикарбоксилат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #11429
* group[=].element[=].display = "Барицитиниб"
* group[=].element[=].target[+].code = #000794
* group[=].element[=].target[=].display = "baritsitinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #11474
* group[=].element[=].display = "3-(2,2,2 - триметилгидразиний) пропионата дигидрат (мельдоний)"
* group[=].element[=].target[+].code = #004075
* group[=].element[=].target[=].display = "meldoniy"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11475
* group[=].element[=].display = "декскетопрофена трометамол"
* group[=].element[=].target[+].code = #001995
* group[=].element[=].target[=].display = "deksketoprofen"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11476
* group[=].element[=].display = "Цефтриаксон натрия"
* group[=].element[=].target[+].code = #008594
* group[=].element[=].target[=].display = "seftriakson"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11477
* group[=].element[=].display = "Прогестерон микронизированный"
* group[=].element[=].target[+].code = #005863
* group[=].element[=].target[=].display = "progesteron"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11483
* group[=].element[=].display = "Азитромицина дигидрата"
* group[=].element[=].target[+].code = #000136
* group[=].element[=].target[=].display = "azitromitsin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11497
* group[=].element[=].display = "Полиэтиленгликоль 4000"
* group[=].element[=].target[+].code = #003949
* group[=].element[=].target[=].display = "makrogol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11499
* group[=].element[=].display = "Нитрофуразон"
* group[=].element[=].target[+].code = #004856
* group[=].element[=].target[=].display = "nitrofural"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11502
* group[=].element[=].display = "нафтифина гидрохлорид"
* group[=].element[=].target[+].code = #004682
* group[=].element[=].target[=].display = "naftifin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11516
* group[=].element[=].display = "Ванкомицин гидрохлорид"
* group[=].element[=].target[+].code = #001347
* group[=].element[=].target[=].display = "vankomitsin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11536
* group[=].element[=].display = "Дапоксетина гидрохлорид"
* group[=].element[=].target[+].code = #001913
* group[=].element[=].target[=].display = "dapoksetin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11547
* group[=].element[=].display = "Раствор лактулозы BP"
* group[=].element[=].target[+].code = #003536
* group[=].element[=].target[=].display = "laktuloza"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11551
* group[=].element[=].display = "Спирт этиловый 96%"
* group[=].element[=].noMap = true
* group[=].element[+].code = #11567
* group[=].element[=].display = "моногидрат кальцифедиола"
* group[=].element[=].target[+].code = #003038
* group[=].element[=].target[=].display = "kalsifediol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11568
* group[=].element[=].display = "Цефуроксима натрия"
* group[=].element[=].target[+].code = #008597
* group[=].element[=].target[=].display = "sefuroksim"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11569
* group[=].element[=].display = "Левофлоксацина гемигидрат"
* group[=].element[=].target[+].code = #003650
* group[=].element[=].target[=].display = "levofloksatsin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11581
* group[=].element[=].display = "Линкомицина гидрохлорид"
* group[=].element[=].target[+].code = #003766
* group[=].element[=].target[=].display = "linkomitsin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11582
* group[=].element[=].display = "Доксазозина мезилата"
* group[=].element[=].target[+].code = #002382
* group[=].element[=].target[=].display = "doksazozin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11602
* group[=].element[=].display = "Фосфомицина трометамол"
* group[=].element[=].target[+].code = #008283
* group[=].element[=].target[=].display = "fosfomitsin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11603
* group[=].element[=].display = "Колестирамин резин"
* group[=].element[=].target[+].code = #003405
* group[=].element[=].target[=].display = "kolestiramin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11633
* group[=].element[=].display = "цефоперазон натриевой соли"
* group[=].element[=].target[+].code = #008566
* group[=].element[=].target[=].display = "sefoperazon"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11634
* group[=].element[=].display = "сульбактам натриевой соли"
* group[=].element[=].noMap = true
* group[=].element[+].code = #11638
* group[=].element[=].display = "Повидон K25"
* group[=].element[=].noMap = true
* group[=].element[+].code = #11640
* group[=].element[=].display = "Кремния диоксид коллоидный безводный"
* group[=].element[=].noMap = true
* group[=].element[+].code = #11648
* group[=].element[=].display = "Никотинамид (витамин В3)"
* group[=].element[=].target[+].code = #004798
* group[=].element[=].target[=].display = "nikotinamid"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11649
* group[=].element[=].display = "Декспантенол (витамин В5)"
* group[=].element[=].target[+].code = #002008
* group[=].element[=].target[=].display = "dekspantenol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11700
* group[=].element[=].display = "Цефоперазон натрия"
* group[=].element[=].target[+].code = #008566
* group[=].element[=].target[=].display = "sefoperazon"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11705
* group[=].element[=].display = "L-метионин"
* group[=].element[=].target[+].code = #004223
* group[=].element[=].target[=].display = "metionin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11713
* group[=].element[=].display = "глицин"
* group[=].element[=].target[+].code = #001771
* group[=].element[=].target[=].display = "glitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #11717
* group[=].element[=].display = "Цефоперазон натрия"
* group[=].element[=].target[+].code = #008566
* group[=].element[=].target[=].display = "sefoperazon"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11718
* group[=].element[=].display = "лоперамид гидрохлорид"
* group[=].element[=].target[+].code = #003847
* group[=].element[=].target[=].display = "loperamid"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11724
* group[=].element[=].display = "Преднизолона натрия фосфат"
* group[=].element[=].target[+].code = #005807
* group[=].element[=].target[=].display = "prednizolon"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11726
* group[=].element[=].display = "Цефепима гидрохлорида моногидрат"
* group[=].element[=].target[+].code = #008541
* group[=].element[=].target[=].display = "sefepim"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11728
* group[=].element[=].display = "магния хлорид гексагидрат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #11729
* group[=].element[=].display = "Напроксен натрия"
* group[=].element[=].target[+].code = #004601
* group[=].element[=].target[=].display = "naproksen"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11733
* group[=].element[=].display = "Амитриптилина гидрохлорид"
* group[=].element[=].target[+].code = #000417
* group[=].element[=].target[=].display = "amitriptilin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11742
* group[=].element[=].display = "Магния стеарат (Li amed-MF-2-V)"
* group[=].element[=].noMap = true
* group[=].element[+].code = #11754
* group[=].element[=].display = "Силденафил (в форме цитрата)"
* group[=].element[=].target[+].code = #006552
* group[=].element[=].target[=].display = "sildenafil"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11756
* group[=].element[=].display = "доксорубицина гидрохлорид"
* group[=].element[=].target[+].code = #002394
* group[=].element[=].target[=].display = "doksorubitsin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11780
* group[=].element[=].display = "Периндоприла эрбумин"
* group[=].element[=].target[+].code = #005462
* group[=].element[=].target[=].display = "perindopril"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11803
* group[=].element[=].display = "Шелуха Исфагула"
* group[=].element[=].noMap = true
* group[=].element[+].code = #11807
* group[=].element[=].display = "Кломифена цитрат"
* group[=].element[=].target[+].code = #003316
* group[=].element[=].target[=].display = "klomifen"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11808
* group[=].element[=].display = "Ципротерона ацетат"
* group[=].element[=].target[+].code = #008768
* group[=].element[=].target[=].display = "siproteron"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11810
* group[=].element[=].display = "Мометазона фуроат"
* group[=].element[=].target[+].code = #004475
* group[=].element[=].target[=].display = "mometazon"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11811
* group[=].element[=].display = "Тербинафин HCl"
* group[=].element[=].target[+].code = #007134
* group[=].element[=].target[=].display = "terbinafin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11822
* group[=].element[=].display = "Ивабрадина гидрохлорид"
* group[=].element[=].target[+].code = #002617
* group[=].element[=].target[=].display = "ivabradin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11841
* group[=].element[=].display = "Амантадина сульфат"
* group[=].element[=].target[+].code = #000343
* group[=].element[=].target[=].display = "amantadin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11853
* group[=].element[=].display = "дифлукортолона валерат"
* group[=].element[=].target[+].code = #002347
* group[=].element[=].target[=].display = "diflukortolon"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11854
* group[=].element[=].display = "Изоконазола нитрат"
* group[=].element[=].target[+].code = #002666
* group[=].element[=].target[=].display = "izokonazol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11857
* group[=].element[=].display = "пентагидрат сульфата меди"
* group[=].element[=].noMap = true
* group[=].element[+].code = #11867
* group[=].element[=].display = "ацикловир натрия"
* group[=].element[=].target[+].code = #000747
* group[=].element[=].target[=].display = "atsiklovir"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11872
* group[=].element[=].display = "бетагистин гидрохлорид"
* group[=].element[=].target[+].code = #000976
* group[=].element[=].target[=].display = "betagistin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11881
* group[=].element[=].display = "Эссенциальные фосфолипиды"
* group[=].element[=].noMap = true
* group[=].element[+].code = #11884
* group[=].element[=].display = "бисопролол гемифумарат"
* group[=].element[=].target[+].code = #001055
* group[=].element[=].target[=].display = "bisoprolol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11889
* group[=].element[=].display = "аторвастатин кальция"
* group[=].element[=].target[+].code = #000668
* group[=].element[=].target[=].display = "atorvastatin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11891
* group[=].element[=].display = "альверина цитрат"
* group[=].element[=].target[+].code = #000215
* group[=].element[=].target[=].display = "alverin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11892
* group[=].element[=].display = "хлоргексидина диглюконат"
* group[=].element[=].target[+].code = #008408
* group[=].element[=].target[=].display = "xlorgeksidin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11898
* group[=].element[=].display = "Водный пероксид бензоила"
* group[=].element[=].noMap = true
* group[=].element[+].code = #11899
* group[=].element[=].display = "гидроксикоболамин"
* group[=].element[=].target[+].code = #001696
* group[=].element[=].target[=].display = "gidroksokobalamin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11901
* group[=].element[=].display = "Ибрутиниб"
* group[=].element[=].target[+].code = #002608
* group[=].element[=].target[=].display = "ibrutinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #11904
* group[=].element[=].display = "Амикацина сульфат"
* group[=].element[=].target[+].code = #000381
* group[=].element[=].target[=].display = "amikatsin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11914
* group[=].element[=].display = "активироованный диметикон"
* group[=].element[=].noMap = true
* group[=].element[+].code = #11915
* group[=].element[=].display = "Гексамидина диизетионат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #11916
* group[=].element[=].display = "фексофенадина гидрохлорид"
* group[=].element[=].target[+].code = #007860
* group[=].element[=].target[=].display = "feksofenadin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11919
* group[=].element[=].display = "глицерин дистиллированного"
* group[=].element[=].target[+].code = #001767
* group[=].element[=].target[=].display = "glitserol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11923
* group[=].element[=].display = "калия йодида"
* group[=].element[=].noMap = true
* group[=].element[+].code = #11935
* group[=].element[=].display = "карбоксиметилкрахмал натрия (натрия крахмал гликолят)"
* group[=].element[=].noMap = true
* group[=].element[+].code = #11939
* group[=].element[=].display = "хлоргексидина биглюконат"
* group[=].element[=].target[+].code = #008408
* group[=].element[=].target[=].display = "xlorgeksidin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11940
* group[=].element[=].display = "Стерильный цефоперазон натрия"
* group[=].element[=].target[+].code = #008566
* group[=].element[=].target[=].display = "sefoperazon"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11941
* group[=].element[=].display = "Стерильный сульбактам натрия"
* group[=].element[=].target[+].code = #006779
* group[=].element[=].target[=].display = "sulbaktam"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11948
* group[=].element[=].display = "Опадрай II белый"
* group[=].element[=].noMap = true
* group[=].element[+].code = #11949
* group[=].element[=].display = "Питофенона гидрохлорид"
* group[=].element[=].target[+].code = #005685
* group[=].element[=].target[=].display = "pitofenon"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #11960
* group[=].element[=].display = "Микофенолата натрия"
* group[=].element[=].target[+].code = #004339
* group[=].element[=].target[=].display = "mikofenol kislotasi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12005
* group[=].element[=].display = "Аргинина гидрохлорид"
* group[=].element[=].target[+].code = #000586
* group[=].element[=].target[=].display = "arginin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12016
* group[=].element[=].display = "Галантамина гидробромид"
* group[=].element[=].target[+].code = #001534
* group[=].element[=].target[=].display = "galantamin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12022
* group[=].element[=].display = "L-аргинина аспартат"
* group[=].element[=].target[+].code = #000586
* group[=].element[=].target[=].display = "arginin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12023
* group[=].element[=].display = "Атракуриума бесилата"
* group[=].element[=].target[+].code = #000672
* group[=].element[=].target[=].display = "atrakuriya bezilat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12037
* group[=].element[=].display = "метопролола сукцинат"
* group[=].element[=].target[+].code = #004253
* group[=].element[=].target[=].display = "metoprolol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12040
* group[=].element[=].display = "ксилометазолина гидрохлорида"
* group[=].element[=].target[+].code = #003500
* group[=].element[=].target[=].display = "ksilometazolin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12061
* group[=].element[=].display = "пеллет омепразола 8.5 %"
* group[=].element[=].target[+].code = #005164
* group[=].element[=].target[=].display = "omeprazol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12086
* group[=].element[=].display = "Повидон йод"
* group[=].element[=].target[+].code = #005713
* group[=].element[=].target[=].display = "povidon"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12088
* group[=].element[=].display = "Хлоргексидина дигидрохлорид"
* group[=].element[=].target[+].code = #008408
* group[=].element[=].target[=].display = "xlorgeksidin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12089
* group[=].element[=].display = "Натрия метабисульфит (Е223)"
* group[=].element[=].noMap = true
* group[=].element[+].code = #12090
* group[=].element[=].display = "Фруктоза -1,6 - дифосфат тринатриевая соль"
* group[=].element[=].target[+].code = #008286
* group[=].element[=].target[=].display = "fosfruktoza"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12095
* group[=].element[=].display = "Кодеина моногидрат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #12096
* group[=].element[=].display = "Морфина гидрохлорида тригидрат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #12139
* group[=].element[=].display = "Стерильный Цефтриаксона натрия"
* group[=].element[=].target[+].code = #008594
* group[=].element[=].target[=].display = "seftriakson"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12146
* group[=].element[=].display = "Итоприда гидрохлорид"
* group[=].element[=].target[+].code = #002992
* group[=].element[=].target[=].display = "itoprid"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12152
* group[=].element[=].display = "Бендазол (дибазол)"
* group[=].element[=].target[+].code = #000882
* group[=].element[=].target[=].display = "bendazol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12159
* group[=].element[=].display = "Натрия метабисульфит"
* group[=].element[=].noMap = true
* group[=].element[+].code = #12161
* group[=].element[=].display = "Эмульсия симетикона"
* group[=].element[=].noMap = true
* group[=].element[+].code = #12164
* group[=].element[=].display = "оксиметазолин гидрохлорид"
* group[=].element[=].target[+].code = #005052
* group[=].element[=].target[=].display = "oksimetazolin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12173
* group[=].element[=].display = "беклометазона дипропионат безводный"
* group[=].element[=].target[+].code = #000844
* group[=].element[=].target[=].display = "beklometazon"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12184
* group[=].element[=].display = "Пробиотическая культура (Lac.helveticus R0052, lactis ssp. lactis R1058, rhamnosus R0011, plantarum R1012, casei R0215, Bif. longum R0175, breve R0070, bifidum R0071, Streptococcus thermophilus R0083)"
* group[=].element[=].noMap = true
* group[=].element[+].code = #12226
* group[=].element[=].display = "бупивакаин гидрохлорид"
* group[=].element[=].target[+].code = #001219
* group[=].element[=].target[=].display = "bupivakain"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12229
* group[=].element[=].display = "Цефазолин натриевой соли стерильной"
* group[=].element[=].target[+].code = #008522
* group[=].element[=].target[=].display = "sefazolin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12255
* group[=].element[=].display = "цефтазидима пентагидрат"
* group[=].element[=].target[+].code = #008581
* group[=].element[=].target[=].display = "seftazidim"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12257
* group[=].element[=].display = "Цефтриаксона натриевой соли стерильной"
* group[=].element[=].target[+].code = #008594
* group[=].element[=].target[=].display = "seftriakson"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12258
* group[=].element[=].display = "ципрофлоксацина гидрохлорида"
* group[=].element[=].target[+].code = #008770
* group[=].element[=].target[=].display = "siprofloksatsin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12259
* group[=].element[=].display = "Парекоксиба натриевая соль"
* group[=].element[=].target[+].code = #005332
* group[=].element[=].target[=].display = "parekoksib"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12265
* group[=].element[=].display = "хлорфенамин малает"
* group[=].element[=].noMap = true
* group[=].element[+].code = #12268
* group[=].element[=].display = "Цефотаксима натриевой соли стерильной"
* group[=].element[=].target[+].code = #008568
* group[=].element[=].target[=].display = "sefotaksim"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12269
* group[=].element[=].display = "Пантопразол натрия"
* group[=].element[=].target[+].code = #005312
* group[=].element[=].target[=].display = "pantoprazol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12270
* group[=].element[=].display = "Азилсартан Камедоксомил"
* group[=].element[=].target[+].code = #000130
* group[=].element[=].target[=].display = "azilsartan medoksomil"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12283
* group[=].element[=].display = "Polymyxin B Sulphate"
* group[=].element[=].noMap = true
* group[=].element[+].code = #12300
* group[=].element[=].display = "Придинол мезилат"
* group[=].element[=].target[+].code = #005834
* group[=].element[=].target[=].display = "pridinol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12304
* group[=].element[=].display = "налтрексон деканоат"
* group[=].element[=].target[+].code = #004580
* group[=].element[=].target[=].display = "naltrekson"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12309
* group[=].element[=].display = "полимиксина B сульфат"
* group[=].element[=].target[+].code = #005739
* group[=].element[=].target[=].display = "polimiksin B"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12316
* group[=].element[=].display = "Хлорамфеникола [DL] (синтомицин)"
* group[=].element[=].target[+].code = #008402
* group[=].element[=].target[=].display = "xloramfenikol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12318
* group[=].element[=].display = "Натрия гидрофосфат дигидрат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #12321
* group[=].element[=].display = "Интраконазол"
* group[=].element[=].target[+].code = #002993
* group[=].element[=].target[=].display = "itrakonazol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12343
* group[=].element[=].display = "Донепезила гидрохлорид"
* group[=].element[=].target[+].code = #002412
* group[=].element[=].target[=].display = "donepezil"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12380
* group[=].element[=].display = "Гистидин гидрохлорид"
* group[=].element[=].target[+].code = #001721
* group[=].element[=].target[=].display = "gistidin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12381
* group[=].element[=].display = "Цистеин"
* group[=].element[=].target[+].code = #008783
* group[=].element[=].target[=].display = "sistein"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #12382
* group[=].element[=].display = "Мометазона фуроат моногидрат"
* group[=].element[=].target[+].code = #004475
* group[=].element[=].target[=].display = "mometazon"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12383
* group[=].element[=].display = "Адеметионина бутандисульфонат"
* group[=].element[=].target[+].code = #000069
* group[=].element[=].target[=].display = "ademetionin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12385
* group[=].element[=].display = "Амантадин гидрохлорид"
* group[=].element[=].target[+].code = #000343
* group[=].element[=].target[=].display = "amantadin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12393
* group[=].element[=].display = "L-Цистин"
* group[=].element[=].target[+].code = #008784
* group[=].element[=].target[=].display = "sistin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12446
* group[=].element[=].display = "Цефтриаксон (в форме натриевой соли)"
* group[=].element[=].target[+].code = #008594
* group[=].element[=].target[=].display = "seftriakson"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12447
* group[=].element[=].display = "Сульбактам (в форме натри-евой соли)"
* group[=].element[=].target[+].code = #006779
* group[=].element[=].target[=].display = "sulbaktam"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12449
* group[=].element[=].display = "Натрия глицирризинат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #12462
* group[=].element[=].display = "Полиоксидоний®  (Азоксимера бромид)"
* group[=].element[=].target[+].code = #000140
* group[=].element[=].target[=].display = "azoksimer bromid"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12464
* group[=].element[=].display = "Ретинола пальмитат 1,7"
* group[=].element[=].noMap = true
* group[=].element[+].code = #12465
* group[=].element[=].display = "Холекальциферол 1Mio ME/g"
* group[=].element[=].noMap = true
* group[=].element[+].code = #12480
* group[=].element[=].display = "Итраконазол (в виде пеллетов)"
* group[=].element[=].target[+].code = #002993
* group[=].element[=].target[=].display = "itrakonazol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12483
* group[=].element[=].display = "Прокаина гидрохлорид"
* group[=].element[=].target[+].code = #005872
* group[=].element[=].target[=].display = "prokain"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12487
* group[=].element[=].display = "умифеновир гидрохлорид"
* group[=].element[=].target[+].code = #007768
* group[=].element[=].target[=].display = "umifenovir"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12517
* group[=].element[=].display = "Левомицетин (хлорамфеникол)"
* group[=].element[=].target[+].code = #008402
* group[=].element[=].target[=].display = "xloramfenikol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12548
* group[=].element[=].display = "Витамин А пальмитат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #12571
* group[=].element[=].display = "цефподоксима проксетил"
* group[=].element[=].target[+].code = #008574
* group[=].element[=].target[=].display = "sefpodoksim"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12589
* group[=].element[=].display = "Циластатина натрия"
* group[=].element[=].target[+].code = #008683
* group[=].element[=].target[=].display = "silastatin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12590
* group[=].element[=].display = "рутин"
* group[=].element[=].target[+].code = #006350
* group[=].element[=].target[=].display = "rutozid"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12641
* group[=].element[=].display = "β-Эсцин"
* group[=].element[=].noMap = true
* group[=].element[+].code = #12674
* group[=].element[=].display = "Лидокаина гидрохлорида моногидрат"
* group[=].element[=].target[+].code = #003735
* group[=].element[=].target[=].display = "lidokain"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12683
* group[=].element[=].display = "Синтомицин"
* group[=].element[=].target[+].code = #008402
* group[=].element[=].target[=].display = "xloramfenikol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12690
* group[=].element[=].display = "Клиндамицина гидрохлорид"
* group[=].element[=].target[+].code = #003266
* group[=].element[=].target[=].display = "klindamitsin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12701
* group[=].element[=].display = "ЭСЦИН"
* group[=].element[=].noMap = true
* group[=].element[+].code = #12706
* group[=].element[=].display = "Нальбуфина гидрохлорида дигидрат"
* group[=].element[=].target[+].code = #004570
* group[=].element[=].target[=].display = "nalbufin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12707
* group[=].element[=].display = "тримебутин малеат"
* group[=].element[=].target[+].code = #007642
* group[=].element[=].target[=].display = "trimebutin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12709
* group[=].element[=].display = "Мепирамина малеат"
* group[=].element[=].target[+].code = #004096
* group[=].element[=].target[=].display = "mepiramin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12717
* group[=].element[=].display = "Эсциталопрам (в виде эсциталопрама оксалата)"
* group[=].element[=].target[+].code = #009183
* group[=].element[=].target[=].display = "essitalopram"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12720
* group[=].element[=].display = "Цетрореликс (в виде цетрореликса ацетата)"
* group[=].element[=].target[+].code = #008517
* group[=].element[=].target[=].display = "setroreliks"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12746
* group[=].element[=].display = "тенофовир алафенамид гемифумарат"
* group[=].element[=].target[+].code = #007115
* group[=].element[=].target[=].display = "tenofovir alafenamid"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12750
* group[=].element[=].display = "Карбомер 974Р"
* group[=].element[=].target[+].code = #003128
* group[=].element[=].target[=].display = "karbomer"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12761
* group[=].element[=].display = "лейпролида ацетат"
* group[=].element[=].target[+].code = #003662
* group[=].element[=].target[=].display = "leyprorelin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12764
* group[=].element[=].display = "Гвоздичное масло"
* group[=].element[=].noMap = true
* group[=].element[+].code = #12781
* group[=].element[=].display = "Диоксид кремния коллоидный"
* group[=].element[=].noMap = true
* group[=].element[+].code = #12812
* group[=].element[=].display = "Дапаглифлозин пропандиол моногидрат"
* group[=].element[=].target[+].code = #001905
* group[=].element[=].target[=].display = "dapagliflozin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12814
* group[=].element[=].display = "Абиратерона ацетат"
* group[=].element[=].target[+].code = #000017
* group[=].element[=].target[=].display = "abirateron"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12822
* group[=].element[=].display = "Витепсол S55"
* group[=].element[=].noMap = true
* group[=].element[+].code = #12825
* group[=].element[=].display = "Безводная лактоза"
* group[=].element[=].noMap = true
* group[=].element[+].code = #12826
* group[=].element[=].display = "Кальций динатрий ЭДТА"
* group[=].element[=].noMap = true
* group[=].element[+].code = #12832
* group[=].element[=].display = "Периндоприл терт-бутиламин"
* group[=].element[=].target[+].code = #005462
* group[=].element[=].target[=].display = "perindopril"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12841
* group[=].element[=].display = "Тетрафторэтан (HFA-134a)"
* group[=].element[=].noMap = true
* group[=].element[+].code = #12842
* group[=].element[=].display = "Метформина гидрохлорид"
* group[=].element[=].target[+].code = #004274
* group[=].element[=].target[=].display = "metformin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12881
* group[=].element[=].display = "Л-лизин гидрохлорид"
* group[=].element[=].target[+].code = #003742
* group[=].element[=].target[=].display = "lizin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12882
* group[=].element[=].display = "натрий эсцинат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #12907
* group[=].element[=].display = "Сульфатиазола натрия гексагидрата"
* group[=].element[=].noMap = true
* group[=].element[+].code = #12923
* group[=].element[=].display = "Клобетазол пропионат"
* group[=].element[=].target[+].code = #003279
* group[=].element[=].target[=].display = "klobetazol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12940
* group[=].element[=].display = "Левосальбутамол Сульфат"
* group[=].element[=].target[+].code = #003641
* group[=].element[=].target[=].display = "levosalbutamol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12957
* group[=].element[=].display = "Долутегравир натрия"
* group[=].element[=].target[+].code = #002402
* group[=].element[=].target[=].display = "dolutegravir"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12960
* group[=].element[=].display = "Гидроксазина гидрохлорид"
* group[=].element[=].target[+].code = #001682
* group[=].element[=].target[=].display = "gidroksizin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12961
* group[=].element[=].display = "Ципрогептадин гидрохлорид"
* group[=].element[=].target[+].code = #008761
* group[=].element[=].target[=].display = "siprogeptadin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #12967
* group[=].element[=].display = "Фенпиверин гидрохлорид"
* group[=].element[=].noMap = true
* group[=].element[+].code = #12981
* group[=].element[=].display = "Салметерола ксинафоат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #12983
* group[=].element[=].display = "Ниволумаб"
* group[=].element[=].target[+].code = #004768
* group[=].element[=].target[=].display = "nivolumab"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #12984
* group[=].element[=].display = "умифеновир"
* group[=].element[=].target[+].code = #007768
* group[=].element[=].target[=].display = "umifenovir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #12985
* group[=].element[=].display = "Меглюминовой соли альфа-липоевой кислоты"
* group[=].element[=].noMap = true
* group[=].element[+].code = #12986
* group[=].element[=].display = "Ситаглиптин"
* group[=].element[=].target[+].code = #006591
* group[=].element[=].target[=].display = "sitagliptin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #13021
* group[=].element[=].display = "Дифенгидрамина  гидрохлорид"
* group[=].element[=].target[+].code = #002334
* group[=].element[=].target[=].display = "difengidramin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13023
* group[=].element[=].display = "Бендазол гидрохлорид"
* group[=].element[=].target[+].code = #000882
* group[=].element[=].target[=].display = "bendazol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13025
* group[=].element[=].display = "Глюкозаминовая соль (6S)-5- метилтетрагидрофолиевой кислоты"
* group[=].element[=].target[+].code = #008227
* group[=].element[=].target[=].display = "foliyevaya kislota"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13026
* group[=].element[=].display = "эналаприла малеат"
* group[=].element[=].target[+].code = #008985
* group[=].element[=].target[=].display = "enalapril"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13027
* group[=].element[=].display = "Пропранолола гидрохлорида"
* group[=].element[=].target[+].code = #005935
* group[=].element[=].target[=].display = "propranolol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13040
* group[=].element[=].display = "Креатин фосфат натрия тетрагидрата"
* group[=].element[=].target[+].code = #008282
* group[=].element[=].target[=].display = "fosfokreatinin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13066
* group[=].element[=].display = "динатрия аденозинтрифосфат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #13067
* group[=].element[=].display = "Кокарбоксилазы хлорид"
* group[=].element[=].target[+].code = #003398
* group[=].element[=].target[=].display = "kokarboksilaza"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13068
* group[=].element[=].display = "Креатин фосфат натрий"
* group[=].element[=].target[+].code = #008282
* group[=].element[=].target[=].display = "fosfokreatinin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13075
* group[=].element[=].display = "Фоллитропин"
* group[=].element[=].target[+].code = #008230
* group[=].element[=].target[=].display = "follitropin alfa"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13079
* group[=].element[=].display = "Левамлодипина малеат"
* group[=].element[=].target[+].code = #003598
* group[=].element[=].target[=].display = "levamlodipin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13080
* group[=].element[=].display = "Куркуцинк"
* group[=].element[=].noMap = true
* group[=].element[+].code = #13093
* group[=].element[=].display = "Ондансетрона гидрохлорид"
* group[=].element[=].target[+].code = #005179
* group[=].element[=].target[=].display = "ondansetron"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13094
* group[=].element[=].display = "L - амлодипина бесилат"
* group[=].element[=].target[+].code = #000431
* group[=].element[=].target[=].display = "amlodipin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13108
* group[=].element[=].display = "эпирубицин гидрохлорид"
* group[=].element[=].target[+].code = #009082
* group[=].element[=].target[=].display = "epirubitsin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13141
* group[=].element[=].display = "Левофлоксацина лактат"
* group[=].element[=].target[+].code = #003650
* group[=].element[=].target[=].display = "levofloksatsin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13142
* group[=].element[=].display = "Адреналин"
* group[=].element[=].noMap = true
* group[=].element[+].code = #13145
* group[=].element[=].display = "карбендацим"
* group[=].element[=].noMap = true
* group[=].element[+].code = #13184
* group[=].element[=].display = "Зофеноприл кальция"
* group[=].element[=].target[+].code = #002589
* group[=].element[=].target[=].display = "zofenopril"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13187
* group[=].element[=].display = "Триметазидина дигидрохлорид"
* group[=].element[=].target[+].code = #007649
* group[=].element[=].target[=].display = "trimetazidin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13197
* group[=].element[=].display = "Бетаметазона дипропионат"
* group[=].element[=].target[+].code = #000983
* group[=].element[=].target[=].display = "betametazon"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13206
* group[=].element[=].display = "Пеметрексед динатрий"
* group[=].element[=].target[+].code = #005386
* group[=].element[=].target[=].display = "pemetreksed"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13207
* group[=].element[=].display = "фруктозо-1 ,б-дифосфат натрия"
* group[=].element[=].target[+].code = #008286
* group[=].element[=].target[=].display = "fosfruktoza"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13220
* group[=].element[=].display = "Глюкозамина сульфат калия хлорид"
* group[=].element[=].target[+].code = #001787
* group[=].element[=].target[=].display = "glyukozamin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13243
* group[=].element[=].display = "L-аспарагин H2O"
* group[=].element[=].noMap = true
* group[=].element[+].code = #13244
* group[=].element[=].display = "L-Орнитин гидрохлорид"
* group[=].element[=].target[+].code = #005218
* group[=].element[=].target[=].display = "ornitin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13246
* group[=].element[=].display = "натрия ацетат 3H2O"
* group[=].element[=].noMap = true
* group[=].element[+].code = #13263
* group[=].element[=].display = "Вортиоксетин (в виде вортиоксетина гидробромида)"
* group[=].element[=].target[+].code = #001503
* group[=].element[=].target[=].display = "vortioksetin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13288
* group[=].element[=].display = "тамсулозин"
* group[=].element[=].target[+].code = #006968
* group[=].element[=].target[=].display = "tamsulozin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #13289
* group[=].element[=].display = "эконазола нитрат"
* group[=].element[=].target[+].code = #008866
* group[=].element[=].target[=].display = "ekonazol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13296
* group[=].element[=].display = "Медь"
* group[=].element[=].noMap = true
* group[=].element[+].code = #13297
* group[=].element[=].display = "бримонидина тартрат"
* group[=].element[=].target[+].code = #001126
* group[=].element[=].target[=].display = "brimonidin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13298
* group[=].element[=].display = "нафтизин"
* group[=].element[=].target[+].code = #004664
* group[=].element[=].target[=].display = "nafazolin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13299
* group[=].element[=].display = "тетризолина гидрохлорид"
* group[=].element[=].target[+].code = #007182
* group[=].element[=].target[=].display = "tetrizolin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13309
* group[=].element[=].display = "Метронидазол бензоат"
* group[=].element[=].target[+].code = #004272
* group[=].element[=].target[=].display = "metronidazol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13314
* group[=].element[=].display = "эстрадиол гемигидрат"
* group[=].element[=].target[+].code = #009171
* group[=].element[=].target[=].display = "estradiol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13315
* group[=].element[=].display = "Сульфат Марганца"
* group[=].element[=].noMap = true
* group[=].element[+].code = #13348
* group[=].element[=].display = "L-цистеин гидрохлорид моногидрат"
* group[=].element[=].target[+].code = #008783
* group[=].element[=].target[=].display = "sistein"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13357
* group[=].element[=].display = "Ципрогептадина ацефиллинат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #13358
* group[=].element[=].display = "DL-карнитина гидрохлорид"
* group[=].element[=].target[+].code = #003164
* group[=].element[=].target[=].display = "karnitin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13359
* group[=].element[=].display = "Деламанид"
* group[=].element[=].target[+].code = #002037
* group[=].element[=].target[=].display = "delamanid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #13366
* group[=].element[=].display = "эрлотиниб гидрохлорид"
* group[=].element[=].target[+].code = #009147
* group[=].element[=].target[=].display = "erlotinib"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13367
* group[=].element[=].display = "Иматиниб мезилат"
* group[=].element[=].target[+].code = #002734
* group[=].element[=].target[=].display = "imatinib"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13368
* group[=].element[=].display = "Тамоксифен цитрат"
* group[=].element[=].target[+].code = #006965
* group[=].element[=].target[=].display = "tamoksifen"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13400
* group[=].element[=].display = "Ибандроната натрия моногидрат"
* group[=].element[=].target[+].code = #002598
* group[=].element[=].target[=].display = "ibandron kislotasi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13401
* group[=].element[=].display = "йод кристаллический"
* group[=].element[=].noMap = true
* group[=].element[+].code = #13409
* group[=].element[=].display = "Рекомбинантный человеческий хорионический гонадотропин альфа"
* group[=].element[=].target[+].code = #008453
* group[=].element[=].target[=].display = "xoriogonadotropin alfa"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13422
* group[=].element[=].display = "Ампициллина натриевая соль"
* group[=].element[=].target[+].code = #000453
* group[=].element[=].target[=].display = "ampitsillin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13424
* group[=].element[=].display = "Элтромбопаг оламин"
* group[=].element[=].target[+].code = #008944
* group[=].element[=].target[=].display = "eltrombopag"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13440
* group[=].element[=].display = "Лотепреднола этабонат"
* group[=].element[=].target[+].code = #003875
* group[=].element[=].target[=].display = "loteprednol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13480
* group[=].element[=].display = "Левоцетризина дигидрохлорид"
* group[=].element[=].target[+].code = #003652
* group[=].element[=].target[=].display = "levotsetirizin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13483
* group[=].element[=].display = "Тиамина Нитрат"
* group[=].element[=].target[+].code = #007226
* group[=].element[=].target[=].display = "tiamin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13484
* group[=].element[=].display = "Эзомепразола магния тригидрат"
* group[=].element[=].target[+].code = #008850
* group[=].element[=].target[=].display = "ezomeprazol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13487
* group[=].element[=].display = "Трамадол гидрохлорид"
* group[=].element[=].target[+].code = #007549
* group[=].element[=].target[=].display = "tramadol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13505
* group[=].element[=].display = "экстракт пассифлоры инкарнатной"
* group[=].element[=].noMap = true
* group[=].element[+].code = #13507
* group[=].element[=].display = "магния L- треонат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #13508
* group[=].element[=].display = "L-метилфолат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #13560
* group[=].element[=].display = "Холина салицилат 80%"
* group[=].element[=].noMap = true
* group[=].element[+].code = #13576
* group[=].element[=].display = "Тенелиглиптина гидробромида гидрат"
* group[=].element[=].target[+].code = #007097
* group[=].element[=].target[=].display = "teneligliptin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13606
* group[=].element[=].display = "метилпарагидроксибензоат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #13616
* group[=].element[=].display = "Ипидакрина гидрохлорид"
* group[=].element[=].target[+].code = #002938
* group[=].element[=].target[=].display = "ipidakrin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13621
* group[=].element[=].display = "Тиоридазина гидрохлорид"
* group[=].element[=].target[+].code = #007366
* group[=].element[=].target[=].display = "tioridazin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13622
* group[=].element[=].display = "L- Карнитин"
* group[=].element[=].target[+].code = #003164
* group[=].element[=].target[=].display = "karnitin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13647
* group[=].element[=].display = "Гидрохлорид Умифеновира"
* group[=].element[=].target[+].code = #007768
* group[=].element[=].target[=].display = "umifenovir"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13648
* group[=].element[=].display = "Метформин 74,63% DC"
* group[=].element[=].target[+].code = #004274
* group[=].element[=].target[=].display = "metformin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13660
* group[=].element[=].display = "Сульфометоксазол"
* group[=].element[=].target[+].code = #006821
* group[=].element[=].target[=].display = "sulfametoksazol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13730
* group[=].element[=].display = "Алимемазина тартрат"
* group[=].element[=].target[+].code = #000249
* group[=].element[=].target[=].display = "alimemazin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13760
* group[=].element[=].display = "Натрия лактат (60%)"
* group[=].element[=].noMap = true
* group[=].element[+].code = #13761
* group[=].element[=].display = "Моноаммонийная соль глицирризиновой кислоты"
* group[=].element[=].noMap = true
* group[=].element[+].code = #13783
* group[=].element[=].display = "Комплекс Сакубитрил Валсартан Натрий"
* group[=].element[=].noMap = true
* group[=].element[+].code = #13800
* group[=].element[=].display = "L- гистидина гидрохлорид"
* group[=].element[=].target[+].code = #001721
* group[=].element[=].target[=].display = "gistidin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13804
* group[=].element[=].display = "Рибоксин (инозин)"
* group[=].element[=].target[+].code = #002817
* group[=].element[=].target[=].display = "inozin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13816
* group[=].element[=].display = "Витамин B6"
* group[=].element[=].noMap = true
* group[=].element[+].code = #13840
* group[=].element[=].display = "Витамина Д3 (холекальциферол)"
* group[=].element[=].target[+].code = #003400
* group[=].element[=].target[=].display = "kolekalsiferol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13885
* group[=].element[=].display = "мебеверина гидрохлорид пеллеты 80%"
* group[=].element[=].target[+].code = #003993
* group[=].element[=].target[=].display = "mebeverin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13887
* group[=].element[=].display = "Эмицизумаб"
* group[=].element[=].target[+].code = #008971
* group[=].element[=].target[=].display = "emitsizumab"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #13888
* group[=].element[=].display = "Тамсулозин гидрохлорид пеллет 0,2 %"
* group[=].element[=].target[+].code = #006968
* group[=].element[=].target[=].display = "tamsulozin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13889
* group[=].element[=].display = "L- глутамин"
* group[=].element[=].target[+].code = #001776
* group[=].element[=].target[=].display = "glutamin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13902
* group[=].element[=].display = "Пантопразола натрия сесквигидрат"
* group[=].element[=].target[+].code = #005312
* group[=].element[=].target[=].display = "pantoprazol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13914
* group[=].element[=].display = "Ампициллин тригидрат"
* group[=].element[=].target[+].code = #000453
* group[=].element[=].target[=].display = "ampitsillin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13915
* group[=].element[=].display = "Мелфалан гидрохлорид"
* group[=].element[=].target[+].code = #004072
* group[=].element[=].target[=].display = "melfalan"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13918
* group[=].element[=].display = "Эссенция ароматическая пищевая"
* group[=].element[=].noMap = true
* group[=].element[+].code = #13924
* group[=].element[=].display = "Меглюмин (N-метилглюкамин)"
* group[=].element[=].noMap = true
* group[=].element[+].code = #13932
* group[=].element[=].display = "Дексаметазона фосфат"
* group[=].element[=].target[+].code = #001980
* group[=].element[=].target[=].display = "deksametazon"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #13988
* group[=].element[=].display = "кальциевая соль гопантеновой кислоты"
* group[=].element[=].target[+].code = #001811
* group[=].element[=].target[=].display = "gopanten kislotasi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #14007
* group[=].element[=].display = "Ситаглиптин фосфат"
* group[=].element[=].target[+].code = #006591
* group[=].element[=].target[=].display = "sitagliptin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #14009
* group[=].element[=].display = "Колекальциферола концентрат"
* group[=].element[=].target[+].code = #003400
* group[=].element[=].target[=].display = "kolekalsiferol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #14071
* group[=].element[=].display = "Леркандипин гидрохлорид"
* group[=].element[=].target[+].code = #003705
* group[=].element[=].target[=].display = "lerkanidipin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #14078
* group[=].element[=].display = "Клопидогрела гидросульфата"
* group[=].element[=].target[+].code = #003331
* group[=].element[=].target[=].display = "klopidogrel"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #14085
* group[=].element[=].display = "Ситаглиптина гидрохлорида моногидрата"
* group[=].element[=].target[+].code = #006591
* group[=].element[=].target[=].display = "sitagliptin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #14126
* group[=].element[=].display = "Медицинские дрожжи"
* group[=].element[=].noMap = true
* group[=].element[+].code = #14127
* group[=].element[=].display = "кератин"
* group[=].element[=].noMap = true
* group[=].element[+].code = #14134
* group[=].element[=].display = "Силденафил цитрат"
* group[=].element[=].target[+].code = #006552
* group[=].element[=].target[=].display = "sildenafil"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #14147
* group[=].element[=].display = "Тейкопланин"
* group[=].element[=].target[+].code = #007044
* group[=].element[=].target[=].display = "teykoplanin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #14181
* group[=].element[=].display = "Кандесартана цилексетил"
* group[=].element[=].target[+].code = #003068
* group[=].element[=].target[=].display = "kandesartan"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #14192
* group[=].element[=].display = "Амлодипинa бесилат"
* group[=].element[=].target[+].code = #000431
* group[=].element[=].target[=].display = "amlodipin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #14194
* group[=].element[=].display = "Эсликарбазепина ацетат"
* group[=].element[=].target[+].code = #009162
* group[=].element[=].target[=].display = "eslikarbazepin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #14221
* group[=].element[=].display = "Небиволола гидрохлорид"
* group[=].element[=].target[+].code = #004690
* group[=].element[=].target[=].display = "nebivolol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #14266
* group[=].element[=].display = "Экстракт прополиса"
* group[=].element[=].noMap = true
* group[=].element[+].code = #14300
* group[=].element[=].display = "Орлистат пеллеты 50%"
* group[=].element[=].target[+].code = #005212
* group[=].element[=].target[=].display = "orlistat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #14301
* group[=].element[=].display = "Клавуланат калия разведенный"
* group[=].element[=].target[+].code = #003230
* group[=].element[=].target[=].display = "klavulon kislotasi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #14358
* group[=].element[=].display = "Целлюлоза микрокристаллическая"
* group[=].element[=].noMap = true
* group[=].element[+].code = #14391
* group[=].element[=].display = "Кремний коллоидный диоксид безводный"
* group[=].element[=].noMap = true
* group[=].element[+].code = #14416
* group[=].element[=].display = "Фруктоза -1,6 - дифосфат натриевая соль"
* group[=].element[=].target[+].code = #008286
* group[=].element[=].target[=].display = "fosfruktoza"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #14471
* group[=].element[=].display = "Лизиноприл дигидрат"
* group[=].element[=].target[+].code = #003743
* group[=].element[=].target[=].display = "lizinopril"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #14472
* group[=].element[=].display = "Двухосновный кальция фосфат дигидрат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #14543
* group[=].element[=].display = "лейпрорелина ацетат"
* group[=].element[=].target[+].code = #003662
* group[=].element[=].target[=].display = "leyprorelin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #14581
* group[=].element[=].display = "фторметолона ацетат"
* group[=].element[=].target[+].code = #008308
* group[=].element[=].target[=].display = "ftormetolon"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #14610
* group[=].element[=].display = "метопролол тартрат"
* group[=].element[=].target[+].code = #004253
* group[=].element[=].target[=].display = "metoprolol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #14613
* group[=].element[=].display = "Кетотифен фумарат"
* group[=].element[=].target[+].code = #003227
* group[=].element[=].target[=].display = "ketotifen"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #14632
* group[=].element[=].display = "Интерферон альфа-2b человеческий"
* group[=].element[=].target[+].code = #002845
* group[=].element[=].target[=].display = "interferon alfa"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #14650
* group[=].element[=].display = "Танина альбуминат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #14651
* group[=].element[=].display = "Этакридина лактата моногидрат"
* group[=].element[=].target[+].code = #009191
* group[=].element[=].target[=].display = "etakridin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #14660
* group[=].element[=].display = "Алверина цитрат"
* group[=].element[=].target[+].code = #000215
* group[=].element[=].target[=].display = "alverin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #14682
* group[=].element[=].display = "Лохопрофен натрий гидрат"
* group[=].element[=].target[+].code = #003827
* group[=].element[=].target[=].display = "loksoprofen"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #14720
* group[=].element[=].display = "Нефопама гидрохлорид"
* group[=].element[=].target[+].code = #004759
* group[=].element[=].target[=].display = "nefopam"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #14761
* group[=].element[=].display = "цефуроксима аксетил"
* group[=].element[=].target[+].code = #008597
* group[=].element[=].target[=].display = "sefuroksim"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #14829
* group[=].element[=].display = "S-амлодипина бесилат"
* group[=].element[=].target[+].code = #000431
* group[=].element[=].target[=].display = "amlodipin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #14865
* group[=].element[=].display = "N(2)-L-аланил-L-глутамин"
* group[=].element[=].noMap = true
* group[=].element[+].code = #14885
* group[=].element[=].display = "Релуголикс"
* group[=].element[=].target[+].code = #006121
* group[=].element[=].target[=].display = "relugoliks"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #14960
* group[=].element[=].display = "Трифлуоперазин гидрохлорид"
* group[=].element[=].target[+].code = #007680
* group[=].element[=].target[=].display = "trifluoperazin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #14969
* group[=].element[=].display = "Ганцикловир натрия"
* group[=].element[=].target[+].code = #001581
* group[=].element[=].target[=].display = "gansiklovir"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #14970
* group[=].element[=].display = "лерканидипина гидрохлорид"
* group[=].element[=].target[+].code = #003705
* group[=].element[=].target[=].display = "lerkanidipin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #15077
* group[=].element[=].display = "Стрептомицина сульфат"
* group[=].element[=].target[+].code = #006738
* group[=].element[=].target[=].display = "streptomitsin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #15129
* group[=].element[=].display = "Розувастатин цинка"
* group[=].element[=].target[+].code = #006261
* group[=].element[=].target[=].display = "rozuvastatin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #15132
* group[=].element[=].display = "Магния стеарат (растительного происхождения)"
* group[=].element[=].noMap = true
* group[=].element[+].code = #15141
* group[=].element[=].display = "Холекальциферол (витамин D3) 100 МЕ/мг"
* group[=].element[=].target[+].code = #003400
* group[=].element[=].target[=].display = "kolekalsiferol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #15160
* group[=].element[=].display = "Цинакальцета гидрохлорид"
* group[=].element[=].target[+].code = #008705
* group[=].element[=].target[=].display = "sinakalset"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #15225
* group[=].element[=].display = "Дибукаина гидрохлорид"
* group[=].element[=].noMap = true
* group[=].element[+].code = #15245
* group[=].element[=].display = "гемцитабин гидрохлорид"
* group[=].element[=].target[+].code = #001642
* group[=].element[=].target[=].display = "gemsitabin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #15305
* group[=].element[=].display = "Фруктоза динатрия фосфат"
* group[=].element[=].target[+].code = #008286
* group[=].element[=].target[=].display = "fosfruktoza"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #15306
* group[=].element[=].display = "5% декстрин+10% крахмальный клейстер"
* group[=].element[=].noMap = true
* group[=].element[+].code = #15307
* group[=].element[=].display = "Пептизированный крахмал"
* group[=].element[=].noMap = true
* group[=].element[+].code = #15313
* group[=].element[=].display = "Амизон® (Энисамиум йодид)"
* group[=].element[=].target[+].code = #009014
* group[=].element[=].target[=].display = "enisamiy yodid"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #15344
* group[=].element[=].display = "верапамила гидрохлорид"
* group[=].element[=].target[+].code = #001398
* group[=].element[=].target[=].display = "verapamil"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #15348
* group[=].element[=].display = "Интерферон альфа-2b человеческий рекомбинантный"
* group[=].element[=].target[+].code = #002845
* group[=].element[=].target[=].display = "interferon alfa"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #15368
* group[=].element[=].display = "Диклофенак натрия 90% гранулы"
* group[=].element[=].target[+].code = #002203
* group[=].element[=].target[=].display = "diklofenak"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #15380
* group[=].element[=].display = "Эпинефрина гидротартрат (адреналина тартрат)"
* group[=].element[=].target[+].code = #009078
* group[=].element[=].target[=].display = "epinefrin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #15381
* group[=].element[=].display = "кабромер"
* group[=].element[=].noMap = true
* group[=].element[+].code = #15382
* group[=].element[=].display = "Дротаверин гидрохлорид порошок (субстанция)"
* group[=].element[=].target[+].code = #002468
* group[=].element[=].target[=].display = "drotaverin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #15383
* group[=].element[=].display = "тиотропия бромид безводный"
* group[=].element[=].target[+].code = #007373
* group[=].element[=].target[=].display = "tiotropiy bromid"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #15387
* group[=].element[=].display = "декспантенол (D-пантенол)"
* group[=].element[=].target[+].code = #002008
* group[=].element[=].target[=].display = "dekspantenol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #15402
* group[=].element[=].display = "Тразодона гидрохлорид"
* group[=].element[=].target[+].code = #007542
* group[=].element[=].target[=].display = "trazodon"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #15414
* group[=].element[=].display = "Бетаметазона валерат"
* group[=].element[=].target[+].code = #000983
* group[=].element[=].target[=].display = "betametazon"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #15537
* group[=].element[=].display = "прохлорперазина малеат"
* group[=].element[=].target[+].code = #005961
* group[=].element[=].target[=].display = "proxlorperazin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #15538
* group[=].element[=].display = "L-аланил-L-глутамин"
* group[=].element[=].noMap = true
* group[=].element[+].code = #15606
* group[=].element[=].display = "Витамин В1 (тиамин мононитрат)"
* group[=].element[=].noMap = true
* group[=].element[+].code = #15616
* group[=].element[=].display = "Динатриевая соль этилендиаминтетрауксусной кислоты (трилона Б)"
* group[=].element[=].noMap = true
* group[=].element[+].code = #15632
* group[=].element[=].display = "железа сульфат безводный"
* group[=].element[=].noMap = true
* group[=].element[+].code = #15668
* group[=].element[=].display = "Медная соль 2-метоксиизобутилизонитрил тетрафторборат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #15678
* group[=].element[=].display = "гидроксихлорохин сульфат"
* group[=].element[=].target[+].code = #001695
* group[=].element[=].target[=].display = "gidroksixloroxin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #15689
* group[=].element[=].display = "Инсулин человеческий рекомбинантный"
* group[=].element[=].target[+].code = #002838
* group[=].element[=].target[=].display = "odam insulini"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #15699
* group[=].element[=].display = "Прогестерон натуральный микронизированный"
* group[=].element[=].target[+].code = #005863
* group[=].element[=].target[=].display = "progesteron"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #15705
* group[=].element[=].display = "Дорзоламида гидрохлорид"
* group[=].element[=].target[+].code = #002426
* group[=].element[=].target[=].display = "dorzolamid"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #15749
* group[=].element[=].display = "этифоксин гидрохлорид"
* group[=].element[=].target[+].code = #009257
* group[=].element[=].target[=].display = "etifoksin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #15798
* group[=].element[=].display = "Пароксетина гидрохлорида гемигидрат"
* group[=].element[=].target[+].code = #005341
* group[=].element[=].target[=].display = "paroksetin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #15840
* group[=].element[=].display = "кислота пипемидовая тригидрат"
* group[=].element[=].target[+].code = #005576
* group[=].element[=].target[=].display = "pipemid kislotasi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #15901
* group[=].element[=].display = "Ипидакрина гидрохлорид моногидрат"
* group[=].element[=].target[+].code = #002938
* group[=].element[=].target[=].display = "ipidakrin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #15903
* group[=].element[=].display = "сульфацил натрия"
* group[=].element[=].target[+].code = #006850
* group[=].element[=].target[=].display = "sulfatsetamid"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #15941
* group[=].element[=].display = "Нафазолина нитрат"
* group[=].element[=].target[+].code = #004664
* group[=].element[=].target[=].display = "nafazolin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #15964
* group[=].element[=].display = "Гранулы Кларитромицин"
* group[=].element[=].target[+].code = #003243
* group[=].element[=].target[=].display = "klaritromitsin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #15965
* group[=].element[=].display = "кветиапина фумарат"
* group[=].element[=].target[+].code = #003207
* group[=].element[=].target[=].display = "kvetiapin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #15966
* group[=].element[=].display = "Кветиапина гемифумарат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #15979
* group[=].element[=].display = "Пирантел памоат"
* group[=].element[=].target[+].code = #005610
* group[=].element[=].target[=].display = "pirantel"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #16000
* group[=].element[=].display = "Аторвастатина кальция тригидрат"
* group[=].element[=].target[+].code = #000668
* group[=].element[=].target[=].display = "atorvastatin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #16005
* group[=].element[=].display = "Фенилпропаноламин гидрохлорид"
* group[=].element[=].target[+].code = #007917
* group[=].element[=].target[=].display = "fenilpropanolamin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #16041
* group[=].element[=].display = "Цетилпиридиния хлорида моногидрат"
* group[=].element[=].target[+].code = #008505
* group[=].element[=].target[=].display = "setilpiridiniy xlorid"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #16043
* group[=].element[=].display = "Бовгиалуронидаза азоксимер"
* group[=].element[=].target[+].code = #001669
* group[=].element[=].target[=].display = "gialuronidaza"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #16061
* group[=].element[=].display = "тейкопланин стерильный"
* group[=].element[=].target[+].code = #007044
* group[=].element[=].target[=].display = "teykoplanin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #16066
* group[=].element[=].display = "разагилина  месилата"
* group[=].element[=].target[+].code = #006023
* group[=].element[=].target[=].display = "razagilin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #16082
* group[=].element[=].display = "Метилпреднизолон натрия сукцинат"
* group[=].element[=].target[+].code = #004204
* group[=].element[=].target[=].display = "metilprednizolon"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #16085
* group[=].element[=].display = "типирацил"
* group[=].element[=].target[+].code = #007381
* group[=].element[=].target[=].display = "tipiratsil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #16092
* group[=].element[=].display = "Бетагистина дигидрохлорид"
* group[=].element[=].target[+].code = #000976
* group[=].element[=].target[=].display = "betagistin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #16098
* group[=].element[=].display = "оксибупрокаина гидрохлорид"
* group[=].element[=].target[+].code = #005037
* group[=].element[=].target[=].display = "oksibuprokain"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #16103
* group[=].element[=].display = "Радионуклид Йода-131"
* group[=].element[=].target[+].code = #004639
* group[=].element[=].target[=].display = "natriy yodid (131I)"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #16111
* group[=].element[=].display = "Нимесулид микронизированный"
* group[=].element[=].target[+].code = #004816
* group[=].element[=].target[=].display = "nimesulid"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #16141
* group[=].element[=].display = "Эпинефрина гидротартрат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #16172
* group[=].element[=].display = "Цитиколина натриевая соль"
* group[=].element[=].target[+].code = #008792
* group[=].element[=].target[=].display = "sitikolin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #16177
* group[=].element[=].display = "Глюкозамина сульфата натриевая соль"
* group[=].element[=].target[+].code = #001787
* group[=].element[=].target[=].display = "glyukozamin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #16184
* group[=].element[=].display = "мебеверина гидрохлорид пеллеты"
* group[=].element[=].target[+].code = #003993
* group[=].element[=].target[=].display = "mebeverin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #16199
* group[=].element[=].display = "Валацикловира гидрохлорид"
* group[=].element[=].target[+].code = #001312
* group[=].element[=].target[=].display = "valatsiklovir"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #16222
* group[=].element[=].display = "Натрия алендронат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #16246
* group[=].element[=].display = "Ибупрофена изобутаноламмония"
* group[=].element[=].target[+].code = #002612
* group[=].element[=].target[=].display = "ibuprofen"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #16287
* group[=].element[=].display = "цианокобаламин (витамин B12)"
* group[=].element[=].target[+].code = #008604
* group[=].element[=].target[=].display = "sianokobalamin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #16289
* group[=].element[=].display = "фторурацил"
* group[=].element[=].target[+].code = #008310
* group[=].element[=].target[=].display = "ftoruratsil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #16298
* group[=].element[=].display = "Винорелбина тартрата"
* group[=].element[=].target[+].code = #001452
* group[=].element[=].target[=].display = "vinorelbin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #16347
* group[=].element[=].display = "Левомепромазина малеат"
* group[=].element[=].target[+].code = #003621
* group[=].element[=].target[=].display = "levomepromazin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #16382
* group[=].element[=].display = "Авибактам натрия"
* group[=].element[=].target[+].code = #000033
* group[=].element[=].target[=].display = "avibaktam"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #16385
* group[=].element[=].display = "Циклопентолата гидрохлорид"
* group[=].element[=].target[+].code = #008656
* group[=].element[=].target[=].display = "siklopentolat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #16401
* group[=].element[=].display = "Алюминия гидроксид гель"
* group[=].element[=].noMap = true
* group[=].element[+].code = #16412
* group[=].element[=].display = "Амитриптилин"
* group[=].element[=].target[+].code = #000417
* group[=].element[=].target[=].display = "amitriptilin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #16417
* group[=].element[=].display = "Амлодипин"
* group[=].element[=].target[+].code = #000431
* group[=].element[=].target[=].display = "amlodipin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #16427
* group[=].element[=].display = "аморолфин"
* group[=].element[=].target[+].code = #000445
* group[=].element[=].target[=].display = "amorolfin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #16433
* group[=].element[=].display = "амоксициллин"
* group[=].element[=].target[+].code = #000439
* group[=].element[=].target[=].display = "amoksitsillin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #16439
* group[=].element[=].display = "ампициллин"
* group[=].element[=].target[+].code = #000453
* group[=].element[=].target[=].display = "ampitsillin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #16442
* group[=].element[=].display = "Донепезила гидрохлорид моногидрат"
* group[=].element[=].target[+].code = #002412
* group[=].element[=].target[=].display = "donepezil"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #16452
* group[=].element[=].display = "Амилметакрезол"
* group[=].element[=].target[+].code = #000384
* group[=].element[=].target[=].display = "amilmetakrezol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #16455
* group[=].element[=].display = "анагрелид"
* group[=].element[=].target[+].code = #000480
* group[=].element[=].target[=].display = "anagrelid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #16459
* group[=].element[=].display = "анастрозол"
* group[=].element[=].target[+].code = #000487
* group[=].element[=].target[=].display = "anastrozol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #16468
* group[=].element[=].display = "габексат мезилат"
* group[=].element[=].target[+].code = #001513
* group[=].element[=].target[=].display = "gabeksat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #16476
* group[=].element[=].display = "Натрия дисульфида"
* group[=].element[=].noMap = true
* group[=].element[+].code = #16489
* group[=].element[=].display = "Красавки листьев экстракт сухой"
* group[=].element[=].noMap = true
* group[=].element[+].code = #16498
* group[=].element[=].display = "Пеллеты тамсулозина гидрохлорида, содержащие тамсулозин"
* group[=].element[=].target[+].code = #006968
* group[=].element[=].target[=].display = "tamsulozin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #16500
* group[=].element[=].display = "Натрия фосфат одноосновной дигидрат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #16515
* group[=].element[=].display = "Ацеклофенак"
* group[=].element[=].target[+].code = #000714
* group[=].element[=].target[=].display = "atseklofenak"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #16521
* group[=].element[=].display = "Амисульприд"
* group[=].element[=].target[+].code = #000412
* group[=].element[=].target[=].display = "amisulprid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #16526
* group[=].element[=].display = "амлодипин"
* group[=].element[=].target[+].code = #000431
* group[=].element[=].target[=].display = "amlodipin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #16536
* group[=].element[=].display = "Ацетазоламид"
* group[=].element[=].target[+].code = #000724
* group[=].element[=].target[=].display = "atsetazolamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #16545
* group[=].element[=].display = "Амитриптилин"
* group[=].element[=].target[+].code = #000417
* group[=].element[=].target[=].display = "amitriptilin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #16547
* group[=].element[=].display = "ацетилцистеин"
* group[=].element[=].target[+].code = #000733
* group[=].element[=].target[=].display = "atsetilsistein"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #16553
* group[=].element[=].display = "Ацикловир"
* group[=].element[=].target[+].code = #000747
* group[=].element[=].target[=].display = "atsiklovir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #16571
* group[=].element[=].display = "Дицикломина гидрохлорид"
* group[=].element[=].target[+].code = #002360
* group[=].element[=].target[=].display = "ditsikloverin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #16583
* group[=].element[=].display = "Ацеклофенак"
* group[=].element[=].target[+].code = #000714
* group[=].element[=].target[=].display = "atseklofenak"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #16586
* group[=].element[=].display = "аморолфин гидрохлорид"
* group[=].element[=].target[+].code = #000445
* group[=].element[=].target[=].display = "amorolfin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #16588
* group[=].element[=].display = "Адапален"
* group[=].element[=].target[+].code = #000059
* group[=].element[=].target[=].display = "adapalen"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #16592
* group[=].element[=].display = "Амиодарон"
* group[=].element[=].target[+].code = #000407
* group[=].element[=].target[=].display = "amiodaron"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #16597
* group[=].element[=].display = "адеметионин"
* group[=].element[=].target[+].code = #000069
* group[=].element[=].target[=].display = "ademetionin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #16613
* group[=].element[=].display = "адреналон"
* group[=].element[=].target[+].code = #000088
* group[=].element[=].target[=].display = "adrenalon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #16631
* group[=].element[=].display = "Настойка прополис"
* group[=].element[=].noMap = true
* group[=].element[+].code = #16639
* group[=].element[=].display = "аланин"
* group[=].element[=].target[+].code = #000195
* group[=].element[=].target[=].display = "alanin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #16645
* group[=].element[=].display = "Албендазол"
* group[=].element[=].target[+].code = #000204
* group[=].element[=].target[=].display = "albendazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #16649
* group[=].element[=].display = "Интерферон альфа-2b рекомбинантный человека"
* group[=].element[=].target[+].code = #002845
* group[=].element[=].target[=].display = "interferon alfa"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #16657
* group[=].element[=].display = "Ацетазоламид,"
* group[=].element[=].target[+].code = #000724
* group[=].element[=].target[=].display = "atsetazolamid"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #16661
* group[=].element[=].display = "адеметионин"
* group[=].element[=].target[+].code = #000069
* group[=].element[=].target[=].display = "ademetionin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #16665
* group[=].element[=].display = "Opadry II White (титана диоксид (E 171), спирт поливинилиловый, полиэтиленгликоль, тальк)"
* group[=].element[=].noMap = true
* group[=].element[+].code = #16672
* group[=].element[=].display = "Сумма экстракта листьев сенны (александрийского листа, содержащего 20% сеннозидов кальция А и В)"
* group[=].element[=].noMap = true
* group[=].element[+].code = #16677
* group[=].element[=].display = "Цефтриаксон двунатриевый"
* group[=].element[=].target[+].code = #008594
* group[=].element[=].target[=].display = "seftriakson"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #16679
* group[=].element[=].display = "Меглумин для доводки рН"
* group[=].element[=].noMap = true
* group[=].element[+].code = #16685
* group[=].element[=].display = "Клавуланат калия+Авицел (1:1)"
* group[=].element[=].noMap = true
* group[=].element[+].code = #16694
* group[=].element[=].display = "алимемазин"
* group[=].element[=].target[+].code = #000249
* group[=].element[=].target[=].display = "alimemazin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #16708
* group[=].element[=].display = "Opadry II yellow 32K520068"
* group[=].element[=].noMap = true
* group[=].element[+].code = #16709
* group[=].element[=].display = "пентол"
* group[=].element[=].noMap = true
* group[=].element[+].code = #16754
* group[=].element[=].display = "Аллопуринол"
* group[=].element[=].target[+].code = #000274
* group[=].element[=].target[=].display = "allopurinol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #16756
* group[=].element[=].display = "Цефоперазон натрия/Сульбактам натрия (1:1)"
* group[=].element[=].noMap = true
* group[=].element[+].code = #16764
* group[=].element[=].display = "Кальций  гопантенат"
* group[=].element[=].target[+].code = #001811
* group[=].element[=].target[=].display = "gopanten kislotasi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #16767
* group[=].element[=].display = "Каспофунгина ацетат"
* group[=].element[=].target[+].code = #003192
* group[=].element[=].target[=].display = "kaspofungin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #16770
* group[=].element[=].display = "Амантадин"
* group[=].element[=].target[+].code = #000343
* group[=].element[=].target[=].display = "amantadin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #16781
* group[=].element[=].display = "амброксол"
* group[=].element[=].target[+].code = #000356
* group[=].element[=].target[=].display = "ambroksol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #16787
* group[=].element[=].display = "Амброксол"
* group[=].element[=].target[+].code = #000356
* group[=].element[=].target[=].display = "ambroksol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #16794
* group[=].element[=].display = "Албендазол"
* group[=].element[=].target[+].code = #000204
* group[=].element[=].target[=].display = "albendazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #16795
* group[=].element[=].display = "Этамбутол гидрохлорид"
* group[=].element[=].target[+].code = #009194
* group[=].element[=].target[=].display = "etambutol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #16823
* group[=].element[=].display = "Амикацин"
* group[=].element[=].target[+].code = #000381
* group[=].element[=].target[=].display = "amikatsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #16825
* group[=].element[=].display = "Фентиконазола нитрат"
* group[=].element[=].target[+].code = #007987
* group[=].element[=].target[=].display = "fentikonazol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #16832
* group[=].element[=].display = "аминокапроновая кислота"
* group[=].element[=].target[+].code = #000394
* group[=].element[=].target[=].display = "aminokapron kislotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #16838
* group[=].element[=].display = "аминофиллин"
* group[=].element[=].target[+].code = #000403
* group[=].element[=].target[=].display = "aminofillin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #16847
* group[=].element[=].display = "Бринзоламид"
* group[=].element[=].target[+].code = #001130
* group[=].element[=].target[=].display = "brinzolamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #16859
* group[=].element[=].display = "алтеплаза"
* group[=].element[=].target[+].code = #000313
* group[=].element[=].target[=].display = "alteplaza"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #16873
* group[=].element[=].display = "бромгексин"
* group[=].element[=].target[+].code = #001157
* group[=].element[=].target[=].display = "bromgeksin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #16900
* group[=].element[=].display = "Аклидиния бромид"
* group[=].element[=].target[+].code = #000158
* group[=].element[=].target[=].display = "aklidiniy bromid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #16917
* group[=].element[=].display = "будесонид"
* group[=].element[=].target[+].code = #001187
* group[=].element[=].target[=].display = "budesonid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #16948
* group[=].element[=].display = "Омепразол пеллеты"
* group[=].element[=].target[+].code = #005164
* group[=].element[=].target[=].display = "omeprazol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #16949
* group[=].element[=].display = "Бупивакаин"
* group[=].element[=].target[+].code = #001219
* group[=].element[=].target[=].display = "bupivakain"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #16958
* group[=].element[=].display = "алпростадил"
* group[=].element[=].target[+].code = #000307
* group[=].element[=].target[=].display = "alprostadil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #16959
* group[=].element[=].display = "карбидопы моногидрат"
* group[=].element[=].target[+].code = #003122
* group[=].element[=].target[=].display = "karbidopa"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #16964
* group[=].element[=].display = "ацефиллина пиперазин"
* group[=].element[=].target[+].code = #000742
* group[=].element[=].target[=].display = "atsefillin piperazin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #16967
* group[=].element[=].display = "Левамизола гидрохлорид"
* group[=].element[=].target[+].code = #003597
* group[=].element[=].target[=].display = "levamizol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #16968
* group[=].element[=].display = "Абрикоса аромат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #16996
* group[=].element[=].display = "бутоконазол"
* group[=].element[=].target[+].code = #001269
* group[=].element[=].target[=].display = "butokonazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17006
* group[=].element[=].display = "Алпразолам"
* group[=].element[=].target[+].code = #000304
* group[=].element[=].target[=].display = "alprazolam"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17012
* group[=].element[=].display = "Полиэтиленгликоль 4000 (макрогол 4000)"
* group[=].element[=].target[+].code = #003949
* group[=].element[=].target[=].display = "makrogol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #17013
* group[=].element[=].display = "Каберголин"
* group[=].element[=].target[+].code = #003010
* group[=].element[=].target[=].display = "kabergolin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17017
* group[=].element[=].display = "Клонидина гидрохлорид (клофелин)"
* group[=].element[=].target[+].code = #003322
* group[=].element[=].target[=].display = "klonidin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #17020
* group[=].element[=].display = "кальцифедиол"
* group[=].element[=].target[+].code = #003038
* group[=].element[=].target[=].display = "kalsifediol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17023
* group[=].element[=].display = "кальцитриол"
* group[=].element[=].target[+].code = #003037
* group[=].element[=].target[=].display = "kalsitriol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17047
* group[=].element[=].display = "апиксабан"
* group[=].element[=].target[+].code = #000546
* group[=].element[=].target[=].display = "apiksaban"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17065
* group[=].element[=].display = "апротинин"
* group[=].element[=].target[+].code = #000567
* group[=].element[=].target[=].display = "aprotinin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17087
* group[=].element[=].display = "аргинин"
* group[=].element[=].target[+].code = #000586
* group[=].element[=].target[=].display = "arginin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17093
* group[=].element[=].display = "арипипразола"
* group[=].element[=].target[+].code = #000595
* group[=].element[=].target[=].display = "aripiprazol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #17111
* group[=].element[=].display = "артикаина"
* group[=].element[=].target[+].code = #000615
* group[=].element[=].target[=].display = "artikain"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #17115
* group[=].element[=].display = "Аскорбиновая кислота"
* group[=].element[=].target[+].code = #000626
* group[=].element[=].target[=].display = "askorbin kislotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17126
* group[=].element[=].display = "аспарагиновая кислота"
* group[=].element[=].target[+].code = #000628
* group[=].element[=].target[=].display = "asparagin kislotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17137
* group[=].element[=].display = "атазанавир"
* group[=].element[=].target[+].code = #000641
* group[=].element[=].target[=].display = "atazanavir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17138
* group[=].element[=].display = "атенолол"
* group[=].element[=].target[+].code = #000651
* group[=].element[=].target[=].display = "atenolol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17154
* group[=].element[=].display = "аторвастатин"
* group[=].element[=].target[+].code = #000668
* group[=].element[=].target[=].display = "atorvastatin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17155
* group[=].element[=].display = "атозибан"
* group[=].element[=].target[+].code = #000670
* group[=].element[=].target[=].display = "atoziban"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17171
* group[=].element[=].display = "авиптадил"
* group[=].element[=].target[+].code = #000037
* group[=].element[=].target[=].display = "aviptadil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17183
* group[=].element[=].display = "акситиниб"
* group[=].element[=].target[+].code = #000179
* group[=].element[=].target[=].display = "aksitinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17188
* group[=].element[=].display = "азацитидин"
* group[=].element[=].target[+].code = #000117
* group[=].element[=].target[=].display = "azatsitidin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17214
* group[=].element[=].display = "азеластин"
* group[=].element[=].target[+].code = #000119
* group[=].element[=].target[=].display = "azelastin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17222
* group[=].element[=].display = "азилсартан медоксомил"
* group[=].element[=].target[+].code = #000130
* group[=].element[=].target[=].display = "azilsartan medoksomil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17227
* group[=].element[=].display = "азитромицин"
* group[=].element[=].target[+].code = #000136
* group[=].element[=].target[=].display = "azitromitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17232
* group[=].element[=].display = "азоксимер бромид"
* group[=].element[=].target[+].code = #000140
* group[=].element[=].target[=].display = "azoksimer bromid"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #17237
* group[=].element[=].display = "баклофен"
* group[=].element[=].target[+].code = #000763
* group[=].element[=].target[=].display = "baklofen"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17271
* group[=].element[=].display = "базиликсимаб"
* group[=].element[=].target[+].code = #000757
* group[=].element[=].target[=].display = "baziliksimab"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17293
* group[=].element[=].display = "беклометазона"
* group[=].element[=].target[+].code = #000844
* group[=].element[=].target[=].display = "beklometazon"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #17335
* group[=].element[=].display = "бенциклан"
* group[=].element[=].target[+].code = #000954
* group[=].element[=].target[=].display = "bensiklan"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17337
* group[=].element[=].display = "бендамустин"
* group[=].element[=].target[+].code = #000884
* group[=].element[=].target[=].display = "bendamustin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17339
* group[=].element[=].display = "бендазол"
* group[=].element[=].target[+].code = #000882
* group[=].element[=].target[=].display = "bendazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17361
* group[=].element[=].display = "бенсеразид"
* group[=].element[=].target[+].code = #000940
* group[=].element[=].target[=].display = "benserazid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17370
* group[=].element[=].display = "бензалкония хлорид"
* group[=].element[=].target[+].code = #000889
* group[=].element[=].target[=].display = "benzalkoniy xlorid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17373
* group[=].element[=].display = "бензатина бензилпенициллин"
* group[=].element[=].target[+].code = #000892
* group[=].element[=].target[=].display = "benzatina benzilpenitsillin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17378
* group[=].element[=].display = "бензетония хлорид"
* group[=].element[=].target[+].code = #000897
* group[=].element[=].target[=].display = "benzetoniy xlorid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17386
* group[=].element[=].display = "бензобарбитал"
* group[=].element[=].target[+].code = #000909
* group[=].element[=].target[=].display = "benzobarbital"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17387
* group[=].element[=].display = "бензокаин"
* group[=].element[=].target[+].code = #000912
* group[=].element[=].target[=].display = "benzokain"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17402
* group[=].element[=].display = "бензидамин"
* group[=].element[=].target[+].code = #000898
* group[=].element[=].target[=].display = "benzidamin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17403
* group[=].element[=].display = "бензиловый спирт"
* group[=].element[=].target[+].code = #000900
* group[=].element[=].target[=].display = "benzilovыy spirt"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #17404
* group[=].element[=].display = "бензилпенициллин"
* group[=].element[=].target[+].code = #000902
* group[=].element[=].target[=].display = "benzilpenitsillin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17434
* group[=].element[=].display = "бетагистин"
* group[=].element[=].target[+].code = #000976
* group[=].element[=].target[=].display = "betagistin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17437
* group[=].element[=].display = "бетаметазон"
* group[=].element[=].target[+].code = #000983
* group[=].element[=].target[=].display = "betametazon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17449
* group[=].element[=].display = "бевацизумаб"
* group[=].element[=].target[+].code = #000815
* group[=].element[=].target[=].display = "bevatsizumab"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17464
* group[=].element[=].display = "бикалутамид"
* group[=].element[=].target[+].code = #001017
* group[=].element[=].target[=].display = "bikalutamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17469
* group[=].element[=].display = "биклотимол"
* group[=].element[=].target[+].code = #001019
* group[=].element[=].target[=].display = "biklotimol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17482
* group[=].element[=].display = "биластин"
* group[=].element[=].target[+].code = #001024
* group[=].element[=].target[=].display = "bilastin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17484
* group[=].element[=].display = "биматопрост"
* group[=].element[=].target[+].code = #001027
* group[=].element[=].target[=].display = "bimatoprost"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17497
* group[=].element[=].display = "биотин"
* group[=].element[=].target[+].code = #001042
* group[=].element[=].target[=].display = "biotin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17503
* group[=].element[=].display = "бисакодил"
* group[=].element[=].target[+].code = #001049
* group[=].element[=].target[=].display = "bisakodil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17513
* group[=].element[=].display = "бисопролол"
* group[=].element[=].target[+].code = #001055
* group[=].element[=].target[=].display = "bisoprolol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17525
* group[=].element[=].display = "блеомицин"
* group[=].element[=].target[+].code = #001075
* group[=].element[=].target[=].display = "bleomitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17542
* group[=].element[=].display = "бортезомиб"
* group[=].element[=].target[+].code = #001099
* group[=].element[=].target[=].display = "bortezomib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17543
* group[=].element[=].display = "бозентан"
* group[=].element[=].noMap = true
* group[=].element[+].code = #17559
* group[=].element[=].display = "бримонидин"
* group[=].element[=].target[+].code = #001126
* group[=].element[=].target[=].display = "brimonidin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17560
* group[=].element[=].display = "клобетазол"
* group[=].element[=].target[+].code = #003279
* group[=].element[=].target[=].display = "klobetazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17577
* group[=].element[=].display = "клофазимин"
* group[=].element[=].target[+].code = #003363
* group[=].element[=].target[=].display = "klofazimin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17605
* group[=].element[=].display = "кломифен"
* group[=].element[=].target[+].code = #003316
* group[=].element[=].target[=].display = "klomifen"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17622
* group[=].element[=].display = "клопидогрел"
* group[=].element[=].target[+].code = #003331
* group[=].element[=].target[=].display = "klopidogrel"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17652
* group[=].element[=].display = "добезилат кальция"
* group[=].element[=].target[+].code = #003042
* group[=].element[=].target[=].display = "kalsiy dobezilat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #17653
* group[=].element[=].display = "фолинат кальция"
* group[=].element[=].target[+].code = #003050
* group[=].element[=].target[=].display = "kalsiy folinat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #17657
* group[=].element[=].display = "пантотенат кальция"
* group[=].element[=].target[+].code = #003047
* group[=].element[=].target[=].display = "kalsiy pantotenat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #17679
* group[=].element[=].display = "кандесартана"
* group[=].element[=].target[+].code = #003068
* group[=].element[=].target[=].display = "kandesartan"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #17693
* group[=].element[=].display = "капецитабин"
* group[=].element[=].target[+].code = #003085
* group[=].element[=].target[=].display = "kapetsitabin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17697
* group[=].element[=].display = "капреомицин"
* group[=].element[=].target[+].code = #003090
* group[=].element[=].target[=].display = "kapreomitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17703
* group[=].element[=].display = "каптоприл"
* group[=].element[=].target[+].code = #003097
* group[=].element[=].target[=].display = "kaptopril"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17710
* group[=].element[=].display = "карбахол"
* group[=].element[=].target[+].code = #003115
* group[=].element[=].target[=].display = "karbaxol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17713
* group[=].element[=].display = "карбамазепин"
* group[=].element[=].target[+].code = #003110
* group[=].element[=].target[=].display = "karbamazepin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17719
* group[=].element[=].display = "карбазохром"
* group[=].element[=].target[+].code = #003106
* group[=].element[=].target[=].display = "karbazoxrom"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17728
* group[=].element[=].display = "карбетоцин"
* group[=].element[=].target[+].code = #003121
* group[=].element[=].target[=].display = "karbetotsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17729
* group[=].element[=].display = "карбидопа"
* group[=].element[=].target[+].code = #003122
* group[=].element[=].target[=].display = "karbidopa"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17731
* group[=].element[=].display = "карбимазол"
* group[=].element[=].target[+].code = #003123
* group[=].element[=].target[=].display = "karbimazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17733
* group[=].element[=].display = "карбоцистеин"
* group[=].element[=].target[+].code = #003134
* group[=].element[=].target[=].display = "karbotsistein"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17739
* group[=].element[=].display = "карбоплатин"
* group[=].element[=].target[+].code = #003130
* group[=].element[=].target[=].display = "karboplatin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17761
* group[=].element[=].display = "карисопродол"
* group[=].element[=].target[+].code = #003147
* group[=].element[=].target[=].display = "karizoprodol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #17771
* group[=].element[=].display = "карнитин"
* group[=].element[=].target[+].code = #003164
* group[=].element[=].target[=].display = "karnitin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17790
* group[=].element[=].display = "карведилол"
* group[=].element[=].target[+].code = #003140
* group[=].element[=].target[=].display = "karvedilol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17796
* group[=].element[=].display = "каспофунгин"
* group[=].element[=].target[+].code = #003192
* group[=].element[=].target[=].display = "kaspofungin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17807
* group[=].element[=].display = "цефаклор"
* group[=].element[=].target[+].code = #008523
* group[=].element[=].target[=].display = "sefaklor"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17821
* group[=].element[=].display = "цефазолин"
* group[=].element[=].target[+].code = #008522
* group[=].element[=].target[=].display = "sefazolin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17828
* group[=].element[=].display = "цефдинир"
* group[=].element[=].target[+].code = #008537
* group[=].element[=].target[=].display = "sefdinir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17832
* group[=].element[=].display = "цефепим"
* group[=].element[=].target[+].code = #008541
* group[=].element[=].target[=].display = "sefepim"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17837
* group[=].element[=].display = "цефиксим"
* group[=].element[=].target[+].code = #008547
* group[=].element[=].target[=].display = "sefiksim"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17846
* group[=].element[=].display = "цефоперазон"
* group[=].element[=].target[+].code = #008566
* group[=].element[=].target[=].display = "sefoperazon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17849
* group[=].element[=].display = "цефотаксим"
* group[=].element[=].target[+].code = #008568
* group[=].element[=].target[=].display = "sefotaksim"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17859
* group[=].element[=].display = "цефподоксим"
* group[=].element[=].target[+].code = #008574
* group[=].element[=].target[=].display = "sefpodoksim"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17860
* group[=].element[=].display = "цефпрозил"
* group[=].element[=].target[+].code = #008575
* group[=].element[=].target[=].display = "sefprozil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17868
* group[=].element[=].display = "цефтазидим"
* group[=].element[=].target[+].code = #008581
* group[=].element[=].target[=].display = "seftazidim"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17879
* group[=].element[=].display = "цефтриаксон"
* group[=].element[=].target[+].code = #008594
* group[=].element[=].target[=].display = "seftriakson"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17881
* group[=].element[=].display = "цефуроксим"
* group[=].element[=].target[+].code = #008597
* group[=].element[=].target[=].display = "sefuroksim"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17883
* group[=].element[=].display = "целекоксиб"
* group[=].element[=].target[+].code = #008465
* group[=].element[=].target[=].display = "selekoksib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17901
* group[=].element[=].display = "цеталкония хлорид"
* group[=].element[=].target[+].code = #008498
* group[=].element[=].target[=].display = "setalkoniy xlorid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17909
* group[=].element[=].display = "цетиризин"
* group[=].element[=].target[+].code = #008506
* group[=].element[=].target[=].display = "setirizin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17920
* group[=].element[=].display = "цетуксимаб"
* group[=].element[=].target[+].code = #008518
* group[=].element[=].target[=].display = "setuksimab"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17921
* group[=].element[=].display = "Цетилпиридиния хлорид"
* group[=].element[=].target[+].code = #008505
* group[=].element[=].target[=].display = "setilpiridiniy xlorid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17932
* group[=].element[=].display = "хлорамфеникол"
* group[=].element[=].target[+].code = #008402
* group[=].element[=].target[=].display = "xloramfenikol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17940
* group[=].element[=].display = "хлоргексидин"
* group[=].element[=].target[+].code = #008408
* group[=].element[=].target[=].display = "xlorgeksidin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17942
* group[=].element[=].display = "хлормадинон"
* group[=].element[=].target[+].code = #008413
* group[=].element[=].target[=].display = "xlormadinon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17950
* group[=].element[=].display = "хлорокрезол"
* group[=].element[=].target[+].code = #008422
* group[=].element[=].target[=].display = "xlorokrezol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17953
* group[=].element[=].display = "хлоропирамин"
* group[=].element[=].target[+].code = #008424
* group[=].element[=].target[=].display = "xloropiramin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17960
* group[=].element[=].display = "хлорфенамин"
* group[=].element[=].target[+].code = #008440
* group[=].element[=].target[=].display = "xlorfenamin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17967
* group[=].element[=].display = "хлорпромазин"
* group[=].element[=].target[+].code = #008433
* group[=].element[=].target[=].display = "xlorpromazin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17971
* group[=].element[=].display = "хлорталидон"
* group[=].element[=].target[+].code = #008437
* group[=].element[=].target[=].display = "xlortalidon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17974
* group[=].element[=].display = "хлорзоксазон"
* group[=].element[=].target[+].code = #008411
* group[=].element[=].target[=].display = "xlorzoksazon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17975
* group[=].element[=].display = "холин альфосцерат"
* group[=].element[=].target[+].code = #008447
* group[=].element[=].target[=].display = "xolina alfosserat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #17979
* group[=].element[=].display = "холин салицилат"
* group[=].element[=].target[+].code = #008449
* group[=].element[=].target[=].display = "xolina salitsilat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #17981
* group[=].element[=].display = "хориогонадотропин альфа"
* group[=].element[=].target[+].code = #008453
* group[=].element[=].target[=].display = "xoriogonadotropin alfa"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17982
* group[=].element[=].display = "гонадотропин хорионический"
* group[=].element[=].target[+].code = #001810
* group[=].element[=].target[=].display = "gonadotropin xorionicheskiy"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #17985
* group[=].element[=].display = "химотрипсин"
* group[=].element[=].target[+].code = #008359
* group[=].element[=].target[=].display = "ximotripsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18014
* group[=].element[=].display = "циклоспорин"
* group[=].element[=].target[+].code = #008666
* group[=].element[=].target[=].display = "siklosporin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18030
* group[=].element[=].display = "циластатин"
* group[=].element[=].target[+].code = #008683
* group[=].element[=].target[=].display = "silastatin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18042
* group[=].element[=].display = "цилостазол"
* group[=].element[=].target[+].code = #008691
* group[=].element[=].target[=].display = "silostazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18053
* group[=].element[=].display = "Цинакальцет"
* group[=].element[=].target[+].code = #008705
* group[=].element[=].target[=].display = "sinakalset"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18060
* group[=].element[=].display = "цинхокаин"
* group[=].element[=].target[+].code = #008747
* group[=].element[=].target[=].display = "sinxokain"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18075
* group[=].element[=].display = "циннаризин"
* group[=].element[=].target[+].code = #008726
* group[=].element[=].target[=].display = "sinnarizin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18103
* group[=].element[=].display = "ципрофлоксацин"
* group[=].element[=].target[+].code = #008770
* group[=].element[=].target[=].display = "siprofloksatsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18114
* group[=].element[=].display = "цисатракурия бесилат"
* group[=].element[=].target[+].code = #008779
* group[=].element[=].target[=].display = "sisatrakuriya bezilat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #18117
* group[=].element[=].display = "цисплатин"
* group[=].element[=].target[+].code = #008782
* group[=].element[=].target[=].display = "sisplatin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18124
* group[=].element[=].display = "цитиколин"
* group[=].element[=].target[+].code = #008792
* group[=].element[=].target[=].display = "sitikolin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18135
* group[=].element[=].display = "кларитромицин"
* group[=].element[=].target[+].code = #003243
* group[=].element[=].target[=].display = "klaritromitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18136
* group[=].element[=].display = "клавулановая кислота"
* group[=].element[=].target[+].code = #003230
* group[=].element[=].target[=].display = "klavulon kislotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18143
* group[=].element[=].display = "клемастин"
* group[=].element[=].target[+].code = #003247
* group[=].element[=].target[=].display = "klemastin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18162
* group[=].element[=].display = "клиндамицин"
* group[=].element[=].target[+].code = #003266
* group[=].element[=].target[=].display = "klindamitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18166
* group[=].element[=].display = "клиохинол"
* group[=].element[=].target[+].code = #003271
* group[=].element[=].target[=].display = "klioxinol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18170
* group[=].element[=].display = "клобазам"
* group[=].element[=].target[+].code = #003274
* group[=].element[=].target[=].display = "klobazam"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18176
* group[=].element[=].display = "диметилсульфоксид"
* group[=].element[=].target[+].code = #002243
* group[=].element[=].target[=].display = "dimetilsulfoksid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18179
* group[=].element[=].display = "диметикон"
* group[=].element[=].target[+].code = #002242
* group[=].element[=].target[=].display = "dimetikon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18180
* group[=].element[=].display = "диметинден малеат"
* group[=].element[=].target[+].code = #002246
* group[=].element[=].target[=].display = "dimetinden"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #18196
* group[=].element[=].display = "динопростон"
* group[=].element[=].target[+].code = #002269
* group[=].element[=].target[=].display = "dinoproston"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18200
* group[=].element[=].display = "диосмин"
* group[=].element[=].target[+].code = #002283
* group[=].element[=].target[=].display = "diosmin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18213
* group[=].element[=].display = "дифенгидрамин"
* group[=].element[=].target[+].code = #002334
* group[=].element[=].target[=].display = "difengidramin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18215
* group[=].element[=].display = "дифенилпиралин"
* group[=].element[=].target[+].code = #002336
* group[=].element[=].target[=].display = "difenilpiralin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18232
* group[=].element[=].display = "дипиридамол"
* group[=].element[=].target[+].code = #002288
* group[=].element[=].target[=].display = "dipiridamol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18252
* group[=].element[=].display = "дисульфирам"
* group[=].element[=].target[+].code = #002314
* group[=].element[=].target[=].display = "disulfiram"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18269
* group[=].element[=].display = "добутамин"
* group[=].element[=].target[+].code = #002373
* group[=].element[=].target[=].display = "dobutamin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18272
* group[=].element[=].display = "доцетаксел"
* group[=].element[=].target[+].code = #002439
* group[=].element[=].target[=].display = "dotsetaksel"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18278
* group[=].element[=].display = "дофамина гидрохлорид"
* group[=].element[=].target[+].code = #002416
* group[=].element[=].target[=].display = "dopamin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #18291
* group[=].element[=].display = "домперидон"
* group[=].element[=].target[+].code = #002411
* group[=].element[=].target[=].display = "domperidon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18292
* group[=].element[=].display = "донепезил"
* group[=].element[=].target[+].code = #002412
* group[=].element[=].target[=].display = "donepezil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18296
* group[=].element[=].display = "допамин"
* group[=].element[=].target[+].code = #002416
* group[=].element[=].target[=].display = "dopamin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18306
* group[=].element[=].display = "дорипенем"
* group[=].element[=].target[+].code = #002427
* group[=].element[=].target[=].display = "doripenem"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18309
* group[=].element[=].display = "дорзоламид"
* group[=].element[=].target[+].code = #002426
* group[=].element[=].target[=].display = "dorzolamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18320
* group[=].element[=].display = "доксазозин"
* group[=].element[=].target[+].code = #002382
* group[=].element[=].target[=].display = "doksazozin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18327
* group[=].element[=].display = "доксофиллин"
* group[=].element[=].target[+].code = #002395
* group[=].element[=].target[=].display = "doksofillin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18328
* group[=].element[=].display = "доксорубицин"
* group[=].element[=].target[+].code = #002394
* group[=].element[=].target[=].display = "doksorubitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18330
* group[=].element[=].display = "доксициклин"
* group[=].element[=].target[+].code = #002393
* group[=].element[=].target[=].display = "doksitsiklin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18331
* group[=].element[=].display = "доксиламин"
* group[=].element[=].target[+].code = #002391
* group[=].element[=].target[=].display = "doksilamin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18348
* group[=].element[=].display = "дроперидол"
* group[=].element[=].target[+].code = #002463
* group[=].element[=].target[=].display = "droperidol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18364
* group[=].element[=].display = "клотримазол"
* group[=].element[=].target[+].code = #003362
* group[=].element[=].target[=].display = "klotrimazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18374
* group[=].element[=].display = "клозапин"
* group[=].element[=].target[+].code = #003293
* group[=].element[=].target[=].display = "klozapin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18377
* group[=].element[=].display = "кокарбоксилаза"
* group[=].element[=].target[+].code = #003398
* group[=].element[=].target[=].display = "kokarboksilaza"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18382
* group[=].element[=].display = "Колекальциферол"
* group[=].element[=].target[+].code = #003400
* group[=].element[=].target[=].display = "kolekalsiferol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18394
* group[=].element[=].display = "колистиметат натрия"
* group[=].element[=].target[+].code = #003409
* group[=].element[=].target[=].display = "kolistin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #18395
* group[=].element[=].display = "колистин"
* group[=].element[=].target[+].code = #003409
* group[=].element[=].target[=].display = "kolistin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18399
* group[=].element[=].display = "натрия хлорид"
* group[=].element[=].noMap = true
* group[=].element[+].code = #18424
* group[=].element[=].display = "креатинолфосфат"
* group[=].element[=].target[+].code = #008282
* group[=].element[=].target[=].display = "fosfokreatinin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #18442
* group[=].element[=].display = "кросповидон"
* group[=].element[=].target[+].code = #003465
* group[=].element[=].target[=].display = "krospovidon"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #18454
* group[=].element[=].display = "цианокобаламин"
* group[=].element[=].target[+].code = #008604
* group[=].element[=].target[=].display = "sianokobalamin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18476
* group[=].element[=].display = "циклофосфамид"
* group[=].element[=].target[+].code = #008673
* group[=].element[=].target[=].display = "siklofosfamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18480
* group[=].element[=].display = "циклосерин"
* group[=].element[=].target[+].code = #008664
* group[=].element[=].target[=].display = "sikloserin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18492
* group[=].element[=].display = "ципрогептадин"
* group[=].element[=].target[+].code = #008761
* group[=].element[=].target[=].display = "siprogeptadin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18494
* group[=].element[=].display = "ципротерон"
* group[=].element[=].target[+].code = #008768
* group[=].element[=].target[=].display = "siproteron"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18496
* group[=].element[=].display = "L-цистеин гидрохлорид"
* group[=].element[=].target[+].code = #008783
* group[=].element[=].target[=].display = "sistein"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #18498
* group[=].element[=].display = "цитарабин"
* group[=].element[=].target[+].code = #008787
* group[=].element[=].target[=].display = "sitarabin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18501
* group[=].element[=].display = "дабигатран этексилат"
* group[=].element[=].target[+].code = #001847
* group[=].element[=].target[=].display = "dabigatrana eteksilat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #18503
* group[=].element[=].display = "дакарбазин"
* group[=].element[=].target[+].code = #001866
* group[=].element[=].target[=].display = "dakarbazin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18521
* group[=].element[=].display = "дальтепарин натрия"
* group[=].element[=].target[+].code = #001884
* group[=].element[=].target[=].display = "dalteparin natriy"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #18538
* group[=].element[=].display = "дапаглифлозин"
* group[=].element[=].target[+].code = #001905
* group[=].element[=].target[=].display = "dapagliflozin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18544
* group[=].element[=].display = "дапоксетин"
* group[=].element[=].target[+].code = #001913
* group[=].element[=].target[=].display = "dapoksetin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18546
* group[=].element[=].display = "даптомицин"
* group[=].element[=].target[+].code = #001917
* group[=].element[=].target[=].display = "daptomitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18559
* group[=].element[=].display = "дарунавир"
* group[=].element[=].target[+].code = #001932
* group[=].element[=].target[=].display = "darunavir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18562
* group[=].element[=].display = "дазатиниб"
* group[=].element[=].target[+].code = #001857
* group[=].element[=].target[=].display = "dazatinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18594
* group[=].element[=].display = "деферазирокс"
* group[=].element[=].target[+].code = #002126
* group[=].element[=].target[=].display = "deferaziroks"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18635
* group[=].element[=].display = "демокситоцин"
* group[=].element[=].target[+].code = #002072
* group[=].element[=].target[=].display = "demoksitotsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18656
* group[=].element[=].display = "Деквалиния хлорид"
* group[=].element[=].target[+].code = #001973
* group[=].element[=].target[=].display = "dekvaliniy xlorid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18672
* group[=].element[=].display = "дезлоратадин"
* group[=].element[=].target[+].code = #001960
* group[=].element[=].target[=].display = "dezloratadin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18676
* group[=].element[=].display = "десмопрессин"
* group[=].element[=].target[+].code = #002106
* group[=].element[=].target[=].display = "desmopressin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18679
* group[=].element[=].display = "дезогестрел"
* group[=].element[=].target[+].code = #001965
* group[=].element[=].target[=].display = "dezogestrel"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18698
* group[=].element[=].display = "дексаметазон"
* group[=].element[=].target[+].code = #001980
* group[=].element[=].target[=].display = "deksametazon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18714
* group[=].element[=].display = "дексибупрофен"
* group[=].element[=].target[+].code = #001990
* group[=].element[=].target[=].display = "deksibuprofen"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18718
* group[=].element[=].display = "декскетопрофен"
* group[=].element[=].target[+].code = #001995
* group[=].element[=].target[=].display = "deksketoprofen"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18719
* group[=].element[=].display = "декслансопразола"
* group[=].element[=].target[+].code = #001997
* group[=].element[=].target[=].display = "dekslansoprazol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #18722
* group[=].element[=].display = "дексмедетомидин"
* group[=].element[=].target[+].code = #002000
* group[=].element[=].target[=].display = "deksmedetomidin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18729
* group[=].element[=].display = "декспантенол"
* group[=].element[=].target[+].code = #002008
* group[=].element[=].target[=].display = "dekspantenol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18739
* group[=].element[=].display = "декстран"
* group[=].element[=].target[+].code = #002019
* group[=].element[=].target[=].display = "dekstran"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18743
* group[=].element[=].display = "декстрометорфан"
* group[=].element[=].target[+].code = #002022
* group[=].element[=].target[=].display = "dekstrometorfan"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18752
* group[=].element[=].display = "диацереин"
* group[=].element[=].target[+].code = #002153
* group[=].element[=].target[=].display = "diatserein"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18763
* group[=].element[=].display = "диазепам"
* group[=].element[=].target[+].code = #002142
* group[=].element[=].target[=].display = "diazepam"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18789
* group[=].element[=].display = "диклофенак"
* group[=].element[=].target[+].code = #002203
* group[=].element[=].target[=].display = "diklofenak"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18801
* group[=].element[=].display = "Дицикловерин"
* group[=].element[=].target[+].code = #002360
* group[=].element[=].target[=].display = "ditsikloverin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18806
* group[=].element[=].display = "диеногест"
* group[=].element[=].target[+].code = #002182
* group[=].element[=].target[=].display = "diyenogest"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18828
* group[=].element[=].display = "Дифлукортолон"
* group[=].element[=].target[+].code = #002347
* group[=].element[=].target[=].display = "diflukortolon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18835
* group[=].element[=].display = "дигоксин"
* group[=].element[=].target[+].code = #002177
* group[=].element[=].target[=].display = "digoksin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18837
* group[=].element[=].display = "дигидралазин"
* group[=].element[=].target[+].code = #002171
* group[=].element[=].target[=].display = "digidralazin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18861
* group[=].element[=].display = "дименгидринат"
* group[=].element[=].target[+].code = #002231
* group[=].element[=].target[=].display = "dimengidrinat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18910
* group[=].element[=].display = "фенофибрат"
* group[=].element[=].target[+].code = #007966
* group[=].element[=].target[=].display = "fenofibrat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18913
* group[=].element[=].display = "фенотерол"
* group[=].element[=].target[+].code = #007963
* group[=].element[=].target[=].display = "fenoterol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18924
* group[=].element[=].display = "фенпивериния бромид"
* group[=].element[=].target[+].code = #007970
* group[=].element[=].target[=].display = "fenpiveriniy bromid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18930
* group[=].element[=].display = "фенспирид"
* group[=].element[=].target[+].code = #007981
* group[=].element[=].target[=].display = "fenspirid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18931
* group[=].element[=].display = "фентанил"
* group[=].element[=].target[+].code = #007983
* group[=].element[=].target[=].display = "fentanil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18934
* group[=].element[=].display = "фентиконазол"
* group[=].element[=].target[+].code = #007987
* group[=].element[=].target[=].display = "fentikonazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18958
* group[=].element[=].display = "фексофенадин"
* group[=].element[=].target[+].code = #007860
* group[=].element[=].target[=].display = "feksofenadin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18965
* group[=].element[=].display = "дроспиренон"
* group[=].element[=].target[+].code = #002466
* group[=].element[=].target[=].display = "drospirenon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18967
* group[=].element[=].display = "дротаверин"
* group[=].element[=].target[+].code = #002468
* group[=].element[=].target[=].display = "drotaverin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18979
* group[=].element[=].display = "дулоксетин"
* group[=].element[=].target[+].code = #002480
* group[=].element[=].target[=].display = "duloksetin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18986
* group[=].element[=].display = "дутастерид"
* group[=].element[=].target[+].code = #002491
* group[=].element[=].target[=].display = "dutasterid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18990
* group[=].element[=].display = "дидрогестерон"
* group[=].element[=].target[+].code = #002181
* group[=].element[=].target[=].display = "didrogesteron"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #18992
* group[=].element[=].display = "эбастин"
* group[=].element[=].target[+].code = #008796
* group[=].element[=].target[=].display = "ebastin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19010
* group[=].element[=].display = "эконазол"
* group[=].element[=].target[+].code = #008866
* group[=].element[=].target[=].display = "ekonazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19020
* group[=].element[=].display = "эдаравон"
* group[=].element[=].target[+].code = #008821
* group[=].element[=].target[=].display = "edaravon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19044
* group[=].element[=].display = "эфавиренз"
* group[=].element[=].target[+].code = #009308
* group[=].element[=].target[=].display = "efavirenz"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19050
* group[=].element[=].display = "эфлорнитин"
* group[=].element[=].target[+].code = #009321
* group[=].element[=].target[=].display = "eflornitin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19074
* group[=].element[=].display = "элетриптан"
* group[=].element[=].target[+].code = #008913
* group[=].element[=].target[=].display = "eletriptan"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19097
* group[=].element[=].display = "элтромбопаг"
* group[=].element[=].target[+].code = #008944
* group[=].element[=].target[=].display = "eltrombopag"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19123
* group[=].element[=].display = "эмтрицитабин"
* group[=].element[=].target[+].code = #008979
* group[=].element[=].target[=].display = "emtritsitabin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19126
* group[=].element[=].display = "эналаприл"
* group[=].element[=].target[+].code = #008985
* group[=].element[=].target[=].display = "enalapril"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19127
* group[=].element[=].display = "эналаприлат"
* group[=].element[=].target[+].code = #008985
* group[=].element[=].target[=].display = "enalapril"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #19153
* group[=].element[=].display = "Энисамиум йодид"
* group[=].element[=].target[+].code = #009014
* group[=].element[=].target[=].display = "enisamiy yodid"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #19163
* group[=].element[=].display = "эноксапарин натрия"
* group[=].element[=].target[+].code = #009026
* group[=].element[=].target[=].display = "enoksaparin natriy"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19165
* group[=].element[=].display = "эноксолон"
* group[=].element[=].target[+].code = #009029
* group[=].element[=].target[=].display = "enoksolon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19187
* group[=].element[=].display = "эпалрестат"
* group[=].element[=].target[+].code = #009064
* group[=].element[=].target[=].display = "epalrestat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19199
* group[=].element[=].display = "эпинефрин"
* group[=].element[=].target[+].code = #009078
* group[=].element[=].target[=].display = "epinefrin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19203
* group[=].element[=].display = "эпирубицин"
* group[=].element[=].target[+].code = #009082
* group[=].element[=].target[=].display = "epirubitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19208
* group[=].element[=].display = "эплеренон"
* group[=].element[=].target[+].code = #009089
* group[=].element[=].target[=].display = "eplerenon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19210
* group[=].element[=].display = "эпоэтин альфа"
* group[=].element[=].target[+].code = #009094
* group[=].element[=].target[=].display = "epoetin alfa"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19211
* group[=].element[=].display = "эпоэтин бета"
* group[=].element[=].target[+].code = #009095
* group[=].element[=].target[=].display = "epoetin beta"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19245
* group[=].element[=].display = "эрдостеин"
* group[=].element[=].target[+].code = #009134
* group[=].element[=].target[=].display = "erdostein"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19246
* group[=].element[=].display = "эргокальциферол"
* group[=].element[=].target[+].code = #009130
* group[=].element[=].target[=].display = "ergokalsiferol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19256
* group[=].element[=].display = "эрлотиниб"
* group[=].element[=].target[+].code = #009147
* group[=].element[=].target[=].display = "erlotinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19263
* group[=].element[=].display = "эритромицин"
* group[=].element[=].target[+].code = #009143
* group[=].element[=].target[=].display = "eritromitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19269
* group[=].element[=].display = "эсциталопрам"
* group[=].element[=].target[+].code = #009183
* group[=].element[=].target[=].display = "essitalopram"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19277
* group[=].element[=].display = "эсмолол"
* group[=].element[=].target[+].code = #009164
* group[=].element[=].target[=].display = "esmolol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19278
* group[=].element[=].display = "эзомепразол"
* group[=].element[=].target[+].code = #008850
* group[=].element[=].target[=].display = "ezomeprazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19287
* group[=].element[=].display = "эстрадиол"
* group[=].element[=].target[+].code = #009171
* group[=].element[=].target[=].display = "estradiol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19290
* group[=].element[=].display = "эстрадиол валерат"
* group[=].element[=].target[+].code = #009173
* group[=].element[=].target[=].display = "estradiola valerat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #19296
* group[=].element[=].display = "эстрон"
* group[=].element[=].target[+].code = #009179
* group[=].element[=].target[=].display = "estron"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19311
* group[=].element[=].display = "этамзилат"
* group[=].element[=].target[+].code = #009195
* group[=].element[=].target[=].display = "etamzilat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19312
* group[=].element[=].display = "этанерцепт"
* group[=].element[=].target[+].code = #009201
* group[=].element[=].target[=].display = "etanersept"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19325
* group[=].element[=].display = "этамбутол"
* group[=].element[=].target[+].code = #009194
* group[=].element[=].target[=].display = "etambutol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19331
* group[=].element[=].display = "этинилэстрадиол"
* group[=].element[=].target[+].code = #009240
* group[=].element[=].target[=].display = "etinilestradiol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19375
* group[=].element[=].display = "этодолак"
* group[=].element[=].target[+].code = #009261
* group[=].element[=].target[=].display = "etodolak"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19378
* group[=].element[=].display = "этофенамат"
* group[=].element[=].target[+].code = #009290
* group[=].element[=].target[=].display = "etofenamat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19394
* group[=].element[=].display = "этоногестрел"
* group[=].element[=].target[+].code = #009280
* group[=].element[=].target[=].display = "etonogestrel"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19396
* group[=].element[=].display = "этопозид"
* group[=].element[=].target[+].code = #009282
* group[=].element[=].target[=].display = "etopozid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19398
* group[=].element[=].display = "эторикоксиб"
* group[=].element[=].target[+].code = #009284
* group[=].element[=].target[=].display = "etorikoksib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19419
* group[=].element[=].display = "эверолимус"
* group[=].element[=].target[+].code = #008806
* group[=].element[=].target[=].display = "everolimus"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19427
* group[=].element[=].display = "эксеместан"
* group[=].element[=].target[+].code = #008879
* group[=].element[=].target[=].display = "eksemestan"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19434
* group[=].element[=].display = "эзетимиб"
* group[=].element[=].target[+].code = #008848
* group[=].element[=].target[=].display = "ezetimib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19443
* group[=].element[=].display = "фамцикловир"
* group[=].element[=].target[+].code = #007822
* group[=].element[=].target[=].display = "famsiklovir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19445
* group[=].element[=].display = "фамотидин"
* group[=].element[=].target[+].code = #007817
* group[=].element[=].target[=].display = "famotidin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19468
* group[=].element[=].display = "фавипиравир"
* group[=].element[=].target[+].code = #007799
* group[=].element[=].target[=].display = "favipiravir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19476
* group[=].element[=].display = "фебуксостат"
* group[=].element[=].target[+].code = #007843
* group[=].element[=].target[=].display = "febuksostat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19484
* group[=].element[=].display = "фелодипин"
* group[=].element[=].target[+].code = #007866
* group[=].element[=].target[=].display = "felodipin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19506
* group[=].element[=].display = "гистидин"
* group[=].element[=].target[+].code = #001721
* group[=].element[=].target[=].display = "gistidin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19516
* group[=].element[=].display = "гопантеновая кислота"
* group[=].element[=].target[+].code = #001811
* group[=].element[=].target[=].display = "gopanten kislotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19519
* group[=].element[=].display = "гиалуронидаза"
* group[=].element[=].target[+].code = #001669
* group[=].element[=].target[=].display = "gialuronidaza"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19526
* group[=].element[=].display = "гидрохлортиазид"
* group[=].element[=].target[+].code = #001702
* group[=].element[=].target[=].display = "gidroxlorotiazid"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #19529
* group[=].element[=].display = "гидрокортизон"
* group[=].element[=].target[+].code = #001678
* group[=].element[=].target[=].display = "gidrokortizon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19535
* group[=].element[=].display = "Гидроталцит"
* group[=].element[=].target[+].code = #001700
* group[=].element[=].target[=].display = "gidrotalsit"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19538
* group[=].element[=].display = "гидроксокобаламин"
* group[=].element[=].target[+].code = #001696
* group[=].element[=].target[=].display = "gidroksokobalamin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19540
* group[=].element[=].display = "гидроксикарбамид"
* group[=].element[=].target[+].code = #001683
* group[=].element[=].target[=].display = "gidroksikarbamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19541
* group[=].element[=].display = "гидроксихлорохин"
* group[=].element[=].target[+].code = #001695
* group[=].element[=].target[=].display = "gidroksixloroxin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19546
* group[=].element[=].display = "гидроксипрогестерона капронат"
* group[=].element[=].target[+].code = #001689
* group[=].element[=].target[=].display = "gidroksiprogesterona kaproat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #19552
* group[=].element[=].display = "гидроксизин"
* group[=].element[=].target[+].code = #001682
* group[=].element[=].target[=].display = "gidroksizin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19557
* group[=].element[=].display = "Гипромеллоза"
* group[=].element[=].target[+].code = #001713
* group[=].element[=].target[=].display = "gipromelloza"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19561
* group[=].element[=].display = "ибандроновая кислота"
* group[=].element[=].target[+].code = #002598
* group[=].element[=].target[=].display = "ibandron kislotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19572
* group[=].element[=].display = "Ибупрофен"
* group[=].element[=].target[+].code = #002612
* group[=].element[=].target[=].display = "ibuprofen"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19594
* group[=].element[=].display = "идебенон"
* group[=].element[=].target[+].code = #002633
* group[=].element[=].target[=].display = "idebenon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19597
* group[=].element[=].display = "идоксуридин"
* group[=].element[=].target[+].code = #002637
* group[=].element[=].target[=].display = "idoksuridin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19611
* group[=].element[=].display = "ифосфамид"
* group[=].element[=].target[+].code = #003006
* group[=].element[=].target[=].display = "ifosfamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19631
* group[=].element[=].display = "иматиниб"
* group[=].element[=].target[+].code = #002734
* group[=].element[=].target[=].display = "imatinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19650
* group[=].element[=].display = "имипенем"
* group[=].element[=].target[+].code = #002753
* group[=].element[=].target[=].display = "imipenem"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19653
* group[=].element[=].display = "имиквимод"
* group[=].element[=].target[+].code = #002758
* group[=].element[=].target[=].display = "imiximod"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #19675
* group[=].element[=].display = "Индапамид"
* group[=].element[=].target[+].code = #002781
* group[=].element[=].target[=].display = "indapamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19690
* group[=].element[=].display = "филграстим"
* group[=].element[=].target[+].code = #008030
* group[=].element[=].target[=].display = "filgrastim"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19695
* group[=].element[=].display = "финастерид"
* group[=].element[=].target[+].code = #008038
* group[=].element[=].target[=].display = "finasterid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19749
* group[=].element[=].display = "флуконазол"
* group[=].element[=].target[+].code = #008125
* group[=].element[=].target[=].display = "flukonazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19773
* group[=].element[=].display = "флуметазон"
* group[=].element[=].target[+].code = #008132
* group[=].element[=].target[=].display = "flumetazon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19789
* group[=].element[=].display = "флуоцинолона ацетонид"
* group[=].element[=].target[+].code = #008155
* group[=].element[=].target[=].display = "fluotsinolona atsetonid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19797
* group[=].element[=].display = "флуороурацил"
* group[=].element[=].target[+].code = #008310
* group[=].element[=].target[=].display = "ftoruratsil"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #19799
* group[=].element[=].display = "флуоксетин"
* group[=].element[=].target[+].code = #008149
* group[=].element[=].target[=].display = "fluoksetin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19806
* group[=].element[=].display = "флуфеназин"
* group[=].element[=].target[+].code = #008204
* group[=].element[=].target[=].display = "flufenazin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19821
* group[=].element[=].display = "Флурбипрофен"
* group[=].element[=].target[+].code = #008176
* group[=].element[=].target[=].display = "flurbiprofen"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19832
* group[=].element[=].display = "флутамид"
* group[=].element[=].target[+].code = #008189
* group[=].element[=].target[=].display = "flutamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19837
* group[=].element[=].display = "флутиказон"
* group[=].element[=].target[+].code = #008195
* group[=].element[=].target[=].display = "flutikazon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19838
* group[=].element[=].display = "флутиказон фуроат"
* group[=].element[=].target[+].code = #008196
* group[=].element[=].target[=].display = "flutikazona furoat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #19847
* group[=].element[=].display = "флувоксамин"
* group[=].element[=].target[+].code = #008105
* group[=].element[=].target[=].display = "fluvoksamin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19852
* group[=].element[=].display = "фолиевая кислота"
* group[=].element[=].target[+].code = #008227
* group[=].element[=].target[=].display = "foliyevaya kislota"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19854
* group[=].element[=].display = "фоллитропин альфа"
* group[=].element[=].target[+].code = #008230
* group[=].element[=].target[=].display = "follitropin alfa"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19861
* group[=].element[=].display = "фондапаринукс натрия"
* group[=].element[=].target[+].code = #008241
* group[=].element[=].target[=].display = "fondaparinuks natriy"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19863
* group[=].element[=].display = "фонтурацетам"
* group[=].element[=].target[+].code = #008243
* group[=].element[=].target[=].display = "fonturatsetam"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19873
* group[=].element[=].display = "формотерол"
* group[=].element[=].target[+].code = #008255
* group[=].element[=].target[=].display = "formoterol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19888
* group[=].element[=].display = "фосфокреатинин"
* group[=].element[=].target[+].code = #008282
* group[=].element[=].target[=].display = "fosfokreatinin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19889
* group[=].element[=].display = "фосфомицин"
* group[=].element[=].target[+].code = #008283
* group[=].element[=].target[=].display = "fosfomitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19892
* group[=].element[=].display = "фосфруктоза"
* group[=].element[=].target[+].code = #008286
* group[=].element[=].target[=].display = "fosfruktoza"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19893
* group[=].element[=].display = "фозиноприл"
* group[=].element[=].target[+].code = #008221
* group[=].element[=].target[=].display = "fozinopril"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19913
* group[=].element[=].display = "фрамицетин"
* group[=].element[=].target[+].code = #008294
* group[=].element[=].target[=].display = "framitsetin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19928
* group[=].element[=].display = "фулвестрант"
* group[=].element[=].target[+].code = #008318
* group[=].element[=].target[=].display = "fulvestrant"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19938
* group[=].element[=].display = "фуразолидон"
* group[=].element[=].target[+].code = #008325
* group[=].element[=].target[=].display = "furazolidon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19953
* group[=].element[=].display = "фуросемид"
* group[=].element[=].target[+].code = #008344
* group[=].element[=].target[=].display = "furosemid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19960
* group[=].element[=].display = "фузидиевая кислота"
* group[=].element[=].target[+].code = #008315
* group[=].element[=].target[=].display = "fuzid kislotasi/"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #19963
* group[=].element[=].display = "габапентин"
* group[=].element[=].target[+].code = #001511
* group[=].element[=].target[=].display = "gabapentin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19971
* group[=].element[=].display = "гадопентетат"
* group[=].element[=].target[+].code = #001526
* group[=].element[=].target[=].display = "gadopentet kislotasi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #19976
* group[=].element[=].display = "гадопентетическая кислота"
* group[=].element[=].noMap = true
* group[=].element[+].code = #19982
* group[=].element[=].display = "галантамин"
* group[=].element[=].target[+].code = #001534
* group[=].element[=].target[=].display = "galantamin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #19997
* group[=].element[=].display = "ганцикловир"
* group[=].element[=].target[+].code = #001581
* group[=].element[=].target[=].display = "gansiklovir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20009
* group[=].element[=].display = "гатифлоксацин"
* group[=].element[=].target[+].code = #001588
* group[=].element[=].target[=].display = "gatifloksatsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20015
* group[=].element[=].display = "гефитиниб"
* group[=].element[=].target[+].code = #001666
* group[=].element[=].target[=].display = "gefitinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20019
* group[=].element[=].display = "гемцитабин"
* group[=].element[=].target[+].code = #001642
* group[=].element[=].target[=].display = "gemsitabin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20022
* group[=].element[=].display = "гемифлоксацин"
* group[=].element[=].target[+].code = #001630
* group[=].element[=].target[=].display = "gemifloksatsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20025
* group[=].element[=].display = "гентамицин"
* group[=].element[=].target[+].code = #001644
* group[=].element[=].target[=].display = "gentamitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20032
* group[=].element[=].display = "гестоден"
* group[=].element[=].target[+].code = #001659
* group[=].element[=].target[=].display = "gestoden"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20056
* group[=].element[=].display = "глибенкламид"
* group[=].element[=].target[+].code = #001739
* group[=].element[=].target[=].display = "glibenklamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20061
* group[=].element[=].display = "гликлазид"
* group[=].element[=].target[+].code = #001754
* group[=].element[=].target[=].display = "gliklazid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20065
* group[=].element[=].display = "глимепирид"
* group[=].element[=].target[+].code = #001759
* group[=].element[=].target[=].display = "glimepirid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20068
* group[=].element[=].display = "гликвидон"
* group[=].element[=].target[+].code = #001753
* group[=].element[=].target[=].display = "glikvidon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20082
* group[=].element[=].display = "глюкозамин"
* group[=].element[=].target[+].code = #001787
* group[=].element[=].target[=].display = "glyukozamin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20090
* group[=].element[=].display = "кислота глутаминовая"
* group[=].element[=].target[+].code = #001777
* group[=].element[=].target[=].display = "glutamin kislotasi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #20091
* group[=].element[=].display = "Глютамин"
* group[=].element[=].noMap = true
* group[=].element[+].code = #20097
* group[=].element[=].display = "глицерол"
* group[=].element[=].target[+].code = #001767
* group[=].element[=].target[=].display = "glitserol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20115
* group[=].element[=].display = "гозерелин"
* group[=].element[=].target[+].code = #001792
* group[=].element[=].target[=].display = "gozerelin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20116
* group[=].element[=].display = "газоглиптин"
* group[=].element[=].target[+].code = #001793
* group[=].element[=].target[=].display = "gozogliptin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #20118
* group[=].element[=].display = "грамицидин"
* group[=].element[=].target[+].code = #001815
* group[=].element[=].target[=].display = "gramitsidin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20119
* group[=].element[=].display = "грамицидин C"
* group[=].element[=].target[+].code = #001816
* group[=].element[=].target[=].display = "gramitsidin C"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20120
* group[=].element[=].display = "гранисетрон"
* group[=].element[=].target[+].code = #001817
* group[=].element[=].target[=].display = "granisetron"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20122
* group[=].element[=].display = "гризеофульвин"
* group[=].element[=].target[+].code = #001822
* group[=].element[=].target[=].display = "grizeofulvin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20129
* group[=].element[=].display = "Гвайфенезин"
* group[=].element[=].target[+].code = #001595
* group[=].element[=].target[=].display = "gvayfenezin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20163
* group[=].element[=].display = "галоперидол"
* group[=].element[=].target[+].code = #001553
* group[=].element[=].target[=].display = "galoperidol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20176
* group[=].element[=].display = "гепарин натрия"
* group[=].element[=].target[+].code = #001646
* group[=].element[=].target[=].display = "geparin natriy"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20200
* group[=].element[=].display = "гексетидин"
* group[=].element[=].noMap = true
* group[=].element[+].code = #20207
* group[=].element[=].display = "ломустин"
* group[=].element[=].target[+].code = #003839
* group[=].element[=].target[=].display = "lomustin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20214
* group[=].element[=].display = "лоперамид"
* group[=].element[=].target[+].code = #003847
* group[=].element[=].target[=].display = "loperamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20216
* group[=].element[=].display = "лопинавир"
* group[=].element[=].target[+].code = #003849
* group[=].element[=].target[=].display = "lopinavir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20224
* group[=].element[=].display = "лоратадин"
* group[=].element[=].target[+].code = #003858
* group[=].element[=].target[=].display = "loratadin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20233
* group[=].element[=].display = "лорноксикам"
* group[=].element[=].target[+].code = #003869
* group[=].element[=].target[=].display = "lornoksikam"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20237
* group[=].element[=].display = "лозартан"
* group[=].element[=].target[+].code = #003817
* group[=].element[=].target[=].display = "lozartan"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20255
* group[=].element[=].display = "локсопрофен"
* group[=].element[=].target[+].code = #003827
* group[=].element[=].target[=].display = "loksoprofen"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20268
* group[=].element[=].display = "Люликоназол"
* group[=].element[=].target[+].code = #003899
* group[=].element[=].target[=].display = "lulikonazol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #20280
* group[=].element[=].display = "лутропин альфа"
* group[=].element[=].target[+].code = #003923
* group[=].element[=].target[=].display = "lutropin alfa"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20286
* group[=].element[=].display = "лизин"
* group[=].element[=].target[+].code = #003742
* group[=].element[=].target[=].display = "lizin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20291
* group[=].element[=].display = "макрогол"
* group[=].element[=].target[+].code = #003949
* group[=].element[=].target[=].display = "makrogol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20309
* group[=].element[=].display = "Индометацин"
* group[=].element[=].target[+].code = #002800
* group[=].element[=].target[=].display = "indometatsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20318
* group[=].element[=].display = "инфликсимаб"
* group[=].element[=].target[+].code = #002855
* group[=].element[=].target[=].display = "infliksimab"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20325
* group[=].element[=].display = "инозин"
* group[=].element[=].target[+].code = #002817
* group[=].element[=].target[=].display = "inozin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20330
* group[=].element[=].display = "инсулин аспарт"
* group[=].element[=].target[+].code = #002825
* group[=].element[=].target[=].display = "insulin aspart"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20332
* group[=].element[=].display = "инсулин деглудек"
* group[=].element[=].target[+].code = #002830
* group[=].element[=].target[=].display = "insulin degludek"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20333
* group[=].element[=].display = "инсулин детемир"
* group[=].element[=].target[+].code = #002831
* group[=].element[=].target[=].display = "insulin detemir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20334
* group[=].element[=].display = "инсулин гларгин"
* group[=].element[=].target[+].code = #002826
* group[=].element[=].target[=].display = "insulin glargin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20335
* group[=].element[=].display = "инсулин глулизин"
* group[=].element[=].target[+].code = #002827
* group[=].element[=].target[=].display = "insulin glulizin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20337
* group[=].element[=].display = "инсулин лизпро"
* group[=].element[=].target[+].code = #002833
* group[=].element[=].target[=].display = "insulin lizpro"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20340
* group[=].element[=].display = "интерферон альфа"
* group[=].element[=].target[+].code = #002845
* group[=].element[=].target[=].display = "interferon alfa"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20363
* group[=].element[=].display = "йодиксанол"
* group[=].element[=].target[+].code = #002873
* group[=].element[=].target[=].display = "yodiksanol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20379
* group[=].element[=].display = "йогексол"
* group[=].element[=].target[+].code = #002862
* group[=].element[=].target[=].display = "yogeksol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20390
* group[=].element[=].display = "иопамидол"
* group[=].element[=].target[+].code = #002901
* group[=].element[=].target[=].display = "yopamidol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #20425
* group[=].element[=].display = "ипидакрин"
* group[=].element[=].target[+].code = #002938
* group[=].element[=].target[=].display = "ipidakrin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20429
* group[=].element[=].display = "ипратропия бромид"
* group[=].element[=].target[+].code = #002945
* group[=].element[=].target[=].display = "ipratropiy bromid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20449
* group[=].element[=].display = "ирбесартан"
* group[=].element[=].target[+].code = #002962
* group[=].element[=].target[=].display = "irbesartan"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20451
* group[=].element[=].display = "иринотекан"
* group[=].element[=].target[+].code = #002965
* group[=].element[=].target[=].display = "irinotekan"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20479
* group[=].element[=].display = "Изоконазол"
* group[=].element[=].target[+].code = #002666
* group[=].element[=].target[=].display = "izokonazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20484
* group[=].element[=].display = "изофлуран"
* group[=].element[=].target[+].code = #002697
* group[=].element[=].target[=].display = "izofluran"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20485
* group[=].element[=].display = "изолейцин"
* group[=].element[=].target[+].code = #002672
* group[=].element[=].target[=].display = "izoleysin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20491
* group[=].element[=].display = "изониазид"
* group[=].element[=].target[+].code = #002678
* group[=].element[=].target[=].display = "izoniazid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20493
* group[=].element[=].display = "изофан-инсулин"
* group[=].element[=].target[+].code = #002838
* group[=].element[=].target[=].display = "odam insulini"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #20500
* group[=].element[=].display = "изосорбид"
* group[=].element[=].target[+].code = #002687
* group[=].element[=].target[=].display = "izosorbid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20501
* group[=].element[=].display = "изосорбида динитрат"
* group[=].element[=].target[+].code = #002688
* group[=].element[=].target[=].display = "izosorbida dinitrat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20507
* group[=].element[=].display = "изотретиноин"
* group[=].element[=].target[+].code = #002694
* group[=].element[=].target[=].display = "izotretinoin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20511
* group[=].element[=].display = "изоксуприн"
* group[=].element[=].target[+].code = #002671
* group[=].element[=].target[=].display = "izoksuprin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20522
* group[=].element[=].display = "итоприд"
* group[=].element[=].target[+].code = #002992
* group[=].element[=].target[=].display = "itoprid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20523
* group[=].element[=].display = "итраконазол"
* group[=].element[=].target[+].code = #002993
* group[=].element[=].target[=].display = "itrakonazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20529
* group[=].element[=].display = "ивабрадина"
* group[=].element[=].target[+].code = #002617
* group[=].element[=].target[=].display = "ivabradin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #20531
* group[=].element[=].display = "ивермектин"
* group[=].element[=].target[+].code = #002620
* group[=].element[=].target[=].display = "ivermektin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20535
* group[=].element[=].display = "джозамицин"
* group[=].element[=].target[+].code = #002140
* group[=].element[=].target[=].display = "djozamitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20538
* group[=].element[=].display = "каллидиногеназа"
* group[=].element[=].target[+].code = #003029
* group[=].element[=].target[=].display = "kallidinogenaza"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20539
* group[=].element[=].display = "канамицин"
* group[=].element[=].target[+].code = #003065
* group[=].element[=].target[=].display = "kanamitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20543
* group[=].element[=].display = "кетамин"
* group[=].element[=].target[+].code = #003216
* group[=].element[=].target[=].display = "ketamin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20551
* group[=].element[=].display = "кетоконазол"
* group[=].element[=].target[+].code = #003222
* group[=].element[=].target[=].display = "ketokonazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20552
* group[=].element[=].display = "Кетопрофен"
* group[=].element[=].target[+].code = #003224
* group[=].element[=].target[=].display = "ketoprofen"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20554
* group[=].element[=].display = "кеторолак"
* group[=].element[=].target[+].code = #003225
* group[=].element[=].target[=].display = "ketorolak"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20555
* group[=].element[=].display = "кетотифен"
* group[=].element[=].target[+].code = #003227
* group[=].element[=].target[=].display = "ketotifen"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20565
* group[=].element[=].display = "лакозамид"
* group[=].element[=].target[+].code = #003533
* group[=].element[=].target[=].display = "lakosamid"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #20568
* group[=].element[=].display = "лактулоза"
* group[=].element[=].target[+].code = #003536
* group[=].element[=].target[=].display = "laktuloza"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20577
* group[=].element[=].display = "ламивудин"
* group[=].element[=].target[+].code = #003537
* group[=].element[=].target[=].display = "lamivudin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20578
* group[=].element[=].display = "ламотриджин"
* group[=].element[=].target[+].code = #003539
* group[=].element[=].target[=].display = "lamotridjin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20593
* group[=].element[=].display = "лансопразол"
* group[=].element[=].target[+].code = #003558
* group[=].element[=].target[=].display = "lansoprazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20595
* group[=].element[=].display = "Лапатиниб"
* group[=].element[=].target[+].code = #003560
* group[=].element[=].target[=].display = "lapatinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20609
* group[=].element[=].display = "латанопрост"
* group[=].element[=].target[+].code = #003576
* group[=].element[=].target[=].display = "latanoprost"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20615
* group[=].element[=].display = "лаурилсульфат"
* group[=].element[=].target[+].code = #003585
* group[=].element[=].target[=].display = "laurilsulfat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20620
* group[=].element[=].display = "лауромакрогол 400"
* group[=].element[=].target[+].code = #003589
* group[=].element[=].target[=].display = "lauromakrogol 400"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20631
* group[=].element[=].display = "лефлуномид"
* group[=].element[=].target[+].code = #003719
* group[=].element[=].target[=].display = "leflunomid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20640
* group[=].element[=].display = "леналидомид"
* group[=].element[=].target[+].code = #003685
* group[=].element[=].target[=].display = "lenalidomid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20650
* group[=].element[=].display = "лерканидипин"
* group[=].element[=].target[+].code = #003705
* group[=].element[=].target[=].display = "lerkanidipin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20663
* group[=].element[=].display = "Летрозол"
* group[=].element[=].target[+].code = #003715
* group[=].element[=].target[=].display = "letrozol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20665
* group[=].element[=].display = "лейцин"
* group[=].element[=].target[+].code = #003665
* group[=].element[=].target[=].display = "leysin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20673
* group[=].element[=].display = "левамизол"
* group[=].element[=].target[+].code = #003597
* group[=].element[=].target[=].display = "levamizol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20679
* group[=].element[=].display = "леветирацетам"
* group[=].element[=].target[+].code = #003603
* group[=].element[=].target[=].display = "levetiratsetam"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20685
* group[=].element[=].display = "левобупивакаин"
* group[=].element[=].target[+].code = #003610
* group[=].element[=].target[=].display = "levobupivakain"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20687
* group[=].element[=].display = "левокарнитин"
* group[=].element[=].target[+].code = #003615
* group[=].element[=].target[=].display = "levokarnitin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20688
* group[=].element[=].display = "левоцетиризин"
* group[=].element[=].target[+].code = #003652
* group[=].element[=].target[=].display = "levotsetirizin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20689
* group[=].element[=].display = "леводопа"
* group[=].element[=].target[+].code = #003612
* group[=].element[=].target[=].display = "levodopa"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20690
* group[=].element[=].display = "леводропропизин"
* group[=].element[=].target[+].code = #003613
* group[=].element[=].target[=].display = "levodropropizin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20693
* group[=].element[=].display = "левофлоксацин"
* group[=].element[=].target[+].code = #003650
* group[=].element[=].target[=].display = "levofloksatsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20698
* group[=].element[=].display = "Левоментол"
* group[=].element[=].target[+].code = #003620
* group[=].element[=].target[=].display = "levomentol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20699
* group[=].element[=].display = "левомепромазина"
* group[=].element[=].target[+].code = #003621
* group[=].element[=].target[=].display = "levomepromazin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #20710
* group[=].element[=].display = "левоноргестрел"
* group[=].element[=].target[+].code = #003633
* group[=].element[=].target[=].display = "levonorgestrel"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20721
* group[=].element[=].display = "левосимендан"
* group[=].element[=].target[+].code = #003643
* group[=].element[=].target[=].display = "levosimendan"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20722
* group[=].element[=].display = "левосульпирид"
* group[=].element[=].target[+].code = #003644
* group[=].element[=].target[=].display = "levosulpirid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20723
* group[=].element[=].display = "левотироксин натрия"
* group[=].element[=].target[+].code = #003645
* group[=].element[=].target[=].display = "levotiroksin natriy"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20743
* group[=].element[=].display = "Лидокаин"
* group[=].element[=].target[+].code = #003735
* group[=].element[=].target[=].display = "lidokain"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20756
* group[=].element[=].display = "линаглиптин"
* group[=].element[=].target[+].code = #003758
* group[=].element[=].target[=].display = "linagliptin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20759
* group[=].element[=].display = "линкомицин"
* group[=].element[=].target[+].code = #003766
* group[=].element[=].target[=].display = "linkomitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20762
* group[=].element[=].display = "линезолид"
* group[=].element[=].target[+].code = #003763
* group[=].element[=].target[=].display = "linezolid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20772
* group[=].element[=].display = "лираглутид"
* group[=].element[=].target[+].code = #003780
* group[=].element[=].target[=].display = "liraglutid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20780
* group[=].element[=].display = "лизиноприл"
* group[=].element[=].target[+].code = #003743
* group[=].element[=].target[=].display = "lizinopril"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20791
* group[=].element[=].display = "ликсисенатид"
* group[=].element[=].target[+].code = #003751
* group[=].element[=].target[=].display = "liksisenatid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20816
* group[=].element[=].display = "ломефлоксацин"
* group[=].element[=].target[+].code = #003835
* group[=].element[=].target[=].display = "lomefloksatsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20831
* group[=].element[=].display = "моксифлоксацин"
* group[=].element[=].target[+].code = #004462
* group[=].element[=].target[=].display = "moksifloksatsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20837
* group[=].element[=].display = "моксонидин"
* group[=].element[=].target[+].code = #004464
* group[=].element[=].target[=].display = "moksonidin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20841
* group[=].element[=].display = "мупироцин"
* group[=].element[=].target[+].code = #004530
* group[=].element[=].target[=].display = "mupirotsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20850
* group[=].element[=].display = "микофеноловая кислота"
* group[=].element[=].target[+].code = #004339
* group[=].element[=].target[=].display = "mikofenol kislotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20859
* group[=].element[=].display = "набуметон"
* group[=].element[=].target[+].code = #004543
* group[=].element[=].target[=].display = "nabumeton"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20866
* group[=].element[=].display = "надропарин кальция"
* group[=].element[=].target[+].code = #004559
* group[=].element[=].target[=].display = "nadroparin kalsiy"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20885
* group[=].element[=].display = "нафтифин"
* group[=].element[=].target[+].code = #004682
* group[=].element[=].target[=].display = "naftifin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20891
* group[=].element[=].display = "нальбуфин"
* group[=].element[=].target[+].code = #004570
* group[=].element[=].target[=].display = "nalbufin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #20898
* group[=].element[=].display = "налтрексон"
* group[=].element[=].target[+].code = #004580
* group[=].element[=].target[=].display = "naltrekson"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20906
* group[=].element[=].display = "нандролон"
* group[=].element[=].target[+].code = #004590
* group[=].element[=].target[=].display = "nandrolon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20913
* group[=].element[=].display = "нафазолин"
* group[=].element[=].target[+].code = #004664
* group[=].element[=].target[=].display = "nafazolin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20919
* group[=].element[=].display = "напроксен"
* group[=].element[=].target[+].code = #004601
* group[=].element[=].target[=].display = "naproksen"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20933
* group[=].element[=].display = "натамицин"
* group[=].element[=].target[+].code = #004620
* group[=].element[=].target[=].display = "natamitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20946
* group[=].element[=].display = "небиволол"
* group[=].element[=].target[+].code = #004690
* group[=].element[=].target[=].display = "nebivolol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20957
* group[=].element[=].display = "нефопам"
* group[=].element[=].target[+].code = #004759
* group[=].element[=].target[=].display = "nefopam"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20973
* group[=].element[=].display = "неомицин"
* group[=].element[=].target[+].code = #004726
* group[=].element[=].target[=].display = "neomitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20976
* group[=].element[=].display = "непафенак"
* group[=].element[=].target[+].code = #004731
* group[=].element[=].target[=].display = "nepafenak"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #20985
* group[=].element[=].display = "нератиниб"
* group[=].element[=].target[+].code = #004738
* group[=].element[=].target[=].display = "neratinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21004
* group[=].element[=].display = "невирапин"
* group[=].element[=].target[+].code = #004697
* group[=].element[=].target[=].display = "nevirapin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21006
* group[=].element[=].display = "магалдрат"
* group[=].element[=].target[+].code = #003937
* group[=].element[=].target[=].display = "magaldrat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21017
* group[=].element[=].display = "маннитол гексанитрат"
* group[=].element[=].target[+].code = #003962
* group[=].element[=].target[=].display = "mannitola geksanitrat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #21046
* group[=].element[=].display = "мебендазол"
* group[=].element[=].target[+].code = #003995
* group[=].element[=].target[=].display = "mebendazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21048
* group[=].element[=].display = "мебеверин"
* group[=].element[=].target[+].code = #003993
* group[=].element[=].target[=].display = "mebeverin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21050
* group[=].element[=].display = "мебгидролин"
* group[=].element[=].target[+].code = #003992
* group[=].element[=].target[=].display = "mebgidrolin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21074
* group[=].element[=].display = "мекобаламин"
* group[=].element[=].target[+].code = #004048
* group[=].element[=].target[=].display = "mekobalamin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21087
* group[=].element[=].display = "медроксипрогестерон"
* group[=].element[=].target[+].code = #004021
* group[=].element[=].target[=].display = "medroksiprogesteron"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21091
* group[=].element[=].display = "мефенамовая кислота"
* group[=].element[=].target[+].code = #004288
* group[=].element[=].target[=].display = "myefenam kislotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21104
* group[=].element[=].display = "меглумин"
* group[=].element[=].target[+].code = #004007
* group[=].element[=].target[=].display = "meglyumin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #21111
* group[=].element[=].display = "мельдоний"
* group[=].element[=].target[+].code = #004075
* group[=].element[=].target[=].display = "meldoniy"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21119
* group[=].element[=].display = "мелоксикам"
* group[=].element[=].target[+].code = #004069
* group[=].element[=].target[=].display = "meloksikam"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21124
* group[=].element[=].display = "мемантин"
* group[=].element[=].target[+].code = #004076
* group[=].element[=].target[=].display = "memantin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21128
* group[=].element[=].display = "менадион натрия бисульфит"
* group[=].element[=].target[+].code = #004080
* group[=].element[=].target[=].display = "menadion natriy bisulfit"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #21170
* group[=].element[=].display = "меркаптопурин"
* group[=].element[=].target[+].code = #004120
* group[=].element[=].target[=].display = "merkaptopurin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21179
* group[=].element[=].display = "меропенем"
* group[=].element[=].target[+].code = #004125
* group[=].element[=].target[=].display = "meropenem"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21183
* group[=].element[=].display = "месалазин"
* group[=].element[=].target[+].code = #004129
* group[=].element[=].target[=].display = "mesalazin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21186
* group[=].element[=].display = "месна"
* group[=].element[=].target[+].code = #004132
* group[=].element[=].target[=].display = "mesna"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #21212
* group[=].element[=].display = "метамизол натрия"
* group[=].element[=].target[+].code = #004159
* group[=].element[=].target[=].display = "metamizol natriy"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21236
* group[=].element[=].display = "метформин"
* group[=].element[=].target[+].code = #004274
* group[=].element[=].target[=].display = "metformin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21255
* group[=].element[=].display = "метионин"
* group[=].element[=].target[+].code = #004223
* group[=].element[=].target[=].display = "metionin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21257
* group[=].element[=].display = "метокарбамол"
* group[=].element[=].target[+].code = #004241
* group[=].element[=].target[=].display = "metokarbamol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21263
* group[=].element[=].display = "метотрексат"
* group[=].element[=].target[+].code = #004256
* group[=].element[=].target[=].display = "metotreksat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21281
* group[=].element[=].display = "метилпреднизолон"
* group[=].element[=].target[+].code = #004204
* group[=].element[=].target[=].display = "metilprednizolon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21282
* group[=].element[=].display = "метилпреднизолона ацепонат"
* group[=].element[=].target[+].code = #004205
* group[=].element[=].target[=].display = "metilprednizolon atseponat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21312
* group[=].element[=].display = "метоклопрамид"
* group[=].element[=].target[+].code = #004242
* group[=].element[=].target[=].display = "metoklopramid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21320
* group[=].element[=].display = "метопролол"
* group[=].element[=].target[+].code = #004253
* group[=].element[=].target[=].display = "metoprolol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21334
* group[=].element[=].display = "метронидазол"
* group[=].element[=].target[+].code = #004272
* group[=].element[=].target[=].display = "metronidazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21351
* group[=].element[=].display = "миансерин"
* group[=].element[=].target[+].code = #004305
* group[=].element[=].target[=].display = "mianserin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21355
* group[=].element[=].display = "микафунгин"
* group[=].element[=].target[+].code = #004337
* group[=].element[=].target[=].display = "mikafungin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21357
* group[=].element[=].display = "миконазол"
* group[=].element[=].target[+].code = #004338
* group[=].element[=].target[=].display = "mikonazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21365
* group[=].element[=].display = "мидазолам"
* group[=].element[=].target[+].code = #004321
* group[=].element[=].target[=].display = "midazolam"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21366
* group[=].element[=].display = "мидекамицин"
* group[=].element[=].target[+].code = #004326
* group[=].element[=].target[=].display = "midekamitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21373
* group[=].element[=].display = "мифепристон"
* group[=].element[=].target[+].code = #004429
* group[=].element[=].target[=].display = "mifepriston"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21377
* group[=].element[=].display = "миглустат"
* group[=].element[=].target[+].code = #004318
* group[=].element[=].target[=].display = "miglustat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21390
* group[=].element[=].display = "милринон"
* group[=].element[=].target[+].code = #004354
* group[=].element[=].target[=].display = "milrinon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21408
* group[=].element[=].display = "миноксидил"
* group[=].element[=].target[+].code = #004369
* group[=].element[=].target[=].display = "minoksidil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21416
* group[=].element[=].display = "мирабегрон"
* group[=].element[=].target[+].code = #004382
* group[=].element[=].target[=].display = "mirabegron"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21424
* group[=].element[=].display = "миристалкония хлорид"
* group[=].element[=].target[+].code = #004393
* group[=].element[=].target[=].display = "miristalkoniy xlorid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21430
* group[=].element[=].display = "миртазапин"
* group[=].element[=].target[+].code = #004401
* group[=].element[=].target[=].display = "mirtazapin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21432
* group[=].element[=].display = "мизопростол"
* group[=].element[=].target[+].code = #004334
* group[=].element[=].target[=].display = "mizoprostol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21444
* group[=].element[=].display = "митомицин"
* group[=].element[=].target[+].code = #004416
* group[=].element[=].target[=].display = "mitomitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21491
* group[=].element[=].display = "мометазон"
* group[=].element[=].target[+].code = #004475
* group[=].element[=].target[=].display = "mometazon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21517
* group[=].element[=].display = "мороктоког альфа"
* group[=].element[=].target[+].code = #004502
* group[=].element[=].target[=].display = "moroktokog alfa"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21537
* group[=].element[=].display = "пефлоксацин"
* group[=].element[=].target[+].code = #005488
* group[=].element[=].target[=].display = "pefloksatsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21545
* group[=].element[=].display = "Пэгфилграстим"
* group[=].element[=].target[+].code = #006005
* group[=].element[=].target[=].display = "pegfilgrastim"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21546
* group[=].element[=].display = "пегинтерферон альфа-2а"
* group[=].element[=].target[+].code = #005990
* group[=].element[=].target[=].display = "peginterferon alfa-2a"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #21567
* group[=].element[=].display = "пеметрексед"
* group[=].element[=].target[+].code = #005386
* group[=].element[=].target[=].display = "pemetreksed"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21573
* group[=].element[=].display = "пенцикловир"
* group[=].element[=].target[+].code = #005441
* group[=].element[=].target[=].display = "pensiklovir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21589
* group[=].element[=].display = "пентаэритритил тетранитрат"
* group[=].element[=].target[+].code = #005417
* group[=].element[=].target[=].display = "pentaeritritila tetranitrat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #21602
* group[=].element[=].display = "пентетическая кислота"
* group[=].element[=].noMap = true
* group[=].element[+].code = #21631
* group[=].element[=].display = "ницерголин"
* group[=].element[=].target[+].code = #004892
* group[=].element[=].target[=].display = "nitsergolin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21635
* group[=].element[=].display = "никлозамид"
* group[=].element[=].target[+].code = #004783
* group[=].element[=].target[=].display = "niklozamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21636
* group[=].element[=].display = "никобоксил"
* group[=].element[=].target[+].code = #004785
* group[=].element[=].target[=].display = "nikoboksil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21649
* group[=].element[=].display = "никорандил"
* group[=].element[=].target[+].code = #004795
* group[=].element[=].target[=].display = "nikorandil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21651
* group[=].element[=].display = "Никотинамид"
* group[=].element[=].target[+].code = #004798
* group[=].element[=].target[=].display = "nikotinamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21652
* group[=].element[=].display = "никотиновая кислота"
* group[=].element[=].target[+].code = #004799
* group[=].element[=].target[=].display = "nikotin kislotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21658
* group[=].element[=].display = "нифедипин"
* group[=].element[=].target[+].code = #004859
* group[=].element[=].target[=].display = "nifedipin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21667
* group[=].element[=].display = "нифурател"
* group[=].element[=].target[+].code = #004868
* group[=].element[=].target[=].display = "nifuratel"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21677
* group[=].element[=].display = "нифуроксазид"
* group[=].element[=].target[+].code = #004878
* group[=].element[=].target[=].display = "nifuroksazid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21692
* group[=].element[=].display = "никетамид"
* group[=].element[=].target[+].code = #004782
* group[=].element[=].target[=].display = "niketamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21695
* group[=].element[=].display = "нилотиниб"
* group[=].element[=].target[+].code = #004810
* group[=].element[=].target[=].display = "nilotinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21701
* group[=].element[=].display = "нимесулид"
* group[=].element[=].target[+].code = #004816
* group[=].element[=].target[=].display = "nimesulid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21704
* group[=].element[=].display = "нимодипина"
* group[=].element[=].target[+].code = #004819
* group[=].element[=].target[=].display = "nimodipin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #21705
* group[=].element[=].display = "ниморазол"
* group[=].element[=].target[+].code = #004820
* group[=].element[=].target[=].display = "nimorazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21721
* group[=].element[=].display = "нитазоксанид"
* group[=].element[=].target[+].code = #004837
* group[=].element[=].target[=].display = "nitazoksanid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21723
* group[=].element[=].display = "нитизинон"
* group[=].element[=].target[+].code = #004840
* group[=].element[=].target[=].display = "nitizinon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21730
* group[=].element[=].display = "нитрендипин"
* group[=].element[=].target[+].code = #004846
* group[=].element[=].target[=].display = "nitrendipin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21735
* group[=].element[=].display = "нитрофурал"
* group[=].element[=].target[+].code = #004856
* group[=].element[=].target[=].display = "nitrofural"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21736
* group[=].element[=].display = "нитрофурантоин"
* group[=].element[=].target[+].code = #004857
* group[=].element[=].target[=].display = "nitrofurantoin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21741
* group[=].element[=].display = "нитроксолин"
* group[=].element[=].target[+].code = #004852
* group[=].element[=].target[=].display = "nitroksolin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21760
* group[=].element[=].display = "нонаког альфа"
* group[=].element[=].target[+].code = #004913
* group[=].element[=].target[=].display = "nonakog alfa"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21764
* group[=].element[=].display = "нонивамид"
* group[=].element[=].target[+].code = #004919
* group[=].element[=].target[=].display = "nonivamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21774
* group[=].element[=].display = "норадреналин"
* group[=].element[=].target[+].code = #009338
* group[=].element[=].target[=].display = "norepinefrin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #21776
* group[=].element[=].display = "норэтистерон"
* group[=].element[=].target[+].code = #004951
* group[=].element[=].target[=].display = "noretisteron"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21780
* group[=].element[=].display = "норфлоксацин"
* group[=].element[=].target[+].code = #004945
* group[=].element[=].target[=].display = "norfloksatsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21786
* group[=].element[=].display = "норгестрел"
* group[=].element[=].target[+].code = #004928
* group[=].element[=].target[=].display = "norgestrel"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21799
* group[=].element[=].display = "носкапин"
* group[=].element[=].target[+].code = #004952
* group[=].element[=].target[=].display = "noskapin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21809
* group[=].element[=].display = "нистатин"
* group[=].element[=].target[+].code = #004835
* group[=].element[=].target[=].display = "nistatin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21812
* group[=].element[=].display = "Обетихолевая кислота"
* group[=].element[=].target[+].code = #004962
* group[=].element[=].target[=].display = "obetixol kislotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21822
* group[=].element[=].display = "окрелизумаб"
* group[=].element[=].target[+].code = #004992
* group[=].element[=].target[=].display = "okrelizumab"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21847
* group[=].element[=].display = "октреотид"
* group[=].element[=].target[+].code = #005118
* group[=].element[=].target[=].display = "oktreotid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21855
* group[=].element[=].display = "офатумумаб"
* group[=].element[=].target[+].code = #005248
* group[=].element[=].target[=].display = "ofatumumab"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21865
* group[=].element[=].display = "оланзапин"
* group[=].element[=].target[+].code = #005125
* group[=].element[=].target[=].display = "olanzapin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21866
* group[=].element[=].display = "олапариб"
* group[=].element[=].target[+].code = #005126
* group[=].element[=].target[=].display = "olaparib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21874
* group[=].element[=].display = "олмесартан медоксомил"
* group[=].element[=].target[+].code = #005140
* group[=].element[=].target[=].display = "olmesartan medoksomil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21877
* group[=].element[=].display = "олопатадин"
* group[=].element[=].target[+].code = #005145
* group[=].element[=].target[=].display = "olopatadin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21890
* group[=].element[=].display = "омепразол"
* group[=].element[=].target[+].code = #005164
* group[=].element[=].target[=].display = "omeprazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21900
* group[=].element[=].display = "ондансетрон"
* group[=].element[=].target[+].code = #005179
* group[=].element[=].target[=].display = "ondansetron"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21924
* group[=].element[=].display = "орлистат"
* group[=].element[=].target[+].code = #005212
* group[=].element[=].target[=].display = "orlistat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21928
* group[=].element[=].display = "орнидазол"
* group[=].element[=].target[+].code = #005216
* group[=].element[=].target[=].display = "ornidazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21930
* group[=].element[=].display = "орнитин"
* group[=].element[=].target[+].code = #005218
* group[=].element[=].target[=].display = "ornitin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21932
* group[=].element[=].display = "оротовая кислота"
* group[=].element[=].target[+].code = #005221
* group[=].element[=].target[=].display = "orot kislotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21942
* group[=].element[=].display = "осельтамивир"
* group[=].element[=].target[+].code = #005231
* group[=].element[=].target[=].display = "oseltamivir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21953
* group[=].element[=].display = "отилония бромид"
* group[=].element[=].target[+].code = #005245
* group[=].element[=].target[=].display = "otiloniy bromid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21960
* group[=].element[=].display = "оксациллин"
* group[=].element[=].target[+].code = #005023
* group[=].element[=].target[=].display = "oksatsillin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21966
* group[=].element[=].display = "оксалиплатин"
* group[=].element[=].target[+].code = #005005
* group[=].element[=].target[=].display = "oksaliplatin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21982
* group[=].element[=].display = "оксазепам"
* group[=].element[=].target[+].code = #005000
* group[=].element[=].target[=].display = "oksazepam"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21986
* group[=].element[=].display = "окскарбазепин"
* group[=].element[=].target[+].code = #005082
* group[=].element[=].target[=].display = "okskarbazepin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #21993
* group[=].element[=].display = "оксетакаин"
* group[=].element[=].target[+].code = #005031
* group[=].element[=].target[=].display = "oksetakain"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22013
* group[=].element[=].display = "оксирацетам"
* group[=].element[=].target[+].code = #005064
* group[=].element[=].target[=].display = "oksiratsetam"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22025
* group[=].element[=].display = "оксоламин"
* group[=].element[=].target[+].code = #005087
* group[=].element[=].target[=].display = "oksolamin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22026
* group[=].element[=].display = "оксолиновая кислота"
* group[=].element[=].target[+].code = #005088
* group[=].element[=].target[=].display = "oksolin kislotasi/"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22035
* group[=].element[=].display = "оксибупрокаин"
* group[=].element[=].target[+].code = #005037
* group[=].element[=].target[=].display = "oksibuprokain"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22036
* group[=].element[=].display = "оксибутинин"
* group[=].element[=].target[+].code = #005038
* group[=].element[=].target[=].display = "oksibutinin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22045
* group[=].element[=].display = "оксиметазолин"
* group[=].element[=].target[+].code = #005052
* group[=].element[=].target[=].display = "oksimetazolin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22057
* group[=].element[=].display = "окситетрациклин"
* group[=].element[=].target[+].code = #005067
* group[=].element[=].target[=].display = "oksitetratsiklin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22058
* group[=].element[=].display = "окситоцин"
* group[=].element[=].target[+].code = #005069
* group[=].element[=].target[=].display = "oksitotsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22064
* group[=].element[=].display = "Паклитаксел (связанные с альбумином наночастицы паклитаксела)"
* group[=].element[=].target[+].code = #005268
* group[=].element[=].target[=].display = "paklitaksel"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #22081
* group[=].element[=].display = "палиперидон"
* group[=].element[=].target[+].code = #005281
* group[=].element[=].target[=].display = "paliperidon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22083
* group[=].element[=].display = "паливизумаб"
* group[=].element[=].target[+].code = #005279
* group[=].element[=].target[=].display = "palivizumab"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22087
* group[=].element[=].display = "палоносетрон"
* group[=].element[=].target[+].code = #005290
* group[=].element[=].target[=].display = "palonosetron"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22108
* group[=].element[=].display = "пантенол"
* group[=].element[=].target[+].code = #005311
* group[=].element[=].target[=].display = "pantenol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22109
* group[=].element[=].display = "пантопразол"
* group[=].element[=].target[+].code = #005312
* group[=].element[=].target[=].display = "pantoprazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22113
* group[=].element[=].display = "парацетамол"
* group[=].element[=].target[+].code = #005325
* group[=].element[=].target[=].display = "paratsetamol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22127
* group[=].element[=].display = "парекоксиб"
* group[=].element[=].target[+].code = #005332
* group[=].element[=].target[=].display = "parekoksib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22139
* group[=].element[=].display = "пароксетин"
* group[=].element[=].target[+].code = #005341
* group[=].element[=].target[=].display = "paroksetin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22153
* group[=].element[=].display = "Пазопаниб"
* group[=].element[=].target[+].code = #005265
* group[=].element[=].target[=].display = "pazopanib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22164
* group[=].element[=].display = "пирантел"
* group[=].element[=].target[+].code = #005610
* group[=].element[=].target[=].display = "pirantel"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22165
* group[=].element[=].display = "пиразинамид"
* group[=].element[=].target[+].code = #005604
* group[=].element[=].target[=].display = "pirazinamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22170
* group[=].element[=].display = "пиридоксин"
* group[=].element[=].target[+].code = #005627
* group[=].element[=].target[=].display = "piridoksin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22174
* group[=].element[=].display = "пиритион цинк"
* group[=].element[=].target[+].code = #005644
* group[=].element[=].target[=].display = "pirition sinka"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #22196
* group[=].element[=].display = "кветиапин"
* group[=].element[=].target[+].code = #003207
* group[=].element[=].target[=].display = "kvetiapin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22197
* group[=].element[=].display = "хифенадина гидрохлорид"
* group[=].element[=].target[+].code = #008394
* group[=].element[=].target[=].display = "xifenadin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #22233
* group[=].element[=].display = "рабепразол"
* group[=].element[=].target[+].code = #006008
* group[=].element[=].target[=].display = "rabeprazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22238
* group[=].element[=].display = "рацементол"
* group[=].element[=].target[+].code = #006074
* group[=].element[=].target[=].display = "ratsementol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22240
* group[=].element[=].display = "рацеметиросин"
* group[=].element[=].target[+].code = #006075
* group[=].element[=].target[=].display = "ratsemetirozin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #22266
* group[=].element[=].display = "рамиприл"
* group[=].element[=].target[+].code = #006048
* group[=].element[=].target[=].display = "ramipril"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22275
* group[=].element[=].display = "ранибизумаб"
* group[=].element[=].target[+].code = #006059
* group[=].element[=].target[=].display = "ranibizumab"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22279
* group[=].element[=].display = "ранитидин"
* group[=].element[=].target[+].code = #006063
* group[=].element[=].target[=].display = "ranitidin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22280
* group[=].element[=].display = "ранолазин"
* group[=].element[=].target[+].code = #006064
* group[=].element[=].target[=].display = "ranolazin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22294
* group[=].element[=].display = "ребамипид"
* group[=].element[=].target[+].code = #006083
* group[=].element[=].target[=].display = "rebamipid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22302
* group[=].element[=].display = "регорафениб"
* group[=].element[=].target[+].code = #006101
* group[=].element[=].target[=].display = "regorafenib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22319
* group[=].element[=].display = "репаглинид"
* group[=].element[=].target[+].code = #006137
* group[=].element[=].target[=].display = "repaglinid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22329
* group[=].element[=].display = "резерпин"
* group[=].element[=].target[+].code = #006106
* group[=].element[=].target[=].display = "rezerpin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22333
* group[=].element[=].display = "пентоксифиллин"
* group[=].element[=].target[+].code = #005431
* group[=].element[=].target[=].display = "pentoksifillin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22366
* group[=].element[=].display = "периндоприл"
* group[=].element[=].target[+].code = #005462
* group[=].element[=].target[=].display = "perindopril"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22367
* group[=].element[=].display = "периндоприлат"
* group[=].element[=].target[+].code = #005462
* group[=].element[=].target[=].display = "perindopril"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #22370
* group[=].element[=].display = "перметрин"
* group[=].element[=].target[+].code = #005467
* group[=].element[=].target[=].display = "permetrin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22374
* group[=].element[=].display = "пертузумаб"
* group[=].element[=].target[+].code = #005470
* group[=].element[=].target[=].display = "pertuzumab"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22393
* group[=].element[=].display = "феназон"
* group[=].element[=].target[+].code = #007873
* group[=].element[=].target[=].display = "fenazon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22394
* group[=].element[=].display = "феназопиридин"
* group[=].element[=].target[+].code = #007874
* group[=].element[=].target[=].display = "fenazopiridin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22405
* group[=].element[=].display = "фениндион"
* group[=].element[=].target[+].code = #007922
* group[=].element[=].target[=].display = "fenindion"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22408
* group[=].element[=].display = "фенирамин"
* group[=].element[=].target[+].code = #007928
* group[=].element[=].target[=].display = "feniramin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22410
* group[=].element[=].display = "фенобарбитал"
* group[=].element[=].target[+].code = #007947
* group[=].element[=].target[=].display = "fenobarbital"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22426
* group[=].element[=].display = "фенилаланин"
* group[=].element[=].target[+].code = #007914
* group[=].element[=].target[=].display = "fenilalanin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22427
* group[=].element[=].display = "фенилбутазон"
* group[=].element[=].target[+].code = #007915
* group[=].element[=].target[=].display = "fenilbutazon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22428
* group[=].element[=].display = "фенилэфрин"
* group[=].element[=].target[+].code = #007919
* group[=].element[=].target[=].display = "fenilefrin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22440
* group[=].element[=].display = "фталилсульфатиазол"
* group[=].element[=].target[+].code = #008304
* group[=].element[=].target[=].display = "ftalilsulfatiazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22441
* group[=].element[=].display = "фитоменадион"
* group[=].element[=].target[+].code = #008052
* group[=].element[=].target[=].display = "fitomenadion"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22456
* group[=].element[=].display = "пиклоксидин"
* group[=].element[=].target[+].code = #005521
* group[=].element[=].target[=].display = "pikloksidin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22499
* group[=].element[=].display = "пинаверия бромид"
* group[=].element[=].target[+].code = #005556
* group[=].element[=].target[=].display = "pinaveriy bromid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22506
* group[=].element[=].display = "пиоглитазон"
* group[=].element[=].target[+].code = #005568
* group[=].element[=].target[=].display = "pioglitazon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22512
* group[=].element[=].display = "пипекурония бромид"
* group[=].element[=].target[+].code = #005575
* group[=].element[=].target[=].display = "pipekuroniy bromid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22513
* group[=].element[=].display = "пипемидовая кислота"
* group[=].element[=].target[+].code = #005576
* group[=].element[=].target[=].display = "pipemid kislotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22518
* group[=].element[=].display = "пиперациллин"
* group[=].element[=].target[+].code = #005582
* group[=].element[=].target[=].display = "piperatsillin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22543
* group[=].element[=].display = "пирацетам"
* group[=].element[=].target[+].code = #005612
* group[=].element[=].target[=].display = "piratsetam"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22559
* group[=].element[=].display = "пирфенидон"
* group[=].element[=].target[+].code = #005679
* group[=].element[=].target[=].display = "pirfenidon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22588
* group[=].element[=].display = "пироксикам"
* group[=].element[=].target[+].code = #005661
* group[=].element[=].target[=].display = "piroksikam"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22599
* group[=].element[=].display = "питофенон"
* group[=].element[=].target[+].code = #005685
* group[=].element[=].target[=].display = "pitofenon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22650
* group[=].element[=].display = "полимиксин Б"
* group[=].element[=].target[+].code = #005739
* group[=].element[=].target[=].display = "polimiksin B"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #22652
* group[=].element[=].display = "полисорбат"
* group[=].element[=].target[+].code = #005742
* group[=].element[=].target[=].display = "polisorbat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #22654
* group[=].element[=].display = "помалидомид"
* group[=].element[=].target[+].code = #005752
* group[=].element[=].target[=].display = "pomalidomid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22669
* group[=].element[=].display = "повидон"
* group[=].element[=].target[+].code = #005713
* group[=].element[=].target[=].display = "povidon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22680
* group[=].element[=].display = "прамипексол"
* group[=].element[=].target[+].code = #005788
* group[=].element[=].target[=].display = "pramipeksol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22693
* group[=].element[=].display = "прасугрель"
* group[=].element[=].target[+].code = #005778
* group[=].element[=].target[=].display = "prazugrel"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #22711
* group[=].element[=].display = "преднизолон"
* group[=].element[=].target[+].code = #005807
* group[=].element[=].target[=].display = "prednizolon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22716
* group[=].element[=].display = "прегабалин"
* group[=].element[=].target[+].code = #005802
* group[=].element[=].target[=].display = "pregabalin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22724
* group[=].element[=].display = "преноксдиазин"
* group[=].element[=].target[+].code = #005825
* group[=].element[=].target[=].display = "prenoksdiazin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22737
* group[=].element[=].display = "прилокаин"
* group[=].element[=].target[+].code = #005839
* group[=].element[=].target[=].display = "prilokain"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22756
* group[=].element[=].display = "прокаин"
* group[=].element[=].target[+].code = #005872
* group[=].element[=].target[=].display = "prokain"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22776
* group[=].element[=].display = "прогестерон"
* group[=].element[=].target[+].code = #005863
* group[=].element[=].target[=].display = "progesteron"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22782
* group[=].element[=].display = "пролин"
* group[=].element[=].target[+].code = #005889
* group[=].element[=].target[=].display = "prolin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22789
* group[=].element[=].display = "прометазин"
* group[=].element[=].target[+].code = #005896
* group[=].element[=].target[=].display = "prometazin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22794
* group[=].element[=].display = "пропарацетамол"
* group[=].element[=].target[+].code = #005325
* group[=].element[=].target[=].display = "paratsetamol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #22795
* group[=].element[=].display = "пропафенон"
* group[=].element[=].target[+].code = #005908
* group[=].element[=].target[=].display = "propafenon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22818
* group[=].element[=].display = "пропофол"
* group[=].element[=].target[+].code = #005934
* group[=].element[=].target[=].display = "propofol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22825
* group[=].element[=].display = "пропилтиоурацил"
* group[=].element[=].target[+].code = #005922
* group[=].element[=].target[=].display = "propiltiouratsil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22827
* group[=].element[=].display = "пропифеназон"
* group[=].element[=].target[+].code = #005930
* group[=].element[=].target[=].display = "propifenazon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22838
* group[=].element[=].display = "протамина сульфат"
* group[=].element[=].target[+].code = #005944
* group[=].element[=].target[=].display = "protamina sulfat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22845
* group[=].element[=].display = "протионамида"
* group[=].element[=].target[+].code = #005949
* group[=].element[=].target[=].display = "protionamid"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #22873
* group[=].element[=].display = "сульбактам"
* group[=].element[=].target[+].code = #006779
* group[=].element[=].target[=].display = "sulbaktam"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22886
* group[=].element[=].display = "сульфацетамид"
* group[=].element[=].target[+].code = #006850
* group[=].element[=].target[=].display = "sulfatsetamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22917
* group[=].element[=].display = "сульфаниламид"
* group[=].element[=].target[+].code = #006828
* group[=].element[=].target[=].display = "sulfanilamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22926
* group[=].element[=].display = "сульфасалазин"
* group[=].element[=].target[+].code = #006835
* group[=].element[=].target[=].display = "sulfasalazin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22930
* group[=].element[=].display = "сульфатиазол"
* group[=].element[=].target[+].code = #006839
* group[=].element[=].target[=].display = "sulfatiazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22953
* group[=].element[=].display = "ретинол"
* group[=].element[=].target[+].code = #006154
* group[=].element[=].target[=].display = "retinol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22963
* group[=].element[=].display = "рибофлавин"
* group[=].element[=].target[+].code = #006163
* group[=].element[=].target[=].display = "riboflavin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22976
* group[=].element[=].display = "рифамицина"
* group[=].element[=].target[+].code = #006242
* group[=].element[=].target[=].display = "rifamitsin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #22978
* group[=].element[=].display = "Рифаксимин"
* group[=].element[=].target[+].code = #006237
* group[=].element[=].target[=].display = "rifaksimin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22990
* group[=].element[=].display = "рилузол"
* group[=].element[=].target[+].code = #006201
* group[=].element[=].target[=].display = "riluzol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #22992
* group[=].element[=].display = "Римантадин"
* group[=].element[=].target[+].code = #006204
* group[=].element[=].target[=].display = "rimantadin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23006
* group[=].element[=].display = "ризедроновая кислота"
* group[=].element[=].target[+].code = #006182
* group[=].element[=].target[=].display = "rizedron kislotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23011
* group[=].element[=].display = "рисперидон"
* group[=].element[=].target[+].code = #006223
* group[=].element[=].target[=].display = "risperidon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23020
* group[=].element[=].display = "ритонавир"
* group[=].element[=].target[+].code = #006232
* group[=].element[=].target[=].display = "ritonavir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23023
* group[=].element[=].display = "ритуксимаб"
* group[=].element[=].target[+].code = #006235
* group[=].element[=].target[=].display = "rituksimab"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23025
* group[=].element[=].display = "ривароксабан"
* group[=].element[=].target[+].code = #006169
* group[=].element[=].target[=].display = "rivaroksaban"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23029
* group[=].element[=].display = "ризатриптан"
* group[=].element[=].target[+].code = #006181
* group[=].element[=].target[=].display = "rizatriptan"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23039
* group[=].element[=].display = "рокурония бромид"
* group[=].element[=].target[+].code = #006274
* group[=].element[=].target[=].display = "rokuroniy bromid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23090
* group[=].element[=].display = "розувастатин"
* group[=].element[=].target[+].code = #006261
* group[=].element[=].target[=].display = "rozuvastatin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23103
* group[=].element[=].display = "рокситромицин"
* group[=].element[=].target[+].code = #006270
* group[=].element[=].target[=].display = "roksitromitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23116
* group[=].element[=].display = "Рутозид"
* group[=].element[=].target[+].code = #006350
* group[=].element[=].target[=].display = "rutozid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23135
* group[=].element[=].display = "сальбутамол"
* group[=].element[=].target[+].code = #006391
* group[=].element[=].target[=].display = "salbutamol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23141
* group[=].element[=].display = "салициламид"
* group[=].element[=].target[+].code = #006380
* group[=].element[=].target[=].display = "salitsilamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23146
* group[=].element[=].display = "салметерол"
* group[=].element[=].target[+].code = #006384
* group[=].element[=].target[=].display = "salmeterol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23163
* group[=].element[=].display = "сапроптерин"
* group[=].element[=].target[+].code = #006409
* group[=].element[=].target[=].display = "sapropterin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23194
* group[=].element[=].display = "секнидазол"
* group[=].element[=].target[+].code = #006462
* group[=].element[=].target[=].display = "seknidazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23205
* group[=].element[=].display = "селенометионин (75Se)"
* group[=].element[=].target[+].code = #006473
* group[=].element[=].target[=].display = "selenometionin (75Se)"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23213
* group[=].element[=].display = "семаглутид"
* group[=].element[=].target[+].code = #006488
* group[=].element[=].target[=].display = "semaglutid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23230
* group[=].element[=].display = "секвифенадин"
* group[=].element[=].target[+].code = #006460
* group[=].element[=].target[=].display = "sekvifenadin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23238
* group[=].element[=].display = "L-серин"
* group[=].element[=].target[+].code = #006520
* group[=].element[=].target[=].display = "serin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #23242
* group[=].element[=].display = "серрапептаза"
* group[=].element[=].target[+].code = #006524
* group[=].element[=].target[=].display = "serrapeptaza"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23243
* group[=].element[=].display = "сертаконазол"
* group[=].element[=].target[+].code = #006525
* group[=].element[=].target[=].display = "sertakonazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23245
* group[=].element[=].display = "сертралин"
* group[=].element[=].target[+].code = #006527
* group[=].element[=].target[=].display = "sertralin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23253
* group[=].element[=].display = "Севеламер"
* group[=].element[=].target[+].code = #006446
* group[=].element[=].target[=].display = "sevelamer"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23256
* group[=].element[=].display = "севофлуран"
* group[=].element[=].target[+].code = #006451
* group[=].element[=].target[=].display = "sevofluran"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23265
* group[=].element[=].display = "сибутрамин"
* group[=].element[=].target[+].code = #006544
* group[=].element[=].target[=].display = "sibutramin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23271
* group[=].element[=].display = "силденафил"
* group[=].element[=].target[+].code = #006552
* group[=].element[=].target[=].display = "sildenafil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23275
* group[=].element[=].display = "силодозин"
* group[=].element[=].target[+].code = #006557
* group[=].element[=].target[=].display = "silodozin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23282
* group[=].element[=].display = "симетикон"
* group[=].element[=].target[+].code = #006567
* group[=].element[=].target[=].display = "simetikon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23287
* group[=].element[=].display = "симвастатин"
* group[=].element[=].target[+].code = #006563
* group[=].element[=].target[=].display = "simvastatin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23301
* group[=].element[=].display = "Моногидрат фосфата ситаглиптина"
* group[=].element[=].target[+].code = #006591
* group[=].element[=].target[=].display = "sitagliptin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #23318
* group[=].element[=].display = "аскорбат натрия"
* group[=].element[=].target[+].code = #004625
* group[=].element[=].target[=].display = "natriy askorbat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #23330
* group[=].element[=].display = "Фередетат натрия"
* group[=].element[=].target[+].code = #004656
* group[=].element[=].target[=].display = "natriy feredetat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #23345
* group[=].element[=].display = "пикосульфат натрия"
* group[=].element[=].target[+].code = #004649
* group[=].element[=].target[=].display = "natriy pikosulfat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #23348
* group[=].element[=].display = "тетрадецилсульфат натрия"
* group[=].element[=].target[+].code = #004653
* group[=].element[=].target[=].display = "natriy tetradetsilsulfat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #23358
* group[=].element[=].display = "солифенацин"
* group[=].element[=].target[+].code = #006617
* group[=].element[=].target[=].display = "solifenatsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23369
* group[=].element[=].display = "соматропин"
* group[=].element[=].target[+].code = #006632
* group[=].element[=].target[=].display = "somatropin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23385
* group[=].element[=].display = "сорафениб"
* group[=].element[=].target[+].code = #006650
* group[=].element[=].target[=].display = "sorafenib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23415
* group[=].element[=].display = "спирамицин"
* group[=].element[=].target[+].code = #006693
* group[=].element[=].target[=].display = "spiramitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23427
* group[=].element[=].display = "спиронолактон"
* group[=].element[=].target[+].code = #006706
* group[=].element[=].target[=].display = "spironolakton"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23457
* group[=].element[=].display = "стрептодорназа"
* group[=].element[=].target[+].code = #006735
* group[=].element[=].target[=].display = "streptodornaza"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23458
* group[=].element[=].display = "стрептокиназа"
* group[=].element[=].target[+].code = #006737
* group[=].element[=].target[=].display = "streptokinaza"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23459
* group[=].element[=].display = "стрептомицин"
* group[=].element[=].target[+].code = #006738
* group[=].element[=].target[=].display = "streptomitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23472
* group[=].element[=].display = "сукральфат"
* group[=].element[=].target[+].code = #006751
* group[=].element[=].target[=].display = "sukralfat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23477
* group[=].element[=].display = "тоцилизумаб"
* group[=].element[=].target[+].code = #007532
* group[=].element[=].target[=].display = "totsilizumab"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23487
* group[=].element[=].display = "тофизопам"
* group[=].element[=].target[+].code = #007527
* group[=].element[=].target[=].display = "tofizopam"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23539
* group[=].element[=].display = "топирамат"
* group[=].element[=].target[+].code = #007501
* group[=].element[=].target[=].display = "topiramat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23547
* group[=].element[=].display = "торасемид"
* group[=].element[=].target[+].code = #007509
* group[=].element[=].target[=].display = "torasemid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23566
* group[=].element[=].display = "трабектедин"
* group[=].element[=].target[+].code = #007534
* group[=].element[=].target[=].display = "trabektedin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23573
* group[=].element[=].display = "трамадол"
* group[=].element[=].target[+].code = #007549
* group[=].element[=].target[=].display = "tramadol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23578
* group[=].element[=].display = "транексамовая кислота"
* group[=].element[=].target[+].code = #007555
* group[=].element[=].target[=].display = "traneksam kislotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23586
* group[=].element[=].display = "трастузумаб"
* group[=].element[=].target[+].code = #007564
* group[=].element[=].target[=].display = "trastuzumab"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23587
* group[=].element[=].display = "травопрост"
* group[=].element[=].target[+].code = #007537
* group[=].element[=].target[=].display = "travoprost"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23620
* group[=].element[=].display = "третиноин"
* group[=].element[=].target[+].code = #007597
* group[=].element[=].target[=].display = "tretinoin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23625
* group[=].element[=].display = "триамцинолон"
* group[=].element[=].target[+].code = #007608
* group[=].element[=].target[=].display = "triamsinolon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23657
* group[=].element[=].display = "сулодексид"
* group[=].element[=].target[+].code = #006770
* group[=].element[=].target[=].display = "sulodeksid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23663
* group[=].element[=].display = "сульпирид"
* group[=].element[=].target[+].code = #006792
* group[=].element[=].target[=].display = "sulpirid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23666
* group[=].element[=].display = "сультамициллина"
* group[=].element[=].target[+].code = #006795
* group[=].element[=].target[=].display = "sultamitsillin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #23676
* group[=].element[=].display = "суматриптан"
* group[=].element[=].target[+].code = #006863
* group[=].element[=].target[=].display = "sumatriptan"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23681
* group[=].element[=].display = "сунитиниб"
* group[=].element[=].target[+].code = #006868
* group[=].element[=].target[=].display = "sunitinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23695
* group[=].element[=].display = "суксаметония хлорид"
* group[=].element[=].target[+].code = #006753
* group[=].element[=].target[=].display = "suksametoniy xlorid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23710
* group[=].element[=].display = "такролимус"
* group[=].element[=].target[+].code = #006922
* group[=].element[=].target[=].display = "takrolimus"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23711
* group[=].element[=].display = "тадалафил"
* group[=].element[=].target[+].code = #006901
* group[=].element[=].target[=].display = "tadalafil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23717
* group[=].element[=].display = "тафлупрост"
* group[=].element[=].target[+].code = #007012
* group[=].element[=].target[=].display = "tafluprost"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23758
* group[=].element[=].display = "тамоксифен"
* group[=].element[=].target[+].code = #006965
* group[=].element[=].target[=].display = "tamoksifen"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23760
* group[=].element[=].display = "тамсулозина гидрохлорид"
* group[=].element[=].target[+].code = #006968
* group[=].element[=].target[=].display = "tamsulozin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #23790
* group[=].element[=].display = "таурин"
* group[=].element[=].target[+].code = #007003
* group[=].element[=].target[=].display = "taurin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23803
* group[=].element[=].display = "тазобактам"
* group[=].element[=].target[+].code = #006912
* group[=].element[=].target[=].display = "tazobaktam"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23855
* group[=].element[=].display = "телмисартан"
* group[=].element[=].target[+].code = #007068
* group[=].element[=].target[=].display = "telmisartan"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23870
* group[=].element[=].display = "Темозоломид"
* group[=].element[=].target[+].code = #007081
* group[=].element[=].target[=].display = "temozolomid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23888
* group[=].element[=].display = "тенофовир"
* group[=].element[=].target[+].code = #007114
* group[=].element[=].target[=].display = "tenofovir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23889
* group[=].element[=].display = "тенонитрозол"
* group[=].element[=].target[+].code = #007112
* group[=].element[=].target[=].display = "tenonitrozol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23892
* group[=].element[=].display = "теноксикам"
* group[=].element[=].target[+].code = #007111
* group[=].element[=].target[=].display = "tenoksikam"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23907
* group[=].element[=].display = "тербинафин"
* group[=].element[=].target[+].code = #007134
* group[=].element[=].target[=].display = "terbinafin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23913
* group[=].element[=].display = "тербуталин"
* group[=].element[=].target[+].code = #007138
* group[=].element[=].target[=].display = "terbutalin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23915
* group[=].element[=].display = "терконазол"
* group[=].element[=].target[+].code = #007148
* group[=].element[=].target[=].display = "terkonazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23928
* group[=].element[=].display = "Тернидазол"
* group[=].element[=].target[+].code = #007151
* group[=].element[=].target[=].display = "ternidazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23944
* group[=].element[=].display = "тестостерон"
* group[=].element[=].target[+].code = #007167
* group[=].element[=].target[=].display = "testosteron"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23949
* group[=].element[=].display = "тетракаин"
* group[=].element[=].target[+].code = #007175
* group[=].element[=].target[=].display = "tetrakain"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23951
* group[=].element[=].display = "тетрациклин"
* group[=].element[=].target[+].code = #007180
* group[=].element[=].target[=].display = "tetratsiklin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23953
* group[=].element[=].display = "тетраметрин"
* group[=].element[=].target[+].code = #007551
* group[=].element[=].target[=].display = "trametinib"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #23965
* group[=].element[=].display = "тетризолин"
* group[=].element[=].target[+].code = #007182
* group[=].element[=].target[=].display = "tetrizolin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23977
* group[=].element[=].display = "теофиллин эфедрин"
* group[=].element[=].target[+].code = #007122
* group[=].element[=].target[=].display = "teofillin efedrin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23980
* group[=].element[=].display = "тиамазол"
* group[=].element[=].target[+].code = #007221
* group[=].element[=].target[=].display = "tiamazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23982
* group[=].element[=].display = "тиамин"
* group[=].element[=].target[+].code = #007226
* group[=].element[=].target[=].display = "tiamin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23989
* group[=].element[=].display = "тиоколхикозид"
* group[=].element[=].target[+].code = #007347
* group[=].element[=].target[=].display = "tiokolxikozid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #23994
* group[=].element[=].display = "тиопентал натрия"
* group[=].element[=].target[+].code = #007359
* group[=].element[=].target[=].display = "tiopental natriy"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24002
* group[=].element[=].display = "треонин"
* group[=].element[=].target[+].code = #007585
* group[=].element[=].target[=].display = "treonin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24009
* group[=].element[=].display = "тимопентин"
* group[=].element[=].target[+].code = #007327
* group[=].element[=].target[=].display = "timopentin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24046
* group[=].element[=].display = "тикагрелор"
* group[=].element[=].target[+].code = #007280
* group[=].element[=].target[=].display = "tikagrelor"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24049
* group[=].element[=].display = "тикарциллин"
* group[=].element[=].target[+].code = #007283
* group[=].element[=].target[=].display = "tikarsillin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24074
* group[=].element[=].display = "тигециклин"
* group[=].element[=].target[+].code = #007259
* group[=].element[=].target[=].display = "tigetsiklin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24091
* group[=].element[=].display = "тилорон"
* group[=].element[=].target[+].code = #007310
* group[=].element[=].target[=].display = "tiloron"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24104
* group[=].element[=].display = "тимолол"
* group[=].element[=].target[+].code = #007324
* group[=].element[=].target[=].display = "timolol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24109
* group[=].element[=].display = "тинидазол"
* group[=].element[=].target[+].code = #007335
* group[=].element[=].target[=].display = "tinidazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24132
* group[=].element[=].display = "тиотропия бромид"
* group[=].element[=].target[+].code = #007373
* group[=].element[=].target[=].display = "tiotropiy bromid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24174
* group[=].element[=].display = "тизанидин"
* group[=].element[=].target[+].code = #007270
* group[=].element[=].target[=].display = "tizanidin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24179
* group[=].element[=].display = "тобрамицин"
* group[=].element[=].target[+].code = #007426
* group[=].element[=].target[=].display = "tobramitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24196
* group[=].element[=].display = "Трифлуоперазин"
* group[=].element[=].target[+].code = #007680
* group[=].element[=].target[=].display = "trifluoperazin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24199
* group[=].element[=].display = "трифлуридин"
* group[=].element[=].target[+].code = #007683
* group[=].element[=].target[=].display = "trifluridin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24204
* group[=].element[=].display = "тригексифенидил"
* group[=].element[=].target[+].code = #007619
* group[=].element[=].target[=].display = "trigeksifenidil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24208
* group[=].element[=].display = "тримебутин"
* group[=].element[=].target[+].code = #007642
* group[=].element[=].target[=].display = "trimebutin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24212
* group[=].element[=].display = "тримеперидин"
* group[=].element[=].target[+].code = #007647
* group[=].element[=].target[=].display = "trimeperidin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24215
* group[=].element[=].display = "триметазидин"
* group[=].element[=].target[+].code = #007649
* group[=].element[=].target[=].display = "trimetazidin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24219
* group[=].element[=].display = "триметоприм"
* group[=].element[=].target[+].code = #007655
* group[=].element[=].target[=].display = "trimetoprim"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24234
* group[=].element[=].display = "трипторелина"
* group[=].element[=].target[+].code = #007669
* group[=].element[=].target[=].display = "triptorelin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #24244
* group[=].element[=].display = "троламин"
* group[=].element[=].target[+].code = #007704
* group[=].element[=].target[=].display = "trolamin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #24248
* group[=].element[=].display = "трометамол"
* group[=].element[=].target[+].code = #007711
* group[=].element[=].target[=].display = "trometamol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24255
* group[=].element[=].display = "тропикамид"
* group[=].element[=].target[+].code = #007719
* group[=].element[=].target[=].display = "tropikamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24258
* group[=].element[=].display = "трописетрон"
* group[=].element[=].target[+].code = #007721
* group[=].element[=].target[=].display = "tropisetron"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24267
* group[=].element[=].display = "Троксерутин"
* group[=].element[=].target[+].code = #007698
* group[=].element[=].target[=].display = "trokserutin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24276
* group[=].element[=].display = "триптофан"
* group[=].element[=].target[+].code = #007670
* group[=].element[=].target[=].display = "triptofan"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24277
* group[=].element[=].display = "туаминогептан"
* group[=].element[=].target[+].code = #007732
* group[=].element[=].target[=].display = "tuaminogeptan"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24295
* group[=].element[=].display = "тирозин"
* group[=].element[=].target[+].code = #007401
* group[=].element[=].target[=].display = "tirozin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24296
* group[=].element[=].display = "Тиротрицин"
* group[=].element[=].target[+].code = #007405
* group[=].element[=].target[=].display = "tirotritsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24300
* group[=].element[=].display = "уденафил"
* group[=].element[=].target[+].code = #007754
* group[=].element[=].target[=].display = "udenafil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24306
* group[=].element[=].display = "улинастатин"
* group[=].element[=].target[+].code = #007759
* group[=].element[=].target[=].display = "ulinastatin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24307
* group[=].element[=].display = "улипристал"
* group[=].element[=].target[+].code = #007760
* group[=].element[=].target[=].display = "ulipristal"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24319
* group[=].element[=].display = "урофоллитропин"
* group[=].element[=].target[+].code = #007786
* group[=].element[=].target[=].display = "urofollitropin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24322
* group[=].element[=].display = "Урсодеоксихолевая кислота"
* group[=].element[=].target[+].code = #007787
* group[=].element[=].target[=].display = "ursodezoksixol kislotasi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #24331
* group[=].element[=].display = "валацикловир"
* group[=].element[=].target[+].code = #001312
* group[=].element[=].target[=].display = "valatsiklovir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24338
* group[=].element[=].display = "валганцикловир"
* group[=].element[=].target[+].code = #001314
* group[=].element[=].target[=].display = "valgansiklovir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24339
* group[=].element[=].display = "валин"
* group[=].element[=].target[+].code = #001318
* group[=].element[=].target[=].display = "valin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24348
* group[=].element[=].display = "вальпроевая кислота"
* group[=].element[=].target[+].code = #001335
* group[=].element[=].target[=].display = "valproy kilotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24352
* group[=].element[=].display = "валсартан"
* group[=].element[=].target[+].code = #001329
* group[=].element[=].target[=].display = "valsartan"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24357
* group[=].element[=].display = "ванкомицин"
* group[=].element[=].target[+].code = #001347
* group[=].element[=].target[=].display = "vankomitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24369
* group[=].element[=].display = "варденафил"
* group[=].element[=].target[+].code = #001357
* group[=].element[=].target[=].display = "vardenafil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24370
* group[=].element[=].display = "варениклин"
* group[=].element[=].target[+].code = #001358
* group[=].element[=].target[=].display = "vareniklin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24391
* group[=].element[=].display = "венлафаксин"
* group[=].element[=].target[+].code = #001392
* group[=].element[=].target[=].display = "venlafaksin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24396
* group[=].element[=].display = "верапамил"
* group[=].element[=].target[+].code = #001398
* group[=].element[=].target[=].display = "verapamil"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24412
* group[=].element[=].display = "вилдаглиптин"
* group[=].element[=].target[+].code = #001431
* group[=].element[=].target[=].display = "vildagliptin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24418
* group[=].element[=].display = "винкамин"
* group[=].element[=].target[+].code = #001443
* group[=].element[=].target[=].display = "vinkamin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24434
* group[=].element[=].display = "винорелбин"
* group[=].element[=].target[+].code = #001452
* group[=].element[=].target[=].display = "vinorelbin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24435
* group[=].element[=].display = "винпоцетин"
* group[=].element[=].target[+].code = #001454
* group[=].element[=].target[=].display = "vinpotsetin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24463
* group[=].element[=].display = "вориконазол"
* group[=].element[=].target[+].code = #001497
* group[=].element[=].target[=].display = "vorikonazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24469
* group[=].element[=].display = "варфарин"
* group[=].element[=].target[+].code = #001362
* group[=].element[=].target[=].display = "varfarin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24517
* group[=].element[=].display = "залеплон"
* group[=].element[=].target[+].code = #002504
* group[=].element[=].target[=].display = "zaleplon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24523
* group[=].element[=].display = "занамивир"
* group[=].element[=].target[+].code = #002512
* group[=].element[=].target[=].display = "zanamivir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24545
* group[=].element[=].display = "зидовудин"
* group[=].element[=].target[+].code = #002536
* group[=].element[=].target[=].display = "zidovudin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24553
* group[=].element[=].display = "ацетат цинка, основной"
* group[=].element[=].target[+].code = #008722
* group[=].element[=].target[=].display = "sinka atsetat asosiy"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #24562
* group[=].element[=].display = "зипрасидон"
* group[=].element[=].target[+].code = #002555
* group[=].element[=].target[=].display = "ziprasidon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24571
* group[=].element[=].display = "золедроновая кислота"
* group[=].element[=].target[+].code = #002563
* group[=].element[=].target[=].display = "zoledron kislotasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24577
* group[=].element[=].display = "золмитриптан"
* group[=].element[=].target[+].code = #002571
* group[=].element[=].target[=].display = "zolmitriptan"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24585
* group[=].element[=].display = "зонисамид"
* group[=].element[=].target[+].code = #002580
* group[=].element[=].target[=].display = "zonisamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24586
* group[=].element[=].display = "зопиклон"
* group[=].element[=].target[+].code = #002581
* group[=].element[=].target[=].display = "zopiklon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24602
* group[=].element[=].display = "аминокислота"
* group[=].element[=].noMap = true
* group[=].element[+].code = #24606
* group[=].element[=].display = "Ацетилсалициловая кислота"
* group[=].element[=].noMap = true
* group[=].element[+].code = #24608
* group[=].element[=].display = "Даклатасвир"
* group[=].element[=].target[+].code = #001867
* group[=].element[=].target[=].display = "daklatasvir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24609
* group[=].element[=].display = "Софосбувир"
* group[=].element[=].target[+].code = #006674
* group[=].element[=].target[=].display = "sofosbuvir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24611
* group[=].element[=].display = "Ледипасвир"
* group[=].element[=].target[+].code = #003655
* group[=].element[=].target[=].display = "ledipasvir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24612
* group[=].element[=].display = "Велпатасвир"
* group[=].element[=].target[+].code = #001386
* group[=].element[=].target[=].display = "velpatasvir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24613
* group[=].element[=].display = "этиловый спирт 70%"
* group[=].element[=].noMap = true
* group[=].element[+].code = #24615
* group[=].element[=].display = "Сорбитол"
* group[=].element[=].noMap = true
* group[=].element[+].code = #24616
* group[=].element[=].display = "Долутегравир"
* group[=].element[=].target[+].code = #002402
* group[=].element[=].target[=].display = "dolutegravir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24620
* group[=].element[=].display = "лизина ацетат"
* group[=].element[=].target[+].code = #003742
* group[=].element[=].target[=].display = "lizin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #24621
* group[=].element[=].display = "вода для инъекций"
* group[=].element[=].noMap = true
* group[=].element[+].code = #24625
* group[=].element[=].display = "Декстроза"
* group[=].element[=].target[+].code = #002019
* group[=].element[=].target[=].display = "dekstran"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #24627
* group[=].element[=].display = "Магния сульфат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #24639
* group[=].element[=].display = "масло мяты перечной"
* group[=].element[=].noMap = true
* group[=].element[+].code = #24643
* group[=].element[=].display = "Тиамина хлорид"
* group[=].element[=].target[+].code = #007226
* group[=].element[=].target[=].display = "tiamin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #24644
* group[=].element[=].display = "Ондансетрон"
* group[=].element[=].target[+].code = #005179
* group[=].element[=].target[=].display = "ondansetron"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24649
* group[=].element[=].display = "Формотерола фумарата дигидрат"
* group[=].element[=].target[+].code = #008255
* group[=].element[=].target[=].display = "formoterol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #24654
* group[=].element[=].display = "Калия хлорид"
* group[=].element[=].noMap = true
* group[=].element[+].code = #24655
* group[=].element[=].display = "Мирамистин"
* group[=].element[=].noMap = true
* group[=].element[+].code = #24661
* group[=].element[=].display = "Магния гидроксид"
* group[=].element[=].noMap = true
* group[=].element[+].code = #24665
* group[=].element[=].display = "морфолиниевая соль тиазотной кислоты"
* group[=].element[=].target[+].code = #007216
* group[=].element[=].target[=].display = "tiazot kislotasi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #24666
* group[=].element[=].display = "Альбумин"
* group[=].element[=].target[+].code = #000327
* group[=].element[=].target[=].display = "yodlangan zardobli  odam albumini (125I)"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #24670
* group[=].element[=].display = "Орнитина гидрохлорида"
* group[=].element[=].target[+].code = #005218
* group[=].element[=].target[=].display = "ornitin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #24672
* group[=].element[=].display = "L-Лизина гидрохлорид"
* group[=].element[=].target[+].code = #003742
* group[=].element[=].target[=].display = "lizin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #24673
* group[=].element[=].display = "Натрия гидроксид"
* group[=].element[=].noMap = true
* group[=].element[+].code = #24674
* group[=].element[=].display = "йод"
* group[=].element[=].noMap = true
* group[=].element[+].code = #24686
* group[=].element[=].display = "моноаммония глицирризинат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #24695
* group[=].element[=].display = "aмлодипина беcилат"
* group[=].element[=].target[+].code = #000431
* group[=].element[=].target[=].display = "amlodipin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #24696
* group[=].element[=].display = "борная кислота"
* group[=].element[=].noMap = true
* group[=].element[+].code = #24698
* group[=].element[=].display = "Кальция глюконат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #24701
* group[=].element[=].display = "Амоксициллина тригидрат"
* group[=].element[=].target[+].code = #000439
* group[=].element[=].target[=].display = "amoksitsillin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #24707
* group[=].element[=].display = "триглицериды средней цепи"
* group[=].element[=].noMap = true
* group[=].element[+].code = #24724
* group[=].element[=].display = "Неостигмин метилсульфат"
* group[=].element[=].target[+].code = #004727
* group[=].element[=].target[=].display = "neostigmina bromid"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #24730
* group[=].element[=].display = "Тиоктовая кислота"
* group[=].element[=].target[+].code = #007354
* group[=].element[=].target[=].display = "tioktilat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #24732
* group[=].element[=].display = "тиотриазолин"
* group[=].element[=].target[+].code = #007216
* group[=].element[=].target[=].display = "tiazot kislotasi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #24737
* group[=].element[=].display = "пирацин"
* group[=].element[=].noMap = true
* group[=].element[+].code = #24740
* group[=].element[=].display = "яблочная кислота"
* group[=].element[=].noMap = true
* group[=].element[+].code = #24741
* group[=].element[=].display = "Ацетат натрия"
* group[=].element[=].noMap = true
* group[=].element[+].code = #24742
* group[=].element[=].display = "ацетат калия"
* group[=].element[=].noMap = true
* group[=].element[+].code = #24744
* group[=].element[=].display = "натрия цитрат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #24750
* group[=].element[=].display = "Рыбий жир очищенный"
* group[=].element[=].noMap = true
* group[=].element[+].code = #24751
* group[=].element[=].display = "оливковое масло"
* group[=].element[=].noMap = true
* group[=].element[+].code = #24754
* group[=].element[=].display = "Кофеин"
* group[=].element[=].noMap = true
* group[=].element[+].code = #24755
* group[=].element[=].display = "L-Лизина Эсцинат"
* group[=].element[=].target[+].code = #003742
* group[=].element[=].target[=].display = "lizin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #24782
* group[=].element[=].display = "сульфаметоксазол"
* group[=].element[=].target[+].code = #006821
* group[=].element[=].target[=].display = "sulfametoksazol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24786
* group[=].element[=].display = "Траву зверобоя"
* group[=].element[=].noMap = true
* group[=].element[+].code = #24788
* group[=].element[=].display = "Калия L-Аспартат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #24792
* group[=].element[=].display = "декскетопрофена"
* group[=].element[=].target[+].code = #001995
* group[=].element[=].target[=].display = "deksketoprofen"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #24793
* group[=].element[=].display = "Теофиллин"
* group[=].element[=].noMap = true
* group[=].element[+].code = #24797
* group[=].element[=].display = "Хондроитина сульфат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #24803
* group[=].element[=].display = "глюкоза"
* group[=].element[=].noMap = true
* group[=].element[+].code = #24825
* group[=].element[=].display = "L-Треонин"
* group[=].element[=].target[+].code = #007585
* group[=].element[=].target[=].display = "treonin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #24826
* group[=].element[=].display = "L-Тирозин"
* group[=].element[=].target[+].code = #007401
* group[=].element[=].target[=].display = "tirozin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #24835
* group[=].element[=].display = "Диоксометилтетрагидропиримидин"
* group[=].element[=].target[+].code = #004212
* group[=].element[=].target[=].display = "metiltiouratsil"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #24838
* group[=].element[=].display = "Метилурацил"
* group[=].element[=].target[+].code = #004212
* group[=].element[=].target[=].display = "metiltiouratsil"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #24843
* group[=].element[=].display = "Этанол"
* group[=].element[=].noMap = true
* group[=].element[+].code = #24846
* group[=].element[=].display = "офлоксацин"
* group[=].element[=].target[+].code = #005249
* group[=].element[=].target[=].display = "ofloksatsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24849
* group[=].element[=].display = "Витамин B1"
* group[=].element[=].noMap = true
* group[=].element[+].code = #24851
* group[=].element[=].display = "ЖЕЛЕЗА ФУМАРАТ"
* group[=].element[=].noMap = true
* group[=].element[+].code = #24852
* group[=].element[=].display = "Цинк"
* group[=].element[=].noMap = true
* group[=].element[+].code = #24882
* group[=].element[=].display = "натрия глицерофосфат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #24883
* group[=].element[=].display = "Цинка сульфат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #24904
* group[=].element[=].display = "ксилитол"
* group[=].element[=].noMap = true
* group[=].element[+].code = #24907
* group[=].element[=].display = "рутозида тригидрат"
* group[=].element[=].target[+].code = #006350
* group[=].element[=].target[=].display = "rutozid"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #24921
* group[=].element[=].display = "Железа глюконат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #24922
* group[=].element[=].display = "тиамина гидрохлорид"
* group[=].element[=].target[+].code = #007226
* group[=].element[=].target[=].display = "tiamin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #24923
* group[=].element[=].display = "пиридоксина гидрохлорид"
* group[=].element[=].target[+].code = #005627
* group[=].element[=].target[=].display = "piridoksin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #24924
* group[=].element[=].display = "ниацинамид"
* group[=].element[=].noMap = true
* group[=].element[+].code = #24925
* group[=].element[=].display = "L-лизина моногидрат"
* group[=].element[=].target[+].code = #003742
* group[=].element[=].target[=].display = "lizin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #24926
* group[=].element[=].display = "Железа (III) Гидроксид сахарозный комплекс"
* group[=].element[=].noMap = true
* group[=].element[+].code = #24929
* group[=].element[=].display = "бензогексоний"
* group[=].element[=].target[+].code = #001607
* group[=].element[=].target[=].display = "geksametoniy bromid"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #24933
* group[=].element[=].display = "монтелукаст"
* group[=].element[=].target[+].code = #004487
* group[=].element[=].target[=].display = "montelukast"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24934
* group[=].element[=].display = "ксилометазолин"
* group[=].element[=].target[+].code = #003500
* group[=].element[=].target[=].display = "ksilometazolin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #24935
* group[=].element[=].display = "фенасал"
* group[=].element[=].target[+].code = #004783
* group[=].element[=].target[=].display = "niklozamid"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #24940
* group[=].element[=].display = "Флуороурацил"
* group[=].element[=].target[+].code = #008310
* group[=].element[=].target[=].display = "ftoruratsil"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #24948
* group[=].element[=].display = "янтарная кислота"
* group[=].element[=].noMap = true
* group[=].element[+].code = #24949
* group[=].element[=].display = "Льняное масло"
* group[=].element[=].noMap = true
* group[=].element[+].code = #24950
* group[=].element[=].display = "Метилсалицилат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #24953
* group[=].element[=].display = "кальция хлорид"
* group[=].element[=].noMap = true
* group[=].element[+].code = #24955
* group[=].element[=].display = "L-орнитин L-аспартат"
* group[=].element[=].target[+].code = #005218
* group[=].element[=].target[=].display = "ornitin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #24956
* group[=].element[=].display = "магния хлорид"
* group[=].element[=].noMap = true
* group[=].element[+].code = #36414
* group[=].element[=].display = "инсулин человечский"
* group[=].element[=].target[+].code = #002838
* group[=].element[=].target[=].display = "odam insulini"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #36943
* group[=].element[=].display = "толперизон"
* group[=].element[=].target[+].code = #007472
* group[=].element[=].target[=].display = "tolperizon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #37067
* group[=].element[=].display = "ацетил тирозин"
* group[=].element[=].noMap = true
* group[=].element[+].code = #37069
* group[=].element[=].display = "серин"
* group[=].element[=].target[+].code = #006520
* group[=].element[=].target[=].display = "serin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #37123
* group[=].element[=].display = "Салициловая кислота"
* group[=].element[=].noMap = true
* group[=].element[+].code = #37488
* group[=].element[=].display = "вальпроат натрия"
* group[=].element[=].target[+].code = #001335
* group[=].element[=].target[=].display = "valproy kilotasi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #37556
* group[=].element[=].display = "Цистин"
* group[=].element[=].target[+].code = #008784
* group[=].element[=].target[=].display = "sistin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #37961
* group[=].element[=].display = "Уксусная кислота"
* group[=].element[=].noMap = true
* group[=].element[+].code = #37965
* group[=].element[=].display = "натрий лактат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #38038
* group[=].element[=].display = "Папаверин"
* group[=].element[=].target[+].code = #005315
* group[=].element[=].target[=].display = "papaverolin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #38261
* group[=].element[=].display = "маннит"
* group[=].element[=].target[+].code = #003962
* group[=].element[=].target[=].display = "mannitola geksanitrat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #38405
* group[=].element[=].display = "Железа (III) гидроксид полимальтозат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #38577
* group[=].element[=].display = "Папаверина гидрохлорид"
* group[=].element[=].target[+].code = #005315
* group[=].element[=].target[=].display = "papaverolin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #38730
* group[=].element[=].display = "Тебаин"
* group[=].element[=].noMap = true
* group[=].element[+].code = #38975
* group[=].element[=].display = "железа сульфат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #39203
* group[=].element[=].display = "фосфатидилхолина из соевых бобов"
* group[=].element[=].noMap = true
* group[=].element[+].code = #39265
* group[=].element[=].display = "Натрия альгинат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #39268
* group[=].element[=].display = "кальция карбонат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #39269
* group[=].element[=].display = "колекальциферол"
* group[=].element[=].target[+].code = #003400
* group[=].element[=].target[=].display = "kolekalsiferol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #39272
* group[=].element[=].display = "Ацетаминофен"
* group[=].element[=].target[+].code = #005325
* group[=].element[=].target[=].display = "paratsetamol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #39273
* group[=].element[=].display = "Дицикломин"
* group[=].element[=].target[+].code = #002360
* group[=].element[=].target[=].display = "ditsikloverin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #39312
* group[=].element[=].display = "Железо"
* group[=].element[=].noMap = true
* group[=].element[+].code = #39313
* group[=].element[=].display = "Витамин B12"
* group[=].element[=].noMap = true
* group[=].element[+].code = #39315
* group[=].element[=].display = "рибофлавина натрия фосфат"
* group[=].element[=].target[+].code = #006163
* group[=].element[=].target[=].display = "riboflavin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #39316
* group[=].element[=].display = "D-пантенол"
* group[=].element[=].target[+].code = #005311
* group[=].element[=].target[=].display = "pantenol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #39325
* group[=].element[=].display = "Диоксид кремния"
* group[=].element[=].noMap = true
* group[=].element[+].code = #39326
* group[=].element[=].display = "Карбонильное железо"
* group[=].element[=].noMap = true
* group[=].element[+].code = #39327
* group[=].element[=].display = "Селенистая кислота"
* group[=].element[=].noMap = true
* group[=].element[+].code = #39331
* group[=].element[=].display = "Микофенолата мофетил"
* group[=].element[=].target[+].code = #004339
* group[=].element[=].target[=].display = "mikofenol kislotasi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #39340
* group[=].element[=].display = "ментола рацемического"
* group[=].element[=].noMap = true
* group[=].element[+].code = #39341
* group[=].element[=].display = "новокаин"
* group[=].element[=].noMap = true
* group[=].element[+].code = #39342
* group[=].element[=].display = "анестезин"
* group[=].element[=].noMap = true
* group[=].element[+].code = #39345
* group[=].element[=].display = "Лактозы моногидрат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #39350
* group[=].element[=].display = "ментол"
* group[=].element[=].target[+].code = #003620
* group[=].element[=].target[=].display = "levomentol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #39355
* group[=].element[=].display = "АНЕСТЕЗИН"
* group[=].element[=].noMap = true
* group[=].element[+].code = #39370
* group[=].element[=].display = "глюкозамина гидрохлорид"
* group[=].element[=].target[+].code = #001787
* group[=].element[=].target[=].display = "glyukozamin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #39380
* group[=].element[=].display = "Камфора"
* group[=].element[=].noMap = true
* group[=].element[+].code = #39383
* group[=].element[=].display = "Гинкго Билоба сухого экстракт"
* group[=].element[=].noMap = true
* group[=].element[+].code = #39384
* group[=].element[=].display = "прополис"
* group[=].element[=].noMap = true
* group[=].element[+].code = #39385
* group[=].element[=].display = "Цинка оксид"
* group[=].element[=].noMap = true
* group[=].element[+].code = #39425
* group[=].element[=].display = "Левомицетин"
* group[=].element[=].target[+].code = #008402
* group[=].element[=].target[=].display = "xloramfenikol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #39432
* group[=].element[=].display = "Аэросил"
* group[=].element[=].noMap = true
* group[=].element[+].code = #39453
* group[=].element[=].display = "жидкий экстракт из ЛРС"
* group[=].element[=].noMap = true
* group[=].element[+].code = #39468
* group[=].element[=].display = "Фенирамина малеат"
* group[=].element[=].target[+].code = #007928
* group[=].element[=].target[=].display = "feniramin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #39482
* group[=].element[=].display = "Бензилпенициллин Прокаин"
* group[=].element[=].noMap = true
* group[=].element[+].code = #39510
* group[=].element[=].display = "амброксола гидрохлорид"
* group[=].element[=].target[+].code = #000356
* group[=].element[=].target[=].display = "ambroksol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #39514
* group[=].element[=].display = "L- клоперастина фендизоат"
* group[=].element[=].target[+].code = #003329
* group[=].element[=].target[=].display = "kloperastin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #39546
* group[=].element[=].display = "грибковая диастаза"
* group[=].element[=].noMap = true
* group[=].element[+].code = #39767
* group[=].element[=].display = "Солодка голая"
* group[=].element[=].noMap = true
* group[=].element[+].code = #39784
* group[=].element[=].display = "ОБЛЕПИХОВОЕ МАСЛО"
* group[=].element[=].noMap = true
* group[=].element[+].code = #40343
* group[=].element[=].display = "Магния оксид"
* group[=].element[=].noMap = true
* group[=].element[+].code = #40355
* group[=].element[=].display = "Гентамицин сульфат"
* group[=].element[=].target[+].code = #001644
* group[=].element[=].target[=].display = "gentamitsin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #40603
* group[=].element[=].display = "Декстран 40"
* group[=].element[=].target[+].code = #002019
* group[=].element[=].target[=].display = "dekstran"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #40870
* group[=].element[=].display = "Метоксален"
* group[=].element[=].target[+].code = #004243
* group[=].element[=].target[=].display = "metoksamin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #40903
* group[=].element[=].display = "клавуланат калия"
* group[=].element[=].target[+].code = #003230
* group[=].element[=].target[=].display = "klavulon kislotasi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #40922
* group[=].element[=].display = "Энтекавир"
* group[=].element[=].target[+].code = #009050
* group[=].element[=].target[=].display = "entekavir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #41097
* group[=].element[=].display = "Сульфат марганца (II)"
* group[=].element[=].noMap = true
* group[=].element[+].code = #41098
* group[=].element[=].display = "Молибдат натрия"
* group[=].element[=].noMap = true
* group[=].element[+].code = #41099
* group[=].element[=].display = "Сульфат меди (II)"
* group[=].element[=].noMap = true
* group[=].element[+].code = #41100
* group[=].element[=].display = "Хром (III) хлорид"
* group[=].element[=].noMap = true
* group[=].element[+].code = #41738
* group[=].element[=].display = "Лимонная кислота"
* group[=].element[=].noMap = true
* group[=].element[+].code = #41911
* group[=].element[=].display = "Пирантела эмбонат"
* group[=].element[=].target[+].code = #005610
* group[=].element[=].target[=].display = "pirantel"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #41913
* group[=].element[=].display = "Марганца глюконат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #41976
* group[=].element[=].display = "L-Аспарагиновая кислота"
* group[=].element[=].target[+].code = #000628
* group[=].element[=].target[=].display = "asparagin kislotasi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #42035
* group[=].element[=].display = "Повидон-йодид"
* group[=].element[=].target[+].code = #005713
* group[=].element[=].target[=].display = "povidon"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #42121
* group[=].element[=].display = "Эвкалиптовое масло"
* group[=].element[=].noMap = true
* group[=].element[+].code = #42124
* group[=].element[=].display = "α-токоферола ацетат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #42126
* group[=].element[=].display = "тимол"
* group[=].element[=].noMap = true
* group[=].element[+].code = #42436
* group[=].element[=].display = "Эдетат натрия"
* group[=].element[=].target[+].code = #004644
* group[=].element[=].target[=].display = "natriy kalsiy edetat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #42461
* group[=].element[=].display = "витамин А"
* group[=].element[=].noMap = true
* group[=].element[+].code = #42463
* group[=].element[=].display = "лактобактерии спорогены"
* group[=].element[=].noMap = true
* group[=].element[+].code = #42653
* group[=].element[=].display = "Мята перечная"
* group[=].element[=].noMap = true
* group[=].element[+].code = #42763
* group[=].element[=].display = "Тестостерона пропионат"
* group[=].element[=].target[+].code = #007167
* group[=].element[=].target[=].display = "testosteron"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #42764
* group[=].element[=].display = "тестостерон фенилпропионат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #42765
* group[=].element[=].display = "Изокапроат тестостерона"
* group[=].element[=].noMap = true
* group[=].element[+].code = #42777
* group[=].element[=].display = "Антоционидины"
* group[=].element[=].noMap = true
* group[=].element[+].code = #42825
* group[=].element[=].display = "Фруктоза Натрия Дифосфат"
* group[=].element[=].target[+].code = #008286
* group[=].element[=].target[=].display = "fosfruktoza"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #42938
* group[=].element[=].display = "Бензилникотинат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #42951
* group[=].element[=].display = "Натрия гиалуронат"
* group[=].element[=].target[+].code = #008714
* group[=].element[=].target[=].display = "singialuronat natriy"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #43010
* group[=].element[=].display = "АЛЛТРОМБОСЕПИН"
* group[=].element[=].noMap = true
* group[=].element[+].code = #43082
* group[=].element[=].display = "Фруктоза-1,6-дифосфата тринатриевой соли тригидрата"
* group[=].element[=].target[+].code = #008286
* group[=].element[=].target[=].display = "fosfruktoza"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #43152
* group[=].element[=].display = "висмута субгаллат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #43155
* group[=].element[=].display = "Глюконат цинка"
* group[=].element[=].noMap = true
* group[=].element[+].code = #43157
* group[=].element[=].display = "Карбоксиметилцеллюлоза"
* group[=].element[=].target[+].code = #003157
* group[=].element[=].target[=].display = "karmelloza"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #43167
* group[=].element[=].display = "Вода очищенная"
* group[=].element[=].noMap = true
* group[=].element[+].code = #43193
* group[=].element[=].display = "Центелла азиатская"
* group[=].element[=].noMap = true
* group[=].element[+].code = #43197
* group[=].element[=].display = "Метилкобаламин"
* group[=].element[=].target[+].code = #004048
* group[=].element[=].target[=].display = "mekobalamin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #43200
* group[=].element[=].display = "5-Фторурацил"
* group[=].element[=].target[+].code = #008310
* group[=].element[=].target[=].display = "ftoruratsil"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #43213
* group[=].element[=].display = "рутина"
* group[=].element[=].target[+].code = #006350
* group[=].element[=].target[=].display = "rutozid"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #43224
* group[=].element[=].display = "Ланолин безводный"
* group[=].element[=].noMap = true
* group[=].element[+].code = #43246
* group[=].element[=].display = "Терпингидрат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #43258
* group[=].element[=].display = "Скипидарное масло"
* group[=].element[=].noMap = true
* group[=].element[+].code = #43276
* group[=].element[=].display = "Эсцин натрия"
* group[=].element[=].noMap = true
* group[=].element[+].code = #43295
* group[=].element[=].display = "витамин Д3"
* group[=].element[=].target[+].code = #003400
* group[=].element[=].target[=].display = "kolekalsiferol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #43299
* group[=].element[=].display = "Сахароза"
* group[=].element[=].noMap = true
* group[=].element[+].code = #43325
* group[=].element[=].display = "Фолиниевая кислота"
* group[=].element[=].target[+].code = #003050
* group[=].element[=].target[=].display = "kalsiy folinat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #43332
* group[=].element[=].display = "Поливиниловый спирт"
* group[=].element[=].noMap = true
* group[=].element[+].code = #43354
* group[=].element[=].display = "бензиловый никотин"
* group[=].element[=].noMap = true
* group[=].element[+].code = #43364
* group[=].element[=].display = "Силимарин"
* group[=].element[=].noMap = true
* group[=].element[+].code = #43376
* group[=].element[=].display = "Этилметилгидроксипиридина сукцинат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #43378
* group[=].element[=].display = "Руксолитиниб"
* group[=].element[=].target[+].code = #006343
* group[=].element[=].target[=].display = "ruksolitinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #43390
* group[=].element[=].display = "рекомбинантный эритропоэтин человека"
* group[=].element[=].noMap = true
* group[=].element[+].code = #43551
* group[=].element[=].display = "Масло фенхелевое"
* group[=].element[=].noMap = true
* group[=].element[+].code = #43557
* group[=].element[=].display = "Эмблика лекарственная"
* group[=].element[=].noMap = true
* group[=].element[+].code = #43626
* group[=].element[=].display = "Экстракт женьшеня"
* group[=].element[=].noMap = true
* group[=].element[+].code = #43630
* group[=].element[=].display = "Лецитин соевый"
* group[=].element[=].noMap = true
* group[=].element[+].code = #43639
* group[=].element[=].display = "морфина гидрохлорид"
* group[=].element[=].noMap = true
* group[=].element[+].code = #43643
* group[=].element[=].display = "Сакубитрил"
* group[=].element[=].target[+].code = #006366
* group[=].element[=].target[=].display = "sakubitril"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #43644
* group[=].element[=].display = "Акридонуксусная кислота"
* group[=].element[=].noMap = true
* group[=].element[+].code = #43645
* group[=].element[=].display = "гвайфенезин"
* group[=].element[=].target[+].code = #001595
* group[=].element[=].target[=].display = "gvayfenezin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #43647
* group[=].element[=].display = "Фенилэфрин гидрохлорид"
* group[=].element[=].target[+].code = #007919
* group[=].element[=].target[=].display = "fenilefrin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #43789
* group[=].element[=].display = "метабисульфит натрия"
* group[=].element[=].noMap = true
* group[=].element[+].code = #43804
* group[=].element[=].display = "Ретинола пальмитат"
* group[=].element[=].target[+].code = #006154
* group[=].element[=].target[=].display = "retinol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #43864
* group[=].element[=].display = "Гемигидрат хлорбутанола"
* group[=].element[=].noMap = true
* group[=].element[+].code = #43867
* group[=].element[=].display = "Камфора рацемическая"
* group[=].element[=].noMap = true
* group[=].element[+].code = #43877
* group[=].element[=].display = "СТРЕПТОЦИД РАСТВОРИМЫЙ"
* group[=].element[=].target[+].code = #006828
* group[=].element[=].target[=].display = "sulfanilamid"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #43879
* group[=].element[=].display = "Сульфатиазол натрия"
* group[=].element[=].target[+].code = #006839
* group[=].element[=].target[=].display = "sulfatiazol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #43912
* group[=].element[=].display = "Серратиопептидаза"
* group[=].element[=].target[+].code = #006524
* group[=].element[=].target[=].display = "serrapeptaza"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #43924
* group[=].element[=].display = "Димедрол"
* group[=].element[=].target[+].code = #002334
* group[=].element[=].target[=].display = "difengidramin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #43928
* group[=].element[=].display = "Хлорфенамина малеат"
* group[=].element[=].target[+].code = #008440
* group[=].element[=].target[=].display = "xlorfenamin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #43953
* group[=].element[=].display = "Хлорид марганца"
* group[=].element[=].noMap = true
* group[=].element[+].code = #44054
* group[=].element[=].display = "фосфат кальция"
* group[=].element[=].noMap = true
* group[=].element[+].code = #44060
* group[=].element[=].display = "сульфат меди"
* group[=].element[=].noMap = true
* group[=].element[+].code = #44082
* group[=].element[=].display = "Тиамина Мононитрат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #44096
* group[=].element[=].display = "кислоты оксиантраниловой"
* group[=].element[=].noMap = true
* group[=].element[+].code = #44102
* group[=].element[=].display = "Магния лактат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #44145
* group[=].element[=].display = "моногидрат гидрохлорида умифеновира"
* group[=].element[=].target[+].code = #007768
* group[=].element[=].target[=].display = "umifenovir"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #44244
* group[=].element[=].display = "гидробромид декстрометорфана"
* group[=].element[=].target[+].code = #002022
* group[=].element[=].target[=].display = "dekstrometorfan"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #44249
* group[=].element[=].display = "Лиофилизированные лактобактерии"
* group[=].element[=].noMap = true
* group[=].element[+].code = #44259
* group[=].element[=].display = "pharmaceutical camomile"
* group[=].element[=].noMap = true
* group[=].element[+].code = #44281
* group[=].element[=].display = "Кеторолака трометамол"
* group[=].element[=].target[+].code = #003225
* group[=].element[=].target[=].display = "ketorolak"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #44282
* group[=].element[=].display = "алюминия гидроксид"
* group[=].element[=].noMap = true
* group[=].element[+].code = #44308
* group[=].element[=].display = "Сульфадиазин серебра"
* group[=].element[=].target[+].code = #006804
* group[=].element[=].target[=].display = "sulfadiazin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #44309
* group[=].element[=].display = "Аллантоин"
* group[=].element[=].noMap = true
* group[=].element[+].code = #44340
* group[=].element[=].display = "Кризотиниб"
* group[=].element[=].target[+].code = #003445
* group[=].element[=].target[=].display = "krizotinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #44357
* group[=].element[=].display = "Натрия сульфат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #44380
* group[=].element[=].display = "Имбирь лекарственный (Сунтхи)"
* group[=].element[=].noMap = true
* group[=].element[+].code = #44407
* group[=].element[=].display = "Мускатный орех"
* group[=].element[=].noMap = true
* group[=].element[+].code = #44454
* group[=].element[=].display = "Эмпаглифлозин"
* group[=].element[=].target[+].code = #008976
* group[=].element[=].target[=].display = "empagliflozin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #44505
* group[=].element[=].display = "Экстракт простаты"
* group[=].element[=].noMap = true
* group[=].element[+].code = #44556
* group[=].element[=].display = "Кеторолака трометамин"
* group[=].element[=].target[+].code = #003225
* group[=].element[=].target[=].display = "ketorolak"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #44655
* group[=].element[=].display = "гесперидин"
* group[=].element[=].noMap = true
* group[=].element[+].code = #44666
* group[=].element[=].display = "бромгексин гидрохлорид"
* group[=].element[=].target[+].code = #001157
* group[=].element[=].target[=].display = "bromgeksin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #44667
* group[=].element[=].display = "тербуталина сульфат"
* group[=].element[=].target[+].code = #007138
* group[=].element[=].target[=].display = "terbutalin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #44671
* group[=].element[=].display = "Бензидамина гидрохлорид"
* group[=].element[=].target[+].code = #000898
* group[=].element[=].target[=].display = "benzidamin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #44750
* group[=].element[=].display = "кислота парааминобензойная"
* group[=].element[=].noMap = true
* group[=].element[+].code = #44776
* group[=].element[=].display = "масло куркумы"
* group[=].element[=].noMap = true
* group[=].element[+].code = #44777
* group[=].element[=].display = "борнеол"
* group[=].element[=].noMap = true
* group[=].element[+].code = #44892
* group[=].element[=].display = "Глюкозамина сульфат"
* group[=].element[=].target[+].code = #001787
* group[=].element[=].target[=].display = "glyukozamin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #44901
* group[=].element[=].display = "Хлорид аммония"
* group[=].element[=].noMap = true
* group[=].element[+].code = #44904
* group[=].element[=].display = "Лизоцима гидрохлорид"
* group[=].element[=].noMap = true
* group[=].element[+].code = #44995
* group[=].element[=].display = "флутиказон пропионат"
* group[=].element[=].target[+].code = #008195
* group[=].element[=].target[=].display = "flutikazon"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #45033
* group[=].element[=].display = "натрия селенита"
* group[=].element[=].noMap = true
* group[=].element[+].code = #45055
* group[=].element[=].display = "калия сульфат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #45078
* group[=].element[=].display = "Диклофенак калия"
* group[=].element[=].target[+].code = #002203
* group[=].element[=].target[=].display = "diklofenak"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #45082
* group[=].element[=].display = "Менотропин"
* group[=].element[=].noMap = true
* group[=].element[+].code = #45104
* group[=].element[=].display = "АБАКАВИР СУЛЬФАТ"
* group[=].element[=].target[+].code = #000002
* group[=].element[=].target[=].display = "abakavir"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #45111
* group[=].element[=].display = "Белладонна"
* group[=].element[=].noMap = true
* group[=].element[+].code = #45139
* group[=].element[=].display = "диклофенак натрия"
* group[=].element[=].target[+].code = #002203
* group[=].element[=].target[=].display = "diklofenak"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #45226
* group[=].element[=].display = "Микрокристаллическая целлюлоза"
* group[=].element[=].noMap = true
* group[=].element[+].code = #45245
* group[=].element[=].display = "маннитол"
* group[=].element[=].target[+].code = #003962
* group[=].element[=].target[=].display = "mannitola geksanitrat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #45318
* group[=].element[=].display = "Магния стеарат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #45475
* group[=].element[=].display = "Этилендиамин"
* group[=].element[=].noMap = true
* group[=].element[+].code = #45506
* group[=].element[=].display = "Дексаметазона натрия фосфат"
* group[=].element[=].target[+].code = #001980
* group[=].element[=].target[=].display = "deksametazon"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #45567
* group[=].element[=].display = "МЕГЛЮМИНА НАТРИЯ СУКЦИНАТ"
* group[=].element[=].noMap = true
* group[=].element[+].code = #45613
* group[=].element[=].display = "Железа аммоний цитрат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #45620
* group[=].element[=].display = "натрия кромогликат"
* group[=].element[=].target[+].code = #003461
* group[=].element[=].target[=].display = "kromoglitsik kislotasi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #45657
* group[=].element[=].display = "бензилпенициллина натриевой соли"
* group[=].element[=].target[+].code = #000902
* group[=].element[=].target[=].display = "benzilpenitsillin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #45717
* group[=].element[=].display = "Периндоприла аргинин"
* group[=].element[=].target[+].code = #005462
* group[=].element[=].target[=].display = "perindopril"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #45719
* group[=].element[=].display = "Венорутинол"
* group[=].element[=].noMap = true
* group[=].element[+].code = #45869
* group[=].element[=].display = "Метилсульфонилметан"
* group[=].element[=].noMap = true
* group[=].element[+].code = #45970
* group[=].element[=].display = "Эстрогены конъюгированные"
* group[=].element[=].noMap = true
* group[=].element[+].code = #46198
* group[=].element[=].display = "изолейцина альфа-кетоаналог (кетоизолейцин кальция)"
* group[=].element[=].noMap = true
* group[=].element[+].code = #46203
* group[=].element[=].display = "лейцина альфа-кетоаналог (кетолейцин кальция)"
* group[=].element[=].noMap = true
* group[=].element[+].code = #46204
* group[=].element[=].display = "фенилаланина альфа-кетоаналог (кетофенилаланин кальциямоногидрат)"
* group[=].element[=].noMap = true
* group[=].element[+].code = #46206
* group[=].element[=].display = "валина альфа-кетоаналог (кетовалин кальция)"
* group[=].element[=].noMap = true
* group[=].element[+].code = #46208
* group[=].element[=].display = "метионинаапьфа-гидроксианапог (гидроксиметионин кальция)"
* group[=].element[=].noMap = true
* group[=].element[+].code = #46287
* group[=].element[=].display = "тенофовира дизопроксил фумарат"
* group[=].element[=].target[+].code = #007114
* group[=].element[=].target[=].display = "tenofovir"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #46289
* group[=].element[=].display = "Ликопин"
* group[=].element[=].noMap = true
* group[=].element[+].code = #46291
* group[=].element[=].display = "Трипсин"
* group[=].element[=].noMap = true
* group[=].element[+].code = #46369
* group[=].element[=].display = "Диэтаноламин"
* group[=].element[=].noMap = true
* group[=].element[+].code = #46403
* group[=].element[=].display = "Кальция гидрофосфат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #46478
* group[=].element[=].display = "Меглумина акридонацетат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #46838
* group[=].element[=].display = "седавита экстракт густой, в пересчете на сухое вещество"
* group[=].element[=].noMap = true
* group[=].element[+].code = #46958
* group[=].element[=].display = "Кальций"
* group[=].element[=].noMap = true
* group[=].element[+].code = #47258
* group[=].element[=].display = "фосфор"
* group[=].element[=].noMap = true
* group[=].element[+].code = #47369
* group[=].element[=].display = "холина альфосцерат"
* group[=].element[=].target[+].code = #008447
* group[=].element[=].target[=].display = "xolina alfosserat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #47400
* group[=].element[=].display = "уксуснокислый салициламид натрия"
* group[=].element[=].noMap = true
* group[=].element[+].code = #47585
* group[=].element[=].display = "бетаметазона натрия фосфат"
* group[=].element[=].target[+].code = #000983
* group[=].element[=].target[=].display = "betametazon"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #47635
* group[=].element[=].display = "пантотенат натрия"
* group[=].element[=].target[+].code = #003047
* group[=].element[=].target[=].display = "kalsiy pantotenat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #47706
* group[=].element[=].display = "Ревень лекарственный"
* group[=].element[=].noMap = true
* group[=].element[+].code = #47768
* group[=].element[=].display = "Тальк"
* group[=].element[=].noMap = true
* group[=].element[+].code = #47818
* group[=].element[=].display = "Натрия хондроитин сульфат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #47961
* group[=].element[=].display = "бензоила пероксид"
* group[=].element[=].noMap = true
* group[=].element[+].code = #47962
* group[=].element[=].display = "Кокарбоксилазы гидрохлорид"
* group[=].element[=].target[+].code = #003398
* group[=].element[=].target[=].display = "kokarboksilaza"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #48020
* group[=].element[=].display = "коричника китайского масло"
* group[=].element[=].noMap = true
* group[=].element[+].code = #48064
* group[=].element[=].display = "седавит экстракт жидкий"
* group[=].element[=].noMap = true
* group[=].element[+].code = #48161
* group[=].element[=].display = "Ропинирола гидрохлорид"
* group[=].element[=].target[+].code = #006308
* group[=].element[=].target[=].display = "ropinirol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #48203
* group[=].element[=].display = "DL-3-метил-2-оксо-валериановая кислота (α-кето-аналог DL-изолейцина), соль кальция"
* group[=].element[=].noMap = true
* group[=].element[+].code = #48204
* group[=].element[=].display = "4-метил-2-оксо-валериановая кислота (α-кето-аналог лейцина), соль кальция"
* group[=].element[=].noMap = true
* group[=].element[+].code = #48205
* group[=].element[=].display = "2-оксо-3-фенил-пропионовая кислота (α-кето-аналог фенилаланина), соль кальция"
* group[=].element[=].noMap = true
* group[=].element[+].code = #48207
* group[=].element[=].display = "3-метил-2-оксо-масляная кислота (α-кето-аналог валина), соль кальция"
* group[=].element[=].noMap = true
* group[=].element[+].code = #48208
* group[=].element[=].display = "DL-2-гидрокси-4-метилтио-масляная кислота (α-гидрокси-аналог метионина), соль кальция"
* group[=].element[=].noMap = true
* group[=].element[+].code = #48209
* group[=].element[=].display = "L-лизин моноацетат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #48281
* group[=].element[=].display = "рекомбинантный человеческий фолликулостимулирующий гормон"
* group[=].element[=].target[+].code = #008230
* group[=].element[=].target[=].display = "follitropin alfa"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #48291
* group[=].element[=].display = "рекомбинантный человеческий гормон роста"
* group[=].element[=].target[+].code = #006632
* group[=].element[=].target[=].display = "somatropin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #48398
* group[=].element[=].display = "пепсин"
* group[=].element[=].noMap = true
* group[=].element[+].code = #48400
* group[=].element[=].display = "бетаина глюкуронат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #48401
* group[=].element[=].display = "диэтаноламина глюкуронат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #48413
* group[=].element[=].display = "Карбонат магния"
* group[=].element[=].noMap = true
* group[=].element[+].code = #48417
* group[=].element[=].display = "адреналина тартрат"
* group[=].element[=].target[+].code = #009078
* group[=].element[=].target[=].display = "epinefrin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #48436
* group[=].element[=].display = "кальций цитрат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #48462
* group[=].element[=].display = "Креатина фосфата натриевая соль"
* group[=].element[=].target[+].code = #008282
* group[=].element[=].target[=].display = "fosfokreatinin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #48868
* group[=].element[=].display = "Глюкозамингликан-пептидный комплекс"
* group[=].element[=].target[+].code = #001787
* group[=].element[=].target[=].display = "glyukozamin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #48996
* group[=].element[=].display = "натрия дигидроген ортофосфат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #48999
* group[=].element[=].display = "магния ацетат тетрагидрат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #49012
* group[=].element[=].display = "капсаицин"
* group[=].element[=].target[+].code = #003094
* group[=].element[=].target[=].display = "Kapsaitsin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #49053
* group[=].element[=].display = "полимиксина сульфат"
* group[=].element[=].target[+].code = #005739
* group[=].element[=].target[=].display = "polimiksin B"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #49393
* group[=].element[=].display = "Оксид меди"
* group[=].element[=].noMap = true
* group[=].element[+].code = #49413
* group[=].element[=].display = "Энзалутамид"
* group[=].element[=].target[+].code = #009005
* group[=].element[=].target[=].display = "enzalutamid"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #49471
* group[=].element[=].display = "терлипрессин"
* group[=].element[=].target[+].code = #007150
* group[=].element[=].target[=].display = "terlipressin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #49795
* group[=].element[=].display = "Дабрафениб"
* group[=].element[=].target[+].code = #009335
* group[=].element[=].target[=].display = "dabrafenib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #49822
* group[=].element[=].display = "Гимекромон"
* group[=].element[=].target[+].code = #001707
* group[=].element[=].target[=].display = "gimekromon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #50368
* group[=].element[=].display = "Ремдесивир"
* group[=].element[=].target[+].code = #009341
* group[=].element[=].target[=].display = "remdesivir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #50783
* group[=].element[=].display = "Фруктозо-1,6-бисфосфат"
* group[=].element[=].target[+].code = #008286
* group[=].element[=].target[=].display = "fosfruktoza"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #50802
* group[=].element[=].display = "Соевое масло"
* group[=].element[=].noMap = true
* group[=].element[+].code = #51570
* group[=].element[=].display = "аланил глутамин"
* group[=].element[=].noMap = true
* group[=].element[+].code = #51766
* group[=].element[=].display = "секукинумаб"
* group[=].element[=].target[+].code = #006467
* group[=].element[=].target[=].display = "sekukinumab"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #51854
* group[=].element[=].display = "диатризоевой кислоты дигидрата"
* group[=].element[=].noMap = true
* group[=].element[+].code = #51855
* group[=].element[=].display = "N-Метилглюкамин"
* group[=].element[=].noMap = true
* group[=].element[+].code = #52360
* group[=].element[=].display = "Афатиниб"
* group[=].element[=].target[+].code = #000688
* group[=].element[=].target[=].display = "afatinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #52670
* group[=].element[=].display = "кальций-3-метил-2-оксо-валериат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #52671
* group[=].element[=].display = "кальций 4 метил 2 оксо валериат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #52672
* group[=].element[=].display = "кальций-3-метил-2-оксо-бутират"
* group[=].element[=].noMap = true
* group[=].element[+].code = #53003
* group[=].element[=].display = "Интерферон бета 1а"
* group[=].element[=].target[+].code = #002847
* group[=].element[=].target[=].display = "interferon beta"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #53020
* group[=].element[=].display = "Метоклопрамида гидрохлорид"
* group[=].element[=].target[+].code = #004242
* group[=].element[=].target[=].display = "metoklopramid"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #53023
* group[=].element[=].display = "Ацеклофенак натрия"
* group[=].element[=].target[+].code = #000714
* group[=].element[=].target[=].display = "atseklofenak"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #53047
* group[=].element[=].display = "Рабепразол 20 мг + домперидон 30  мг пеллеты"
* group[=].element[=].noMap = true
* group[=].element[+].code = #53050
* group[=].element[=].display = "Цефазолин натрия"
* group[=].element[=].target[+].code = #008522
* group[=].element[=].target[=].display = "sefazolin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #53053
* group[=].element[=].display = "Дексаметазона натрия метасульфобензоат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #53060
* group[=].element[=].display = "Ретинола пальмитат (Витамин А)"
* group[=].element[=].noMap = true
* group[=].element[+].code = #53080
* group[=].element[=].display = "Цефотаксима натрия"
* group[=].element[=].target[+].code = #008568
* group[=].element[=].target[=].display = "sefotaksim"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #53100
* group[=].element[=].display = "Проксиметакаин гидрохлорид"
* group[=].element[=].target[+].code = #005884
* group[=].element[=].target[=].display = "proksimetakain"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #53101
* group[=].element[=].display = "Тамсулозин пеллет 0,2 %"
* group[=].element[=].target[+].code = #006968
* group[=].element[=].target[=].display = "tamsulozin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #53164
* group[=].element[=].display = "Ломефлоксацина гидрохлорид"
* group[=].element[=].target[+].code = #003835
* group[=].element[=].target[=].display = "lomefloksatsin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #53181
* group[=].element[=].display = "фентанила цитрат"
* group[=].element[=].target[+].code = #007983
* group[=].element[=].target[=].display = "fentanil"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #53183
* group[=].element[=].display = "дексаметазона натрия фосфат экв. дексаметазону фосфата"
* group[=].element[=].target[+].code = #001980
* group[=].element[=].target[=].display = "deksametazon"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #53189
* group[=].element[=].display = "Рупатадина фумарат"
* group[=].element[=].target[+].code = #006344
* group[=].element[=].target[=].display = "rupatadin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #53242
* group[=].element[=].display = "цефтазидим натрия"
* group[=].element[=].target[+].code = #008581
* group[=].element[=].target[=].display = "seftazidim"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #53297
* group[=].element[=].display = "Палоносетрон гидрохлорид"
* group[=].element[=].target[+].code = #005290
* group[=].element[=].target[=].display = "palonosetron"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #53301
* group[=].element[=].display = "Тегопразан"
* group[=].element[=].target[+].code = #007028
* group[=].element[=].target[=].display = "tegoprazan"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #53307
* group[=].element[=].display = "N-Метилглюкамин (меглюмин)"
* group[=].element[=].noMap = true
* group[=].element[+].code = #53380
* group[=].element[=].display = "Дарунавира аморфного"
* group[=].element[=].target[+].code = #001932
* group[=].element[=].target[=].display = "darunavir"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #53418
* group[=].element[=].display = "Флутиказона фуроат микронизированный"
* group[=].element[=].target[+].code = #008196
* group[=].element[=].target[=].display = "flutikazona furoat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #53425
* group[=].element[=].display = "Циклоспорин А"
* group[=].element[=].target[+].code = #008666
* group[=].element[=].target[=].display = "siklosporin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #53450
* group[=].element[=].display = "Сультамициллина тозилат"
* group[=].element[=].target[+].code = #006795
* group[=].element[=].target[=].display = "sultamitsillin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #53484
* group[=].element[=].display = "N-ацетил L-цистеин"
* group[=].element[=].noMap = true
* group[=].element[+].code = #53495
* group[=].element[=].display = "Карбопрост трометамин"
* group[=].element[=].target[+].code = #003131
* group[=].element[=].target[=].display = "karboprost"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #53523
* group[=].element[=].display = "Лизина гидрохлорид"
* group[=].element[=].target[+].code = #003742
* group[=].element[=].target[=].display = "lizin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #53529
* group[=].element[=].display = "Амиодарона гидрохлорид"
* group[=].element[=].target[+].code = #000407
* group[=].element[=].target[=].display = "amiodaron"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #53538
* group[=].element[=].display = "Метамизол натрия моногидрат"
* group[=].element[=].target[+].code = #004159
* group[=].element[=].target[=].display = "metamizol natriy"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #53548
* group[=].element[=].display = "Фосапрепитант димеглумин"
* group[=].element[=].target[+].code = #008261
* group[=].element[=].target[=].display = "fosaprepitant"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #53549
* group[=].element[=].display = "Омепразол натрия моногидрат"
* group[=].element[=].target[+].code = #005164
* group[=].element[=].target[=].display = "omeprazol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #53565
* group[=].element[=].display = "Ондансетрон гидрохлорид дигидрат"
* group[=].element[=].target[+].code = #005179
* group[=].element[=].target[=].display = "ondansetron"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #53604
* group[=].element[=].display = "Оланзапина дигидрохлорида тригидрат"
* group[=].element[=].target[+].code = #005125
* group[=].element[=].target[=].display = "olanzapin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #53607
* group[=].element[=].display = "Цианокобаламин 0,1 % в маннитоле"
* group[=].element[=].noMap = true
* group[=].element[+].code = #53618
* group[=].element[=].display = "Октоксинол -9"
* group[=].element[=].noMap = true
* group[=].element[+].code = #53662
* group[=].element[=].display = "цитиколин натрия эквивалентного цитиколину"
* group[=].element[=].target[+].code = #008792
* group[=].element[=].target[=].display = "sitikolin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #53706
* group[=].element[=].display = "Метамизола натрия моногидрат"
* group[=].element[=].target[+].code = #004159
* group[=].element[=].target[=].display = "metamizol natriy"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #53736
* group[=].element[=].display = "Хлоргексидина биглюконат раствор 20 %"
* group[=].element[=].target[+].code = #008408
* group[=].element[=].target[=].display = "xlorgeksidin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #53783
* group[=].element[=].display = "D-фруктозо-1,6-дифосфата"
* group[=].element[=].target[+].code = #008286
* group[=].element[=].target[=].display = "fosfruktoza"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #53823
* group[=].element[=].display = "Мебеверина гидрохлорид"
* group[=].element[=].target[+].code = #003993
* group[=].element[=].target[=].display = "mebeverin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #53845
* group[=].element[=].display = "Изосорбид мононитрат разбавленный"
* group[=].element[=].target[+].code = #002689
* group[=].element[=].target[=].display = "izosorbida mononitrat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #53900
* group[=].element[=].display = "Фруктоза-1,6-дифосфата тринатриевой соли октагидрат"
* group[=].element[=].target[+].code = #008286
* group[=].element[=].target[=].display = "fosfruktoza"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #53912
* group[=].element[=].display = "ропивакаина гидрохлорид"
* group[=].element[=].target[+].code = #006305
* group[=].element[=].target[=].display = "ropivakain"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #53985
* group[=].element[=].display = "Фруктоза -1,6 - дифосфат тринатрия октагидрат"
* group[=].element[=].target[+].code = #008286
* group[=].element[=].target[=].display = "fosfruktoza"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #53988
* group[=].element[=].display = "Хлоргексидин глюконат раствор 20 %"
* group[=].element[=].target[+].code = #008408
* group[=].element[=].target[=].display = "xlorgeksidin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #54012
* group[=].element[=].display = "Ципрофлоксацина гидрохлорида моногидрат"
* group[=].element[=].target[+].code = #008770
* group[=].element[=].target[=].display = "siprofloksatsin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #54013
* group[=].element[=].display = "Кетопрофена лизинат"
* group[=].element[=].target[+].code = #003224
* group[=].element[=].target[=].display = "ketoprofen"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #54045
* group[=].element[=].display = "хлорфенирамина малеат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #54067
* group[=].element[=].display = "берапрост натрия"
* group[=].element[=].target[+].code = #000962
* group[=].element[=].target[=].display = "beraprost"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #54087
* group[=].element[=].display = "Энтекавира моногидрата, в пересчёте на энтекавир"
* group[=].element[=].target[+].code = #009050
* group[=].element[=].target[=].display = "entekavir"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #54128
* group[=].element[=].display = "Левобупивакаина гидрохлорид"
* group[=].element[=].target[+].code = #003610
* group[=].element[=].target[=].display = "levobupivakain"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #54150
* group[=].element[=].display = "левофлоксацин гидрат"
* group[=].element[=].target[+].code = #003650
* group[=].element[=].target[=].display = "levofloksatsin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #54160
* group[=].element[=].display = "Мометазона фуроат микронизированный"
* group[=].element[=].target[+].code = #004475
* group[=].element[=].target[=].display = "mometazon"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #54164
* group[=].element[=].display = "Гатифлоксацина сесквигидрат"
* group[=].element[=].target[+].code = #001588
* group[=].element[=].target[=].display = "gatifloksatsin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #54165
* group[=].element[=].display = "тетрагидрозолина гидрохлорида"
* group[=].element[=].noMap = true
* group[=].element[+].code = #54251
* group[=].element[=].display = "идарубицина гидрохлорид"
* group[=].element[=].target[+].code = #002630
* group[=].element[=].target[=].display = "idarubitsin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #54254
* group[=].element[=].display = "Оксибутинина гидрохлорид"
* group[=].element[=].target[+].code = #005038
* group[=].element[=].target[=].display = "oksibutinin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #54382
* group[=].element[=].display = "Адеметионина 1,4-бутандисульфонат"
* group[=].element[=].target[+].code = #000069
* group[=].element[=].target[=].display = "ademetionin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #54444
* group[=].element[=].display = "D-биотин"
* group[=].element[=].target[+].code = #001042
* group[=].element[=].target[=].display = "biotin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #54497
* group[=].element[=].display = "Циклобензаприна гидрохлорид"
* group[=].element[=].target[+].code = #008642
* group[=].element[=].target[=].display = "siklobenzaprin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #54530
* group[=].element[=].display = "цистеин гидрохлорид"
* group[=].element[=].target[+].code = #008783
* group[=].element[=].target[=].display = "sistein"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #54685
* group[=].element[=].display = "Трастузумаб эмтанзин"
* group[=].element[=].target[+].code = #007566
* group[=].element[=].target[=].display = "trastuzumab emtanzin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #54726
* group[=].element[=].display = "Амлодипин безилат"
* group[=].element[=].target[+].code = #000431
* group[=].element[=].target[=].display = "amlodipin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #54757
* group[=].element[=].display = "Фруктозо-1,6-дифосфата тринатриевой соли октагидрат"
* group[=].element[=].target[+].code = #008286
* group[=].element[=].target[=].display = "fosfruktoza"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #54766
* group[=].element[=].display = "доцетаксел (безводный)"
* group[=].element[=].target[+].code = #002439
* group[=].element[=].target[=].display = "dotsetaksel"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #54852
* group[=].element[=].display = "Буспирон"
* group[=].element[=].target[+].code = #001231
* group[=].element[=].target[=].display = "buspiron"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #54854
* group[=].element[=].display = "Аморфный цефуроксима аксетил"
* group[=].element[=].target[+].code = #008597
* group[=].element[=].target[=].display = "sefuroksim"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #54872
* group[=].element[=].display = "бупропион"
* group[=].element[=].target[+].code = #001223
* group[=].element[=].target[=].display = "bupropion"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #54892
* group[=].element[=].display = "Смазываемая смесь нитрофурантоина"
* group[=].element[=].noMap = true
* group[=].element[+].code = #54893
* group[=].element[=].display = "Нитрофурантоин моногидрат"
* group[=].element[=].target[+].code = #004857
* group[=].element[=].target[=].display = "nitrofurantoin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #54895
* group[=].element[=].display = "Венлафаксина гидрохлорид"
* group[=].element[=].target[+].code = #001392
* group[=].element[=].target[=].display = "venlafaksin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #55022
* group[=].element[=].display = "фенилэфрина гидрохлорид"
* group[=].element[=].target[+].code = #007919
* group[=].element[=].target[=].display = "fenilefrin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #55093
* group[=].element[=].display = "Омепразол микропеллеты"
* group[=].element[=].target[+].code = #005164
* group[=].element[=].target[=].display = "omeprazol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #55110
* group[=].element[=].display = "Амлодипина малеат"
* group[=].element[=].target[+].code = #000431
* group[=].element[=].target[=].display = "amlodipin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #55171
* group[=].element[=].display = "тиаприда гидрохлорид"
* group[=].element[=].target[+].code = #007234
* group[=].element[=].target[=].display = "tiaprid"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #55246
* group[=].element[=].display = "Эптаког альфа (rFVIIa)"
* group[=].element[=].target[+].code = #009117
* group[=].element[=].target[=].display = "eptakog alfa (aktivlashtirilgan)"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #55249
* group[=].element[=].display = "Цефепим дигидрохлорида моногидрат USP"
* group[=].element[=].target[+].code = #008541
* group[=].element[=].target[=].display = "sefepim"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #55456
* group[=].element[=].display = "Диоксометилтетрагидропиримидин (метилурацил)"
* group[=].element[=].target[+].code = #004212
* group[=].element[=].target[=].display = "metiltiouratsil"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #55480
* group[=].element[=].display = "Сертаконазола нитрат"
* group[=].element[=].target[+].code = #006525
* group[=].element[=].target[=].display = "sertakonazol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #55619
* group[=].element[=].display = "сертралина гидрохлорид"
* group[=].element[=].target[+].code = #006527
* group[=].element[=].target[=].display = "sertralin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #55673
* group[=].element[=].display = "Будесонида микронизированного"
* group[=].element[=].target[+].code = #001187
* group[=].element[=].target[=].display = "budesonid"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #55750
* group[=].element[=].display = "Левофлоксацин гидрохлорид"
* group[=].element[=].target[+].code = #003650
* group[=].element[=].target[=].display = "levofloksatsin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #55751
* group[=].element[=].display = "цефепим дигидрохлорид моногидрат"
* group[=].element[=].target[+].code = #008541
* group[=].element[=].target[=].display = "sefepim"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #55776
* group[=].element[=].display = "тригексифенидила гидрохлорид"
* group[=].element[=].target[+].code = #007619
* group[=].element[=].target[=].display = "trigeksifenidil"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #55823
* group[=].element[=].display = "Мозаприд цитрат дигидрат"
* group[=].element[=].target[+].code = #004447
* group[=].element[=].target[=].display = "mozaprid"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #55825
* group[=].element[=].display = "Атозибана ацетат"
* group[=].element[=].target[+].code = #000670
* group[=].element[=].target[=].display = "atoziban"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #55829
* group[=].element[=].display = "Лононктоког альфа"
* group[=].element[=].noMap = true
* group[=].element[+].code = #55830
* group[=].element[=].display = "медроксипрогестерона ацетат"
* group[=].element[=].target[+].code = #004021
* group[=].element[=].target[=].display = "medroksiprogesteron"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #55920
* group[=].element[=].display = "Итраконазол микропеллеты"
* group[=].element[=].target[+].code = #002993
* group[=].element[=].target[=].display = "itrakonazol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #56043
* group[=].element[=].display = "Йода-131"
* group[=].element[=].noMap = true
* group[=].element[+].code = #56046
* group[=].element[=].display = "Натрия о-йодгиппурата"
* group[=].element[=].noMap = true
* group[=].element[+].code = #56590
* group[=].element[=].display = "d-α-токоферола ацетат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #56650
* group[=].element[=].display = "Окситетрациклина гидрохлорида"
* group[=].element[=].target[+].code = #005067
* group[=].element[=].target[=].display = "oksitetratsiklin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #56777
* group[=].element[=].display = "Офлоксацина гидрохлорид"
* group[=].element[=].target[+].code = #005249
* group[=].element[=].target[=].display = "ofloksatsin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #56818
* group[=].element[=].display = "Инозин (рибоксин)"
* group[=].element[=].target[+].code = #002817
* group[=].element[=].target[=].display = "inozin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #56954
* group[=].element[=].display = "Холекальциферол"
* group[=].element[=].noMap = true
* group[=].element[+].code = #56991
* group[=].element[=].display = "Цефтриаксон натрия и сульбактам"
* group[=].element[=].noMap = true
* group[=].element[+].code = #56995
* group[=].element[=].display = "Instacoat universal A05G10382"
* group[=].element[=].noMap = true
* group[=].element[+].code = #56996
* group[=].element[=].display = "Ципрофлоксацина лактат"
* group[=].element[=].target[+].code = #008770
* group[=].element[=].target[=].display = "siprofloksatsin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #57031
* group[=].element[=].display = "Тестостерон деканоат"
* group[=].element[=].noMap = true
* group[=].element[+].code = #57050
* group[=].element[=].display = "Гозерелина ацетат"
* group[=].element[=].target[+].code = #001792
* group[=].element[=].target[=].display = "gozerelin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #57072
* group[=].element[=].display = "DL-α-токоферол"
* group[=].element[=].noMap = true
* group[=].element[+].code = #57073
* group[=].element[=].display = "Кокарбоксилаза тетрагидрат"
* group[=].element[=].target[+].code = #003398
* group[=].element[=].target[=].display = "kokarboksilaza"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #57074
* group[=].element[=].display = "Рибофлавина натрия фосфат дигидрат"
* group[=].element[=].target[+].code = #006163
* group[=].element[=].target[=].display = "riboflavin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #57110
* group[=].element[=].display = "Кальция фолинат гидрат"
* group[=].element[=].target[+].code = #003050
* group[=].element[=].target[=].display = "kalsiy folinat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #57197
* group[=].element[=].display = "Аденозин-5'- трифосфорной кислоты динатриевая соль"
* group[=].element[=].target[+].code = #000070
* group[=].element[=].target[=].display = "adenozin fosfat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #57231
* group[=].element[=].display = "Холина альфосцерат гидрат"
* group[=].element[=].target[+].code = #008447
* group[=].element[=].target[=].display = "xolina alfosserat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #57292
* group[=].element[=].display = "дексмедетомидин гидрохлорид"
* group[=].element[=].target[+].code = #002000
* group[=].element[=].target[=].display = "deksmedetomidin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #57345
* group[=].element[=].display = "золедроновая кислота моногидрат"
* group[=].element[=].target[+].code = #002563
* group[=].element[=].target[=].display = "zoledron kislotasi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #57454
* group[=].element[=].display = "Циклопироксоламин"
* group[=].element[=].target[+].code = #008657
* group[=].element[=].target[=].display = "siklopiroks"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #57511
* group[=].element[=].display = "Клопидогрел бесилат"
* group[=].element[=].target[+].code = #003331
* group[=].element[=].target[=].display = "klopidogrel"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #57512
* group[=].element[=].display = "Варфарин натрия"
* group[=].element[=].target[+].code = #001362
* group[=].element[=].target[=].display = "varfarin"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #57533
* group[=].element[=].display = "Милринона лактат"
* group[=].element[=].target[+].code = #004354
* group[=].element[=].target[=].display = "milrinon"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
