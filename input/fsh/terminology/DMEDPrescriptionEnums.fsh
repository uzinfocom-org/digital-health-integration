CodeSystem: DMEDPrescriptionReceiveModeCS
Id: dmed-prescription-receive-mode-cs
Title: "DMED prescription intake timing"
Description: "Values of `drug_appointment.receive_mode` in the DMED prescriptions API: when the patient takes the medicine relative to meals or sleep. Russian names are the DMED interface labels (recipes.locales.json)."
* insert OriginalCodeSystemDraft(dmed-prescription-receive-mode-cs)
* ^language = #ru
* ^publisher = "Uzinfocom"
* #before_meals "Перед едой"
  * ^designation[0].language = #en
  * ^designation[=].value = "Before meals"
* #during_meals "Во время еды"
  * ^designation[0].language = #en
  * ^designation[=].value = "During meals"
* #after_meals "После еды"
  * ^designation[0].language = #en
  * ^designation[=].value = "After meals"
* #before_bedtime "Перед сном"
  * ^designation[0].language = #en
  * ^designation[=].value = "Before bedtime"
* #in_the_evening "Вечером"
  * ^designation[0].language = #en
  * ^designation[=].value = "In the evening"
* #before_night "До ночи"
  * ^designation[0].language = #en
  * ^designation[=].value = "Before night"
* #at_any_time "В любое время"
  * ^designation[0].language = #en
  * ^designation[=].value = "At any time"

ValueSet: DMEDPrescriptionReceiveModeVS
Id: dmed-prescription-receive-mode-vs
Title: "DMED prescription intake timing"
Description: "All DMED prescription intake timing values."
* insert IntegrationsValueSet(dmed-prescription-receive-mode-vs)
* ^status = #draft
* ^experimental = true
* include codes from system DMEDPrescriptionReceiveModeCS

Instance: dmed-prescription-receive-mode-to-event-timing
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED prescription intake timing to FHIR event timing"
Description: "Maps DMED `receive_mode` to `dosageInstruction.timing.repeat.when`. `before_night` is sent as bedtime (HS), as `before_bedtime` is. `at_any_time` has no target: the prescription carries no `when`."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-prescription-receive-mode-to-event-timing"
* name = "DMEDPrescriptionReceiveModeToEventTiming"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* sourceScopeCanonical = Canonical(DMEDPrescriptionReceiveModeVS)
* targetScopeCanonical = "https://terminology.dhp.uz/fhir/core/ValueSet/event-timing-vs"
* group[+].source = Canonical(DMEDPrescriptionReceiveModeCS)
* group[=].target = "http://terminology.hl7.org/CodeSystem/v3-TimingEvent"
* group[=].element[+].code = #before_meals
* group[=].element[=].display = "Перед едой"
* group[=].element[=].target[+].code = #AC
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #during_meals
* group[=].element[=].display = "Во время еды"
* group[=].element[=].target[+].code = #C
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #after_meals
* group[=].element[=].display = "После еды"
* group[=].element[=].target[+].code = #PC
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #before_bedtime
* group[=].element[=].display = "Перед сном"
* group[=].element[=].target[+].code = #HS
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #before_night
* group[=].element[=].display = "До ночи"
* group[=].element[=].target[+].code = #HS
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[=].target[=].comment = "DMED shows two labels for one moment; both are sent as bedtime."
* group[+].source = Canonical(DMEDPrescriptionReceiveModeCS)
* group[=].target = "http://hl7.org/fhir/event-timing"
* group[=].element[+].code = #in_the_evening
* group[=].element[=].display = "Вечером"
* group[=].element[=].target[+].code = #EVE
* group[=].element[=].target[=].relationship = #equivalent

CodeSystem: DMEDPrescriptionFrequencyPeriodCS
Id: dmed-prescription-frequency-period-cs
Title: "DMED prescription frequency period"
Description: "Values of `drug_appointment.administration_frequency_measure` in the DMED prescriptions API: the period that `administration_frequency` counts doses in, as in 3 times a day."
* insert OriginalCodeSystemDraft(dmed-prescription-frequency-period-cs)
* ^language = #ru
* ^publisher = "Uzinfocom"
* #day "День"
  * ^designation[0].language = #en
  * ^designation[=].value = "Day"
* #full_day "Сутки"
  * ^designation[0].language = #en
  * ^designation[=].value = "Full day (24 hours)"
* #week "Неделю"
  * ^designation[0].language = #en
  * ^designation[=].value = "Week"
* #month "Месяц"
  * ^designation[0].language = #en
  * ^designation[=].value = "Month"

ValueSet: DMEDPrescriptionFrequencyPeriodVS
Id: dmed-prescription-frequency-period-vs
Title: "DMED prescription frequency period"
Description: "All DMED prescription frequency period values."
* insert IntegrationsValueSet(dmed-prescription-frequency-period-vs)
* ^status = #draft
* ^experimental = true
* include codes from system DMEDPrescriptionFrequencyPeriodCS

Instance: dmed-prescription-frequency-period-to-units-of-time
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED prescription frequency period to UCUM unit of time"
Description: "Maps DMED `administration_frequency_measure` to `dosageInstruction.timing.repeat.periodUnit`, with `period` = 1. DMED day and full day are both one day."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-prescription-frequency-period-to-units-of-time"
* name = "DMEDPrescriptionFrequencyPeriodToUnitsOfTime"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* sourceScopeCanonical = Canonical(DMEDPrescriptionFrequencyPeriodVS)
* targetScopeCanonical = "http://hl7.org/fhir/ValueSet/units-of-time"
* group[+].source = Canonical(DMEDPrescriptionFrequencyPeriodCS)
* group[=].target = "http://unitsofmeasure.org"
* group[=].element[+].code = #day
* group[=].element[=].display = "День"
* group[=].element[=].target[+].code = #d
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #full_day
* group[=].element[=].display = "Сутки"
* group[=].element[=].target[+].code = #d
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #week
* group[=].element[=].display = "Неделю"
* group[=].element[=].target[+].code = #wk
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #month
* group[=].element[=].display = "Месяц"
* group[=].element[=].target[+].code = #mo
* group[=].element[=].target[=].relationship = #equivalent

CodeSystem: DMEDPrescriptionCancellationReasonCS
Id: dmed-prescription-cancellation-reason-cs
Title: "DMED prescription cancellation reason"
Description: "Values of `cancellation_reason` in the DMED prescriptions API. The doctor chooses one when cancelling a prescription; a pharmacist who rejects a prescription always sends `other`, with the reason in `cancellation_comment`."
* insert OriginalCodeSystemDraft(dmed-prescription-cancellation-reason-cs)
* ^language = #ru
* ^publisher = "Uzinfocom"
* #medical_contraindication "Медицинское противопоказание"
  * ^designation[0].language = #en
  * ^designation[=].value = "Medical contraindication"
* #other "Другое"
  * ^designation[0].language = #en
  * ^designation[=].value = "Other"

ValueSet: DMEDPrescriptionCancellationReasonVS
Id: dmed-prescription-cancellation-reason-vs
Title: "DMED prescription cancellation reason"
Description: "All DMED prescription cancellation reason values."
* insert IntegrationsValueSet(dmed-prescription-cancellation-reason-vs)
* ^status = #draft
* ^experimental = true
* include codes from system DMEDPrescriptionCancellationReasonCS

Instance: dmed-prescription-cancellation-reason-to-status-reason
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED prescription cancellation reason to MedicationRequest status reason"
Description: "Maps DMED `cancellation_reason` to `MedicationRequest.statusReason`. HL7 has no equivalent for either value, so both map to UZ Core national codes; `cancellation_comment` goes to `statusReason.text`."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-prescription-cancellation-reason-to-status-reason"
* name = "DMEDPrescriptionCancellationReasonToMedicationRequestStatusReason"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* sourceScopeCanonical = Canonical(DMEDPrescriptionCancellationReasonVS)
* targetScopeCanonical = "https://terminology.dhp.uz/fhir/core/ValueSet/medicationrequest-status-reason-vs"
* group[+].source = Canonical(DMEDPrescriptionCancellationReasonCS)
* group[=].target = "https://terminology.dhp.uz/fhir/core/CodeSystem/medicationrequest-status-reason-local-cs"
* group[=].element[+].code = #medical_contraindication
* group[=].element[=].display = "Медицинское противопоказание"
* group[=].element[=].target[+].code = #medical-contraindication
* group[=].element[=].target[=].display = "Tibbiy qarshi ko'rsatma"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #other
* group[=].element[=].display = "Другое"
* group[=].element[=].target[+].code = #other
* group[=].element[=].target[=].display = "Boshqa sabab"
* group[=].element[=].target[=].relationship = #equivalent
