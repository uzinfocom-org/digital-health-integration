CodeSystem: PatientTransportMobilityCS
Id: patient-transport-mobility-cs
Title: "Form003 Patient Transport Mobility"
Description: "Local codes for how the patient was moved on admission or transfer, Form003 inpatient medical record."

* insert OriginalCodeSystemDraft(patient-transport-mobility-cs)

* #chr-0033-0001 "Nogironlar aravachasida"
  * ^designation[0].language = #ru
  * ^designation[=].value = "В коляске"
  * ^designation[+].language = #en
  * ^designation[=].value = "By wheelchair"

* #chr-0033-0002 "Zambilda"
  * ^designation[0].language = #ru
  * ^designation[=].value = "На носилках"
  * ^designation[+].language = #en
  * ^designation[=].value = "On a stretcher"

* #chr-0033-0003 "Yura oladi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Может идти"
  * ^designation[+].language = #en
  * ^designation[=].value = "Ambulatory (can walk)"
