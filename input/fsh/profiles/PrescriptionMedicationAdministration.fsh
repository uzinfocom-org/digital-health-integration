Profile: PrescriptionMedicationAdministration
Parent: MedicationAdministration
Id: prescription-medication-administration
Title: "Prescription Medication Administration"
Description: "Medication administration performed by healthcare personnel against a DMED prescription. Self-administration at home is outside this profile."
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* insert PrescriptionMetaSource

* identifier 1..* MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains dmedAdministration 1..1 MS
* identifier[dmedAdministration].use 1..1 MS
* identifier[dmedAdministration].use = #official
* identifier[dmedAdministration].system 1..1 MS
* identifier[dmedAdministration].system = $dmed-administration-id
* identifier[dmedAdministration].value 1..1 MS
* status MS
* medication only CodeableReference(PrescriptionMedication)
* subject only Reference(UZCorePatient)
* encounter 1..1 MS
* encounter only Reference(UZCoreEncounter)
* occurence[x] only dateTime
* occurenceDateTime 1..1 MS
* recorded 1..1 MS
* performer 1..* MS
* performer.actor only CodeableReference(UZCorePractitionerRole)
* request 1..1 MS
* request only Reference(PrescriptionMedicationRequest)
* dosage 1..1 MS
* dosage.text MS
* dosage.route 1..1 MS
* dosage.route from http://hl7.org/fhir/ValueSet/route-codes (extensible)
* dosage.method MS
* dosage.method ^comment = "The DMED `administration_method` code from DMEDAdministrationMethodCS, plus the route that the DMED Administration Method to FHIR Route ConceptMap gives for it."
* dosage.dose 1..1 MS
* dosage.dose.value 1..1 MS
* dosage.dose.unit 1..1 MS
* dosage.dose.system 1..1 MS
* dosage.dose.code 1..1 MS
