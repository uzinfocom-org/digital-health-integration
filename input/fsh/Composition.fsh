Profile: CompositionBirth
Parent: Composition
Id: composition-birth
Title: "Bith Composition"
Description: "Composition foor Birth profile"
* ^experimental = true
* ^status = #draft
* ^publisher = "Uzinfocom"

* identifier MS
* identifier ^short = "The unique identifier of the document"

* status MS
* status ^short = "Document status"
* status from  http://hl7.org/fhir/ValueSet/composition-status (required)

* type MS
* type ^short = "Document type"
* type from  http://hl7.org/fhir/ValueSet/doc-typecodes (required)

* date MS
* date ^short = "Date of document creation"

* title MS
* title ^short = "Document name"

* subject MS
* subject ^short = "Main patient (child)"
* subject only Reference(Patient)

* author MS
* author ^short = "Who issued it (paramedic, doctor)"
* author only Reference(PractitionerRole)

* custodian MS
* custodian ^short = "The organization responsible for the document"
* custodian only Reference(Organization)

* section MS
* section ^short = "Sections with embedded data"

* section.title MS
* section.title ^short = "Label for the section"

* section.entry
* section.entry ^short = "Link to the data confirming this section"