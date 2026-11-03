ValueSet: Form111_PregnancyComplcationFactorVS
Id: form111-pregnancy-complication-factor-vs
Title: "Pregnancy Complication Factor ValueSet"
Description: "Form 111 Pregnancy Complication Factor ValueSet"
* insert IntegrationsValueSet(form111-pregnancy-complication-factor-vs)
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form111SnomedSupplementCS)

* include codes from system form111-pregnancy-complication-factor-cs

// SNOMED CT equivalents of the DMED tokens; gestosis and the remaining local codes have no exact standard match.
* $sct#271737000 "Anemia"
* $sct#398254007 "Pre-eclampsia"
* $sct#871005 "Contracted pelvis"
* $sct#34842007 "Antepartum hemorrhage"
* $sct#80002007 "Malpresentation of fetus"
* $sct#16356006 "Multiple pregnancy"
* $sct#59566000 "Oligohydramnios"
* $sct#237292005 "Placental insufficiency"
* $sct#86203003 "Polyhydramnios"
* $sct#90968009 "Post-term pregnancy"
* $sct#237300009 "Pregnancy with isoimmunization"
* $sct#54048003 "Threatened miscarriage"
* $sct#90325002 "Vomiting of pregnancy"

* ^experimental = true
* ^status = #draft
