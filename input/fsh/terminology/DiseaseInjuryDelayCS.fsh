// Since this CodeSystem did not exist in the IG and was required for Form 066, a new CodeSystem was created.
CodeSystem: DiseaseInjuryDelayCS
Id: disease-injury-delay-cs
Title: "Disease/Injury Delay CodeSystem"
Description: "Collection of information on the time interval between the onset of disease or injury and the patient's admission to a medical institution"

* insert OriginalCodeSystemDraft(disease-injury-delay-cs)

* #delay0001_00001 "Dastlabki 6 soat ichida"
  * ^designation[+].language = #ru
  * ^designation[=].value = "В течение первых 6 часов"
  * ^designation[0].language = #en
  * ^designation[=].value = "Within first 6 hours"

* #delay0001_00002 "7-24 soat ichida"
  * ^designation[+].language = #ru
  * ^designation[=].value = "В течение 7-24 часов"
  * ^designation[0].language = #en
  * ^designation[=].value = "Within 7-24 hours"

* #delay0001_00003 "24 soatdan so'ng"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Спустя 24 часа"
  * ^designation[0].language = #en
  * ^designation[=].value = "After 24 hours"