Profile: ProcedureCancerOtherImpact
Parent: Procedure
Id: procedure-cancer-other-impact
Title: "Procedure Cancer Other Impact"
Description: "Describes other types of interventions for the treatment of cancer patients"
* ^status = #draft
* ^experimental = true
* ^publisher = "UZINFOCOM"

* identifier MS
* identifier ^short = "Business identifier (ProcedureCancerOtherImpact)"

* category MS
* category from https://terminology.medcore.uz/ValueSet/OtherImpact (required)
* category ^short = "Defines the code for another type of impact"

* subject MS
* subject only Reference(Patient)
* subject ^short = "Identifies the patient to be treated"

* occurrencePeriod MS
* occurrencePeriod ^short = "Dates and times of the start and end of the procedure"

* performer.actor MS
* performer.actor only Reference(Organization)
* performer.actor ^short = "Identifies the organization where the procedure was performed"