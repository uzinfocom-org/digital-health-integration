Profile: Form066SurgicalProcedure
Parent: UZCoreProcedure
Id: form-066-surgical-procedure
Title: "Form 066 Surgical Procedure"
Description: "An operation recorded in the surgical procedures section of a form 066 hospital discharge summary. The operation code is an ICHI stem code, narrowed to the codes DMED carries."
* ^experimental = true
* ^status = #active
* ^date = "2026-09-28"
* ^publisher = "Uzinfocom"

* code 1..1 MS
// DMED's list is an older ICHI snapshot and its picker is unrestricted, so this binding
// also admits the codes WHO has since withdrawn - they are inactive in the code system
// and exist here so records already in DMED validate, not so new ones can use them.
// Anything the platform codes itself should come from the core $ichi-vs instead.
* code from $dmed-ichi-vs (required)
* occurrence[x] 1..1 MS
* occurrenceDateTime only dateTime
* performer 1..* MS
