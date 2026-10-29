ValueSet: Form096PlacentaDeliveryMethodVS
Id: placenta-delivery-method-vs
Title: "Form 096 Placenta Delivery Method"
Description: "Procedure.code of the placental delivery Procedure for the Form 096 field on how the placenta separated and was delivered."
* insert IntegrationsValueSet(placenta-delivery-method-vs)
* ^status = #draft
* ^experimental = true

* $form096-placenta-delivery-method-cs#chr-0086-0001 "Tushdi"
* $form096-placenta-delivery-method-cs#chr-0086-0002 "O'z-o'zidan ajraldi"
* $sct#177204008 "Manual removal of placenta from delivered uterus"
* $form096-placenta-delivery-method-cs#chr-0086-0004 "Instrumental usulda ajratib olindi"

// Supplements providing Russian and Uzbek displays.
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form096SnomedSupplementCS)
