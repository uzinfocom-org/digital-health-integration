Profile: PrescriptionMedicationDispense
Parent: UZCoreMedicationDispense
Id: prescription-medication-dispense
Title: "Prescription Medication Dispense"
Description: "Medication actually supplied by a pharmacy against a DMED electronic prescription."
* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* insert PrescriptionMetaSource

* extension contains PrescriptionDispenseBatch named dispensedBatch 0..* MS
* extension[dispensedBatch] ^short = "Source-reported batches supplied in this dispense"

* identifier 1..* MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    dmedDispense 1..1 MS and
    globalTradeItemID 0..1 MS and
    markingID 0..* MS
* identifier[dmedDispense].use 1..1 MS
* identifier[dmedDispense].use = #official
* identifier[dmedDispense].system 1..1 MS
* identifier[dmedDispense].system = $dmed-dispense-id
* identifier[dmedDispense].value 1..1 MS
* identifier[globalTradeItemID]
  * ^short = "GTIN of the product supplied in this dispense; not a dispense key"
  * ^definition = "Source-reported GTIN of the supplied product. This identifies the trade item, not the dispense event. Do not use it for conditional creation, updates or deduplication of dispenses."
  * system 1..1 MS
  * system = $globalTradeItemID
  * value 1..1 MS
  * use 0..0
* identifier[markingID]
  * ^short = "Marking code of a supplied package; not a dispense key"
  * ^definition = "Source-reported Asl Belgisi code of an individual supplied package. Repeat for each distinct code reported for this dispense. The same code may occur in an erroneous dispense and its replacement; it is not a globally unique dispense key."
  * system 1..1 MS
  * system = $markingID
  * value 1..1 MS
  * use 0..0
* status MS
* category MS
* medication only CodeableReference(PrescriptionMedication)
* subject MS
* performer 1..* MS
* authorizingPrescription 1..1 MS
* authorizingPrescription only Reference(PrescriptionMedicationRequest)
* quantity 1..1 MS
* quantity.value 1..1 MS
* quantity.unit 1..1 MS
* quantity.system 1..1 MS
* quantity.code 1..1 MS
* recorded 1..1 MS
* whenHandedOver 1..1 MS
* receiver 1..1 MS
