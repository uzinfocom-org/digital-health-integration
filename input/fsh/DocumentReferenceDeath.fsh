Profile: DocumentReferenceDeath
Parent: DocumentReference
Id: document-reference-death
Title: "Document Reference Death"
Description: "Document reference for Death profile"
* ^url = "https://dhp.uz/fhir/integrations/StructureDefinition/document-reference-death"
* ^experimental = true
* ^status = #draft
* ^publisher = "UZINFOCOM"

* identifier MS
* identifier ^short = "Certificate Registration Number"

* status MS
* status ^short = "Status of the document (e.g., current, entered-in-error)"
* status from DocRefStatusVS (required)

* docStatus MS
* docStatus ^short = "registered | partial | preliminary | final | changed | corrected | added | canceled | entered in error | obsolete | unknown"
* docStatus from DocRefComStatusVS (required)

* type MS
* type ^short = "Kind of document (LOINC if possible)"

* category MS
* category ^short = "Category: adminsitrative / legal document"

* date MS
* date ^short = "Date"

* subject MS
* subject ^short = "Deceased individual"

* author MS
* author ^short = "The individual, or service participating in the encounter"
* author only Reference(UZCorePractitionerRole)

* custodian MS
* custodian ^short = "Responsible organization"

* content.attachment MS
* content.attachment ^short = "PDF file of the certificate, encoded (URL or base64)"
* content.attachment.contentType MS
* content.attachment.contentType ^short = "Format of the document (e.g., A standart/pdf)"
* content.attachment.contentType from https://terminology.medcore.uz/CodeSystem/doc-typecodes (required)

* description MS
* description ^short = "Short description, e.g.Medical Death Certificate"

* context MS

* description MS
* description = "Short description, e.g. 'Medical Death Certificate'"