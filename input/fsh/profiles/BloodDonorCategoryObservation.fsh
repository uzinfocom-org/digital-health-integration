Profile: BloodDonorCategoryObservation
Parent: UZCoreObservation
Id: blood-donor-category-observation
Title: "Blood Donor Category Observation"
Description: "Observation recording a donor's category, the time it was established, donation compensation and additional blood donor data."
* ^status = #draft
* ^experimental = true

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier contains bloodId 0..1 MS
* identifier[bloodId].system 1..1 MS
* identifier[bloodId].system = $blood-id-system
* identifier[bloodId].value 1..1 MS

* category contains donorCategory 0..1 MS
* category[donorCategory] from DonorCategoryVS (required)
* category[donorCategory] ^short = "Staff or reserve donor category"
* code from BloodPatientTypeVS (required)
* subject 1..1
* subject only Reference(UZCorePatient)
* effective[x] 1..1
* effective[x] only dateTime
* value[x] only CodeableConcept
* valueCodeableConcept from DonationCompensationVS (required)
* valueCodeableConcept ^short = "Paid or unpaid donation"
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Sliced by the code identifying each blood donor data item."
* component.code from BloodDonorObservationTypeVS (required)
* component contains
    donationType 0..1 MS and
    bloodGroup 0..1 MS and
    rhFactor 0..1 MS and
    diagnosis 0..1 MS

* component[donationType] ^short = "Donation type"
* component[donationType].code = BloodDonorObservationTypeCS#bdobs-0001-00001
* component[donationType].value[x] only CodeableConcept
* component[donationType].valueCodeableConcept from DonationTypeVS (required)

* component[bloodGroup] ^short = "ABO blood group"
* component[bloodGroup].code = BloodDonorObservationTypeCS#bdobs-0001-00002
* component[bloodGroup].value[x] only CodeableConcept
* component[bloodGroup].valueCodeableConcept from $blood-group-vs (required)

* component[rhFactor] ^short = "Rh factor"
* component[rhFactor].code = BloodDonorObservationTypeCS#bdobs-0001-00003
* component[rhFactor].value[x] only CodeableConcept
* component[rhFactor].valueCodeableConcept from $blood-rh-vs (required)

* component[diagnosis] ^short = "Diagnosis (ICD-10)"
* component[diagnosis].code = $loinc#29308-4
* component[diagnosis].value[x] only CodeableConcept
* component[diagnosis].valueCodeableConcept from $icd-10-vs (required)
