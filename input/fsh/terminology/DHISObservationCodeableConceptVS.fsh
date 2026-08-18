ValueSet: DHISObservationCodeableConceptVS
Id: dhis-observation-codeable-concept-vs
Title: "DHIS Observation Result ValueSet"
Description: "Value set of coded tuberculosis test results for use in Observation.valueCodeableConcept. Identified mycobacterial species and standard result qualifiers are expressed as SNOMED CT codes; smear/culture grades, processing states and resistance-band outcomes that have no 1:1 standard equivalent use local codes; HL7 observation interpretation codes complete the set."
* ^experimental = true
* insert IntegrationsValueSet(dhis-observation-codeable-concept-vs)

* include codes from system $observation-interpretation
* include codes from system dhis-observation-codeable-concept-cs




// * include dhis-observation-codeable-concept-cs#Tub003-0001
// * include dhis-observation-codeable-concept-cs#Tub003-0002
// * include dhis-observation-codeable-concept-cs#Tub003-0004
// * include dhis-observation-codeable-concept-cs#Tub003-0005
// * include dhis-observation-codeable-concept-cs#Tub003-0006
// * include dhis-observation-codeable-concept-cs#Tub003-0007
// * include dhis-observation-codeable-concept-cs#Tub003-0008
// * include dhis-observation-codeable-concept-cs#Tub003-0009
// * include dhis-observation-codeable-concept-cs#Tub003-0010
// * include dhis-observation-codeable-concept-cs#Tub003-0011
// * include dhis-observation-codeable-concept-cs#Tub003-0012
// * include dhis-observation-codeable-concept-cs#Tub003-0013
// * include dhis-observation-codeable-concept-cs#Tub003-0014
// * include dhis-observation-codeable-concept-cs#Tub003-0015
// * include dhis-observation-codeable-concept-cs#Tub003-0016
// * include dhis-observation-codeable-concept-cs#Tub003-0017
// * include dhis-observation-codeable-concept-cs#Tub003-0018
// * include dhis-observation-codeable-concept-cs#Tub003-0019
// * include dhis-observation-codeable-concept-cs#Tub003-0026
// * include dhis-observation-codeable-concept-cs#Tub003-0027
// * include dhis-observation-codeable-concept-cs#Tub003-0038
// * include dhis-observation-codeable-concept-cs#Tub003-0039
// * include dhis-observation-codeable-concept-cs#Tub003-0040
// * include dhis-observation-codeable-concept-cs#Tub003-0041
// * include dhis-observation-codeable-concept-cs#Tub003-0042

// * include $observation-interpretation#S
// * include $observation-interpretation#R
// * include $observation-interpretation#IND
// * include $observation-interpretation#DET
// * include $observation-interpretation#ND
// * include $observation-interpretation#POS
// * include $observation-interpretation#NEG

// * include $sct#113858008
// * include $sct#110379001
// * include $sct#417831002
// * include $sct#83723009
// * include $sct#243377008
// * include $sct#113838007
// * include $sct#24871004
// * include $sct#83841006
// * include $sct#20141004
// * include $sct#113851002
// * include $sct#1507005
// * include $sct#73576007
// * include $sct#58869008
// * include $sct#113859000
// * include $sct#58663006
// * include $sct#243368001
// * include $sct#260405006
