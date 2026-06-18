//my naming systems
Instance: newborn-id-system
InstanceOf: NamingSystem
Title: "Newborn ID System"
Description: "NamingSystem for newborn identifiers in Uzbekistan"
Usage: #definition
* name = "NewbornIdSystem"
* status = #active
* kind = #identifier
* date = "2026-04-07"
* publisher = "Uzinfocom"
* description = "Identifier system for newborn IDs in Uzbekistan"
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://dhp.uz/fhir/sid/newborn-id"
* uniqueId[0].preferred = true



Instance: passport-international-ns
InstanceOf: NamingSystem
Usage: #definition
Title: "International Passport Identifier System"
Description: "Identifier system for international passport numbers used in RelatedPerson and Patient resources."
* name = "PassportInternationalIdentifierSystem"
* status = #active
* kind = #identifier
* jurisdiction = urn:iso:std:iso:3166#UZ "Uzbekistan"
* date = "2026-04-08"
* publisher = "Uzinfocom"
* responsible = "Uzinfocom"
* description = "URI for international passport identifiers."
* uniqueId[0].type = #uri
* uniqueId[0].value = "https://dpm.uz/identifier/passport-international"
* uniqueId[0].preferred = true