Instance: pharmcom-registry-atc-to-who-atc-cm
InstanceOf: ConceptMap
Usage: #definition
Title: "Pharmaceutical Committee registry ATC to current WHO ATC"
Description: "Maps ATC codes of the Pharmaceutical Committee drug registry (`certificate.atcs[].code`) that are not in the current WHO ATC, mostly codes WHO has moved, to a current WHO ATC code. Checked against WHO ATC 2026 on tx.fhir.org on 2026-11-09."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/pharmcom-registry-atc-to-who-atc-cm"
* name = "PharmcomRegistryAtcToWhoAtcCM"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

* group[+].source = $atc
* group[=].target = $atc
* group[=].element[+].code = #A02DA
* group[=].element[=].target[+].code = #A03AX13
* group[=].element[=].target[=].display = "silicones"
* group[=].element[=].target[=].relationship = #source-is-broader-than-target
* group[=].element[+].code = #A03AD51
* group[=].element[=].target[+].code = #A03AD
* group[=].element[=].target[=].display = "Papaverine and derivatives"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #A11DB01
* group[=].element[=].target[+].code = #A11DB
* group[=].element[=].target[=].display = "Vitamin B1 in combination with vitamin B6 and/or vitamin B12"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #B02AB10
* group[=].element[=].target[+].code = #B02AB
* group[=].element[=].target[=].display = "Proteinase inhibitors"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #B03AC01
* group[=].element[=].target[+].code = #B03AC
* group[=].element[=].target[=].display = "Iron, parenteral preparations"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #B03AC02
* group[=].element[=].target[+].code = #B03AC
* group[=].element[=].target[=].display = "Iron, parenteral preparations"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #B03AC04
* group[=].element[=].target[+].code = #B03AC
* group[=].element[=].target[=].display = "Iron, parenteral preparations"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #B03AC06
* group[=].element[=].target[+].code = #B03AC
* group[=].element[=].target[=].display = "Iron, parenteral preparations"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #C02BC02
* group[=].element[=].target[+].code = #C02BC
* group[=].element[=].target[=].display = "Bisquaternary ammonium compounds"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #G02CP03
* group[=].element[=].target[+].code = #G02CX04
* group[=].element[=].target[=].display = "Cimicifugae rhizoma"
* group[=].element[=].target[=].relationship = #related-to
* group[=].element[+].code = #G04BP01
* group[=].element[=].target[+].code = #G04BX
* group[=].element[=].target[=].display = "Other urologicals"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #G04BP30
* group[=].element[=].target[+].code = #G04BX
* group[=].element[=].target[=].display = "Other urologicals"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #G04BX50
* group[=].element[=].target[+].code = #G04BX
* group[=].element[=].target[=].display = "Other urologicals"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #J01DA
* group[=].element[=].target[+].code = #J01D
* group[=].element[=].target[=].display = "OTHER BETA-LACTAM ANTIBACTERIALS"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #J01DA04
* group[=].element[=].target[+].code = #J01DB04
* group[=].element[=].target[=].display = "cefazolin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #J01DA10
* group[=].element[=].target[+].code = #J01DD01
* group[=].element[=].target[=].display = "cefotaxime"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #J01DA24
* group[=].element[=].target[+].code = #J01DE
* group[=].element[=].target[=].display = "Fourth-generation cephalosporins"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #J01DA32
* group[=].element[=].target[+].code = #J01DD62
* group[=].element[=].target[=].display = "cefoperazone and beta-lactamase inhibitor"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #J01DA33
* group[=].element[=].target[+].code = #J01DD13
* group[=].element[=].target[=].display = "cefpodoxime"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #J01DA63
* group[=].element[=].target[+].code = #J01DD63
* group[=].element[=].target[=].display = "ceftriaxone and beta-lactamase inhibitor"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #J03AX
* group[=].element[=].target[+].code = #A03AX
* group[=].element[=].target[=].display = "Other drugs for functional gastrointestinal disorders"
* group[=].element[=].target[=].relationship = #related-to
* group[=].element[+].code = #J05AE06
* group[=].element[=].target[+].code = #J05AR10
* group[=].element[=].target[=].display = "lopinavir and ritonavir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #J05AF30
* group[=].element[=].target[+].code = #J05AR01
* group[=].element[=].target[=].display = "zidovudine and lamivudine"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #J05AX12
* group[=].element[=].target[+].code = #J05AJ03
* group[=].element[=].target[=].display = "dolutegravir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #J05AX14
* group[=].element[=].target[+].code = #J05AP07
* group[=].element[=].target[=].display = "daclatasvir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #J05AX15
* group[=].element[=].target[+].code = #J05AP08
* group[=].element[=].target[=].display = "sofosbuvir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #J05AX20
* group[=].element[=].target[+].code = #J05AR20
* group[=].element[=].target[=].display = "emtricitabine, tenofovir alafenamide and bictegravir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #J05AX65
* group[=].element[=].target[+].code = #J05AP51
* group[=].element[=].target[=].display = "sofosbuvir and ledipasvir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #J05AX69
* group[=].element[=].target[+].code = #J05AP55
* group[=].element[=].target[=].display = "sofosbuvir and velpatasvir"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #J06BB16
* group[=].element[=].target[+].code = #J06BD01
* group[=].element[=].target[=].display = "palivizumab"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #L01XC02
* group[=].element[=].target[+].code = #L01FA01
* group[=].element[=].target[=].display = "rituximab"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #L01XC03
* group[=].element[=].target[+].code = #L01FD01
* group[=].element[=].target[=].display = "trastuzumab"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #L01XC07
* group[=].element[=].target[+].code = #L01FG01
* group[=].element[=].target[=].display = "bevacizumab"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #L01XC14
* group[=].element[=].target[+].code = #L01FD03
* group[=].element[=].target[=].display = "trastuzumab emtansine"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #L01XC17
* group[=].element[=].target[+].code = #L01FF01
* group[=].element[=].target[=].display = "nivolumab"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #L01XC18
* group[=].element[=].target[+].code = #L01FF02
* group[=].element[=].target[=].display = "pembrolizumab"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #L01XE01
* group[=].element[=].target[+].code = #L01EA01
* group[=].element[=].target[=].display = "imatinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #L01XE02
* group[=].element[=].target[+].code = #L01EB01
* group[=].element[=].target[=].display = "gefitinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #L01XE03
* group[=].element[=].target[+].code = #L01EB02
* group[=].element[=].target[=].display = "erlotinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #L01XE04
* group[=].element[=].target[+].code = #L01EX01
* group[=].element[=].target[=].display = "sunitinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #L01XE05
* group[=].element[=].target[+].code = #L01EX02
* group[=].element[=].target[=].display = "sorafenib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #L01XE06
* group[=].element[=].target[+].code = #L01EA02
* group[=].element[=].target[=].display = "dasatinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #L01XE07
* group[=].element[=].target[+].code = #L01EH01
* group[=].element[=].target[=].display = "lapatinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #L01XE08
* group[=].element[=].target[+].code = #L01EA03
* group[=].element[=].target[=].display = "nilotinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #L01XE10
* group[=].element[=].target[+].code = #L01EG02
* group[=].element[=].target[=].display = "everolimus"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #L01XE11
* group[=].element[=].target[+].code = #L01EX03
* group[=].element[=].target[=].display = "pazopanib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #L01XE13
* group[=].element[=].target[+].code = #L01EB03
* group[=].element[=].target[=].display = "afatinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #L01XE16
* group[=].element[=].target[+].code = #L01ED01
* group[=].element[=].target[=].display = "crizotinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #L01XE18
* group[=].element[=].target[+].code = #L01EJ01
* group[=].element[=].target[=].display = "ruxolitinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #L01XE21
* group[=].element[=].target[+].code = #L01EX05
* group[=].element[=].target[=].display = "regorafenib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #L01XE23
* group[=].element[=].target[+].code = #L01EC02
* group[=].element[=].target[=].display = "dabrafenib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #L01XE25
* group[=].element[=].target[+].code = #L01EE01
* group[=].element[=].target[=].display = "trametinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #L01XE26
* group[=].element[=].target[+].code = #L01EX07
* group[=].element[=].target[=].display = "cabozantinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #L01XE27
* group[=].element[=].target[+].code = #L01EL01
* group[=].element[=].target[=].display = "ibrutinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #L01XE29
* group[=].element[=].target[+].code = #L01EX08
* group[=].element[=].target[=].display = "lenvatinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #L01XE35
* group[=].element[=].target[+].code = #L01EB04
* group[=].element[=].target[=].display = "osimertinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #L01XE42
* group[=].element[=].target[+].code = #L01EF02
* group[=].element[=].target[=].display = "ribociclib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #L01XE45
* group[=].element[=].target[+].code = #L01EH02
* group[=].element[=].target[=].display = "neratinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #L01XX19
* group[=].element[=].target[+].code = #L01CE02
* group[=].element[=].target[=].display = "irinotecan"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #L01XX32
* group[=].element[=].target[+].code = #L01XG01
* group[=].element[=].target[=].display = "bortezomib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #L04AA13
* group[=].element[=].target[+].code = #L04AK01
* group[=].element[=].target[=].display = "leflunomide"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #L04AA29
* group[=].element[=].target[+].code = #L04AF01
* group[=].element[=].target[=].display = "tofacitinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #L04AA36
* group[=].element[=].target[+].code = #L04AG08
* group[=].element[=].target[=].display = "ocrelizumab"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #L04AA37
* group[=].element[=].target[+].code = #L04AF02
* group[=].element[=].target[=].display = "baricitinib"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #L04AA52
* group[=].element[=].target[+].code = #L04AG12
* group[=].element[=].target[=].display = "ofatumumab"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #M02AA96
* group[=].element[=].target[+].code = #M02AA27
* group[=].element[=].target[=].display = "dexketoprofen"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #N03AA05
* group[=].element[=].target[+].code = #N03AA
* group[=].element[=].target[=].display = "Barbiturates and derivatives"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #N03AX12
* group[=].element[=].target[+].code = #N02BF01
* group[=].element[=].target[=].display = "gabapentin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #N03AX16
* group[=].element[=].target[+].code = #N02BF02
* group[=].element[=].target[=].display = "pregabalin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #N06BX23
* group[=].element[=].target[+].code = #N06BX
* group[=].element[=].target[=].display = "Other psychostimulants and nootropics"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #R05CA50
* group[=].element[=].target[+].code = #R05CA
* group[=].element[=].target[=].display = "Expectorants"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #S01AX11
* group[=].element[=].target[+].code = #S01AE01
* group[=].element[=].target[=].display = "ofloxacin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #S01AX13
* group[=].element[=].target[+].code = #S01AE03
* group[=].element[=].target[=].display = "ciprofloxacin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #S01AX19
* group[=].element[=].target[+].code = #S01AE05
* group[=].element[=].target[=].display = "levofloxacin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #S01AX22
* group[=].element[=].target[+].code = #S01AE07
* group[=].element[=].target[=].display = "moxifloxacin"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #V30
* group[=].element[=].noMap = true
