ValueSet: LOINCVS
Id: loinc-vs
Title: "LOINC's ValueSet"
Description: "Defines the consent state codes in Uzbek and Russian"

* ^url = "https://terminology.dhp.uz/ValueSet/loinc-vs"
* ^experimental = true

* compose.include[0].system = $loinc

* compose.include[0].concept[+].code = "9272-6"
* compose.include[0].concept[+].code = "9274-2"
* compose.include[0].concept[+].code = "8339-4"
* compose.include[0].concept[+].code = "8302-2"
* compose.include[0].concept[+].code = "76516-4"
* compose.include[0].concept[+].code = "8287-5"
* compose.include[0].concept[+].code = "80616-6"
