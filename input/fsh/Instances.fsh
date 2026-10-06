// Narcology instances
Instance: example-narcologist
InstanceOf: UZCorePractitioner
Title: "Narcologist Example"
Description: "Narcologist who sees Salim in the narcology registry"
Usage: #example

* active = true
* name
  * family = "Toshmatov"
  * given[0] = "Toshmat"
  * given[1] = "Toshmatovich"

Instance: example-narcologist-role
InstanceOf: UZCorePractitionerRole
Title: "Narcologist Role Example"
Description: "Narcologist role at the Republican Centre for Mental Health and Narcology"
Usage: #example

* language = #uz
* active = true
* practitioner = Reference(example-narcologist)
* organization = Reference(example-narcology-center)
* code = $position-and-profession-cs#2212.66 "Vrach narkolog"
* specialty = $profession-specialization-cs#394587001 "Psixiatriya"

Instance: example-commission-psychiatrist
InstanceOf: UZCorePractitioner
Title: "Commission Psychiatrist Example"
Description: "Psychiatrist sitting on the medical-consultation commission"
Usage: #example

* active = true
* name
  * family = "Karimova"
  * given[0] = "Dilnoza"
  * given[1] = "Anvarovna"

Instance: example-commission-psychiatrist-role
InstanceOf: UZCorePractitionerRole
Title: "Commission Psychiatrist Role Example"
Description: "Psychiatrist role on the medical-consultation commission at the Republican Centre for Mental Health and Narcology"
Usage: #example

* language = #uz
* active = true
* practitioner = Reference(example-commission-psychiatrist)
* organization = Reference(example-narcology-center)
* code = $position-and-profession-cs#2212.93 "Vrach psixiatr"
* specialty = $profession-specialization-cs#394587001 "Psixiatriya"

Instance: example-psychiatry-center
InstanceOf: UZCoreOrganization
Title: "Example Psychiatry Centre"
Description: "Republican Centre for Mental Health and Psychiatry, which maintains the psychiatry registry"
Usage: #example

* name = "Respublika ruhiy salomatlik va psixiatriya markazi"

Instance: example-hepatologist-role
InstanceOf: UZCorePractitionerRole
Title: "Hepatologist Role Example"
Description: "Hepatologist role at the Samarkand Regional Infectious Diseases Clinical Hospital"
Usage: #example

* language = #uz
* active = true
* practitioner = Reference(example-hepatologist)
* organization = Reference(samarkand-infectious-hospital)
* code = $position-and-profession-cs#2212.41 
* specialty = $profession-specialization-cs#394807007

Instance: example-hepatologist
InstanceOf: UZCorePractitioner
Title: "Hepatologist Example"
Description: "Example practitioner providing care for patients with viral hepatitis"
Usage: #example

* language = #uz
* active = true
* name[0].use = #official
* name[0].family = "Karimov"
* name[0].given[0] = "Akmal"