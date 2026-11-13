Instance: pharmcom-registry-dose-form-to-medication-doseform-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "Pharmaceutical Committee registry dose form to UZ Core dose form"
Description: "Maps Pharmaceutical Committee drug registry dose forms (`medicine_form_item_id`) to UZ Core dose forms. A form that adds a detail UZ Core does not have maps to the nearest wider form as `source-is-narrower-than-target`; kit solvents map to the UZ Core solvent."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/pharmcom-registry-dose-form-to-medication-doseform-cm"
* name = "PharmcomRegistryDoseFormToMedicationDoseFormCM"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* sourceScopeCanonical = Canonical(PharmcomRegistryDoseFormVS)
* targetScopeCanonical = "https://terminology.dhp.uz/fhir/core/ValueSet/medication-doseform-vs"

* group[+].source = Canonical(PharmcomRegistryDoseFormCS)
* group[=].target = $medication-doseform-cs
* group[=].element[+].code = #1218
* group[=].element[=].display = "Таблетки быстрорастворимые"
* group[=].element[=].target[+].code = #TAB101
* group[=].element[=].target[=].display = "tabletkalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1219
* group[=].element[=].display = "Таблетки вагинальные"
* group[=].element[=].target[+].code = #TAB102
* group[=].element[=].target[=].display = "vaginal tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1220
* group[=].element[=].display = "Таблетки гастрорезистентные"
* group[=].element[=].target[+].code = #TAB113
* group[=].element[=].target[=].display = "ichakda eriydigan tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1221
* group[=].element[=].display = "Таблетки гомеопатические"
* group[=].element[=].target[+].code = #TAB101
* group[=].element[=].target[=].display = "tabletkalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1222
* group[=].element[=].display = "Таблетки делимые, пролонгированного действия, покрытые оболочкой"
* group[=].element[=].target[+].code = #TAB121
* group[=].element[=].target[=].display = "taʼsiri uzaytirilgan tabletkalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1223
* group[=].element[=].display = "Таблетки диспергируемые"
* group[=].element[=].target[+].code = #TAB106
* group[=].element[=].target[=].display = "dispersiyalanadigan tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1224
* group[=].element[=].display = "Таблетки для имплантации"
* group[=].element[=].target[+].code = #TAB107
* group[=].element[=].target[=].display = "implantatsiya uchun tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1225
* group[=].element[=].display = "Таблетки для приготовления раствора для местного и наружного применения"
* group[=].element[=].target[+].code = #TAB101
* group[=].element[=].target[=].display = "tabletkalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1226
* group[=].element[=].display = "Таблетки для разжёвывания"
* group[=].element[=].target[+].code = #TAB110
* group[=].element[=].target[=].display = "chaynaladigan tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1227
* group[=].element[=].display = "Таблетки для рассасывания"
* group[=].element[=].target[+].code = #TAB109
* group[=].element[=].target[=].display = "shimish uchun tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1228
* group[=].element[=].display = "Таблетки для рассасывания гомеопатические"
* group[=].element[=].target[+].code = #TAB109
* group[=].element[=].target[=].display = "shimish uchun tabletkalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1229
* group[=].element[=].display = "Таблетки жевательные"
* group[=].element[=].target[+].code = #TAB110
* group[=].element[=].target[=].display = "chaynaladigan tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1230
* group[=].element[=].display = "Таблетки жевательные/растворимые"
* group[=].element[=].target[+].code = #TAB101
* group[=].element[=].target[=].display = "tabletkalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1231
* group[=].element[=].display = "Таблетки подъязычные"
* group[=].element[=].target[+].code = #TAB116
* group[=].element[=].target[=].display = "til osti tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1232
* group[=].element[=].display = "Таблетки с пролонгированным действием"
* group[=].element[=].target[+].code = #TAB121
* group[=].element[=].target[=].display = "taʼsiri uzaytirilgan tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1233
* group[=].element[=].display = "Таблетки растворимые"
* group[=].element[=].target[+].code = #TAB119
* group[=].element[=].target[=].display = "eruvchi tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1234
* group[=].element[=].display = "Таблетки ретард, покрытые оболочкой"
* group[=].element[=].target[+].code = #TAB121
* group[=].element[=].target[=].display = "taʼsiri uzaytirilgan tabletkalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1236
* group[=].element[=].display = "Таблетки с модифицированным высвобождением"
* group[=].element[=].target[+].code = #TAB120
* group[=].element[=].target[=].display = "ajralib chiqarilishi modifikatsiyalangan tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1237
* group[=].element[=].display = "Таблетки с модифицированным высвобождением, покрытые пленочной оболочкой"
* group[=].element[=].target[+].code = #TAB120
* group[=].element[=].target[=].display = "ajralib chiqarilishi modifikatsiyalangan tabletkalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1238
* group[=].element[=].display = "Таблетки с пролонгированным высвобождением"
* group[=].element[=].target[+].code = #TAB121
* group[=].element[=].target[=].display = "taʼsiri uzaytirilgan tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1239
* group[=].element[=].display = "Таблетки сублингвальные"
* group[=].element[=].target[+].code = #TAB116
* group[=].element[=].target[=].display = "til osti tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1240
* group[=].element[=].display = "Таблетки шипучие"
* group[=].element[=].target[+].code = #TAB122
* group[=].element[=].target[=].display = "vishillovchi tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1241
* group[=].element[=].display = "Таблетки покрытые кишечнорастворимой оболочкой"
* group[=].element[=].target[+].code = #TAB113
* group[=].element[=].target[=].display = "ichakda eriydigan tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1242
* group[=].element[=].display = "Таблетки, покрытые оболочкой"
* group[=].element[=].target[+].code = #TAB117
* group[=].element[=].target[=].display = "qobiq bilan qoplangan tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1243
* group[=].element[=].display = "Таблетки, покрытые пленочной кишечнорастворимой оболочкой"
* group[=].element[=].target[+].code = #TAB113
* group[=].element[=].target[=].display = "ichakda eriydigan tabletkalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1244
* group[=].element[=].display = "Таблетки, покрытые пленочной оболочкой"
* group[=].element[=].target[+].code = #TAB118
* group[=].element[=].target[=].display = "plyonka qobiq bilan qoplangan tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1245
* group[=].element[=].display = "Таблеток набор"
* group[=].element[=].target[+].code = #KIT101
* group[=].element[=].target[=].display = "to'plam"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1246
* group[=].element[=].display = "Капсулы вагинальные"
* group[=].element[=].target[+].code = #CAP102
* group[=].element[=].target[=].display = "vaginal kapsulalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1247
* group[=].element[=].display = "Капсулы для ингаляций"
* group[=].element[=].target[+].code = #CAP110
* group[=].element[=].target[=].display = "ingalyatsiya uchun kukunli kapsulalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1248
* group[=].element[=].display = "Капсулы для приема внутрь"
* group[=].element[=].target[+].code = #CAP101
* group[=].element[=].target[=].display = "kapsulalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1249
* group[=].element[=].display = "Капсулы кишечнорастворимые"
* group[=].element[=].target[+].code = #CAP105
* group[=].element[=].target[=].display = "ichakda eruvchi kapsulalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1250
* group[=].element[=].display = "Капсулы мягкие"
* group[=].element[=].target[+].code = #CAP101
* group[=].element[=].target[=].display = "kapsulalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1251
* group[=].element[=].display = "Капсулы мягкие желатиновые"
* group[=].element[=].target[+].code = #CAP101
* group[=].element[=].target[=].display = "kapsulalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1252
* group[=].element[=].display = "Капсулы мягкие желатиновые вагинальные"
* group[=].element[=].target[+].code = #CAP102
* group[=].element[=].target[=].display = "vaginal kapsulalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1253
* group[=].element[=].display = "Капсулы пролонгированного действия"
* group[=].element[=].target[+].code = #CAP111
* group[=].element[=].target[=].display = "ajralib chiqishi uzaytirilgan kapsulalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1254
* group[=].element[=].display = "Капсулы ректальные"
* group[=].element[=].target[+].code = #CAP108
* group[=].element[=].target[=].display = "rektal kapsulalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1255
* group[=].element[=].display = "Капсулы с замедленным высвобождением"
* group[=].element[=].target[+].code = #CAP111
* group[=].element[=].target[=].display = "ajralib chiqishi uzaytirilgan kapsulalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1256
* group[=].element[=].display = "Капсулы с микропеллетами"
* group[=].element[=].target[+].code = #CAP101
* group[=].element[=].target[=].display = "kapsulalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1257
* group[=].element[=].display = "Капсулы с микропеллетами пролонгированного высвобождения"
* group[=].element[=].target[+].code = #CAP111
* group[=].element[=].target[=].display = "ajralib chiqishi uzaytirilgan kapsulalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1258
* group[=].element[=].display = "Капсулы с модифицированным высвобождением"
* group[=].element[=].target[+].code = #CAP109
* group[=].element[=].target[=].display = "ajralib chiqishi modifikatsiya qilingan kapsulalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1259
* group[=].element[=].display = "Капсулы с порошком для ингаляций"
* group[=].element[=].target[+].code = #CAP110
* group[=].element[=].target[=].display = "ingalyatsiya uchun kukunli kapsulalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1260
* group[=].element[=].display = "Капсулы с пролонгированным высвобождением"
* group[=].element[=].target[+].code = #CAP111
* group[=].element[=].target[=].display = "ajralib chiqishi uzaytirilgan kapsulalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1261
* group[=].element[=].display = "Капсулы твердые"
* group[=].element[=].target[+].code = #CAP101
* group[=].element[=].target[=].display = "kapsulalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1262
* group[=].element[=].display = "Капсулы твердые желатиновые"
* group[=].element[=].target[+].code = #CAP101
* group[=].element[=].target[=].display = "kapsulalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1263
* group[=].element[=].display = "Капсулы твердые кишечнорастворимые"
* group[=].element[=].target[+].code = #CAP105
* group[=].element[=].target[=].display = "ichakda eruvchi kapsulalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1266
* group[=].element[=].display = "Гранулы гомеопатические"
* group[=].element[=].target[+].code = #GRA101
* group[=].element[=].target[=].display = "granulalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1269
* group[=].element[=].display = "Гранулы для приготовления раствора"
* group[=].element[=].target[+].code = #GRA101
* group[=].element[=].target[=].display = "granulalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1270
* group[=].element[=].display = "Гранулы для приготовления суспензии"
* group[=].element[=].target[+].code = #GRA101
* group[=].element[=].target[=].display = "granulalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1271
* group[=].element[=].display = "Гранулы для приема внутрь"
* group[=].element[=].target[+].code = #GRA101
* group[=].element[=].target[=].display = "granulalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1272
* group[=].element[=].display = "Гранулы шипучие"
* group[=].element[=].target[+].code = #GRA109
* group[=].element[=].target[=].display = "vishillovchi granulalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1273
* group[=].element[=].display = "Порошок (микросферы) для приготовления суспензии для инъекций"
* group[=].element[=].target[+].code = #POW210
* group[=].element[=].target[=].display = "inyeksiya uchun suspenziya tayyorlash uchun kukun"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1274
* group[=].element[=].display = "Порошок гранулированный для приготовления раствора для приема внутрь"
* group[=].element[=].target[+].code = #GRA153
* group[=].element[=].target[=].display = "ichga qabul qilish uchun eritma tayyorlash uchun granulalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1275
* group[=].element[=].display = "Порошок для ингаляций"
* group[=].element[=].target[+].code = #POW101
* group[=].element[=].target[=].display = "kukun"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1276
* group[=].element[=].display = "Порошок для ингаляций дозированный"
* group[=].element[=].target[+].code = #POW102
* group[=].element[=].target[=].display = "ingalyatsiya uchun dozalangan kukun"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1277
* group[=].element[=].display = "Порошок для местного применения"
* group[=].element[=].target[+].code = #POW103
* group[=].element[=].target[=].display = "mahalliy qo'llash uchun kukun"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1278
* group[=].element[=].display = "Порошок для орального раствора"
* group[=].element[=].target[+].code = #POW177
* group[=].element[=].target[=].display = "ichga qabul qilish uchun eritma tayyorlash uchun kukun"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1280
* group[=].element[=].display = "Порошок для приготовления оральной суспензии"
* group[=].element[=].target[+].code = #POW219
* group[=].element[=].target[=].display = "ichga qabul qilish uchun suspenziya tayyorlash uchun kukun"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1281
* group[=].element[=].display = "Порошок для приготовления раствора для инфузий"
* group[=].element[=].target[+].code = #POW164
* group[=].element[=].target[=].display = "infuziya uchun eritma tayyorlash uchun kukun"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1282
* group[=].element[=].display = "Порошок для приготовления раствора для инъекций"
* group[=].element[=].target[+].code = #POW165
* group[=].element[=].target[=].display = "inyeksiya uchun eritma tayyorlash uchun kukun"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1283
* group[=].element[=].display = "Порошок для приготовления раствора для приема внутрь"
* group[=].element[=].target[+].code = #POW177
* group[=].element[=].target[=].display = "ichga qabul qilish uchun eritma tayyorlash uchun kukun"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1284
* group[=].element[=].display = "Порошок для приготовления суспензии"
* group[=].element[=].target[+].code = #POW101
* group[=].element[=].target[=].display = "kukun"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1289
* group[=].element[=].display = "Порошок лиофилизированный"
* group[=].element[=].target[+].code = #LYO101
* group[=].element[=].target[=].display = "liofilizat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1290
* group[=].element[=].display = "орошок лиофилизированный для приготовления раствора для внутривенного инфузионного введения"
* group[=].element[=].target[+].code = #LYO221
* group[=].element[=].target[=].display = "infuziya uchun eritma tayyorlash uchun liofilizat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1291
* group[=].element[=].display = "Порошок лиофилизированный стерильный для приготовления раствора для инфузий"
* group[=].element[=].target[+].code = #LYO221
* group[=].element[=].target[=].display = "infuziya uchun eritma tayyorlash uchun liofilizat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1292
* group[=].element[=].display = "Порошок лиофилизированный для приготовления раствора для инъекций"
* group[=].element[=].target[+].code = #LYO222
* group[=].element[=].target[=].display = "inyeksiya uchun eritma tayyorlash uchun liofilizat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1294
* group[=].element[=].display = "Порошок стерильный для приготовления раствора для внутримышечного и внутривенного введения"
* group[=].element[=].target[+].code = #POW165
* group[=].element[=].target[=].display = "inyeksiya uchun eritma tayyorlash uchun kukun"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1295
* group[=].element[=].display = "Лиофилизат для приготовления концентрата для приготовления раствора для инфузий"
* group[=].element[=].target[+].code = #LYO140
* group[=].element[=].target[=].display = "infuziya uchun eritma tayyorlash uchun konsentrat tayyorlash uchun liofilizat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1296
* group[=].element[=].display = "Лиофилизат для приготовления раствора для внутривенного и подкожного введения"
* group[=].element[=].target[+].code = #LYO222
* group[=].element[=].target[=].display = "inyeksiya uchun eritma tayyorlash uchun liofilizat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1299
* group[=].element[=].display = "Лиофилизат для приготовления раствора для местного и наружного применения"
* group[=].element[=].target[+].code = #LYO101
* group[=].element[=].target[=].display = "liofilizat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1300
* group[=].element[=].display = "Лиофилизат для приготовления раствора для подкожного введения"
* group[=].element[=].target[+].code = #LYO232
* group[=].element[=].target[=].display = "teri ostiga yuborish uchun eritma tayyorlash uchun liofilizat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1301
* group[=].element[=].display = "Лиофилизат для приготовления суспензии для внутримышечного введения пролонгированного действия"
* group[=].element[=].target[+].code = #LYO257
* group[=].element[=].target[=].display = "mushak ichiga yuborish uchun suspenziya tayyorlash uchun liofilizat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1303
* group[=].element[=].display = "Лиофилизат для приема внутрь"
* group[=].element[=].target[+].code = #LYO101
* group[=].element[=].target[=].display = "liofilizat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1304
* group[=].element[=].display = "Лиофилизат для приготовления раствора для инъекций"
* group[=].element[=].target[+].code = #LYO222
* group[=].element[=].target[=].display = "inyeksiya uchun eritma tayyorlash uchun liofilizat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1305
* group[=].element[=].display = "Лиофилизированный порошок для приготовления раствора для внутривенного и внутримышечного введения"
* group[=].element[=].target[+].code = #LYO222
* group[=].element[=].target[=].display = "inyeksiya uchun eritma tayyorlash uchun liofilizat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1306
* group[=].element[=].display = "Лиофиллизованный порошок для инъекций"
* group[=].element[=].target[+].code = #LYO222
* group[=].element[=].target[=].display = "inyeksiya uchun eritma tayyorlash uchun liofilizat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1307
* group[=].element[=].display = "Капли глазные"
* group[=].element[=].target[+].code = #DRO102
* group[=].element[=].target[=].display = "ko'z tomchilari"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1309
* group[=].element[=].display = "Капли глазные, раствор"
* group[=].element[=].target[+].code = #DRO102
* group[=].element[=].target[=].display = "ko'z tomchilari"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1310
* group[=].element[=].display = "Капли глазные, суспензия"
* group[=].element[=].target[+].code = #DRO102
* group[=].element[=].target[=].display = "ko'z tomchilari"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1311
* group[=].element[=].display = "Капли глазные и ушные"
* group[=].element[=].target[+].code = #DRO101
* group[=].element[=].target[=].display = "tomchilar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1312
* group[=].element[=].display = "Капли гомеопатические"
* group[=].element[=].target[+].code = #DRO101
* group[=].element[=].target[=].display = "tomchilar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1313
* group[=].element[=].display = "Капли для приема внутрь"
* group[=].element[=].target[+].code = #DRO107
* group[=].element[=].target[=].display = "ichga qabul qilish uchun tomchilar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1314
* group[=].element[=].display = "Капли назальные"
* group[=].element[=].target[+].code = #DRO109
* group[=].element[=].target[=].display = "nazal tomchilari"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1315
* group[=].element[=].display = "Капли назальные, эмульсия"
* group[=].element[=].target[+].code = #DRO109
* group[=].element[=].target[=].display = "nazal tomchilari"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1316
* group[=].element[=].display = "Капли оральные"
* group[=].element[=].target[+].code = #DRO107
* group[=].element[=].target[=].display = "ichga qabul qilish uchun tomchilar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1317
* group[=].element[=].display = "Капли ушные"
* group[=].element[=].target[+].code = #DRO111
* group[=].element[=].target[=].display = "quloq tomchilari"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1318
* group[=].element[=].display = "Спрей для горла"
* group[=].element[=].target[+].code = #SPR104
* group[=].element[=].target[=].display = "og'iz bo'shlig'i shilliq qavati uchun sprey"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1319
* group[=].element[=].display = "Спрей для местного применения"
* group[=].element[=].target[+].code = #SPR102
* group[=].element[=].target[=].display = "mahalliy qo'llash uchun sprey"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1320
* group[=].element[=].display = "Спрей для наружного применения"
* group[=].element[=].target[+].code = #SPR103
* group[=].element[=].target[=].display = "sirtga qo'llash uchun sprey"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1321
* group[=].element[=].display = "Спрей для ротовой полости"
* group[=].element[=].target[+].code = #SPR104
* group[=].element[=].target[=].display = "og'iz bo'shlig'i shilliq qavati uchun sprey"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1322
* group[=].element[=].display = "Спрей для слизистой оболочки полости рта и горла"
* group[=].element[=].target[+].code = #SPR104
* group[=].element[=].target[=].display = "og'iz bo'shlig'i shilliq qavati uchun sprey"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1323
* group[=].element[=].display = "Спрей назальный"
* group[=].element[=].target[+].code = #SPR105
* group[=].element[=].target[=].display = "burun spreyi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1324
* group[=].element[=].display = "Спрей назальный дозированный"
* group[=].element[=].target[+].code = #SPR105
* group[=].element[=].target[=].display = "burun spreyi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1325
* group[=].element[=].display = "Спрей накожный"
* group[=].element[=].target[+].code = #SPR103
* group[=].element[=].target[=].display = "sirtga qo'llash uchun sprey"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1326
* group[=].element[=].display = "Спрей орофарингеальный/назальный, эмульсия"
* group[=].element[=].target[+].code = #SPR101
* group[=].element[=].target[=].display = "sprey"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1327
* group[=].element[=].display = "Спрей сублингвальный дозированный"
* group[=].element[=].target[+].code = #SPR106
* group[=].element[=].target[=].display = "dozalangan til osti spreyi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1328
* group[=].element[=].display = "Спрей трансдермальный"
* group[=].element[=].target[+].code = #SPR107
* group[=].element[=].target[=].display = "transdermal sprey"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1329
* group[=].element[=].display = "Aэрозоль для ингаляций"
* group[=].element[=].target[+].code = #AER102
* group[=].element[=].target[=].display = "ingalyatsiya uchun dozalangan aerozol"
* group[=].element[=].target[=].relationship = #source-is-broader-than-target
* group[=].element[+].code = #1330
* group[=].element[=].display = "Aэрозоль для наружного применения"
* group[=].element[=].target[+].code = #AER105
* group[=].element[=].target[=].display = "sirtga qo'llash uchun aerozol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1331
* group[=].element[=].display = "Аэрозоль для местного применения"
* group[=].element[=].target[+].code = #AER103
* group[=].element[=].target[=].display = "mahalliy qo'llash uchun aerozol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1332
* group[=].element[=].display = "Аэрозоль для ингаляций дозированный"
* group[=].element[=].target[+].code = #AER102
* group[=].element[=].target[=].display = "ingalyatsiya uchun dozalangan aerozol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1334
* group[=].element[=].display = "Раствор для внутривенного, внутримышечного и парабульбарного введения"
* group[=].element[=].target[+].code = #SOL123
* group[=].element[=].target[=].display = "inyeksiya uchun eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1335
* group[=].element[=].display = "Раствор для внутрикожного введения"
* group[=].element[=].target[+].code = #SOL108
* group[=].element[=].target[=].display = "teri ichiga yuborish uchun eritma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1336
* group[=].element[=].display = "Раствор для внутримышечного введения"
* group[=].element[=].target[+].code = #SOL110
* group[=].element[=].target[=].display = "mushak ichiga yuborish uchun eritma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1337
* group[=].element[=].display = "Раствор для внутримышечного и внутрисуставного введения"
* group[=].element[=].target[+].code = #SOL123
* group[=].element[=].target[=].display = "inyeksiya uchun eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1339
* group[=].element[=].display = "Раствор для внутрисуставных инъекций"
* group[=].element[=].target[+].code = #SOL113
* group[=].element[=].target[=].display = "bo'g'im ichiga yuborish uchun eritma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1341
* group[=].element[=].display = "Раствор для ингаляций"
* group[=].element[=].target[+].code = #SOL118
* group[=].element[=].target[=].display = "ingalyatsiya uchun eritma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1342
* group[=].element[=].display = "Раствор для инфузий"
* group[=].element[=].target[+].code = #SOL122
* group[=].element[=].target[=].display = "infuziya uchun eritma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1343
* group[=].element[=].display = "Раствор для инъекций"
* group[=].element[=].target[+].code = #SOL123
* group[=].element[=].target[=].display = "inyeksiya uchun eritma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1344
* group[=].element[=].display = "Раствор для ирригаций"
* group[=].element[=].target[+].code = #SOL101
* group[=].element[=].target[=].display = "eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1345
* group[=].element[=].display = "Раствор для клизмы"
* group[=].element[=].target[+].code = #SOL147
* group[=].element[=].target[=].display = "rektal eritma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1346
* group[=].element[=].display = "Раствор для местного и наружного применения"
* group[=].element[=].target[+].code = #SOL124
* group[=].element[=].target[=].display = "mahalliy qo'llash uchun eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1347
* group[=].element[=].display = "Раствор для местной инфильтрации ран и внутримышечного введения"
* group[=].element[=].target[+].code = #SOL123
* group[=].element[=].target[=].display = "inyeksiya uchun eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1349
* group[=].element[=].display = "Раствор для наружного применения"
* group[=].element[=].target[+].code = #SOL127
* group[=].element[=].target[=].display = "sirtga qo'llash uchun eritma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1350
* group[=].element[=].display = "Раствор для подкожного введения"
* group[=].element[=].target[+].code = #SOL133
* group[=].element[=].target[=].display = "teri ostiga yuborish uchun eritma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1351
* group[=].element[=].display = "Раствор для полоскания полости рта"
* group[=].element[=].target[+].code = #SOL134
* group[=].element[=].target[=].display = "chayish uchun eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1352
* group[=].element[=].display = "Раствор для приема внутрь"
* group[=].element[=].target[+].code = #SOL135
* group[=].element[=].target[=].display = "ichga qabul qilish uchun eritma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1353
* group[=].element[=].display = "Раствор для приема внутрь и ректального введения"
* group[=].element[=].target[+].code = #SOL101
* group[=].element[=].target[=].display = "eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1354
* group[=].element[=].display = "Раствор для ректального введения"
* group[=].element[=].target[+].code = #SOL147
* group[=].element[=].target[=].display = "rektal eritma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1355
* group[=].element[=].display = "Раствор для ротовой полости"
* group[=].element[=].target[+].code = #SOL141
* group[=].element[=].target[=].display = "og'iz bo'shlig'i shilliq qavati uchun eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1357
* group[=].element[=].display = "Раствор оральный"
* group[=].element[=].target[+].code = #SOL135
* group[=].element[=].target[=].display = "ichga qabul qilish uchun eritma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1358
* group[=].element[=].display = "Раствор офтальмологический стерильный"
* group[=].element[=].target[+].code = #DRO102
* group[=].element[=].target[=].display = "ko'z tomchilari"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1360
* group[=].element[=].display = "Растворитель для парентерального применения"
* group[=].element[=].target[+].code = #SLT102
* group[=].element[=].target[=].display = "erituvchi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1361
* group[=].element[=].display = "Растворитель для приготовления лекарственных форм"
* group[=].element[=].target[+].code = #SLT102
* group[=].element[=].target[=].display = "erituvchi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1362
* group[=].element[=].display = "Жидкость для ингаляций"
* group[=].element[=].target[+].code = #LIQ102
* group[=].element[=].target[=].display = "ingalyatsiya uchun suyuqlik"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1363
* group[=].element[=].display = "Жидкость для инъекций"
* group[=].element[=].target[+].code = #LIQ101
* group[=].element[=].target[=].display = "suyuqlik"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1364
* group[=].element[=].display = "Жидкость для наружного применения"
* group[=].element[=].target[+].code = #LIQ103
* group[=].element[=].target[=].display = "sirtga qo'llash uchun suyuqlik"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1365
* group[=].element[=].display = "Жидкость для приёма внутрь"
* group[=].element[=].target[+].code = #LIQ104
* group[=].element[=].target[=].display = "ichga qo'llash uchun suyuqlik"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1366
* group[=].element[=].display = "Сироп для приема внутрь"
* group[=].element[=].target[+].code = #SYR101
* group[=].element[=].target[=].display = "sirop"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1367
* group[=].element[=].display = "Бальзам для наружного применения"
* group[=].element[=].target[+].code = #LIQ103
* group[=].element[=].target[=].display = "sirtga qo'llash uchun suyuqlik"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1368
* group[=].element[=].display = "Эмульсия для инфузий"
* group[=].element[=].target[+].code = #EMU108
* group[=].element[=].target[=].display = "infuziya uchun emulsiya"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1369
* group[=].element[=].display = "Эмульсия для инъекций"
* group[=].element[=].target[+].code = #EMU109
* group[=].element[=].target[=].display = "inyeksiya uchun emulsiya"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1370
* group[=].element[=].display = "Эмульсия для наружного применения"
* group[=].element[=].target[+].code = #EMU111
* group[=].element[=].target[=].display = "sirtga qo'llash uchun emulsiya"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1371
* group[=].element[=].display = "Эмульсия для приёма внутрь"
* group[=].element[=].target[+].code = #EMU112
* group[=].element[=].target[=].display = "ichga qabul qilish uchun emulsiya"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1373
* group[=].element[=].display = "Концентрат для приготовления раствора для инфузий"
* group[=].element[=].target[+].code = #CON126
* group[=].element[=].target[=].display = "infuziya uchun eritma tayyorlash uchun konsentrat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1374
* group[=].element[=].display = "Концентрат для приготовления раствора для наружного применения"
* group[=].element[=].target[+].code = #CON131
* group[=].element[=].target[=].display = "sirtga qo'llash uchun eritma tayyorlash uchun konsentrat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1375
* group[=].element[=].display = "Концентрат для приготовления эмульсии для инфузий"
* group[=].element[=].target[+].code = #CON179
* group[=].element[=].target[=].display = "infuziya uchun emulsiya tayyorlash uchun konsentrat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1376
* group[=].element[=].display = "Концентрат для приготовления раствора для внутривенного введения"
* group[=].element[=].target[+].code = #CON110
* group[=].element[=].target[=].display = "vena ichiga yuborish uchun eritma tayyorlash uchun konsentrat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1377
* group[=].element[=].display = "Гель вагинальный"
* group[=].element[=].target[+].code = #GEL102
* group[=].element[=].target[=].display = "vaginal gel"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1378
* group[=].element[=].display = "Гель глазной"
* group[=].element[=].target[+].code = #GEL103
* group[=].element[=].target[=].display = "ko'z geli"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1379
* group[=].element[=].display = "Гель для десен"
* group[=].element[=].target[+].code = #GEL106
* group[=].element[=].target[=].display = "milkka surtish uchun gel"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1381
* group[=].element[=].display = "Гель для местного применения"
* group[=].element[=].target[+].code = #GEL105
* group[=].element[=].target[=].display = "mahalliy qo'llash uchun gel"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1382
* group[=].element[=].display = "Гель для наружного применения"
* group[=].element[=].target[+].code = #GEL108
* group[=].element[=].target[=].display = "sirtga qo'llash uchun gel"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1383
* group[=].element[=].display = "Гель для приёма внутрь"
* group[=].element[=].target[+].code = #GEL110
* group[=].element[=].target[=].display = "ichga qabul qilish uchun gel"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1384
* group[=].element[=].display = "Гель зубной"
* group[=].element[=].target[+].code = #GEL111
* group[=].element[=].target[=].display = "tish geli"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1385
* group[=].element[=].display = "Гель стоматологический"
* group[=].element[=].target[+].code = #GEL116
* group[=].element[=].target[=].display = "stomatologik gel"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1386
* group[=].element[=].display = "Крем вагинальный"
* group[=].element[=].target[+].code = #CRE102
* group[=].element[=].target[=].display = "vaginal krem"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1387
* group[=].element[=].display = "Крем для интравагинального применения"
* group[=].element[=].target[+].code = #CRE102
* group[=].element[=].target[=].display = "vaginal krem"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1388
* group[=].element[=].display = "Крем для местного и наружного применения"
* group[=].element[=].target[+].code = #CRE101
* group[=].element[=].target[=].display = "krem"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1389
* group[=].element[=].display = "Крем для наружного применения"
* group[=].element[=].target[+].code = #CRE106
* group[=].element[=].target[=].display = "sirtga qo'llash uchun krem"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1390
* group[=].element[=].display = "Крем для ректального применения"
* group[=].element[=].target[+].code = #CRE108
* group[=].element[=].target[=].display = "rektal krem"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1392
* group[=].element[=].display = "Мазь глазная"
* group[=].element[=].target[+].code = #OIN103
* group[=].element[=].target[=].display = "ko'z surtmasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1393
* group[=].element[=].display = "Мазь для местного и наружного применения"
* group[=].element[=].target[+].code = #OIN105
* group[=].element[=].target[=].display = "mahalliy qo'llash uchun surtma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1394
* group[=].element[=].display = "Мазь для наружного применения"
* group[=].element[=].target[+].code = #OIN107
* group[=].element[=].target[=].display = "sirtga qo'llash uchun surtma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1396
* group[=].element[=].display = "Мазь для ректального применения"
* group[=].element[=].target[+].code = #OIN109
* group[=].element[=].target[=].display = "rektal surtma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1397
* group[=].element[=].display = "Мазь назальная"
* group[=].element[=].target[+].code = #OIN108
* group[=].element[=].target[=].display = "nazal surtma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1398
* group[=].element[=].display = "Мазь стерильная офтальмологическая"
* group[=].element[=].target[+].code = #OIN103
* group[=].element[=].target[=].display = "ko'z surtmasi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1399
* group[=].element[=].display = "Линимент для наружного применения"
* group[=].element[=].target[+].code = #LIN104
* group[=].element[=].target[=].display = "sirtga qo'llash uchun liniment"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1400
* group[=].element[=].display = "Суппозитории вагинальные"
* group[=].element[=].target[+].code = #SUP102
* group[=].element[=].target[=].display = "vaginal suppazitoriylar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1401
* group[=].element[=].display = "Свечи для ректального применения"
* group[=].element[=].target[+].code = #SUP103
* group[=].element[=].target[=].display = "rektal suppozitoriylar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1402
* group[=].element[=].display = "Экстракт густой"
* group[=].element[=].target[+].code = #DRM101
* group[=].element[=].target[=].display = "quruq ekstrakt"
* group[=].element[=].target[=].relationship = #source-is-broader-than-target
* group[=].element[+].code = #1403
* group[=].element[=].display = "Экстракт жидкий"
* group[=].element[=].target[+].code = #LIE101
* group[=].element[=].target[=].display = "suyuq ekstrakt"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1404
* group[=].element[=].display = "Экстракт сухой"
* group[=].element[=].target[+].code = #DRM101
* group[=].element[=].target[=].display = "quruq ekstrakt"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1413
* group[=].element[=].display = "Паста дентальная адгезивная"
* group[=].element[=].target[+].code = #PAS107
* group[=].element[=].target[=].display = "stomotologik dori pastasi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1414
* group[=].element[=].display = "Паста для наружного применения"
* group[=].element[=].target[+].code = #PAS104
* group[=].element[=].target[=].display = "sirtga qo'llash uchun pasta"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1415
* group[=].element[=].display = "Паста для приема внутрь"
* group[=].element[=].target[+].code = #PAS106
* group[=].element[=].target[=].display = "ichga qabul qilish uchun pasta"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1416
* group[=].element[=].display = "Пастилки для рассасывания"
* group[=].element[=].target[+].code = #LOM101
* group[=].element[=].target[=].display = "dorivor pastilkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1419
* group[=].element[=].display = "Желе для наружного применения"
* group[=].element[=].target[+].code = #JEL101
* group[=].element[=].target[=].display = "dorivor jele"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1421
* group[=].element[=].display = "Суспензия глазная и ушная"
* group[=].element[=].target[+].code = #SUS101
* group[=].element[=].target[=].display = "suspenziya"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1422
* group[=].element[=].display = "Суспензия для внутреннего применения"
* group[=].element[=].target[+].code = #SUS116
* group[=].element[=].target[=].display = "ichga qabul qilish uchun suspenziya"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1423
* group[=].element[=].display = "Суспензия для внутримышечного введения"
* group[=].element[=].target[+].code = #SUS104
* group[=].element[=].target[=].display = "mushak ichiga yuborish uchun suspenziya"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1424
* group[=].element[=].display = "Суспензия для ингаляций"
* group[=].element[=].target[+].code = #SUS110
* group[=].element[=].target[=].display = "ingalyatsiya uchun suspenziya"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1425
* group[=].element[=].display = "Суспензия для интратрахеального введения"
* group[=].element[=].target[+].code = #SUS119
* group[=].element[=].target[=].display = "endotraxeal yuborish uchun suspenziya"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1426
* group[=].element[=].display = "Суспензия для инъекций"
* group[=].element[=].target[+].code = #SUS107
* group[=].element[=].target[=].display = "inyeksiya uchun suspenziya"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1427
* group[=].element[=].display = "Суспензия для нанесения на кожу"
* group[=].element[=].target[+].code = #SUS113
* group[=].element[=].target[=].display = "sirtga qo'llash uchun suspenziya"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1429
* group[=].element[=].display = "Суспензия для перорального применения"
* group[=].element[=].target[+].code = #SUS116
* group[=].element[=].target[=].display = "ichga qabul qilish uchun suspenziya"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1430
* group[=].element[=].display = "Суспензия для подкожного введения"
* group[=].element[=].target[+].code = #SUS115
* group[=].element[=].target[=].display = "teri ostiga yuborish uchun suspenziya"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1431
* group[=].element[=].display = "Суспензия для приёма внутрь"
* group[=].element[=].target[+].code = #SUS116
* group[=].element[=].target[=].display = "ichga qabul qilish uchun suspenziya"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1432
* group[=].element[=].display = "Суспензия для эндотрахеального введения"
* group[=].element[=].target[+].code = #SUS119
* group[=].element[=].target[=].display = "endotraxeal yuborish uchun suspenziya"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1433
* group[=].element[=].display = "Суспензия микрокристаллическая для инъекций"
* group[=].element[=].target[+].code = #SUS107
* group[=].element[=].target[=].display = "inyeksiya uchun suspenziya"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1434
* group[=].element[=].display = "Суспензия оральная"
* group[=].element[=].target[+].code = #SUS116
* group[=].element[=].target[=].display = "ichga qabul qilish uchun suspenziya"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1435
* group[=].element[=].display = "Суспензия стерильная офтальмологическая"
* group[=].element[=].target[+].code = #SUS101
* group[=].element[=].target[=].display = "suspenziya"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1440
* group[=].element[=].display = "Таблетки"
* group[=].element[=].target[+].code = #TAB101
* group[=].element[=].target[=].display = "tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1460
* group[=].element[=].display = "Раствор для внутривенного введения"
* group[=].element[=].target[+].code = #SOL106
* group[=].element[=].target[=].display = "vena ichiga yuborish uchun eritma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1502
* group[=].element[=].display = "Раствор концентрированный для инфузий"
* group[=].element[=].target[+].code = #CON126
* group[=].element[=].target[=].display = "infuziya uchun eritma tayyorlash uchun konsentrat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1503
* group[=].element[=].display = "Капсулы"
* group[=].element[=].target[+].code = #CAP101
* group[=].element[=].target[=].display = "kapsulalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1504
* group[=].element[=].display = "Лекарственное растительное сырьё"
* group[=].element[=].target[+].code = #HRB101
* group[=].element[=].target[=].display = "dorivor o'simlik xomashyosi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1505
* group[=].element[=].display = "настойка"
* group[=].element[=].target[+].code = #TIN101
* group[=].element[=].target[=].display = "tindirma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1508
* group[=].element[=].display = "Пластырь трансдермальный"
* group[=].element[=].target[+].code = #PLA104
* group[=].element[=].target[=].display = "transdermal plasterlar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1510
* group[=].element[=].display = "Суспензия для приема внутрь"
* group[=].element[=].target[+].code = #SUS116
* group[=].element[=].target[=].display = "ichga qabul qilish uchun suspenziya"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1511
* group[=].element[=].display = "Лиофилизат для приготовления раствора для инфузий"
* group[=].element[=].target[+].code = #LYO221
* group[=].element[=].target[=].display = "infuziya uchun eritma tayyorlash uchun liofilizat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1512
* group[=].element[=].display = "Раствор для внутривенных и внутримышечных инъекций"
* group[=].element[=].target[+].code = #SOL123
* group[=].element[=].target[=].display = "inyeksiya uchun eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1513
* group[=].element[=].display = "драже"
* group[=].element[=].target[+].code = #DRA101
* group[=].element[=].target[=].display = "draje"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1514
* group[=].element[=].display = "Гранулы для приготовления раствора для приема внутрь"
* group[=].element[=].target[+].code = #GRA153
* group[=].element[=].target[=].display = "ichga qabul qilish uchun eritma tayyorlash uchun granulalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1515
* group[=].element[=].display = "Лекарственно-растительное сырье"
* group[=].element[=].target[+].code = #HRB101
* group[=].element[=].target[=].display = "dorivor o'simlik xomashyosi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1516
* group[=].element[=].display = "Лекарственно-растительное сырье"
* group[=].element[=].target[+].code = #HRB101
* group[=].element[=].target[=].display = "dorivor o'simlik xomashyosi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1518
* group[=].element[=].display = "раствор"
* group[=].element[=].target[+].code = #SOL101
* group[=].element[=].target[=].display = "eritma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1519
* group[=].element[=].display = "спрей"
* group[=].element[=].target[+].code = #SPR101
* group[=].element[=].target[=].display = "sprey"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1520
* group[=].element[=].display = "Порошок лиофилизированный для приготовления раствора для внутривенного и внутримышечного введения"
* group[=].element[=].target[+].code = #LYO222
* group[=].element[=].target[=].display = "inyeksiya uchun eritma tayyorlash uchun liofilizat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1522
* group[=].element[=].display = "раствор для внутривенного и внутримышечного введения"
* group[=].element[=].target[+].code = #SOL123
* group[=].element[=].target[=].display = "inyeksiya uchun eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1523
* group[=].element[=].display = "Раствор для внутриглазного введения"
* group[=].element[=].target[+].code = #SOL107
* group[=].element[=].target[=].display = "ko'z ichiga yuborish uchun eritma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1524
* group[=].element[=].display = "лиофилизат для приготовления суспензии для эндотрахеального введения"
* group[=].element[=].target[+].code = #LYO272
* group[=].element[=].target[=].display = "endotraxeal yuborish uchun suspenziya tayyorlash uchun liofilizat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1562
* group[=].element[=].display = "раствор для внутривенного и внутримышечного введения"
* group[=].element[=].target[+].code = #SOL123
* group[=].element[=].target[=].display = "inyeksiya uchun eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1577
* group[=].element[=].display = "Лекарственное растительное сырьё"
* group[=].element[=].target[+].code = #HRB101
* group[=].element[=].target[=].display = "dorivor o'simlik xomashyosi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1620
* group[=].element[=].display = "Жидкость"
* group[=].element[=].target[+].code = #LIQ101
* group[=].element[=].target[=].display = "suyuqlik"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1624
* group[=].element[=].display = "Таблетки, покрытые пленочной оболочкой"
* group[=].element[=].target[+].code = #TAB118
* group[=].element[=].target[=].display = "plyonka qobiq bilan qoplangan tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1665
* group[=].element[=].display = "Раствор спиртовой"
* group[=].element[=].target[+].code = #SOL101
* group[=].element[=].target[=].display = "eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1672
* group[=].element[=].display = "Таблетки с контролируемым высвобождением, покрытые оболочкой"
* group[=].element[=].target[+].code = #TAB120
* group[=].element[=].target[=].display = "ajralib chiqarilishi modifikatsiyalangan tabletkalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1688
* group[=].element[=].display = "Настойка"
* group[=].element[=].target[+].code = #TIN101
* group[=].element[=].target[=].display = "tindirma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1703
* group[=].element[=].display = "Раствор для внутривенного и внутримышечного введения"
* group[=].element[=].target[+].code = #SOL123
* group[=].element[=].target[=].display = "inyeksiya uchun eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1758
* group[=].element[=].display = "капли в нос"
* group[=].element[=].target[+].code = #DRO109
* group[=].element[=].target[=].display = "nazal tomchilari"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1759
* group[=].element[=].display = "Таблетки"
* group[=].element[=].target[+].code = #TAB101
* group[=].element[=].target[=].display = "tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1785
* group[=].element[=].display = "Таблетки"
* group[=].element[=].target[+].code = #TAB101
* group[=].element[=].target[=].display = "tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1789
* group[=].element[=].display = "таблетки"
* group[=].element[=].target[+].code = #TAB101
* group[=].element[=].target[=].display = "tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1790
* group[=].element[=].display = "Таблетка"
* group[=].element[=].target[+].code = #TAB101
* group[=].element[=].target[=].display = "tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1822
* group[=].element[=].display = "Таблетка"
* group[=].element[=].target[+].code = #TAB101
* group[=].element[=].target[=].display = "tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1824
* group[=].element[=].display = "Таблетка"
* group[=].element[=].target[+].code = #TAB101
* group[=].element[=].target[=].display = "tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1826
* group[=].element[=].display = "Таблетка"
* group[=].element[=].target[+].code = #TAB101
* group[=].element[=].target[=].display = "tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1847
* group[=].element[=].display = "Крем"
* group[=].element[=].target[+].code = #CRE101
* group[=].element[=].target[=].display = "krem"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1848
* group[=].element[=].display = "Раствор"
* group[=].element[=].target[+].code = #SOL101
* group[=].element[=].target[=].display = "eritma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1849
* group[=].element[=].display = "таблетки"
* group[=].element[=].target[+].code = #TAB101
* group[=].element[=].target[=].display = "tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1863
* group[=].element[=].display = "Лекарственное растительное сырье"
* group[=].element[=].target[+].code = #HRB101
* group[=].element[=].target[=].display = "dorivor o'simlik xomashyosi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1879
* group[=].element[=].display = "капли глазные"
* group[=].element[=].target[+].code = #DRO102
* group[=].element[=].target[=].display = "ko'z tomchilari"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1880
* group[=].element[=].display = "раствор для внутривенного введения"
* group[=].element[=].target[+].code = #SOL106
* group[=].element[=].target[=].display = "vena ichiga yuborish uchun eritma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1900
* group[=].element[=].display = "Суппозитории ректальные"
* group[=].element[=].target[+].code = #SUP103
* group[=].element[=].target[=].display = "rektal suppozitoriylar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1920
* group[=].element[=].display = "Лиофилизат для приготовления раствора для внутривенного введения"
* group[=].element[=].target[+].code = #LYO205
* group[=].element[=].target[=].display = "vena ichiga yuborish uchun eritma tayyorlash uchun liofilizat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1921
* group[=].element[=].display = "таблетки покрытые оболочкой"
* group[=].element[=].target[+].code = #TAB117
* group[=].element[=].target[=].display = "qobiq bilan qoplangan tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1922
* group[=].element[=].display = "Таблетки, покрытые оболочкой"
* group[=].element[=].target[+].code = #TAB117
* group[=].element[=].target[=].display = "qobiq bilan qoplangan tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1923
* group[=].element[=].display = "порошок дозированный для приготовления раствора для перорального применения"
* group[=].element[=].target[+].code = #POW177
* group[=].element[=].target[=].display = "ichga qabul qilish uchun eritma tayyorlash uchun kukun"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1924
* group[=].element[=].display = "капсулы"
* group[=].element[=].target[+].code = #CAP101
* group[=].element[=].target[=].display = "kapsulalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1925
* group[=].element[=].display = "Порошок для приготовления раствора для инъекций"
* group[=].element[=].target[+].code = #POW165
* group[=].element[=].target[=].display = "inyeksiya uchun eritma tayyorlash uchun kukun"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1926
* group[=].element[=].display = "раствор для внутривенного и подкожного введения"
* group[=].element[=].target[+].code = #SOL123
* group[=].element[=].target[=].display = "inyeksiya uchun eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1927
* group[=].element[=].display = "концентрат для приготовления раствора для инъекций"
* group[=].element[=].target[+].code = #CON127
* group[=].element[=].target[=].display = "inyeksiya uchun eritma tayyorlash uchun konsentrat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1928
* group[=].element[=].display = "концентрат для приготовления раствора для инфузий"
* group[=].element[=].target[+].code = #CON126
* group[=].element[=].target[=].display = "infuziya uchun eritma tayyorlash uchun konsentrat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1929
* group[=].element[=].display = "концентрат для приготовления раствора для инфузий"
* group[=].element[=].target[+].code = #CON126
* group[=].element[=].target[=].display = "infuziya uchun eritma tayyorlash uchun konsentrat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1930
* group[=].element[=].display = "лиофилизат для приготовления раствора для инфузий"
* group[=].element[=].target[+].code = #LYO221
* group[=].element[=].target[=].display = "infuziya uchun eritma tayyorlash uchun liofilizat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1932
* group[=].element[=].display = "суппозитории вагинальные"
* group[=].element[=].target[+].code = #SUP102
* group[=].element[=].target[=].display = "vaginal suppazitoriylar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1933
* group[=].element[=].display = "жидкость"
* group[=].element[=].target[+].code = #LIQ101
* group[=].element[=].target[=].display = "suyuqlik"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1934
* group[=].element[=].display = "Таблетки, покрытые пленочной оболочкой"
* group[=].element[=].target[+].code = #TAB118
* group[=].element[=].target[=].display = "plyonka qobiq bilan qoplangan tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1940
* group[=].element[=].display = "Мазь"
* group[=].element[=].target[+].code = #OIN101
* group[=].element[=].target[=].display = "surtma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1941
* group[=].element[=].display = "Суспензия"
* group[=].element[=].target[+].code = #SUS101
* group[=].element[=].target[=].display = "suspenziya"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1942
* group[=].element[=].display = "Таблетки пролонгированного действия, покрытые плёночной оболочкой"
* group[=].element[=].target[+].code = #TAB121
* group[=].element[=].target[=].display = "taʼsiri uzaytirilgan tabletkalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1943
* group[=].element[=].display = "Раствор для инъекций и инфузий"
* group[=].element[=].target[+].code = #SOL101
* group[=].element[=].target[=].display = "eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1944
* group[=].element[=].display = "Таблетки для наружного применения"
* group[=].element[=].target[+].code = #TAB101
* group[=].element[=].target[=].display = "tabletkalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1945
* group[=].element[=].display = "Раствор для внутривенной инфузии"
* group[=].element[=].target[+].code = #SOL122
* group[=].element[=].target[=].display = "infuziya uchun eritma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1946
* group[=].element[=].display = "Порошок для приготовления раствора для внутримышечного введения"
* group[=].element[=].target[+].code = #POW152
* group[=].element[=].target[=].display = "mushak ichiga yuborish uchun eritma tayyorlash uchun kukun"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1947
* group[=].element[=].display = "Порошок"
* group[=].element[=].target[+].code = #POW101
* group[=].element[=].target[=].display = "kukun"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1948
* group[=].element[=].display = "Гель"
* group[=].element[=].target[+].code = #GEL101
* group[=].element[=].target[=].display = "gel"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1949
* group[=].element[=].display = "Сироп"
* group[=].element[=].target[+].code = #SYR101
* group[=].element[=].target[=].display = "sirop"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1950
* group[=].element[=].display = "Раствор для внутримышечного введения"
* group[=].element[=].target[+].code = #SOL110
* group[=].element[=].target[=].display = "mushak ichiga yuborish uchun eritma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1951
* group[=].element[=].display = "Таблетки пролонгированного действия, покрытые кишечнорастворимой оболочкой"
* group[=].element[=].target[+].code = #TAB114
* group[=].element[=].target[=].display = "ichakda eriydigan, taʼsiri uzaytirilgan tabletkalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1952
* group[=].element[=].display = "Раствор"
* group[=].element[=].target[+].code = #SOL101
* group[=].element[=].target[=].display = "eritma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1953
* group[=].element[=].display = "Порошок лиофилизированный для приготовления раствора для внутривенной инфузий"
* group[=].element[=].target[+].code = #LYO221
* group[=].element[=].target[=].display = "infuziya uchun eritma tayyorlash uchun liofilizat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1954
* group[=].element[=].display = "Капли глазные"
* group[=].element[=].target[+].code = #DRO102
* group[=].element[=].target[=].display = "ko'z tomchilari"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1955
* group[=].element[=].display = "Эмульсия внутривенная жировая"
* group[=].element[=].target[+].code = #EMU104
* group[=].element[=].target[=].display = "vena ichiga yuborish uchun emulsiya"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1956
* group[=].element[=].display = "в комплекте с растворителем - раствор лидокаина гидрохлорида"
* group[=].element[=].target[+].code = #SLT102
* group[=].element[=].target[=].display = "erituvchi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1957
* group[=].element[=].display = "в комплекте с растворителем-вода для инъекций"
* group[=].element[=].target[+].code = #SLT102
* group[=].element[=].target[=].display = "erituvchi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1958
* group[=].element[=].display = "Раствор для приема внутрь, местного и наружного применения"
* group[=].element[=].target[+].code = #SOL101
* group[=].element[=].target[=].display = "eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1959
* group[=].element[=].display = "Таблетки делимые"
* group[=].element[=].target[+].code = #TAB101
* group[=].element[=].target[=].display = "tabletkalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1960
* group[=].element[=].display = "в комплекте с растворителем - этиловым спиртом"
* group[=].element[=].target[+].code = #SLT102
* group[=].element[=].target[=].display = "erituvchi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1980
* group[=].element[=].display = "в комплекте с растворителем - раствор натрия хлорида"
* group[=].element[=].target[+].code = #SLT102
* group[=].element[=].target[=].display = "erituvchi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #1981
* group[=].element[=].display = "Порошок лиофилизированный для приготовления раствора для инъекций"
* group[=].element[=].target[+].code = #LYO222
* group[=].element[=].target[=].display = "inyeksiya uchun eritma tayyorlash uchun liofilizat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #1982
* group[=].element[=].display = "в комплекте с растворителем"
* group[=].element[=].target[+].code = #SLT102
* group[=].element[=].target[=].display = "erituvchi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2008
* group[=].element[=].display = "Гель для наружного и местного применения"
* group[=].element[=].target[+].code = #GEL101
* group[=].element[=].target[=].display = "gel"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2020
* group[=].element[=].display = "Раствор для наружного и внутриполостного применения"
* group[=].element[=].target[+].code = #SOL101
* group[=].element[=].target[=].display = "eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2021
* group[=].element[=].display = "Раствор спиртовой"
* group[=].element[=].target[+].code = #SOL101
* group[=].element[=].target[=].display = "eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2040
* group[=].element[=].display = "Порошок для приготовления суспензии для приёма внутрь"
* group[=].element[=].target[+].code = #POW219
* group[=].element[=].target[=].display = "ichga qabul qilish uchun suspenziya tayyorlash uchun kukun"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2041
* group[=].element[=].display = "Суспензия для эндотрахеального введения"
* group[=].element[=].target[+].code = #SUS119
* group[=].element[=].target[=].display = "endotraxeal yuborish uchun suspenziya"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2042
* group[=].element[=].display = "Таблетки, покрытые пленочной оболочкой пролонгированного действия"
* group[=].element[=].target[+].code = #TAB121
* group[=].element[=].target[=].display = "taʼsiri uzaytirilgan tabletkalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2043
* group[=].element[=].display = "Таблетки, покрытые пленочной оболочкой с модифицированным высвобождением"
* group[=].element[=].target[+].code = #TAB120
* group[=].element[=].target[=].display = "ajralib chiqarilishi modifikatsiyalangan tabletkalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2060
* group[=].element[=].display = "Таблетки жевательные с малиново-клубничным вкусом"
* group[=].element[=].target[+].code = #TAB110
* group[=].element[=].target[=].display = "chaynaladigan tabletkalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2062
* group[=].element[=].display = "Концентрат для приготовления раствора для внутривенных инфузий"
* group[=].element[=].target[+].code = #CON126
* group[=].element[=].target[=].display = "infuziya uchun eritma tayyorlash uchun konsentrat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2063
* group[=].element[=].display = "Порошок для приема внутрь"
* group[=].element[=].target[+].code = #POW105
* group[=].element[=].target[=].display = "ichga qabul uchun kukun"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2064
* group[=].element[=].display = "Суппозитории для вагинального или ректального применения"
* group[=].element[=].target[+].code = #SUP101
* group[=].element[=].target[=].display = "suppozitoriylar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2065
* group[=].element[=].display = "Суспензия для внутримышечного и подкожного введения"
* group[=].element[=].target[+].code = #SUS107
* group[=].element[=].target[=].display = "inyeksiya uchun suspenziya"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2076
* group[=].element[=].display = "Капли для приёма внутрь, раствор"
* group[=].element[=].target[+].code = #DRO107
* group[=].element[=].target[=].display = "ichga qabul qilish uchun tomchilar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2080
* group[=].element[=].display = "Гранулы для приготовления суспензии для приёма внутрь"
* group[=].element[=].target[+].code = #GRA181
* group[=].element[=].target[=].display = "ichga qabul qilish uchun suspenziya tayyorlash uchun granulalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2081
* group[=].element[=].display = "Порошок для приготовления инъекционного раствора"
* group[=].element[=].target[+].code = #POW165
* group[=].element[=].target[=].display = "inyeksiya uchun eritma tayyorlash uchun kukun"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2101
* group[=].element[=].display = "шампунь"
* group[=].element[=].target[+].code = #SHA101
* group[=].element[=].target[=].display = "dorivor shampun"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2120
* group[=].element[=].display = "Эмульсионный гель для наружного применения"
* group[=].element[=].target[+].code = #GEL108
* group[=].element[=].target[=].display = "sirtga qo'llash uchun gel"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2140
* group[=].element[=].display = "вазелин"
* group[=].element[=].target[+].code = #OIN101
* group[=].element[=].target[=].display = "surtma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2141
* group[=].element[=].display = "Паста"
* group[=].element[=].target[+].code = #PAS101
* group[=].element[=].target[=].display = "pasta"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2145
* group[=].element[=].display = "раствор масляный для наружного применения"
* group[=].element[=].target[+].code = #SOL127
* group[=].element[=].target[=].display = "sirtga qo'llash uchun eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2146
* group[=].element[=].display = "в комплекте с растворителем-вода для инъекций с бензиловым спиртом"
* group[=].element[=].target[+].code = #SLT102
* group[=].element[=].target[=].display = "erituvchi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2147
* group[=].element[=].display = "Лиофилизат для приготовления раствора для внутримышечного введения"
* group[=].element[=].target[+].code = #LYO209
* group[=].element[=].target[=].display = "mushak ichiga yuborish uchun eritma tayyorlash uchun liofilizat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2160
* group[=].element[=].display = "Капсулы гастрорезистентные мягкие"
* group[=].element[=].target[+].code = #CAP105
* group[=].element[=].target[=].display = "ichakda eruvchi kapsulalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2161
* group[=].element[=].display = "Жидкость для приема внутрь, местного и наружного применения"
* group[=].element[=].target[+].code = #LIQ101
* group[=].element[=].target[=].display = "suyuqlik"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2162
* group[=].element[=].display = "Жидкость для приема внутрь и ректального введения"
* group[=].element[=].target[+].code = #LIQ101
* group[=].element[=].target[=].display = "suyuqlik"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2163
* group[=].element[=].display = "Спрей для местного и наружного применения"
* group[=].element[=].target[+].code = #SPR102
* group[=].element[=].target[=].display = "mahalliy qo'llash uchun sprey"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2164
* group[=].element[=].display = "Раствор в масле для инъекции"
* group[=].element[=].target[+].code = #SOL123
* group[=].element[=].target[=].display = "inyeksiya uchun eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2165
* group[=].element[=].display = "Раствор для инъекций и ингаляций"
* group[=].element[=].target[+].code = #SOL101
* group[=].element[=].target[=].display = "eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2167
* group[=].element[=].display = "Раствор изотонический"
* group[=].element[=].target[+].code = #SOL101
* group[=].element[=].target[=].display = "eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2180
* group[=].element[=].display = "Порошок для приготовления суспензии для внутримышечного введения"
* group[=].element[=].target[+].code = #POW207
* group[=].element[=].target[=].display = "mushak ichiga yuborish uchun suspenziya tayyorlash uchun kukun"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2181
* group[=].element[=].display = "раствор масляный для инъекций"
* group[=].element[=].target[+].code = #SOL123
* group[=].element[=].target[=].display = "inyeksiya uchun eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2220
* group[=].element[=].display = "Порошок для приготовления раствора для внутривенного или внутримышечного введения"
* group[=].element[=].target[+].code = #POW165
* group[=].element[=].target[=].display = "inyeksiya uchun eritma tayyorlash uchun kukun"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2221
* group[=].element[=].display = "в комплекте с сывороткой лошадиной очищенной разведенной 1:100"
* group[=].element[=].target[+].code = #SLT102
* group[=].element[=].target[=].display = "erituvchi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2230
* group[=].element[=].display = "Порошок для приготовления раствора для внутривенного введения"
* group[=].element[=].target[+].code = #POW148
* group[=].element[=].target[=].display = "vena ichiga yuborish uchun eritma tayyorlash uchun kukun"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2231
* group[=].element[=].display = "порошок для приготовления  раствора для внутривенного введения"
* group[=].element[=].target[+].code = #POW148
* group[=].element[=].target[=].display = "vena ichiga yuborish uchun eritma tayyorlash uchun kukun"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2232
* group[=].element[=].display = "порошок для приготовления раствора для внутримышечного введения"
* group[=].element[=].target[+].code = #POW152
* group[=].element[=].target[=].display = "mushak ichiga yuborish uchun eritma tayyorlash uchun kukun"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2233
* group[=].element[=].display = "порошок для приготовления раствора для инъекций и инфузий"
* group[=].element[=].target[+].code = #POW101
* group[=].element[=].target[=].display = "kukun"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2235
* group[=].element[=].display = "суспензия для приема внутрь для детей"
* group[=].element[=].target[+].code = #SUS116
* group[=].element[=].target[=].display = "ichga qabul qilish uchun suspenziya"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2236
* group[=].element[=].display = "Лиофилизат для приготовления раствора"
* group[=].element[=].target[+].code = #LYO101
* group[=].element[=].target[=].display = "liofilizat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2243
* group[=].element[=].display = "Лиофилизат для инъекций"
* group[=].element[=].target[+].code = #LYO222
* group[=].element[=].target[=].display = "inyeksiya uchun eritma tayyorlash uchun liofilizat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2244
* group[=].element[=].display = "Раствор для инфузий для приема внутрь"
* group[=].element[=].target[+].code = #SOL101
* group[=].element[=].target[=].display = "eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2246
* group[=].element[=].display = "порошком лиофилизированным для приготовления раствора для инфузий"
* group[=].element[=].target[+].code = #LYO221
* group[=].element[=].target[=].display = "infuziya uchun eritma tayyorlash uchun liofilizat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2247
* group[=].element[=].display = "Порошок лиофилизированный для приготовления раствора для инфузий"
* group[=].element[=].target[+].code = #LYO221
* group[=].element[=].target[=].display = "infuziya uchun eritma tayyorlash uchun liofilizat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2248
* group[=].element[=].display = "Раствор для ингаляционного наркоза"
* group[=].element[=].target[+].code = #LIQ102
* group[=].element[=].target[=].display = "ingalyatsiya uchun suyuqlik"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2249
* group[=].element[=].display = "Раствор для внутривенной инфузии и медленной внутривенной инъекций"
* group[=].element[=].target[+].code = #SOL106
* group[=].element[=].target[=].display = "vena ichiga yuborish uchun eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2250
* group[=].element[=].display = "в комплекте с растворителем этанол"
* group[=].element[=].target[+].code = #SLT102
* group[=].element[=].target[=].display = "erituvchi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2251
* group[=].element[=].display = "Суспензия для внутримышечного инъекций"
* group[=].element[=].target[+].code = #SUS104
* group[=].element[=].target[=].display = "mushak ichiga yuborish uchun suspenziya"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2252
* group[=].element[=].display = "Таблетки с пролонгированным высвобождением, покрытые плёночной оболочкой"
* group[=].element[=].target[+].code = #TAB121
* group[=].element[=].target[=].display = "taʼsiri uzaytirilgan tabletkalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2253
* group[=].element[=].display = "Таблетки-лиофилизат"
* group[=].element[=].target[+].code = #TAB115
* group[=].element[=].target[=].display = "liofilizat tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2254
* group[=].element[=].display = "Порошок для приготовления суспензии для инъекций"
* group[=].element[=].target[+].code = #POW210
* group[=].element[=].target[=].display = "inyeksiya uchun suspenziya tayyorlash uchun kukun"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2255
* group[=].element[=].display = "Масло"
* group[=].element[=].target[+].code = #OIL101
* group[=].element[=].target[=].display = "moy"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2257
* group[=].element[=].display = "Спрей, раствор"
* group[=].element[=].target[+].code = #SPR101
* group[=].element[=].target[=].display = "sprey"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2259
* group[=].element[=].display = "Спиртовый раствор для наружного применения"
* group[=].element[=].target[+].code = #SOL127
* group[=].element[=].target[=].display = "sirtga qo'llash uchun eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2260
* group[=].element[=].display = "Эмульсия для внутривенного введения"
* group[=].element[=].target[+].code = #EMU104
* group[=].element[=].target[=].display = "vena ichiga yuborish uchun emulsiya"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2261
* group[=].element[=].display = "Сироп для детей"
* group[=].element[=].target[+].code = #SYR101
* group[=].element[=].target[=].display = "sirop"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2262
* group[=].element[=].display = "Сироп для взрослых"
* group[=].element[=].target[+].code = #SYR101
* group[=].element[=].target[=].display = "sirop"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2263
* group[=].element[=].display = "Гель трансдермальный"
* group[=].element[=].target[+].code = #GEL117
* group[=].element[=].target[=].display = "transdermal gel"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2264
* group[=].element[=].display = "карандаш для ингаляций"
* group[=].element[=].target[+].code = #PEM101
* group[=].element[=].target[=].display = "dorivor qalamchalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2266
* group[=].element[=].display = "Таблетки замедленного  высвобождения"
* group[=].element[=].target[+].code = #TAB121
* group[=].element[=].target[=].display = "taʼsiri uzaytirilgan tabletkalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2267
* group[=].element[=].display = "Пленки диспергируемые в полости рта"
* group[=].element[=].target[+].code = #FIL103
* group[=].element[=].target[=].display = "og'iz bo'shlig'ida dispersiyalanadigan plyonkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2268
* group[=].element[=].display = "лак для ногтей лекарственный"
* group[=].element[=].target[+].code = #MED101
* group[=].element[=].target[=].display = "dorivor tirnoq bo'yog'i"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2269
* group[=].element[=].display = "раствор масляный"
* group[=].element[=].target[+].code = #SOL101
* group[=].element[=].target[=].display = "eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2271
* group[=].element[=].display = "Таблетки пролонгированного действия, покрытые  оболочкой"
* group[=].element[=].target[+].code = #TAB121
* group[=].element[=].target[=].display = "taʼsiri uzaytirilgan tabletkalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2272
* group[=].element[=].display = "Раствор для инфузий и подкожного введения"
* group[=].element[=].target[+].code = #SOL101
* group[=].element[=].target[=].display = "eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2273
* group[=].element[=].display = "Гранулы для приготовления перорального раствора"
* group[=].element[=].target[+].code = #GRA153
* group[=].element[=].target[=].display = "ichga qabul qilish uchun eritma tayyorlash uchun granulalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2274
* group[=].element[=].display = "Лиофилизат для приготовления спрея для интраназального введения"
* group[=].element[=].target[+].code = #LYO251
* group[=].element[=].target[=].display = "nazal sprey tayyorlash uchun liofilizat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2276
* group[=].element[=].display = "Порошок для приготовления инфузионного раствора для внутривенного введения"
* group[=].element[=].target[+].code = #POW164
* group[=].element[=].target[=].display = "infuziya uchun eritma tayyorlash uchun kukun"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2277
* group[=].element[=].display = "в комплекте с растворителем - стерильной дистиллированной водой"
* group[=].element[=].target[+].code = #SLT102
* group[=].element[=].target[=].display = "erituvchi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2278
* group[=].element[=].display = "Порошок для приготовления раствора"
* group[=].element[=].target[+].code = #POW101
* group[=].element[=].target[=].display = "kukun"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2279
* group[=].element[=].display = "Раствор для инъекций изотонический"
* group[=].element[=].target[+].code = #SOL123
* group[=].element[=].target[=].display = "inyeksiya uchun eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2280
* group[=].element[=].display = "Раствор для внутрисуставного введения"
* group[=].element[=].target[+].code = #SOL113
* group[=].element[=].target[=].display = "bo'g'im ichiga yuborish uchun eritma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2281
* group[=].element[=].display = "Порошок лиофилизированный для приготовления раствора для внутривенного введения"
* group[=].element[=].target[+].code = #LYO205
* group[=].element[=].target[=].display = "vena ichiga yuborish uchun eritma tayyorlash uchun liofilizat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2282
* group[=].element[=].display = "Лосьон"
* group[=].element[=].target[+].code = #LOT101
* group[=].element[=].target[=].display = "losyon"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2301
* group[=].element[=].display = "Эликсир"
* group[=].element[=].target[+].code = #ELI101
* group[=].element[=].target[=].display = "eliksir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2305
* group[=].element[=].display = "Оральный спрей"
* group[=].element[=].target[+].code = #SPR104
* group[=].element[=].target[=].display = "og'iz bo'shlig'i shilliq qavati uchun sprey"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2306
* group[=].element[=].display = "таблетки, покрытые кишечнорастворимой пленочной оболочкой"
* group[=].element[=].target[+].code = #TAB113
* group[=].element[=].target[=].display = "ichakda eriydigan tabletkalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2307
* group[=].element[=].display = "Таблетки, покрытые оболочкой с замедленным высвобождением"
* group[=].element[=].target[+].code = #TAB121
* group[=].element[=].target[=].display = "taʼsiri uzaytirilgan tabletkalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2308
* group[=].element[=].display = "Антигеморроидальная мазь"
* group[=].element[=].target[+].code = #OIN101
* group[=].element[=].target[=].display = "surtma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2309
* group[=].element[=].display = "Свечи антигеморроидальные"
* group[=].element[=].target[+].code = #SUP103
* group[=].element[=].target[=].display = "rektal suppozitoriylar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2311
* group[=].element[=].display = "Пастилки"
* group[=].element[=].target[+].code = #LOM101
* group[=].element[=].target[=].display = "dorivor pastilkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2312
* group[=].element[=].display = "Суппозитории"
* group[=].element[=].target[+].code = #SUP101
* group[=].element[=].target[=].display = "suppozitoriylar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2313
* group[=].element[=].display = "Таблетки, диспергируемые в полости рта"
* group[=].element[=].target[+].code = #TAB105
* group[=].element[=].target[=].display = "og'iz bo'shlig'ida dispersiyalanadigan tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2315
* group[=].element[=].display = "Линимент"
* group[=].element[=].target[+].code = #LIN101
* group[=].element[=].target[=].display = "liniment"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2316
* group[=].element[=].display = "Спрей орофарингеальный, раствор"
* group[=].element[=].target[+].code = #SPR104
* group[=].element[=].target[=].display = "og'iz bo'shlig'i shilliq qavati uchun sprey"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2317
* group[=].element[=].display = "Спрей для местного применения, раствор"
* group[=].element[=].target[+].code = #SPR102
* group[=].element[=].target[=].display = "mahalliy qo'llash uchun sprey"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2318
* group[=].element[=].display = "Капли"
* group[=].element[=].target[+].code = #DRO101
* group[=].element[=].target[=].display = "tomchilar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2319
* group[=].element[=].display = "Лиофилизат для приготовления раствора для инъекций и местного применения"
* group[=].element[=].target[+].code = #LYO101
* group[=].element[=].target[=].display = "liofilizat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2320
* group[=].element[=].display = "Таблетки шипучие для детей"
* group[=].element[=].target[+].code = #TAB122
* group[=].element[=].target[=].display = "vishillovchi tabletkalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2321
* group[=].element[=].display = "Лиофилизат для приготовления раствора для внутривенного и внутримышечного введения"
* group[=].element[=].target[+].code = #LYO222
* group[=].element[=].target[=].display = "inyeksiya uchun eritma tayyorlash uchun liofilizat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2323
* group[=].element[=].display = "Гранулы"
* group[=].element[=].target[+].code = #GRA101
* group[=].element[=].target[=].display = "granulalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2324
* group[=].element[=].display = "Лиофилизат для приготовления раствора для наружного применения"
* group[=].element[=].target[+].code = #LYO226
* group[=].element[=].target[=].display = "sirtga qo'llash uchun eritma tayyorlash uchun liofilizat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2340
* group[=].element[=].display = "Карандаш ингалятор"
* group[=].element[=].target[+].code = #PEM101
* group[=].element[=].target[=].display = "dorivor qalamchalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2341
* group[=].element[=].display = "Раствор для местного применения"
* group[=].element[=].target[+].code = #SOL124
* group[=].element[=].target[=].display = "mahalliy qo'llash uchun eritma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2342
* group[=].element[=].display = "Порошок для суспензии для инъекции"
* group[=].element[=].target[+].code = #POW210
* group[=].element[=].target[=].display = "inyeksiya uchun suspenziya tayyorlash uchun kukun"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2343
* group[=].element[=].display = "Лиофилизат для приготовления раствора для инъекций и инфузий"
* group[=].element[=].target[+].code = #LYO101
* group[=].element[=].target[=].display = "liofilizat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2344
* group[=].element[=].display = "Порошок  для наружного применения"
* group[=].element[=].target[+].code = #POW104
* group[=].element[=].target[=].display = "sirtga qo'llash uchun kukun"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2345
* group[=].element[=].display = "Таблетки двухслойные"
* group[=].element[=].target[+].code = #TAB101
* group[=].element[=].target[=].display = "tabletkalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2346
* group[=].element[=].display = "Стерильные капли глазные, суспензия"
* group[=].element[=].target[+].code = #DRO102
* group[=].element[=].target[=].display = "ko'z tomchilari"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2347
* group[=].element[=].display = "Сироп от кашля"
* group[=].element[=].target[+].code = #SYR101
* group[=].element[=].target[=].display = "sirop"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2348
* group[=].element[=].display = "Пастилки от кашля"
* group[=].element[=].target[+].code = #LOM101
* group[=].element[=].target[=].display = "dorivor pastilkalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2349
* group[=].element[=].display = "Таблетки, покрытые сахарной оболочкой"
* group[=].element[=].target[+].code = #TAB117
* group[=].element[=].target[=].display = "qobiq bilan qoplangan tabletkalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2350
* group[=].element[=].display = "Гранулы с пролонгированным высвобождением для приема внутрь"
* group[=].element[=].target[+].code = #GRA108
* group[=].element[=].target[=].display = "ajralib chiqishi uzaytirilgan granulalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2352
* group[=].element[=].display = "Концентрат для приготовления инфузионного раствора для внутривенного введения"
* group[=].element[=].target[+].code = #CON126
* group[=].element[=].target[=].display = "infuziya uchun eritma tayyorlash uchun konsentrat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2361
* group[=].element[=].display = "Раствор накожный"
* group[=].element[=].target[+].code = #SOL127
* group[=].element[=].target[=].display = "sirtga qo'llash uchun eritma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2362
* group[=].element[=].display = "в комплекте с растворителем L-лизин"
* group[=].element[=].target[+].code = #SLT102
* group[=].element[=].target[=].display = "erituvchi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2363
* group[=].element[=].display = "Мазь для местного применения"
* group[=].element[=].target[+].code = #OIN105
* group[=].element[=].target[=].display = "mahalliy qo'llash uchun surtma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2367
* group[=].element[=].display = "Таблетки диспергируемые в полости рта"
* group[=].element[=].target[+].code = #TAB105
* group[=].element[=].target[=].display = "og'iz bo'shlig'ida dispersiyalanadigan tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2369
* group[=].element[=].display = "растворитель для приготовления раствора для инъекций"
* group[=].element[=].target[+].code = #SLT102
* group[=].element[=].target[=].display = "erituvchi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2370
* group[=].element[=].display = "Спрей назальный, суспензия"
* group[=].element[=].target[+].code = #SPR105
* group[=].element[=].target[=].display = "burun spreyi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2371
* group[=].element[=].display = "Раствор для перорального применения"
* group[=].element[=].target[+].code = #SOL135
* group[=].element[=].target[=].display = "ichga qabul qilish uchun eritma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2372
* group[=].element[=].display = "Раствор вагинальный"
* group[=].element[=].target[+].code = #SOL102
* group[=].element[=].target[=].display = "vaginal eritma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2373
* group[=].element[=].display = "леденцы лекарственные"
* group[=].element[=].target[+].code = #LOZ101
* group[=].element[=].target[=].display = "dorivor shimladigan tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2374
* group[=].element[=].display = "Имплантат"
* group[=].element[=].target[+].code = #IMP101
* group[=].element[=].target[=].display = "implantat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2380
* group[=].element[=].display = "Раствор для внутримышечного и подкожного введения"
* group[=].element[=].target[+].code = #SOL123
* group[=].element[=].target[=].display = "inyeksiya uchun eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2381
* group[=].element[=].display = "Спрей для местного применения дозированный"
* group[=].element[=].target[+].code = #SPR102
* group[=].element[=].target[=].display = "mahalliy qo'llash uchun sprey"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2382
* group[=].element[=].display = "Спрей для горла и полости рта"
* group[=].element[=].target[+].code = #SPR104
* group[=].element[=].target[=].display = "og'iz bo'shlig'i shilliq qavati uchun sprey"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2384
* group[=].element[=].display = "Лиофилизат для приготовления раствора для внутримышечного и парабульбарного введения"
* group[=].element[=].target[+].code = #LYO101
* group[=].element[=].target[=].display = "liofilizat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2385
* group[=].element[=].display = "Порошок для приготовления раствора для внутривенного введения и ингаляций"
* group[=].element[=].target[+].code = #POW101
* group[=].element[=].target[=].display = "kukun"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2386
* group[=].element[=].display = "Сироп во флаконе"
* group[=].element[=].target[+].code = #SYR101
* group[=].element[=].target[=].display = "sirop"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2389
* group[=].element[=].display = "Аэрозоль для наружного применения"
* group[=].element[=].target[+].code = #AER105
* group[=].element[=].target[=].display = "sirtga qo'llash uchun aerozol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2390
* group[=].element[=].display = "Гранулы травяные для приготовления раствора для приёма внутрь"
* group[=].element[=].target[+].code = #GRA153
* group[=].element[=].target[=].display = "ichga qabul qilish uchun eritma tayyorlash uchun granulalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2402
* group[=].element[=].display = "Капли для приема внутрь гомеопатические"
* group[=].element[=].target[+].code = #DRO107
* group[=].element[=].target[=].display = "ichga qabul qilish uchun tomchilar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2403
* group[=].element[=].display = "Раствор для приема внутрь гомеопатический"
* group[=].element[=].target[+].code = #SOL135
* group[=].element[=].target[=].display = "ichga qabul qilish uchun eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2404
* group[=].element[=].display = "Гель ректальный"
* group[=].element[=].target[+].code = #GEL115
* group[=].element[=].target[=].display = "rektal gel"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2408
* group[=].element[=].display = "Глазные и назальные капли"
* group[=].element[=].target[+].code = #DRO101
* group[=].element[=].target[=].display = "tomchilar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2410
* group[=].element[=].display = "Раствор офтальмологический"
* group[=].element[=].target[+].code = #DRO102
* group[=].element[=].target[=].display = "ko'z tomchilari"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2411
* group[=].element[=].display = "Капсулы вагинальные мягкие"
* group[=].element[=].target[+].code = #CAP102
* group[=].element[=].target[=].display = "vaginal kapsulalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2412
* group[=].element[=].display = "Концентрат для приготовления раствора для инъекций и инфузий"
* group[=].element[=].target[+].code = #CON101
* group[=].element[=].target[=].display = "konsentrat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2413
* group[=].element[=].display = "Спрей для наружного и вагинального применения"
* group[=].element[=].target[+].code = #SPR101
* group[=].element[=].target[=].display = "sprey"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2414
* group[=].element[=].display = "Раствор для внутримышечных инъекций"
* group[=].element[=].target[+].code = #SOL110
* group[=].element[=].target[=].display = "mushak ichiga yuborish uchun eritma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2415
* group[=].element[=].display = "Спрей назальный, раствор"
* group[=].element[=].target[+].code = #SPR105
* group[=].element[=].target[=].display = "burun spreyi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2416
* group[=].element[=].display = "Лиофилизированный порошок для приготовления раствора для внутривенного и интравезикального введения"
* group[=].element[=].target[+].code = #LYO101
* group[=].element[=].target[=].display = "liofilizat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2420
* group[=].element[=].display = "Раствор для внутриполостного введения, местного и наружного применения"
* group[=].element[=].target[+].code = #SOL101
* group[=].element[=].target[=].display = "eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2421
* group[=].element[=].display = "Кольцо вагинальное"
* group[=].element[=].target[+].code = #SYS102
* group[=].element[=].target[=].display = "vaginal terapevtik sistema"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2422
* group[=].element[=].display = "Порошок для ингаляций, твердые капсулы"
* group[=].element[=].target[+].code = #CAP110
* group[=].element[=].target[=].display = "ingalyatsiya uchun kukunli kapsulalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2423
* group[=].element[=].display = "Лиофилизат для приготовления раствора для внутренного и суспензии для подкожного введения"
* group[=].element[=].target[+].code = #LYO101
* group[=].element[=].target[=].display = "liofilizat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2440
* group[=].element[=].display = "Раствор для внутримышечного введения, масляный"
* group[=].element[=].target[+].code = #SOL110
* group[=].element[=].target[=].display = "mushak ichiga yuborish uchun eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2441
* group[=].element[=].display = "Aнтигеморроидальная мазь"
* group[=].element[=].target[+].code = #OIN101
* group[=].element[=].target[=].display = "surtma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2442
* group[=].element[=].display = "Бальзам жидкий"
* group[=].element[=].target[+].code = #LIQ101
* group[=].element[=].target[=].display = "suyuqlik"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2446
* group[=].element[=].display = "Капли ушные, раствор"
* group[=].element[=].target[+].code = #DRO111
* group[=].element[=].target[=].display = "quloq tomchilari"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2448
* group[=].element[=].display = "Раствор для наружного и местного применения"
* group[=].element[=].target[+].code = #SOL101
* group[=].element[=].target[=].display = "eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2450
* group[=].element[=].display = "Гранулы травяные"
* group[=].element[=].target[+].code = #GRA101
* group[=].element[=].target[=].display = "granulalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2452
* group[=].element[=].display = "Аэрозоль"
* group[=].element[=].target[+].code = #AER101
* group[=].element[=].target[=].display = "aerozol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2454
* group[=].element[=].display = "Порошок для приготовления раствора для наружного применения"
* group[=].element[=].target[+].code = #POW169
* group[=].element[=].target[=].display = "sirtga qo'llash uchun eritma tayyorlash uchun kukun"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2455
* group[=].element[=].display = "Порошок лиофилизированный для приготовления суспензии для инфузий"
* group[=].element[=].target[+].code = #LYO101
* group[=].element[=].target[=].display = "liofilizat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2456
* group[=].element[=].display = "Порошок для приготовления раствора для внутреннего применения"
* group[=].element[=].target[+].code = #POW177
* group[=].element[=].target[=].display = "ichga qabul qilish uchun eritma tayyorlash uchun kukun"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2457
* group[=].element[=].display = "Раствор для внутривенных инфузий"
* group[=].element[=].target[+].code = #SOL122
* group[=].element[=].target[=].display = "infuziya uchun eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2458
* group[=].element[=].display = "Пастилки растительные от кашля"
* group[=].element[=].target[+].code = #LOM101
* group[=].element[=].target[=].display = "dorivor pastilkalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2459
* group[=].element[=].display = "Порошок для приготовления концентрата для приготовления раствора для инфузий"
* group[=].element[=].target[+].code = #POW101
* group[=].element[=].target[=].display = "kukun"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2460
* group[=].element[=].display = "Раствор для инъекций внутрисуставно, внутримышечно"
* group[=].element[=].target[+].code = #SOL123
* group[=].element[=].target[=].display = "inyeksiya uchun eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2461
* group[=].element[=].display = "Капли назальные для детей"
* group[=].element[=].target[+].code = #DRO109
* group[=].element[=].target[=].display = "nazal tomchilari"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2462
* group[=].element[=].display = "Раствор для полосканий полости рта"
* group[=].element[=].target[+].code = #SOL134
* group[=].element[=].target[=].display = "chayish uchun eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2463
* group[=].element[=].display = "Порошок для инъекций"
* group[=].element[=].target[+].code = #POW165
* group[=].element[=].target[=].display = "inyeksiya uchun eritma tayyorlash uchun kukun"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2464
* group[=].element[=].display = "Суспензия для приёма внутрь для детей"
* group[=].element[=].target[+].code = #SUS116
* group[=].element[=].target[=].display = "ichga qabul qilish uchun suspenziya"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2465
* group[=].element[=].display = "Гель офтальмологический"
* group[=].element[=].target[+].code = #GEL103
* group[=].element[=].target[=].display = "ko'z geli"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2466
* group[=].element[=].display = "Эмульсия жировая для внутривенного введения"
* group[=].element[=].target[+].code = #EMU104
* group[=].element[=].target[=].display = "vena ichiga yuborish uchun emulsiya"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2467
* group[=].element[=].display = "Лиофилизированный порошок для приготовления раствора для внутримышечных и внутривенных инъекций"
* group[=].element[=].target[+].code = #LYO222
* group[=].element[=].target[=].display = "inyeksiya uchun eritma tayyorlash uchun liofilizat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2468
* group[=].element[=].display = "Капли глазные/ушные/назальные"
* group[=].element[=].target[+].code = #DRO101
* group[=].element[=].target[=].display = "tomchilar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2480
* group[=].element[=].display = "Повязка, пропитанная кремом"
* group[=].element[=].target[+].code = #DRS101
* group[=].element[=].target[=].display = "dorivor bog'lam"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2481
* group[=].element[=].display = "Раствор для инъекций  для внутривенного введения"
* group[=].element[=].target[+].code = #SOL106
* group[=].element[=].target[=].display = "vena ichiga yuborish uchun eritma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2482
* group[=].element[=].display = "Концентрат для приготовления раствора для внутримышечного введения"
* group[=].element[=].target[+].code = #CON114
* group[=].element[=].target[=].display = "mushak ichiga yuborish uchun eritma tayyorlash uchun konsentrat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2483
* group[=].element[=].display = "Капсулы пролонгированного высвобождения"
* group[=].element[=].target[+].code = #CAP111
* group[=].element[=].target[=].display = "ajralib chiqishi uzaytirilgan kapsulalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2484
* group[=].element[=].display = "Капсулы мягкие вагинальные"
* group[=].element[=].target[+].code = #CAP102
* group[=].element[=].target[=].display = "vaginal kapsulalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2485
* group[=].element[=].display = "Лиофилизат"
* group[=].element[=].target[+].code = #LYO101
* group[=].element[=].target[=].display = "liofilizat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2486
* group[=].element[=].display = "порошок лиофилизированный для приготовления инъекционного раствора"
* group[=].element[=].target[+].code = #LYO222
* group[=].element[=].target[=].display = "inyeksiya uchun eritma tayyorlash uchun liofilizat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2488
* group[=].element[=].display = "Лиофилизат для приготовления инфузионного раствора"
* group[=].element[=].target[+].code = #LYO221
* group[=].element[=].target[=].display = "infuziya uchun eritma tayyorlash uchun liofilizat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2489
* group[=].element[=].display = "Спрей назальный дозированный, суспензия"
* group[=].element[=].target[+].code = #SPR105
* group[=].element[=].target[=].display = "burun spreyi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2500
* group[=].element[=].display = "Капсулы с пролонгированным действием"
* group[=].element[=].target[+].code = #CAP111
* group[=].element[=].target[=].display = "ajralib chiqishi uzaytirilgan kapsulalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2520
* group[=].element[=].display = "Свечи вагинальные"
* group[=].element[=].target[+].code = #SUP102
* group[=].element[=].target[=].display = "vaginal suppazitoriylar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2540
* group[=].element[=].display = "раствор для инъекций для местного применения"
* group[=].element[=].target[+].code = #SOL123
* group[=].element[=].target[=].display = "inyeksiya uchun eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2560
* group[=].element[=].display = "Порошок для приготовления раствора для подкожного введения"
* group[=].element[=].target[+].code = #POW175
* group[=].element[=].target[=].display = "teri ostiga yuborish uchun eritma tayyorlash uchun kukun"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2580
* group[=].element[=].display = "Имплантат с пролонгированным высвобождением для подкожного введения"
* group[=].element[=].target[+].code = #IMP102
* group[=].element[=].target[=].display = "teri ostiga yuborish uchun implantat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2600
* group[=].element[=].display = "раствор для приема внутрь и местного применения спиртовый"
* group[=].element[=].target[+].code = #SOL101
* group[=].element[=].target[=].display = "eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2620
* group[=].element[=].display = "капсулы пероральные и интравагинальные"
* group[=].element[=].target[+].code = #CAP101
* group[=].element[=].target[=].display = "kapsulalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2640
* group[=].element[=].display = "Стерильный порошок для приготовления раствора для инъекций"
* group[=].element[=].target[+].code = #POW165
* group[=].element[=].target[=].display = "inyeksiya uchun eritma tayyorlash uchun kukun"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2641
* group[=].element[=].display = "Шампунь для наружного применения"
* group[=].element[=].target[+].code = #SHA101
* group[=].element[=].target[=].display = "dorivor shampun"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2642
* group[=].element[=].display = "Лиофилизированный порошок для приготовления раствора для инъекций и инфузий"
* group[=].element[=].target[+].code = #LYO101
* group[=].element[=].target[=].display = "liofilizat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2643
* group[=].element[=].display = "Раствор для наружного применения и ингаляций"
* group[=].element[=].target[+].code = #SOL101
* group[=].element[=].target[=].display = "eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2644
* group[=].element[=].display = "Лиофилизированный порошок для приготовления раствора для инъекций"
* group[=].element[=].target[+].code = #LYO222
* group[=].element[=].target[=].display = "inyeksiya uchun eritma tayyorlash uchun liofilizat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2660
* group[=].element[=].display = "Питьевой раствор"
* group[=].element[=].target[+].code = #SOL135
* group[=].element[=].target[=].display = "ichga qabul qilish uchun eritma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2661
* group[=].element[=].display = "Капли оральные, раствор"
* group[=].element[=].target[+].code = #DRO107
* group[=].element[=].target[=].display = "ichga qabul qilish uchun tomchilar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2662
* group[=].element[=].display = "в комплекте с растворителем-стерильная вода для инъекций"
* group[=].element[=].target[+].code = #SLT102
* group[=].element[=].target[=].display = "erituvchi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2680
* group[=].element[=].display = "пена накожная"
* group[=].element[=].target[+].code = #FOA104
* group[=].element[=].target[=].display = "sirtga qo'llash uchun ko'pik"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2681
* group[=].element[=].display = "Шипучие таблетки для приготовления раствора для местного и наружного применения"
* group[=].element[=].target[+].code = #TAB122
* group[=].element[=].target[=].display = "vishillovchi tabletkalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2682
* group[=].element[=].display = "Стерильный порошок  для приготовления раствора для внутримышечных и внутривенных инъекций"
* group[=].element[=].target[+].code = #POW165
* group[=].element[=].target[=].display = "inyeksiya uchun eritma tayyorlash uchun kukun"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2700
* group[=].element[=].display = "Раствор только для внутримышечного введения"
* group[=].element[=].target[+].code = #SOL110
* group[=].element[=].target[=].display = "mushak ichiga yuborish uchun eritma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2701
* group[=].element[=].display = "Порошок для приготовления раствора для внутривенных и внутримышечных инъекций"
* group[=].element[=].target[+].code = #POW165
* group[=].element[=].target[=].display = "inyeksiya uchun eritma tayyorlash uchun kukun"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2720
* group[=].element[=].display = "Суппозитории вагинальные и ректальные"
* group[=].element[=].target[+].code = #SUP101
* group[=].element[=].target[=].display = "suppozitoriylar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2721
* group[=].element[=].display = "Леденцы для горла"
* group[=].element[=].target[+].code = #LOZ101
* group[=].element[=].target[=].display = "dorivor shimladigan tabletkalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2722
* group[=].element[=].display = "Раствор для перфузий"
* group[=].element[=].target[+].code = #SOL122
* group[=].element[=].target[=].display = "infuziya uchun eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2723
* group[=].element[=].display = "Порошок для приготовления раствора для в/в инъекций и инфузий"
* group[=].element[=].target[+].code = #POW101
* group[=].element[=].target[=].display = "kukun"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2724
* group[=].element[=].display = "Раствор для внутривенного, внутримышечного и ректального введения"
* group[=].element[=].target[+].code = #SOL101
* group[=].element[=].target[=].display = "eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2725
* group[=].element[=].display = "спрей сублингвальный"
* group[=].element[=].target[+].code = #SPR106
* group[=].element[=].target[=].display = "dozalangan til osti spreyi"
* group[=].element[=].target[=].relationship = #source-is-broader-than-target
* group[=].element[+].code = #2740
* group[=].element[=].display = "Крем для местного применения"
* group[=].element[=].target[+].code = #CRE104
* group[=].element[=].target[=].display = "mahalliy qo'llash uchun krem"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2741
* group[=].element[=].display = "Паста для оромукозного применения"
* group[=].element[=].target[+].code = #PAS103
* group[=].element[=].target[=].display = "og'iz bo'shlig'i shilliq qavatiga surtish uchun pasta"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2760
* group[=].element[=].display = "раствор для инфузий для внутривенного введения"
* group[=].element[=].target[+].code = #SOL122
* group[=].element[=].target[=].display = "infuziya uchun eritma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2762
* group[=].element[=].display = "Раствор для наружного и внутриполостного применения и ингаляций"
* group[=].element[=].target[+].code = #SOL101
* group[=].element[=].target[=].display = "eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2780
* group[=].element[=].display = "в комплекте с растворителем-Диклофенак раствор для инъекций"
* group[=].element[=].target[+].code = #SLT102
* group[=].element[=].target[=].display = "erituvchi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2800
* group[=].element[=].display = "Стоматологический гель для местного применения"
* group[=].element[=].target[+].code = #GEL116
* group[=].element[=].target[=].display = "stomatologik gel"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2801
* group[=].element[=].display = "Экстракт для приёма внутрь жидкий"
* group[=].element[=].target[+].code = #LIE101
* group[=].element[=].target[=].display = "suyuq ekstrakt"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2820
* group[=].element[=].display = "Таблетки кишечнорастворимые"
* group[=].element[=].target[+].code = #TAB113
* group[=].element[=].target[=].display = "ichakda eriydigan tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2821
* group[=].element[=].display = "раствор для приема внутрь и ингаляций"
* group[=].element[=].target[+].code = #SOL101
* group[=].element[=].target[=].display = "eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2822
* group[=].element[=].display = "Порошок для раствора для инъекций"
* group[=].element[=].target[+].code = #POW165
* group[=].element[=].target[=].display = "inyeksiya uchun eritma tayyorlash uchun kukun"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2840
* group[=].element[=].display = "травяной сироп"
* group[=].element[=].target[+].code = #SYR101
* group[=].element[=].target[=].display = "sirop"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2841
* group[=].element[=].display = "ректальная суспензия"
* group[=].element[=].target[+].code = #SUS121
* group[=].element[=].target[=].display = "rektal suspenziya"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2842
* group[=].element[=].display = "оральная суспензия для приёма внутрь"
* group[=].element[=].target[+].code = #SUS116
* group[=].element[=].target[=].display = "ichga qabul qilish uchun suspenziya"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2860
* group[=].element[=].display = "Гель  офтальмологический стерильный"
* group[=].element[=].target[+].code = #GEL103
* group[=].element[=].target[=].display = "ko'z geli"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #2887
* group[=].element[=].display = "Порошок лиофилизированный для приготовления суспензии для интратрехеального введения"
* group[=].element[=].target[+].code = #LYO272
* group[=].element[=].target[=].display = "endotraxeal yuborish uchun suspenziya tayyorlash uchun liofilizat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #2960
* group[=].element[=].display = "Эмульсия для внутривенной  инъекции и инфузий"
* group[=].element[=].target[+].code = #EMU101
* group[=].element[=].target[=].display = "emulsiya"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #3005
* group[=].element[=].display = "Пессарии для вагинального или ректального применения"
* group[=].element[=].target[+].code = #SUP101
* group[=].element[=].target[=].display = "suppozitoriylar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #3006
* group[=].element[=].display = "Лиофилизат для приготовления суспензии для инъекций"
* group[=].element[=].target[+].code = #LYO260
* group[=].element[=].target[=].display = "inyeksiya uchun suspenziya tayyorlash uchun liofilizat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3020
* group[=].element[=].display = "Антисептический раствор для местного и наружного применения"
* group[=].element[=].target[+].code = #SOL124
* group[=].element[=].target[=].display = "mahalliy qo'llash uchun eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #3021
* group[=].element[=].display = "гель оральный"
* group[=].element[=].target[+].code = #GEL110
* group[=].element[=].target[=].display = "ichga qabul qilish uchun gel"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3022
* group[=].element[=].display = "Таблетки покрытые кишечнорастворимой оболочкой"
* group[=].element[=].target[+].code = #TAB113
* group[=].element[=].target[=].display = "ichakda eriydigan tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3060
* group[=].element[=].display = "в комплекте с раствором для инъекций лидокаина гидрохлорид"
* group[=].element[=].target[+].code = #SOL123
* group[=].element[=].target[=].display = "inyeksiya uchun eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #3080
* group[=].element[=].display = "Сыворотка. Раствор для инъекций"
* group[=].element[=].target[+].code = #SOL123
* group[=].element[=].target[=].display = "inyeksiya uchun eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #3100
* group[=].element[=].display = "в комплекте с растворителем - вода для инъекций"
* group[=].element[=].target[+].code = #SLT102
* group[=].element[=].target[=].display = "erituvchi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #3120
* group[=].element[=].display = "пластырь для местного применения"
* group[=].element[=].target[+].code = #PLA101
* group[=].element[=].target[=].display = "plasterlar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #3121
* group[=].element[=].display = "Раствор для инъекций с замедленным высвобождением"
* group[=].element[=].target[+].code = #SOL123
* group[=].element[=].target[=].display = "inyeksiya uchun eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #3122
* group[=].element[=].display = "Таблетки с медленным высвобождением"
* group[=].element[=].target[+].code = #TAB121
* group[=].element[=].target[=].display = "taʼsiri uzaytirilgan tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3140
* group[=].element[=].display = "лиофилизированный порошок для приготовления раствора для инфузий"
* group[=].element[=].target[+].code = #LYO221
* group[=].element[=].target[=].display = "infuziya uchun eritma tayyorlash uchun liofilizat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3160
* group[=].element[=].display = "Гранулы кишечнорастворимые с пролонгированным высвобождением"
* group[=].element[=].target[+].code = #GRA104
* group[=].element[=].target[=].display = "ajralib chiqishi uzaytirilgan ichakda eruvchi granulalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3180
* group[=].element[=].display = "Лиофилизированный порошок для приготовления раствора для внутримышечного введения"
* group[=].element[=].target[+].code = #LYO209
* group[=].element[=].target[=].display = "mushak ichiga yuborish uchun eritma tayyorlash uchun liofilizat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3181
* group[=].element[=].display = "Таблетки, покрытые пленочной оболочкой, с пролонгированным высвобождением"
* group[=].element[=].target[+].code = #TAB121
* group[=].element[=].target[=].display = "taʼsiri uzaytirilgan tabletkalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #3200
* group[=].element[=].display = "пероральная суспензия"
* group[=].element[=].target[+].code = #SUS116
* group[=].element[=].target[=].display = "ichga qabul qilish uchun suspenziya"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3240
* group[=].element[=].display = "Раствор для внутрисосудистого и внутриполостного введения"
* group[=].element[=].target[+].code = #SOL101
* group[=].element[=].target[=].display = "eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #3260
* group[=].element[=].display = "Раствор для инъекций и местного применения"
* group[=].element[=].target[+].code = #SOL101
* group[=].element[=].target[=].display = "eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #3261
* group[=].element[=].display = "Таблетки, покрытые кишечнорастворимой оболочкой"
* group[=].element[=].target[+].code = #TAB113
* group[=].element[=].target[=].display = "ichakda eriydigan tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3262
* group[=].element[=].display = "в комплекте с растворителем - стерильная вода для инъекций"
* group[=].element[=].target[+].code = #SLT102
* group[=].element[=].target[=].display = "erituvchi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #3264
* group[=].element[=].display = "Мазь офтальмологическая"
* group[=].element[=].target[+].code = #OIN103
* group[=].element[=].target[=].display = "ko'z surtmasi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3265
* group[=].element[=].display = "Таблетки, покрытые  пленочной оболочкой  с пролонгированным высвобождением"
* group[=].element[=].target[+].code = #TAB121
* group[=].element[=].target[=].display = "taʼsiri uzaytirilgan tabletkalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #3280
* group[=].element[=].display = "комплекте с растворителем-бактериостатистическая вода для инъекций"
* group[=].element[=].target[+].code = #SLT102
* group[=].element[=].target[=].display = "erituvchi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #3281
* group[=].element[=].display = "Раствор для инфузий изотонический"
* group[=].element[=].target[+].code = #SOL122
* group[=].element[=].target[=].display = "infuziya uchun eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #3301
* group[=].element[=].display = "лиофилизат для приготовления инфузионного раствора и раствора для ингаляций"
* group[=].element[=].target[+].code = #LYO101
* group[=].element[=].target[=].display = "liofilizat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #3302
* group[=].element[=].display = "Таблетки, покрытые оболочкой"
* group[=].element[=].target[+].code = #TAB117
* group[=].element[=].target[=].display = "qobiq bilan qoplangan tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3320
* group[=].element[=].display = "Сбор"
* group[=].element[=].target[+].code = #TEA101
* group[=].element[=].target[=].display = "dorivor o'simliklar yig'masi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3340
* group[=].element[=].display = "концентрат для приготовления инфузионного раствора"
* group[=].element[=].target[+].code = #CON126
* group[=].element[=].target[=].display = "infuziya uchun eritma tayyorlash uchun konsentrat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3362
* group[=].element[=].display = "в комплекте с растворителем 0,5% лидокаина гидрохлорида"
* group[=].element[=].target[+].code = #SLT102
* group[=].element[=].target[=].display = "erituvchi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #3366
* group[=].element[=].display = "Раствор для подкожных инъекций"
* group[=].element[=].target[+].code = #SOL133
* group[=].element[=].target[=].display = "teri ostiga yuborish uchun eritma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3380
* group[=].element[=].display = "Аэрозоль для ингаляций дозированный, суспензия"
* group[=].element[=].target[+].code = #AER102
* group[=].element[=].target[=].display = "ingalyatsiya uchun dozalangan aerozol"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #3400
* group[=].element[=].display = "Лиофилизированный порошок"
* group[=].element[=].target[+].code = #LYO101
* group[=].element[=].target[=].display = "liofilizat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3401
* group[=].element[=].display = "Капсулы жевательные"
* group[=].element[=].target[+].code = #CAP104
* group[=].element[=].target[=].display = "chaynaladigan kapsulalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3402
* group[=].element[=].display = "порошок для приготовления инъекционного раствор"
* group[=].element[=].target[+].code = #POW165
* group[=].element[=].target[=].display = "inyeksiya uchun eritma tayyorlash uchun kukun"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3403
* group[=].element[=].display = "Раствор для подкожного и внутривенного введения"
* group[=].element[=].target[+].code = #SOL123
* group[=].element[=].target[=].display = "inyeksiya uchun eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #3420
* group[=].element[=].display = "Пессарий вагинальные"
* group[=].element[=].target[+].code = #SUP102
* group[=].element[=].target[=].display = "vaginal suppazitoriylar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3441
* group[=].element[=].display = "оральный спрей для местного"
* group[=].element[=].target[+].code = #SPR104
* group[=].element[=].target[=].display = "og'iz bo'shlig'i shilliq qavati uchun sprey"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #3442
* group[=].element[=].display = "лиофилизат для приготовления инъекционного раствора"
* group[=].element[=].target[+].code = #LYO222
* group[=].element[=].target[=].display = "inyeksiya uchun eritma tayyorlash uchun liofilizat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3443
* group[=].element[=].display = "таблетки с пролонгированным высвобождением, покрытые пленочной оболочкой"
* group[=].element[=].target[+].code = #TAB121
* group[=].element[=].target[=].display = "taʼsiri uzaytirilgan tabletkalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #3444
* group[=].element[=].display = "таблетки, непокрытые оболочкой"
* group[=].element[=].target[+].code = #TAB101
* group[=].element[=].target[=].display = "tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3445
* group[=].element[=].display = "Таблетки кишечнорастворимые, покрытые пленочной оболочкой"
* group[=].element[=].target[+].code = #TAB113
* group[=].element[=].target[=].display = "ichakda eriydigan tabletkalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #3460
* group[=].element[=].display = "Растворитель"
* group[=].element[=].target[+].code = #SLT102
* group[=].element[=].target[=].display = "erituvchi"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3480
* group[=].element[=].display = "Порошок гранулированный для приготовления суспензии для приема внутрь"
* group[=].element[=].target[+].code = #GRA181
* group[=].element[=].target[=].display = "ichga qabul qilish uchun suspenziya tayyorlash uchun granulalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3500
* group[=].element[=].display = "Сироп педиатрический"
* group[=].element[=].target[+].code = #SYR101
* group[=].element[=].target[=].display = "sirop"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #3501
* group[=].element[=].display = "Раствор интраокулярный"
* group[=].element[=].target[+].code = #SOL107
* group[=].element[=].target[=].display = "ko'z ichiga yuborish uchun eritma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3502
* group[=].element[=].display = "Набор капсул"
* group[=].element[=].target[+].code = #KIT101
* group[=].element[=].target[=].display = "to'plam"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #3520
* group[=].element[=].display = "в комплекте с раствором"
* group[=].element[=].target[+].code = #SOL101
* group[=].element[=].target[=].display = "eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #3540
* group[=].element[=].display = "Твердые капсулы с модифицированным высвобождением"
* group[=].element[=].target[+].code = #CAP109
* group[=].element[=].target[=].display = "ajralib chiqishi modifikatsiya qilingan kapsulalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #3541
* group[=].element[=].display = "Микросферы для приготовления суспензии для инъекций"
* group[=].element[=].target[+].code = #POW210
* group[=].element[=].target[=].display = "inyeksiya uchun suspenziya tayyorlash uchun kukun"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #3560
* group[=].element[=].display = "Порошок шипучий для приготовления раствора для приёма внутрь"
* group[=].element[=].target[+].code = #POW177
* group[=].element[=].target[=].display = "ichga qabul qilish uchun eritma tayyorlash uchun kukun"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #3580
* group[=].element[=].display = "Эмульсия для в/в инъекций"
* group[=].element[=].target[+].code = #EMU104
* group[=].element[=].target[=].display = "vena ichiga yuborish uchun emulsiya"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #3600
* group[=].element[=].display = "Капсулы кишечнорастворимые с пролонгированным высвобождением"
* group[=].element[=].target[+].code = #CAP106
* group[=].element[=].target[=].display = "ajralib chiqishi uzaytirilgan ichakda eruvchi kapsulalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3601
* group[=].element[=].display = "Aэрозоль"
* group[=].element[=].target[+].code = #AER101
* group[=].element[=].target[=].display = "aerozol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3661
* group[=].element[=].display = "Крем для наружного применения"
* group[=].element[=].target[+].code = #CRE106
* group[=].element[=].target[=].display = "sirtga qo'llash uchun krem"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3680
* group[=].element[=].display = "Суспензия офтальмологическая"
* group[=].element[=].target[+].code = #SUS101
* group[=].element[=].target[=].display = "suspenziya"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #3681
* group[=].element[=].display = "раствор изотонический для инфузий"
* group[=].element[=].target[+].code = #SOL122
* group[=].element[=].target[=].display = "infuziya uchun eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #3682
* group[=].element[=].display = "в комплекте с растворителем - 0,9% раствор натрия хлорида для инъекций"
* group[=].element[=].target[+].code = #SLT102
* group[=].element[=].target[=].display = "erituvchi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #3701
* group[=].element[=].display = "Раствор для инъекций/концентрат для приготовления раствора для инфузий"
* group[=].element[=].target[+].code = #SOL123
* group[=].element[=].target[=].display = "inyeksiya uchun eritma"
* group[=].element[=].target[=].relationship = #source-is-broader-than-target
* group[=].element[+].code = #3760
* group[=].element[=].display = "порошок для приготовления инфузионного раствора"
* group[=].element[=].target[+].code = #POW164
* group[=].element[=].target[=].display = "infuziya uchun eritma tayyorlash uchun kukun"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3780
* group[=].element[=].display = "в комплекте с раствором для инъекций"
* group[=].element[=].target[+].code = #SOL123
* group[=].element[=].target[=].display = "inyeksiya uchun eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #3800
* group[=].element[=].display = "в комплекте с растворителем раствора D-маннитола"
* group[=].element[=].target[+].code = #SLT102
* group[=].element[=].target[=].display = "erituvchi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #3820
* group[=].element[=].display = "Реагент для получения, лиофилизат для приготовления раствора"
* group[=].element[=].target[+].code = #LYO101
* group[=].element[=].target[=].display = "liofilizat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #3822
* group[=].element[=].display = "Жидкость для наружного и местного применения"
* group[=].element[=].target[+].code = #LIQ101
* group[=].element[=].target[=].display = "suyuqlik"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #3840
* group[=].element[=].display = "Растворитель для приготовления стерильных растворов"
* group[=].element[=].target[+].code = #SLT102
* group[=].element[=].target[=].display = "erituvchi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #3860
* group[=].element[=].display = "в комплекте с растворителем раствор маннитола"
* group[=].element[=].target[+].code = #SLT102
* group[=].element[=].target[=].display = "erituvchi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #3920
* group[=].element[=].display = "Раствор для полоскания"
* group[=].element[=].target[+].code = #SOL134
* group[=].element[=].target[=].display = "chayish uchun eritma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #3940
* group[=].element[=].display = "Капли глазные, эмульсия"
* group[=].element[=].target[+].code = #DRO102
* group[=].element[=].target[=].display = "ko'z tomchilari"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #4001
* group[=].element[=].display = "Раствор дезинфицирующий для наружного применения"
* group[=].element[=].target[+].code = #SOL127
* group[=].element[=].target[=].display = "sirtga qo'llash uchun eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #4020
* group[=].element[=].display = "Вагинальные суппозитории"
* group[=].element[=].target[+].code = #SUP102
* group[=].element[=].target[=].display = "vaginal suppazitoriylar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4040
* group[=].element[=].display = "Иньекция"
* group[=].element[=].target[+].code = #SOL123
* group[=].element[=].target[=].display = "inyeksiya uchun eritma"
* group[=].element[=].target[=].relationship = #source-is-broader-than-target
* group[=].element[+].code = #4041
* group[=].element[=].display = "Реагент для получения, лиофилизат для приготовления раствора для внутривенного ведения"
* group[=].element[=].target[+].code = #LYO205
* group[=].element[=].target[=].display = "vena ichiga yuborish uchun eritma tayyorlash uchun liofilizat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #4080
* group[=].element[=].display = "Порошок для приготовления пероральной суспензии"
* group[=].element[=].target[+].code = #POW219
* group[=].element[=].target[=].display = "ichga qabul qilish uchun suspenziya tayyorlash uchun kukun"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4120
* group[=].element[=].display = "Порошок для приготовления раствора для внутривенного и внутримышечного введения"
* group[=].element[=].target[+].code = #POW165
* group[=].element[=].target[=].display = "inyeksiya uchun eritma tayyorlash uchun kukun"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #4140
* group[=].element[=].display = "Раствор для инъекций (стабилизированный)"
* group[=].element[=].target[+].code = #SOL123
* group[=].element[=].target[=].display = "inyeksiya uchun eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #4240
* group[=].element[=].display = "Раствор для внутривенных инъекций"
* group[=].element[=].target[+].code = #SOL106
* group[=].element[=].target[=].display = "vena ichiga yuborish uchun eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #4261
* group[=].element[=].display = "Порошок для приготовления суспензии для перорального применения"
* group[=].element[=].target[+].code = #POW219
* group[=].element[=].target[=].display = "ichga qabul qilish uchun suspenziya tayyorlash uchun kukun"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4280
* group[=].element[=].display = "Раствор для интратекального введения"
* group[=].element[=].target[+].code = #SOL121
* group[=].element[=].target[=].display = "intratekal yuborish uchun eritma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4320
* group[=].element[=].display = "Таблетки для разжевывания"
* group[=].element[=].target[+].code = #TAB110
* group[=].element[=].target[=].display = "chaynaladigan tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4340
* group[=].element[=].display = "Раствор для ингаляций и назальных ирригаций"
* group[=].element[=].target[+].code = #SOL101
* group[=].element[=].target[=].display = "eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #4400
* group[=].element[=].display = "Порошок для приготовления суспензии для внутреннего применения"
* group[=].element[=].target[+].code = #POW219
* group[=].element[=].target[=].display = "ichga qabul qilish uchun suspenziya tayyorlash uchun kukun"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4440
* group[=].element[=].display = "Раствор для инъекций/инфузий"
* group[=].element[=].target[+].code = #SOL101
* group[=].element[=].target[=].display = "eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #4460
* group[=].element[=].display = "в комплекте с растворителем - 0,9% раствор натрия хлорида"
* group[=].element[=].target[+].code = #SLT102
* group[=].element[=].target[=].display = "erituvchi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #4540
* group[=].element[=].display = "Раствор для инъекций в одно дозовых предварительно заполненных шприцах с системой защиты иглы"
* group[=].element[=].target[+].code = #SOL123
* group[=].element[=].target[=].display = "inyeksiya uchun eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #4560
* group[=].element[=].display = "Суппозитории для ректального применения"
* group[=].element[=].target[+].code = #SUP103
* group[=].element[=].target[=].display = "rektal suppozitoriylar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4580
* group[=].element[=].display = "Микропеллетные капсулы"
* group[=].element[=].target[+].code = #CAP101
* group[=].element[=].target[=].display = "kapsulalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #4600
* group[=].element[=].display = "Суппозитории ректальные для детей"
* group[=].element[=].target[+].code = #SUP103
* group[=].element[=].target[=].display = "rektal suppozitoriylar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #4620
* group[=].element[=].display = "Пластырь"
* group[=].element[=].target[+].code = #PLA101
* group[=].element[=].target[=].display = "plasterlar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4660
* group[=].element[=].display = "Лиофилизированный порошок для приготовления раствора для внутривенного введения"
* group[=].element[=].target[+].code = #LYO205
* group[=].element[=].target[=].display = "vena ichiga yuborish uchun eritma tayyorlash uchun liofilizat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4662
* group[=].element[=].display = "Порошок для пероральной суспензии"
* group[=].element[=].target[+].code = #POW219
* group[=].element[=].target[=].display = "ichga qabul qilish uchun suspenziya tayyorlash uchun kukun"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4700
* group[=].element[=].display = "Гранулированный порошок для приготовления раствора для приема внутрь"
* group[=].element[=].target[+].code = #GRA153
* group[=].element[=].target[=].display = "ichga qabul qilish uchun eritma tayyorlash uchun granulalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4760
* group[=].element[=].display = "Лиофилизированный порошок для приготовления суспензии для инъекций"
* group[=].element[=].target[+].code = #LYO260
* group[=].element[=].target[=].display = "inyeksiya uchun suspenziya tayyorlash uchun liofilizat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4783
* group[=].element[=].display = "Капли глазные/ушные"
* group[=].element[=].target[+].code = #DRO101
* group[=].element[=].target[=].display = "tomchilar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #4800
* group[=].element[=].display = "раствор для инфузий и внутримышечного введения"
* group[=].element[=].target[+].code = #SOL101
* group[=].element[=].target[=].display = "eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #4820
* group[=].element[=].display = "Лиофилизат для раствора для инъекций"
* group[=].element[=].target[+].code = #LYO222
* group[=].element[=].target[=].display = "inyeksiya uchun eritma tayyorlash uchun liofilizat"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4880
* group[=].element[=].display = "Таблетки, покрытые оболочкой пролонгированного действия"
* group[=].element[=].target[+].code = #TAB121
* group[=].element[=].target[=].display = "taʼsiri uzaytirilgan tabletkalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #4900
* group[=].element[=].display = "Офтальмологическая суспензия"
* group[=].element[=].target[+].code = #SUS101
* group[=].element[=].target[=].display = "suspenziya"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #4940
* group[=].element[=].display = "Спрей вагинальный"
* group[=].element[=].target[+].code = #SPR101
* group[=].element[=].target[=].display = "sprey"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #4960
* group[=].element[=].display = "Катаплазма"
* group[=].element[=].target[+].code = #CTP101
* group[=].element[=].target[=].display = "kataplazma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #4980
* group[=].element[=].display = "раствором А"
* group[=].element[=].target[+].code = #SOL101
* group[=].element[=].target[=].display = "eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #4981
* group[=].element[=].display = "раствором В"
* group[=].element[=].target[+].code = #SOL101
* group[=].element[=].target[=].display = "eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #4982
* group[=].element[=].display = "в комплекте с растворителем - воды очищенной"
* group[=].element[=].target[+].code = #SLT102
* group[=].element[=].target[=].display = "erituvchi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #5000
* group[=].element[=].display = "Раствор для внутривенного и внутримышечного введения/ концентрат для приготовления раствора для инфузий"
* group[=].element[=].target[+].code = #SOL101
* group[=].element[=].target[=].display = "eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #5020
* group[=].element[=].display = "Сублингвальный спрей, суспензия"
* group[=].element[=].target[+].code = #SPR106
* group[=].element[=].target[=].display = "dozalangan til osti spreyi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #5040
* group[=].element[=].display = "Капсулы с микропеллетами пролонгированного действия"
* group[=].element[=].target[+].code = #CAP111
* group[=].element[=].target[=].display = "ajralib chiqishi uzaytirilgan kapsulalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #5060
* group[=].element[=].display = "Таблетки с кишечнорастворимой оболочкой"
* group[=].element[=].target[+].code = #TAB113
* group[=].element[=].target[=].display = "ichakda eriydigan tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #5081
* group[=].element[=].display = "Раствор изотонический 0,9% для инфузий и ирригаций"
* group[=].element[=].target[+].code = #SOL101
* group[=].element[=].target[=].display = "eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #5120
* group[=].element[=].display = "Ингаляционный раствор для распыления"
* group[=].element[=].target[+].code = #SOL118
* group[=].element[=].target[=].display = "ingalyatsiya uchun eritma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #5140
* group[=].element[=].display = "Капли для приема внутрь"
* group[=].element[=].target[+].code = #DRO107
* group[=].element[=].target[=].display = "ichga qabul qilish uchun tomchilar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #5180
* group[=].element[=].display = "Порошок для приготовления раствора для суспензии для подкожного введения"
* group[=].element[=].target[+].code = #POW101
* group[=].element[=].target[=].display = "kukun"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #5200
* group[=].element[=].display = "с растворителем для инъекций - раствор натрия хлорида 0,9 %"
* group[=].element[=].target[+].code = #SLT102
* group[=].element[=].target[=].display = "erituvchi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #5220
* group[=].element[=].display = "Гранулы натуральные  со вкусом лимона"
* group[=].element[=].target[+].code = #GRA101
* group[=].element[=].target[=].display = "granulalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #5260
* group[=].element[=].display = "Твердые капсулы с пролонгированным высвобождением"
* group[=].element[=].target[+].code = #CAP111
* group[=].element[=].target[=].display = "ajralib chiqishi uzaytirilgan kapsulalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #5300
* group[=].element[=].display = "порошок и растворитель для приготовления суспензии для внутрипузырного введения"
* group[=].element[=].target[+].code = #KIT101
* group[=].element[=].target[=].display = "to'plam"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #5320
* group[=].element[=].display = "Стерильный порошок для приготовления раствора только для внутривенного введения"
* group[=].element[=].target[+].code = #POW148
* group[=].element[=].target[=].display = "vena ichiga yuborish uchun eritma tayyorlash uchun kukun"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #5340
* group[=].element[=].display = "Таблетки для приготовления раствора для наружного применения"
* group[=].element[=].target[+].code = #TAB156
* group[=].element[=].target[=].display = "sirtga qo'llash uchun eritma tayyorlash uchun tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #5360
* group[=].element[=].display = "Порошок для приготовления дисперсии для инфузий"
* group[=].element[=].target[+].code = #POW132
* group[=].element[=].target[=].display = "infuziya uchun dispersiya tayyorlash uchun kukun"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #5381
* group[=].element[=].display = "Трансдермальный лечебный пластырь с кетопрофеном"
* group[=].element[=].target[+].code = #PLA104
* group[=].element[=].target[=].display = "transdermal plasterlar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #5400
* group[=].element[=].display = "Спрей назальный с ментолом и эвкалиптовым маслом"
* group[=].element[=].target[+].code = #SPR105
* group[=].element[=].target[=].display = "burun spreyi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #5440
* group[=].element[=].display = "Суспензия без сахара"
* group[=].element[=].target[+].code = #SUS101
* group[=].element[=].target[=].display = "suspenziya"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #5480
* group[=].element[=].display = "Капли для приёма внутрь"
* group[=].element[=].target[+].code = #DRO107
* group[=].element[=].target[=].display = "ichga qabul qilish uchun tomchilar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #5500
* group[=].element[=].display = "раствор в масле"
* group[=].element[=].target[+].code = #SOL101
* group[=].element[=].target[=].display = "eritma"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #5521
* group[=].element[=].display = "Имплантат, в предварительно заполненном шприце"
* group[=].element[=].target[+].code = #IMP101
* group[=].element[=].target[=].display = "implantat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #5540
* group[=].element[=].display = "Порошок и растворитель для приготовления раствора для приема внутрь"
* group[=].element[=].target[+].code = #POW177
* group[=].element[=].target[=].display = "ichga qabul qilish uchun eritma tayyorlash uchun kukun"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #5580
* group[=].element[=].display = "Порошок для приготовления раствора для инъекций/инфузий или для внутрипузырного введения"
* group[=].element[=].target[+].code = #POW101
* group[=].element[=].target[=].display = "kukun"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #5581
* group[=].element[=].display = "Спрей оромукозный"
* group[=].element[=].target[+].code = #SPR104
* group[=].element[=].target[=].display = "og'iz bo'shlig'i shilliq qavati uchun sprey"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #5600
* group[=].element[=].display = "Гранулы для приготовления суспензии для приема внутрь"
* group[=].element[=].target[+].code = #GRA181
* group[=].element[=].target[=].display = "ichga qabul qilish uchun suspenziya tayyorlash uchun granulalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #5601
* group[=].element[=].display = "Таблетки покрытые пленочной оболочкой с пролонгированным высвобождением"
* group[=].element[=].target[+].code = #TAB121
* group[=].element[=].target[=].display = "taʼsiri uzaytirilgan tabletkalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #5641
* group[=].element[=].display = "Жидкость для приема внутрь"
* group[=].element[=].target[+].code = #LIQ104
* group[=].element[=].target[=].display = "ichga qo'llash uchun suyuqlik"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #5660
* group[=].element[=].display = "Мазь ректальная"
* group[=].element[=].target[+].code = #OIN109
* group[=].element[=].target[=].display = "rektal surtma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #5720
* group[=].element[=].display = "Твердые капсулы, заполненные кишечнорастворимыми мини-таблетками"
* group[=].element[=].target[+].code = #CAP105
* group[=].element[=].target[=].display = "ichakda eruvchi kapsulalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #5800
* group[=].element[=].display = "Таблетки покрытые оболочкой, кишечнорастворимые"
* group[=].element[=].target[+].code = #TAB113
* group[=].element[=].target[=].display = "ichakda eriydigan tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #5820
* group[=].element[=].display = "в комплекте с растворителем вода для инъекций"
* group[=].element[=].target[+].code = #SLT102
* group[=].element[=].target[=].display = "erituvchi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #5840
* group[=].element[=].display = "Реагент для получения"
* group[=].element[=].target[+].code = #LYO101
* group[=].element[=].target[=].display = "liofilizat"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #5860
* group[=].element[=].display = "Таблетки для рассасывания медово-лимонные"
* group[=].element[=].target[+].code = #TAB109
* group[=].element[=].target[=].display = "shimish uchun tabletkalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #5880
* group[=].element[=].display = "шампунь лекарственный"
* group[=].element[=].target[+].code = #SHA101
* group[=].element[=].target[=].display = "dorivor shampun"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #5900
* group[=].element[=].display = "Гранулы для приготовления перорального раствора со вкусом лимона"
* group[=].element[=].target[+].code = #GRA153
* group[=].element[=].target[=].display = "ichga qabul qilish uchun eritma tayyorlash uchun granulalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #5901
* group[=].element[=].display = "Гранулы для приготовления перорального раствора со вкусом клубники"
* group[=].element[=].target[+].code = #GRA153
* group[=].element[=].target[=].display = "ichga qabul qilish uchun eritma tayyorlash uchun granulalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #5903
* group[=].element[=].display = "Гранулы для приготовления перорального раствора со вкусом черной смородины"
* group[=].element[=].target[+].code = #GRA153
* group[=].element[=].target[=].display = "ichga qabul qilish uchun eritma tayyorlash uchun granulalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #5940
* group[=].element[=].display = "Мягкие желатиновые капсулы"
* group[=].element[=].target[+].code = #CAP101
* group[=].element[=].target[=].display = "kapsulalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #5941
* group[=].element[=].display = "Таблетки покрытые пленочной оболочкой"
* group[=].element[=].target[+].code = #TAB118
* group[=].element[=].target[=].display = "plyonka qobiq bilan qoplangan tabletkalar"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #5960
* group[=].element[=].display = "Твердые желатиновые капсулы"
* group[=].element[=].target[+].code = #CAP101
* group[=].element[=].target[=].display = "kapsulalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #6000
* group[=].element[=].display = "Aэрозоль для ингаляций дозированный"
* group[=].element[=].target[+].code = #AER102
* group[=].element[=].target[=].display = "ingalyatsiya uchun dozalangan aerozol"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #6100
* group[=].element[=].display = "Мягкие капсулы"
* group[=].element[=].target[+].code = #CAP101
* group[=].element[=].target[=].display = "kapsulalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #6120
* group[=].element[=].display = "в комплекте с растворителем (Вода для инъекций- Белмед)"
* group[=].element[=].target[+].code = #SLT102
* group[=].element[=].target[=].display = "erituvchi"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #6204
* group[=].element[=].display = "Таблетки жевательные с апельсиновым вкусом"
* group[=].element[=].target[+].code = #TAB110
* group[=].element[=].target[=].display = "chaynaladigan tabletkalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #6205
* group[=].element[=].display = "Таблетки жевательные с малиновым вкусом"
* group[=].element[=].target[+].code = #TAB110
* group[=].element[=].target[=].display = "chaynaladigan tabletkalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #6206
* group[=].element[=].display = "Таблетки жевательные с мятным вкусом"
* group[=].element[=].target[+].code = #TAB110
* group[=].element[=].target[=].display = "chaynaladigan tabletkalar"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #6321
* group[=].element[=].display = "Субстанция"
* group[=].element[=].target[+].code = #SUB101
* group[=].element[=].target[=].display = "substansiya"
* group[=].element[=].target[=].relationship = #equivalent
