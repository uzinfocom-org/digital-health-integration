Profile: SickLeaveObservation
Parent: Observation
<<<<<<< HEAD
Id: dhp-sick-leave-observation
Title: "Sick Leave Observation"
Description: "Profile for sick leave observations with structured components"
* ^experimental = true

* basedOn 1..* MS
* basedOn only Reference(SickLeaveCarePlan)
* basedOn ^short = "Reference to the associated CarePlan"

* status MS
* status = #unknown
* status ^short = "Sick leave status is tracked in the original CarePlan"
=======
Id: sick-leave-observation
Title: "Sick Leave Observation"
Description: "Observation containing additional Sick Leave attributes"
* ^experimental = true
* ^status = #draft
* ^publisher = "UZINFOCOM"

* basedOn 1..1 MS
* basedOn only Reference(SickLeaveCarePlan)
>>>>>>> 37883d3 (last changes added bu Sickleave)

* code 1..1 MS
* code = http://snomed.info/sct#224459001 "On sick leave from work"

<<<<<<< HEAD
* subject 1..1 MS
* subject only Reference(Patient or Group)

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slicing for different sick leave components"

* component contains cityAffiliation 0..1 MS
* component contains placeOfIncident 0..1 MS
* component contains issuanceOtherCity 0..1 MS
* component contains infectiousContact 0..1 MS
* component contains kinshipDegree 0..1 MS
* component contains regime 0..1 MS
* component contains regimeViolation 0..1 MS
* component contains jobTransfer 0..1 MS
* component contains conclusions 0..1 MS
* component contains verificationDate 0..1 MS

* component[cityAffiliation] ^short = "Urban affiliation | population of the village"
* component[cityAffiliation].code = $SickLeaveComponentCS#emdoc-0009-0001
* component[cityAffiliation].value[x] only CodeableConcept
* component[cityAffiliation].value[x] 1..1
* component[cityAffiliation].value[x] from CarePlanBelongingVS (required)

* component[placeOfIncident] ^short = "The place of the incident"
* component[placeOfIncident].code = $SickLeaveComponentCS#emdoc-0009-0002
* component[placeOfIncident].value[x] only CodeableConcept
* component[placeOfIncident].value[x] 1..1
* component[placeOfIncident].value[x] from PlaceOfIncidentVS (required)

* component[issuanceOtherCity] ^short = "Issuing a medical certificate to a patient from another city"
* component[issuanceOtherCity].code = $SickLeaveComponentCS#emdoc-0009-0003
* component[issuanceOtherCity].value[x] only boolean
* component[issuanceOtherCity].value[x] 1..1

* component[infectiousContact] ^short = "Information about contact with an infectious disease patient"
* component[infectiousContact].code = $SickLeaveComponentCS#emdoc-0009-0004
* component[infectiousContact].value[x] only boolean
* component[infectiousContact].value[x] 1..1

* component[kinshipDegree].code = $SickLeaveComponentCS#emdoc-0009-0005
* component[kinshipDegree].value[x] only CodeableConcept
* component[kinshipDegree].value[x] 1..1
* component[kinshipDegree].value[x] from RelationDegreeVS (required)

* component[regime].code = $SickLeaveComponentCS#emdoc-0009-0006
* component[regime].value[x] only CodeableConcept
* component[regime].value[x] 1..1
* component[regime].value[x] from EncounterClassVS (required)

* component[regimeViolation].code = $SickLeaveComponentCS#emdoc-0009-0007
* component[regimeViolation].value[x] only CodeableConcept
* component[regimeViolation].value[x] 1..1
* component[regimeViolation].value[x] from RegimenViolationVS (required)

* component[jobTransfer].code = $SickLeaveComponentCS#emdoc-0009-0008
* component[jobTransfer].value[x] only dateTime
* component[jobTransfer].value[x] 1..1

* component[conclusions].code = $SickLeaveComponentCS#emdoc-0009-0009
* component[conclusions].value[x] only CodeableConcept
* component[conclusions].value[x] 1..1
* component[conclusions].value[x] from ConclusionsVS (required)

* component[verificationDate].code = $SickLeaveComponentCS#emdoc-0009-0010
* component[verificationDate].value[x] only dateTime
* component[verificationDate].value[x] 1..1
=======
* component 0..* MS
* component.code 1..1 MS
* component.value[x] 1..1 MS
>>>>>>> 37883d3 (last changes added bu Sickleave)

* component.code from SickLeaveComponentVS (required)