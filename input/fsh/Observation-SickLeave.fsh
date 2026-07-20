Profile: SickLeaveObservation
Parent: Observation
Id: sick-leave-observation
Title: "Sick Leave Observation"
Description: "Observation containing additional Sick Leave attributes"
* ^experimental = true
* ^status = #draft
* ^publisher = "UZINFOCOM"

* status = #final

* basedOn 1..1 MS
* basedOn only Reference(SickLeaveCarePlan)

* code 1..1 MS
* code = http://snomed.info/sct#224459001 "On sick leave from work"

* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open

* component contains
    cityBelonging 0..1 MS and
    placeOfIncident 0..1 MS and
    fromAnotherCity 0..1 MS and
    infectiousContact 0..1 MS and
    kinshipDegree 0..1 MS and
    regime 0..1 MS and
    regimenViolation 0..1 MS and
    tempJobTransfer 0..1 MS and
    conclusions 0..1 MS and
    verificationDate 0..1 MS

* component[cityBelonging].code = SickLeaveComponentCS#emdoc-0009-0001
* component[cityBelonging].value[x] only CodeableConcept
* component[cityBelonging].valueCodeableConcept from CarePlanBelongingVS (required)

* component[placeOfIncident].code = SickLeaveComponentCS#emdoc-0009-0002
* component[placeOfIncident].value[x] only CodeableConcept
* component[placeOfIncident].valueCodeableConcept from PlaceOfIncidentVS (required)

* component[fromAnotherCity].code = SickLeaveComponentCS#emdoc-0009-0003
* component[fromAnotherCity].value[x] only boolean

* component[infectiousContact].code = SickLeaveComponentCS#emdoc-0009-0004
* component[infectiousContact].value[x] only boolean

* component[kinshipDegree].code = SickLeaveComponentCS#emdoc-0009-0005
* component[kinshipDegree].value[x] only CodeableConcept
* component[kinshipDegree].valueCodeableConcept from RelationDegreeVS (required)

* component[regime].code = SickLeaveComponentCS#emdoc-0009-0006
* component[regime].value[x] only CodeableConcept
* component[regime].valueCodeableConcept from EncounterClassVS (required)

* component[regimenViolation].code = SickLeaveComponentCS#emdoc-0009-0007
* component[regimenViolation].value[x] only CodeableConcept
* component[regimenViolation].valueCodeableConcept from RegimenViolationVS (required)

* component[tempJobTransfer].code = SickLeaveComponentCS#emdoc-0009-0008
* component[tempJobTransfer].value[x] only dateTime

* component[conclusions].code = SickLeaveComponentCS#emdoc-0009-0009
* component[conclusions].value[x] only CodeableConcept
* component[conclusions].valueCodeableConcept from ConclusionsVS (required)

* component[verificationDate].code = SickLeaveComponentCS#emdoc-0009-0010
* component[verificationDate].value[x] only dateTime