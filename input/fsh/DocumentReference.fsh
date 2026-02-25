// Profile: DocumentReferenceBirth
// Parent: DocumentReference
// Id: document-reference-birth
// Title: "Document Reference Birth"
// Description: "Document reference for Birth profile"
// * ^status = #draft
// * ^experimental = true

// * identifier MS

// * status MS
// * status ^short = "current | superseded | entered-in-error"
// * status from DocRefStatusVS (required)

// * docStatus MS
// * docStatus ^short = "registered | partial | preliminary | final | amended | corrected | appended | cancelled | entered-in-error | deprecated | unknown"
// * docStatus from DocRefComStatusVS (required)

// * subject MS
// * subject ^short = "A newborn baby"
// * subject only Reference(PatientBirth)

// * context MS
// * context ^short = "When encountering a newborn baby"
// * context only Reference(EncounterBirth)

// * practiceSetting MS
// * practiceSetting ^short = "Additional information about the content creation location (for example, clinical specialization)"

// * period MS
// * period ^short = "Maintenance time, which is documented"

// * date MS
// * date ^short = "When was this document link created?"

// * author MS
// * author ^short = "Who and/or what is the author of the document"
// * author only Reference(UZCorePractitioner or UZCoreOrganization)

// * attester MS
// * attester ^short = "Confirms the accuracy of the document."
// * attester.mode MS
// * attester.mode ^short = "personal | professional | legal | official"
// * attester.mode from DocRefComAttVS
// * attester.time MS
// * attester.time ^short = "When the document was certified"
// * attester.party MS
// * attester.party ^short = "Who certified the document?"
// * attester.party only Reference(UZCoreOrganization)

// * custodian MS
// * custodian ^short = "The organization that maintains the document"
// * custodian only Reference(UZCoreOrganization)

// * relatesTo MS
// * relatesTo ^short = "A certificate from the hospital is attached."

// * relatesTo.target MS
// * relatesTo.target ^short = "The purpose of the relationship"

// * description MS
// * description ^short = "A human-readable description"

// * content.profile MS
// * content.profile ^short = "Document Content Profile Rules"
// * content.profile.value[x] MS
// * content.profile.value[x] ^short = "Code|uri|canonical"
// * content.profile.value[x] from http://terminology.hl7.org/ValueSet/v3-HL7FormatCodes (required)