ValueSet: PrimitiveReflexTypeVS
Id: primitive-reflex-type-vs
Title: "Form097 Primitive Reflex Type ValueSet"
Description: "ValueSet for primitive reflex type, Form097 newborn development record."
* insert IntegrationsValueSet(primitive-reflex-type-vs)
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form097SnomedSupplementCS)
* ^experimental = true

* include codes from system primitive-reflex-type-cs
* include $sct#18601007 "Rooting reflex"
* include $sct#45596005 "Sucking reflex"
* include $sct#246577004 "Galant's reflex"
* include $sct#1495009 "Moro reflex"
* include $sct#11820004 "Stepping reflex"
