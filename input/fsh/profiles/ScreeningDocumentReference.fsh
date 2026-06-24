Profile: ScreeningDocumentReference
Parent: DocumentReference
Id: screening-document-reference
Title: "Screening Document Reference"
Description: "Profile for references to documents (consent forms, protocols) used within the cervical and breast cancer screening system."
* ^experimental = true
* ^status = #active
* ^publisher = "DHP Integration"

* modality 0..0

* status MS
* type MS
* subject MS
* context MS
* content MS
* content.attachment MS

* subject only Reference(Patient)

* status from $drs-vs (required)
//changed from  http://loinc.org to $doc-typecodes
* type from $doc-typecodes (required) // Можно сузить до конкретных кодов Consent, если нужно
* content.attachment.contentType from $mimetypes (required)

// Уточняем, что вложения должны быть PDF
* content.attachment.contentType = #application/pdf


Instance: mammography-consent
InstanceOf: ScreeningDocumentReference
Usage: #example
Description: "Patient informed consent for mammography screening"

* status = #current

// Тип документа (Consent)
* type.coding[0] = $loinc#59284-0 "Consent document"
// Ссылка на пациента
* subject = Reference(Patient/lola-oripova)
// Контекст (визит)
* context[0] = Reference(Encounter/Encounter-radiology)
// Содержимое документа
* content[0].attachment.contentType = #application/pdf
* content[0].attachment.url = "https://storage.ssv.uz/docs/consent-lola-oripova.pdf"
* content[0].attachment.title = "Informed Consent for Mammography Screening"
* content[0].attachment.creation = "2025-11-17T08:00:00Z"