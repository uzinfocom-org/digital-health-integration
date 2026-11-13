Instance: example-blood-transfusion-assessment
InstanceOf: BloodTransfusionAssessmentObservation
Title: "Example Blood Transfusion Assessment Observation - Complete Assessment"
Description: "Synthetic pre-transfusion assessment containing all six component slices. The recipient, encounter and practitioner are provided below as supporting examples."
Usage: #example
* language = #uz
* status = #final
* code = $sct#252314007 "Blood transfusion test"
* subject = Reference(example-transfusion-assessment-recipient)
* encounter = Reference(example-transfusion-assessment-encounter)
* effectiveDateTime = "2026-11-11T10:30:00+05:00"
* issued = "2026-11-11T10:35:00+05:00"
* performer = Reference(example-transfusion-assessment-practitioner)
* component[aboCompatibility].code = BloodTransfusionAssessmentCS#bldcomp-0001-00001 "ABO bo‘yicha moslik"
* component[aboCompatibility].valueCodeableConcept = BloodTransfusionValueCS#bldcomp-0002-00001 "Mos"
* component[rhHrCompatibility].code = BloodTransfusionAssessmentCS#bldcomp-0001-00002 "Rh-Hr bo‘yicha moslik"
* component[rhHrCompatibility].valueCodeableConcept = BloodTransfusionValueCS#bldcomp-0002-00001 "Mos"
* component[transfusionHistory].code = BloodTransfusionAssessmentCS#bldcomp-0001-00003 "Transfuzion anamnez"
* component[transfusionHistory].valueCodeableConcept = BloodTransfusionHistoryCS#bldcomp-0003-00001 "Avval qon quyilmagan"
* component[obstetricHistory].code = BloodTransfusionAssessmentCS#bldcomp-0001-00004 "Akusherlik anamnezi"
* component[obstetricHistory].valueCodeableConcept = ObstetricHistoryCS#bldcomp-0004-00002 "Homiladorlik yoki tug‘ruq bo‘lmagan"
* component[preliminaryAboGroup].code = BloodTransfusionAssessmentCS#bldcomp-0001-00005 "Dastlabki ABO qon guruhi"
* component[preliminaryAboGroup].valueCodeableConcept = $sct#112144000
* component[biologicalSpecimen].code = BloodTransfusionAssessmentCS#bldcomp-0001-00006 "Biologik namuna"
* component[biologicalSpecimen].valueCodeableConcept = $sct#260385009 "Negative"

Instance: example-transfusion-assessment-recipient
InstanceOf: UZCorePatient
Title: "Example UZ Core Patient - Transfusion Assessment Recipient"
Description: "Synthetic recipient used by the blood transfusion assessment example."
Usage: #example
* language = #uz
* identifier[nationalId].value = "41204923456119"
* name.use = #official
* name.family = "Karimova"
* name.given = "Malika"
* gender = #female
* birthDate = "1992-04-12"

Instance: example-transfusion-assessment-practitioner
InstanceOf: UZCorePractitioner
Title: "Example UZ Core Practitioner - Transfusion Assessor"
Description: "Synthetic practitioner responsible for the pre-transfusion assessment."
Usage: #example
* language = #uz
* active = true
* name.family = "Rasulov"
* name.given = "Bahodir"

Instance: example-transfusion-assessment-encounter
InstanceOf: UZCoreEncounter
Title: "Example UZ Core Encounter - Transfusion Assessment"
Description: "Synthetic recipient encounter during which the transfusion assessment is recorded."
Usage: #example
* language = #uz
* status = #in-progress
* type[nationalType] = $encounter-type-cs#mserv-0001-00002 "Diagnostika" //in the future, we will add a specific code for blood transfusion assessment encounter type
* subject = Reference(example-transfusion-assessment-recipient)
* actualPeriod.start = "2026-11-11T10:00:00+05:00"
