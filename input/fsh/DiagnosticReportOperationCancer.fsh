Profile: DiagnosticReportOperationCancer
Parent: DiagnosticReport
Id: diagnostic-report-operation-cancer
Title: "Diagnostic Report – Cancer Operation"
Description: "FHIR DiagnosticReport profile describing the course of a cancer-related surgical operation."
* ^experimental = true
* ^status = #draf

* identifier MS
* identifier ^short = "Business identifier (DiagnosticReportOperationCancer)"

* subject MS
* subject only Reference(Patient)
* subject ^short = "Identifies the patient who underwent surgery"

* effectiveDateTime MS
* effectiveDateTime ^short = "Date of the description of the operation progress"

* performer MS
* performer only Reference(Organization)
* performer ^short = "Defines the organization where the operation was performed"

// * report MS
// * report only Reference(DiagnosticReport)
// * report ^short = "Operation report"

* supportingInfo MS
* supportingInfo ^short = "Supporting information"

* supportingInfo.reference MS
* supportingInfo.reference only Reference(Procedure)
* supportingInfo.reference ^short = "Procedure reference"

* conclusion MS
* conclusion ^short = "Text describing the operation progress"

* presentedForm MS
* presentedForm ^short = "Attached progress report on the operation"