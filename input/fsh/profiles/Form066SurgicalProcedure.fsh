Profile: Form066SurgicalProcedure
Parent: UZCoreProcedure
Id: form-066-surgical-procedure
Title: "Form 066 Surgical Procedure"
Description: "An operation recorded in the surgical procedures section of a form 066 hospital discharge summary. The operation code is an ICHI stem code, narrowed to the codes DMED carries. MainProcedure is required so that, when several operations are recorded for the same encounter, the main operation is always explicit rather than inferred."
* ^experimental = true
* ^status = #active
* ^date = "2026-09-28"
* ^publisher = "Uzinfocom"

* code 1..1 MS
// Admits the withdrawn codes DMED still holds, so records already in DMED stay valid.
// Use the core $ichi-vs for anything the platform codes itself.
* code from $dmed-ichi-vs (required)
* occurrence[x] 1..1 MS
* occurrenceDateTime only dateTime
* performer 1..* MS

* extension contains MainProcedure named mainProcedure 1..1 MS
