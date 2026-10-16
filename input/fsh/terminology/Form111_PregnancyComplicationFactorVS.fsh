ValueSet: Form111_PregnancyComplicationFactorVS
Id: form111-pregnancy-complication-factor-vs
Title: "Form111 Pregnancy Complication Factor ValueSet"
Description: "Local value set for pregnancy complication factors used by the Form 111 information system, with Uzbek and Russian designations."

* insert IntegrationsValueSet(form111-pregnancy-complication-factor-vs)
* ^experimental = true
* ^language = #uz

* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form111_PregnancyComplicationFactorSnomedCS)

* $sct#871005 "Contracted pelvis"
* $sct#271737000 "Anemia"
* $sct#34842007 "Antepartum hemorrhage"
* $sct#40733004 "Infectious disease"
* $sct#80002007 "Malpresentation of fetus"
* $sct#16356006 "Multiple pregnancy"
* $sct#59566000 "Oligohydramnios"
* $sct#237292005 "Placental insufficiency"
* $sct#86203003 "Polyhydramnios"
* $sct#90968009 "Post-term pregnancy"
* $sct#237300009 "Pregnancy with isoimmunization"
* $sct#54048003 "Threatened miscarriage"
* $sct#90325002 "Vomiting of pregnancy"

* include codes from system form111-pregnancy-complication-factor-cs