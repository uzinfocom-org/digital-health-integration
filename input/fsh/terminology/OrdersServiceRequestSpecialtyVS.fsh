ValueSet: OrdersServiceRequestSpecialtyVS
Id: orders-service-request-specialty-vs
Title: "ServiceRequest specialty"
Description: "Clinical specialties a ServiceRequest can be addressed to: SNOMED CT where it has an equivalent concept, local codes where SNOMED CT has only a broader concept or none"
* insert IntegrationsValueSet(orders-service-request-specialty-vs)
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(OrdersSnomedSupplementCS)

* $sct#394612005 "Urology"
* $sct#394801008 "Trauma and orthopedics"
* $sct#418112009 "Pulmonary medicine"
* $sct#394589003 "Nephrology"
* $sct#394592004 "Clinical oncology"
* $sct#394583002 "Endocrinology"
* $sct#394594003 "Ophthalmology"
* $sct#394579002 "Cardiology"
* $sct#394584008 "Gastroenterology"
* $sct#394803006 "Clinical hematology"
* $sct#394810000 "Rheumatology"
* $sct#394610002 "Neurosurgery"
* $sct#408464004 "Colorectal surgery"
* $sct#394582007 "Dermatology"
* $sct#394609007 "General surgery"
* $sct#394537008 "Pediatrics"
* $sct#408439002 "Allergy specialty"
* $sct#394591006 "Neurology"
* $sct#394585009 "Obstetrics and gynecology"
* $sct#722414000 "Vascular medicine"
* $sct#408478003 "Critical care medicine"
* $sct#409967009 "Toxicology"
* $sct#419192003 "Internal medicine"
* $sct#408456005 "Thoracic surgery"
* $sct#408462000 "Burns care"
* $sct#394539006 "Paediatric surgery"
* $sct#394586005 "Gynecology"
* $sct#394807007 "Infectious diseases specialty"
* $sct#420208008 "Pediatric genetics"

* OrdersServiceRequestSpecialtyCS#serv-0001-00003 "Ftiziatriya yo'nalishi"
* OrdersServiceRequestSpecialtyCS#serv-0001-00009 "Oftalmologiya va ko'z mikroxirurgiya yo'nalishi"
* OrdersServiceRequestSpecialtyCS#serv-0001-00019 "Otorinolaringologiya va yuz-jag' jarrohlik yo'nalishi"
* OrdersServiceRequestSpecialtyCS#serv-0001-00023 "Stomatologiya va yuz-jag' jarrohlik yo'nalishi"
* OrdersServiceRequestSpecialtyCS#serv-0001-00025 "Travmatologiya"
* OrdersServiceRequestSpecialtyCS#serv-0001-00026 "Kattalar travmatologiyasi"
* OrdersServiceRequestSpecialtyCS#serv-0001-00031 "Qon-tomir jarrohligi va mikrojarrohlik"
* OrdersServiceRequestSpecialtyCS#serv-0001-00033 "Gemodializ"
* OrdersServiceRequestSpecialtyCS#serv-0001-00035 "Tug'uruqxona"
* OrdersServiceRequestSpecialtyCS#serv-0001-00036 "Homilador ayollar patologiyasi"
* OrdersServiceRequestSpecialtyCS#serv-0001-00039 "Bolalar kasalliklari"

* ^status = #draft
