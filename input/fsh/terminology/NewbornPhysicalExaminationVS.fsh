ValueSet: NewbornPhysicalExaminationVS
Id: newborn-physical-examination-code-vs
Title: "Form097 Newborn Physical Examination ValueSet"
Description: "ValueSet for newborn physical examination, Form097 newborn development record."
* insert IntegrationsValueSet(newborn-physical-examination-code-vs)
* ^experimental = true

* include codes from system newborn-physical-examination-cs
* include $loinc#39107-8 "Color of Skin"
* include $loinc#44971-0 "Capillary refill [Time]"
