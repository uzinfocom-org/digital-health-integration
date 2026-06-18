Instance: example
InstanceOf: Patient
Usage: #example
Description: "Example patient for the birth profile"
Title: "Example Patient - Boltayev"
* name[0].text = "Boltayev Damir Ketmonovich"
* gender = #male
* birthDate = "1950-01-01"

Instance: related1
InstanceOf: RelatedPerson
Usage: #example
Description: "Example for related person to newborn"
Title: "Example RelatedPerson - Boltayev"
* patient = Reference(Patient/example)
* name[0].text = "Boltayev Damir Ketmonovich"
* gender = #male
* birthDate = "1950-01-01"

