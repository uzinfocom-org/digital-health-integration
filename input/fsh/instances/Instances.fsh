Instance: practitioner-003
InstanceOf: Practitioner
Usage: #example
Title: "Practitioner Example"
Description: "Healthcare professional involved in birth and newborn assessment"

* name.text = "Dr. Rashidhodjaeva Luiza"
* name.family = "Rashidhodjaeva"
* name.given = "Luiza"
* gender = #female


Instance: patient-mother-example
InstanceOf: Patient
Usage: #example
Title: "Mother Patient Example"
Description: "Example mother patient for the newborn birth profile"
* name.text = "Sophia Lills"
* gender = #female



Instance: organization1-example
InstanceOf: UZCoreOrganization
Title: "Birth and Death  Hospital Example"
Description: "Example birth and death hospital organization in Uzbekistan"
Usage: #example
* name = "Republican Clinical Hospital"


Instance: encounter-mother-delivery-example
InstanceOf: Encounter
Usage: #example
Title: "Encounter - Mother Delivery"
Description: "Example encounter representing the mother's delivery hospitalization"
* status = #completed
* class = $v3-ActCode#IMP
* subject.display = "Mother"


Instance: practitioner-birth-attendant-example
InstanceOf: Practitioner
Usage: #example
Title: "Practitioner - Birth Attendant"
Description: "Example practitioner who attended the birth"
* name.text = "Dr. Rashidhodjaeva Luiza"


Instance: practitioner-birth-certifier-example
InstanceOf: Practitioner
Usage: #example
Title: "Practitioner - Birth Certifier"
Description: "Example practitioner responsible for certifying the birth"
* name.text = "Dr. Karimov Akmal"


Instance: condition-neonatal-jaundice-example
InstanceOf: Condition
Usage: #example
Title: "Condition - Neonatal Jaundice"
Description: "Example condition representing neonatal jaundice diagnosed in the newborn"
* clinicalStatus = $condition-clinical#active
* code.text = "Neonatal jaundice"
* subject = Reference(newborn-patient-example)


Instance: location-delivery-room-example
InstanceOf: UZCoreLocation
Usage: #example
Title: "Location - Delivery Room"
Description: "Example location representing the delivery room where the birth took place"
* name = "Delivery room №2"




Instance: practitionerrole-001
InstanceOf: PractitionerRole
Usage: #example
Title: "Practitioner Role Example"
Description: "Role of practitioner for authoring the birth composition"

* practitioner = Reference(practitioner-003)
* organization = Reference(organization1-example)
* code.text = "Paramedic"



Instance: patient-managing-organization-attachment-example
InstanceOf: Patient
Usage: #example
Title: "Patient Managing Organization Attachment Example"
Description: "Example demonstrating the ManagingOrganizationAttachment extension."

* name.text = "Example Patient"
* gender = #male
* birthDate = "2026-04-01"

* extension.url = "https://dhp.uz/fhir/integrations/StructureDefinition/managing-organization-attachment"
* extension.valueDate = "2026-04-01"



Instance: practitioner-death-example
InstanceOf: UZCorePractitioner
Title: "Practitioner Death Example"
Description: "Example practitioner for death certificate"
Usage: #example

* name.family = "Karimov"
* name.given = "Akmal"



Instance: location-death-example
InstanceOf: UZCoreLocation
Title: "Location Death Example"
Description: "Example location for death encounter"
Usage: #example

* name = "Republican Clinical Hospital"





Instance: observation-mother-education-example
InstanceOf: UZCoreSocioeconomicObservation
Usage: #example
Title: "Mother Education Observation Example"
Description: "Example socioeconomic observation representing the education level of the newborn's mother"

* status = #final
* code = https://terminology.dhp.uz/fhir/core/CodeSystem/socioeconomic-observation-cs#education "Education"
* subject = Reference(newborn-patient-example)
* focus = Reference(related-person-of-birth-example)
* effectiveDateTime = "2026-04-01T10:00:00+05:00"
* performer = Reference(practitioner-003)

* code.coding[socioeconomicType] = $sct#105421008 "Educational achievement"
* valueCodeableConcept = education-cs#regis0005.00004 "Secondary"