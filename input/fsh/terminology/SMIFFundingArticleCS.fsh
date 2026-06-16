CodeSystem: SMIFFundingArticleCS
Id: smif-funding-article-cs
Title: "SMIF Funding Articles"
Description: "Funding articles of the State Medical Insurance Fund. The list is extensible — new articles can be added without changing the profile."
* insert OriginalCodeSystemDraft(smif-funding-article-cs)
* #primary-care "Birlamchi tibbiy yordam"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Первичная медицинская помощь"
  * ^designation[+].language = #en
  * ^designation[=].value = "Primary care"
* #inpatient-preferential "Imtiyozli statsionar davolash"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Льготное стационарное лечение"
  * ^designation[+].language = #en
  * ^designation[=].value = "Preferential inpatient treatment"
* #drug-reimbursement "Dori vositalarini kompensatsiya qilish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Реимбурсация лекарственных средств"
  * ^designation[+].language = #en
  * ^designation[=].value = "Drug reimbursement"
* #oncology-fixed "Onkologik yordam (belgilangan)"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Онкологическая помощь (фиксированная)"
  * ^designation[+].language = #en
  * ^designation[=].value = "Oncology care (fixed funding)"
