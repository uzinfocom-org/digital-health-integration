CodeSystem: CancerDegreeDifferentiationCS
Id: cancer-degree-differentiation-cs
Title: "Cancer Degree Differentiation SNOMED CT Supplement"
Description: "SNOMED CT supplement containing Uzbek and Russian designations for cancer degree of differentiation concepts used in the Uzbekistan healthcare system."

* insert SupplementCodeSystemDraft(
    cancer-degree-differentiation-cs,
    $sct,
    2026.1.0
)

* #1155701009 "G1: Well differentiated"
  * ^designation[0].language = #ru
  * ^designation[=].value = "G1 (Высоко дифференцированная)"
  * ^designation[+].language = #uz
  * ^designation[=].value = "G1 (Yuqori darajada differensiallashgan)"

* #1155703007 "G2: Moderately differentiated"
  * ^designation[0].language = #ru
  * ^designation[=].value = "G2 (Средне дифференцированная)"
  * ^designation[+].language = #uz
  * ^designation[=].value = "G2 (O‘rtacha darajada differensiallashgan)"

* #1155704001 "G3: Poorly differentiated"
  * ^designation[0].language = #ru
  * ^designation[=].value = "G3 (Низко дифференцированная)"
  * ^designation[+].language = #uz
  * ^designation[=].value = "G3 (Past darajada differensiallashgan)"

* #1155702002 "G4: Undifferentiated"
  * ^designation[0].language = #ru
  * ^designation[=].value = "G4 (Недифференцированная)"
  * ^designation[+].language = #uz
  * ^designation[=].value = "G4 (Differensiallashmagan)"

* #1155708003 "Low histologic grade"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Низкая степень"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Past darajali"

* #1155707008 "High histologic grade"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Высокая степень"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Yuqori darajali"

* #1155705000 "GX: Histologic grade cannot be assessed"
  * ^designation[0].language = #ru
  * ^designation[=].value = "GX (Не может быть установлена)"
  * ^designation[+].language = #uz
  * ^designation[=].value = "GX (Darajasini aniqlab bo‘lmaydi)"