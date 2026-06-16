CodeSystem: SMIFPaymentModelCS
Id: smif-payment-model-cs
Title: "SMIF Payment Models"
Description: "Payment models used in SMIF contracts for different funding articles"
* insert OriginalCodeSystemDraft(smif-payment-model-cs)
* #capitation "Jon boshiga to'lov"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Подушевая оплата"
  * ^designation[+].language = #en
  * ^designation[=].value = "Capitation payment"
* #fee-for-service "Ko'rsatilgan xizmat uchun to'lov"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Оплата за случай"
  * ^designation[+].language = #en
  * ^designation[=].value = "Fee for service"
* #fixed-monthly "Oylik belgilangan to'lov"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Фиксированная помесячная оплата"
  * ^designation[+].language = #en
  * ^designation[=].value = "Fixed monthly payment"
* #reimbursement "Kompensatsiya"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Реимбурсация"
  * ^designation[+].language = #en
  * ^designation[=].value = "Reimbursement"
