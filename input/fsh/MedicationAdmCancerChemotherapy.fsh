Profile: MedicationAdmCancerChemotherapy
Parent: MedicationAdministration
Id: medication-adm-cancer-chemotherapy
Title: "Medication Administration – Cancer Chemotherapy"
Description: "Chemotherapy medication administration for cancer treatment."
* ^experimental = true
* ^status = #draft

* identifier MS
* identifier ^short = "Business identifier"

* basedOn MS
* basedOn only Reference(CarePlan)
* basedOn ^short = "Defines the treatment plan"

* medication MS
* medication from https://terminology.medcore.uz/ValueSet/NameDrug (required)
* medication ^short = "Determines the code of the injected drug"

// * occurrence[x] 1..1 MS
// * occurrence[x] only dateTime

// * occurrenceDateTime MS
// * occurrenceDateTime ^short = "Date of drug administration"

* dosage MS
* dosage ^short = "Dosage information"

* dosage.dose MS
* dosage.dose ^short = "Description of the quantity of the drug and units of measurement. Quantity"

* dosage.dose.value MS
* dosage.dose.value ^short = "Numerical value of the drug quantity"

* dosage.dose.unit MS
* dosage.dose.unit ^short = "Defines the code for the unit of measurement of the drug quantity"
* dosage.dose.unit from https://terminology.medcore.uz/ValueSet/UnitsDrug (required)

* dosage.method MS
* dosage.method from https://terminology.medcore.uz/ValueSet/DrugAdministration (required)
* dosage.method ^short = "Defines the code for the route of administration of the drug"

* subject MS
* subject only Reference(Patient)
* subject ^short = "Identifies the patient to whom the drug was administered"