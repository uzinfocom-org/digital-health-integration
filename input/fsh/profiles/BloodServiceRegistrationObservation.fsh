Invariant: bsro-1
Description: "A recipient registration has no donor category, donation compensation or donation type."
Severity: #error
Expression: "code.coding.where(system = 'https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-service-observation-type-cs' and code = 'bsobs-0001-00002').exists() implies component.where(code.coding.where(system = 'https://terminology.dhp.uz/fhir/integrations/CodeSystem/blood-service-observation-type-cs' and (code = 'bsobs-0002-00001' or code = 'bsobs-0002-00002' or code = 'bsobs-0002-00003')).exists()).empty()"

Profile: BloodServiceRegistrationObservation
Parent: UZCoreObservation
Id: blood-service-registration-observation
Title: "Blood Service Registration Observation"
Description: "Observation recording a person's registration with the blood service as a blood donor or a recipient, with the donor category, donation compensation and donation type for a donor and the diagnosis for a recipient."
* ^status = #draft
* ^experimental = true
* obeys bsro-1

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier contains registrationNumber 0..1 MS
* identifier[registrationNumber] ^short = "Blood service registration number"
* identifier[registrationNumber].system 1..1 MS
* identifier[registrationNumber].system = $blood-registration-number
* identifier[registrationNumber].value 1..1 MS

* code from BloodServiceRegistrationTypeVS (required)
* code ^short = "Blood donor registration or blood recipient registration"
* subject 1..1
* subject only Reference(UZCorePatient)
* effective[x] 1..1
* effective[x] only dateTime
* value[x] 0..0
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Sliced by the code identifying each registration data item."
* component contains
    donorCategory 0..1 MS and
    compensation 0..1 MS and
    donationType 0..1 MS and
    diagnosis 0..1 MS

* component[donorCategory] ^short = "Staff or reserve donor category"
* component[donorCategory].code = BloodServiceObservationTypeCS#bsobs-0002-00001
* component[donorCategory].value[x] only CodeableConcept
* component[donorCategory].valueCodeableConcept from DonorCategoryVS (required)

* component[compensation] ^short = "Paid or unpaid donation"
* component[compensation].code = BloodServiceObservationTypeCS#bsobs-0002-00002
* component[compensation].value[x] only CodeableConcept
* component[compensation].valueCodeableConcept from DonationCompensationVS (required)

* component[donationType] ^short = "Donation type"
* component[donationType].code = BloodServiceObservationTypeCS#bsobs-0002-00003
* component[donationType].value[x] only CodeableConcept
* component[donationType].valueCodeableConcept from DonationTypeVS (required)

* component[diagnosis] ^short = "Diagnosis (ICD-10)"
* component[diagnosis].code = $loinc#29308-4
* component[diagnosis].value[x] only CodeableConcept
* component[diagnosis].valueCodeableConcept from $icd-10-vs (required)
