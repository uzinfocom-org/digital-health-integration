ValueSet: CancerDegreeDifferentiationVS
Id: cancer-degree-differentiation-vs
Title: "Cancer Degree Differentiation ValueSet"
Description: "Local value set for cancer degree of differentiation used in the healthcare information system, with Russian and Uzbek designations."
* insert IntegrationsValueSet(cancer-degree-differentiation-vs)
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(CancerDegreeDifferentiationCS)

* $sct#1155701009 "G1 (Well differentiated)"
* $sct#1155703007 "G2 (Moderately differentiated)"
* $sct#1155704001 "G3 (Poorly differentiated)"
* $sct#1155702002 "G4 (Undifferentiated)"
* $sct#1155708003 "Low grade"
* $sct#1155707008 "High grade"
* $sct#1155705000 "GX (Grade cannot be assessed)"

* $loinc#LP14634-7 "T-cell"
* $loinc#LP36861-0 "B-cell"
* $loinc#LA4748-5 "Null cell"
* $loinc#LA4573-7 "NK cell"