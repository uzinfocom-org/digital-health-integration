Profile: ProcedureCancerRadiationTherapy
Parent: Procedure
Id: procedure-cancer-radiationtherapy
Title: "Procedure – Cancer Radiation Therapy"
Description: "FHIR Procedure profile describing radiation therapy performed for cancer treatment."
* ^status = #draft
* ^experimental = true
* ^publisher = "UZINFOCOM"

* identifier MS
* identifier ^short = "Business identifier (ProcedureCancerRadiationtherapy)"

* category MS
* category from https://terminology.medcore.uz/ValueSet/CharacterRadiationtherapy (required)
* category ^short = "Defines the radiation therapy character code"

* code MS
* code from https://terminology.medcore.uz/ValueSet/ImpactType (required)
* code ^short = "Defines the exposure type code"

* note MS
* note ^short = "Additional description of the main hearth (text)"

* bodySite MS
* bodySite from https://terminology.medcore.uz/ValueSet/IrradiationOrgan (required)
* bodySite ^short = "Defines the radiation source code"

* subject MS
* subject only Reference(Patient)
* subject ^short = "Identifies the patient who is undergoing the procedure"

* occurrencePeriod MS
* occurrencePeriod ^short = "Start and end dates and times of the procedure"

* performer MS
* performer.actor only Reference(Organization)
* performer ^short = "Defines the organization where the procedure was performed"

* extension contains
    RadiotherapyModifiers named radiotherapyModifiers 0..1 MS and
    RadiotherapyEquivalentDose named radiotherapyEquivalentDose 0..1 MS and
    RadiotherapyTotalDose named radiotherapyTotalDose 0..1 MS and
    RadiotherapySingleDose named radiotherapySingleDose 0..1 MS and
    RadiotherapyRadiopharmDrug named radiotherapyRadiopharmDrug 0..1 MS and
    RadiotherapyZone named radiotherapyZone 0..1 MS