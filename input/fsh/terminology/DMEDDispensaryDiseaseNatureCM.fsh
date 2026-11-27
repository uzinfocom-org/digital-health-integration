Instance: dmed-dispensary-disease-nature-to-dhp
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Dispensary Disease Nature to DHP Dispensary Disease Nature"
Description: "Maps DMED `disease_nature` values to DHP dispensary disease nature codes. DMED populates the [Disease Nature extension](StructureDefinition-disease-nature.html) with the target code of this map."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-dispensary-disease-nature-to-dhp"
* name = "DMEDDispensaryDiseaseNatureToDHP"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

* group.source = Canonical(DMEDDispensaryDiseaseNatureCS)
* sourceScopeCanonical = Canonical(DMEDDispensaryDiseaseNatureVS)
* group.target = Canonical(DispensaryDiseaseNatureCS)
* targetScopeCanonical = Canonical(DispensaryDiseaseNatureVS)

* group.element[+].code = #unspecified
* group.element[=].display = "Не указано"
* group.element[=].target[+].code = #chr-0128-0001
* group.element[=].target[=].display = "Ko'rsatilmagan"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #acute
* group.element[=].display = "Острое"
* group.element[=].target[+].code = #chr-0128-0002
* group.element[=].target[=].display = "O'tkir"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #subacute
* group.element[=].display = "Подострое"
* group.element[=].target[+].code = #chr-0128-0003
* group.element[=].target[=].display = "Yarim o'tkir"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #life-firsttime
* group.element[=].display = "Впервые в жизни"
* group.element[=].target[+].code = #chr-0128-0004
* group.element[=].target[=].display = "Hayotda birinchi marta aniqlangan"
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #year-firsttime
* group.element[=].display = "Впервые в текущем году"
* group.element[=].target[+].code = #chr-0128-0005
* group.element[=].target[=].display = "Joriy yilda birinchi marta aniqlangan"
* group.element[=].target[=].relationship = #equivalent
