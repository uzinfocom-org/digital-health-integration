CodeSystem: HospitalizationReferralOrderParameterCS
Id: hospitalization-referral-order-parameter-cs
Title: "Hospitalization Referral Order Parameter"
Description: "Parameters of a hospitalization referral, sent in ServiceRequest.orderDetail.parameter.code of the Form 027 hospitalization request. The UZ Core ServiceRequest order detail parameters cover only the route of administration."
* insert OriginalCodeSystemDraft(hospitalization-referral-order-parameter-cs)

* #treatment-setting "Davolash turi"
  * ^definition = "Setting of the treatment the patient is referred for: ambulatory or inpatient (DMED `hospitalization_type`, printed as Form 027 item 2 Bemor turi). The value is an HL7 v3-ActCode encounter class, AMB or IMP."
  * ^designation[0].language = #ru
  * ^designation[=].value = "Вид лечения"
  * ^designation[+].language = #en
  * ^designation[=].value = "Treatment setting"
