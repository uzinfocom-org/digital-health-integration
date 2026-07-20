Instance: xonobod-medical-association
InstanceOf: UZCoreOrganization
Usage: #example
Description: "Xonobod City Medical Association"

* identifier[taxId].use = #official
* identifier[taxId].type.coding[0].system = $identifier-type
* identifier[taxId].type.coding[0].code = #TAX
* identifier[taxId].system = $organization-tax-id-system-dhp
* identifier[taxId].value = "200248215"

* active = true
* name = "Xonobod City Medical Association"

* type.coding[subordinationGroup] = $organizational-subordination-group-cs#I_3
* type.coding[organizationalStructure] = $organizational-structure-cs#148
* type.coding[organizationalServiceGroup][0] = $organizational-service-group-cs#III_100
* type.coding[organizationalServiceGroup][+] = $organizational-service-group-cs#III_500

* contact
  * telecom[0].system = #phone
  * telecom[=].value = "1341353613"
  * telecom[+].system = #email
  * telecom[=].value = "health@example.uz"
  * address.line = "1 A. Fitrat Street"
  * address.state = "1703"
  * address.district = "1703408"
  * address.country = "UZ"

* extension[coverage-area].valueCodeableConcept = $states-cs#1703