Instance: example-orders-discharge-summary
InstanceOf: UZCoreComposition
Title: "Example UZ Core Composition - Orders Discharge Summary"
Description: "Orders discharge summary with international and local section codes."
Usage: #example
* language = #uz
* status = #final
* type.coding[0] = https://terminology.dhp.uz/fhir/core/CodeSystem/composition-type-cs#emdoc-0010-0106
* type.coding[+] = $loinc#18842-5 "Discharge summary"
* subject = Reference(Patient/example-orders-patient)
* date = "2026-03-24T12:00:00+05:00"
* author = Reference(PractitionerRole/example-orders-specialist-role)
* title = "Chiqish epikrizi"
* section[0].code = $loinc#10154-3 "Chief complaint Narrative - Reported"
* section[0].title = "Shikoyatlar"
* section[0].text.status = #additional
* section[0].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><div lang='uz' xml:lang='uz'>Buyrak toshi bo'yicha davolanish yakunlandi.</div><div lang='ru' xml:lang='ru'>Лечение по поводу камня в почке завершено.</div><div lang='en' xml:lang='en'>Treatment for the kidney stone has been completed.</div></div>"
* section[+].code = OrdersDischargeSummarySectionCS#epicris-0001-00002 "Hayot anamnezi (Anamnesis vitae)"
* section[=].title = "Hayot anamnezi"
* section[=].text.status = #additional
* section[=].text.div = "<div xmlns='http://www.w3.org/1999/xhtml'><div lang='uz' xml:lang='uz'>Hayot anamnezi qayd etildi.</div><div lang='ru' xml:lang='ru'>Анамнез жизни записан.</div><div lang='en' xml:lang='en'>The life history has been recorded.</div></div>"
