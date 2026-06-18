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



Instance: organization-birth-hospital-example
InstanceOf: Organization
Title: "Birth Hospital Example"
Description: "Example birth hospital organization in Uzbekistan"
Usage: #example
* name = "Tashkent Maternity Hospital №1"


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
* subject = Reference(patient-of-birth-example)


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
* organization = Reference(organization-birth-hospital-example)


Instance: patient-gender-other-example
InstanceOf: Patient
Usage: #example
Title: "Patient with Other Gender"
Description: "Example patient using gender-other extension"

* gender = #other
* gender.extension[0].url = "https://dhp.uz/fhir/integrations/StructureDefinition/gender-other"
* gender.extension[0].valueCoding.system = "https://terminology.dhp.uz/fhir/core/CodeSystem/gender-other-cs"
* gender.extension[0].valueCoding.code = #regis0007.00004
* gender.extension[0].valueCoding.display = "Changed gender to female"





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


Instance: patient-multiple-birth-example
InstanceOf: Patient
Usage: #example
Title: "Multiple Birth Example"
Description: "Example demonstrating the MultipleBirthFlag extension."

* name.text = "Twin Baby A"
* gender = #female
* birthDate = "2026-04-01"

* extension.url = "https://dhp.uz/fhir/integrations/StructureDefinition/multiple-birth-flag"
* extension.valueBoolean = true

Instance: patient-newborn-birth-time-example
InstanceOf: Patient
Usage: #example
Title: "Newborn Birth Time Example"
Description: "Example demonstrating the NewbornBirthTime extension."

* name.text = "Baby Example"
* gender = #male
* birthDate = "2026-04-01"

* extension.url = "https://dhp.uz/fhir/integrations/StructureDefinition/newborn-birth-time"
* extension.valueDateTime = "2026-04-01T10:00:00+05:00"