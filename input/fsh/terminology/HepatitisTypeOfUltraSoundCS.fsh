CodeSystem: HepatitisTypeOfUltraSoundCS
Id: hepatitis-type-of-ultra-sound-cs
Title: "Hepatit Type Of UltraSound CodeSystem"
Description: "SNOMED CT supplement containing Uzbek and Russian designations for liver ultrasound findings used in hepatitis follow-up."

* insert SupplementCodeSystemDraft(
    hepatitis-type-of-ultra-sound-cs,
    $sct,
    2026.1.0
)

* #19943007 "Signs of cirrhosis"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Признаки цирроза"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Jigar sirrozi belgilari"

* #300332007 "Signs of liver lesions"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Признаки образований в печени"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Jigar shikastlanishining belgilari"