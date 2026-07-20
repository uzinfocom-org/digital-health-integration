Instance: screening-intake-template
InstanceOf: UZCoreQuestionnaire
Usage: #example
Title: "Screening Questionnaire Template"
Description: "Complaint questionnaire template for gynecologists"

* url = "https://terminology.dhp.uz/screening-intake-template"

* identifier[0].system = $screening-local-id
* identifier[0].value = "33333"
* identifier[0].use = #usual

* version = "1.1"
* name = "Complaints"
* title = "Complaints"
* status = #active
* date = "2017-01-01"
* publisher = "Kuchkaraka Bykov"

// --- Group 1: Cervical Screening (linkId 1.x) ---
* item[0].linkId = "cervical-group"
* item[0].text = "Cervical complaints"
* item[0].type = #group
* item[0].item[0].linkId = "1.1"
* item[0].item[0].text = "Bleeding after sexual intercourse"
* item[0].item[0].type = #boolean
* item[0].item[1].linkId = "1.2"
* item[0].item[1].text = "Bleeding unrelated to the menstrual cycle"
* item[0].item[1].type = #boolean
* item[0].item[2].linkId = "1.3"
* item[0].item[2].text = "Watery vaginal discharge"
* item[0].item[2].type = #boolean
* item[0].item[3].linkId = "1.4"
* item[0].item[3].text = "Swelling of the lower extremities"
* item[0].item[3].type = #boolean
* item[0].item[4].linkId = "1.5"
* item[0].item[4].text = "Menstrual dysfunction"
* item[0].item[4].type = #boolean
* item[0].item[5].linkId = "1.6"
* item[0].item[5].text = "Vaginal bleeding during menopause"
* item[0].item[5].type = #boolean
* item[0].item[6].linkId = "1.7"
* item[0].item[6].text = "Pain in the lower abdomen or lower back"
* item[0].item[6].type = #boolean
* item[0].item[7].linkId = "1.8"
* item[0].item[7].text = "When did the above complaints begin?"
* item[0].item[7].type = #string
* item[0].item[7].answerOption[0].valueString = "Up to 3 months ago"
* item[0].item[7].answerOption[1].valueString = "Up to 6 months ago"
* item[0].item[7].answerOption[2].valueString = "1 year or more ago"

// --- Group 2: Breast Screening (linkId 2.x) ---
* item[1].linkId = "breast-group"
* item[1].text = "Breast complaints"
* item[1].type = #group
* item[1].item[0].linkId = "2.1"
* item[1].item[0].text = "Lump or mass in the breast or armpit area"
* item[1].item[0].type = #boolean
* item[1].item[1].linkId = "2.2"
* item[1].item[1].text = "Skin color changes: redness, thickening, firmness, or swelling"
* item[1].item[1].type = #boolean
* item[1].item[2].linkId = "2.3"
* item[1].item[2].text = "Crusting of the nipple skin"
* item[1].item[2].type = #boolean
* item[1].item[3].linkId = "2.4"
* item[1].item[3].text = "Changes in breast shape: deformation or enlargement"
* item[1].item[3].type = #boolean
* item[1].item[4].linkId = "2.5"
* item[1].item[4].text = "Skin changes: retraction, swelling, or orange-peel appearance"
* item[1].item[4].type = #boolean
* item[1].item[5].linkId = "2.6"
* item[1].item[5].text = "Nipple changes: retraction or flattening"
* item[1].item[5].type = #boolean
* item[1].item[6].linkId = "2.7"
* item[1].item[6].text = "Serous or bloody nipple discharge"
* item[1].item[6].type = #boolean
* item[1].item[7].linkId = "2.8"
* item[1].item[7].text = "Breast pain"
* item[1].item[7].type = #boolean
* item[1].item[8].linkId = "2.9"
* item[1].item[8].text = "When did the above complaints begin?"
* item[1].item[8].type = #string
* item[1].item[8].answerOption[0].valueString = "Up to 3 months ago"
* item[1].item[8].answerOption[1].valueString = "Up to 6 months ago"
* item[1].item[8].answerOption[2].valueString = "1 year or more ago"

