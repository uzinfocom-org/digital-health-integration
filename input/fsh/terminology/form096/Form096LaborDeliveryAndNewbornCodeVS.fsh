ValueSet: Form096LaborDeliveryAndNewbornCodeVS
Id: labor-delivery-and-newborn-code-vs
Title: "Form 096 Labor, Delivery and Newborn Codes"
Description: "Observation.code for the Form 096 labor and newborn fields: time of rupture of membranes, duration of labor and of each stage, live births and stillbirths in this delivery, and per newborn whether born alive, weight, length, head and chest circumference, general condition and the 1-minute Apgar score; also placenta and membranes completeness, cord length and blood loss. Child born alive or dead uses the Form 111 code chr-0035-00013 with values from form111-newborn-birth-condition-vs."
* insert IntegrationsValueSet(labor-delivery-and-newborn-code-vs)
* ^status = #draft
* ^experimental = true

* $sct#289251005 "Time rupture of membranes detected"
* $sct#271562002 "Total duration of labor"
* $sct#169821004 "Duration of first stage of labor"
* $sct#169822006 "Duration of second stage of labor"
* $sct#169823001 "Duration of third stage of labor"
* $loinc#73773-4 "Number of infants in this delivery delivered alive"
* $sct#252112002 "Number of stillbirths"
* $form111-general-obs-cs#chr-0035-00013 "Bola tirik / o'lik tug'ilgani"
* $loinc#8339-4 "Birth weight Measured"
* $loinc#89269-5 "Body height Measured --at birth"
* $loinc#9843-4 "Head Occipital-frontal circumference"
* $sct#248366000 "Chest circumference"
* $form111-assessment-obs-cs#chr-0005-00003 "Umumiy ahvoli"
* $loinc#9272-6 "1 minute Apgar Score"
* $sct#364343000 "Completeness of placenta"
* $sct#364351002 "Completeness of membranes"
* $sct#249194006 "Length of umbilical cord"
* $sct#364332008 "Blood loss in labor"

// Supplements providing Russian and Uzbek displays.
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form096SnomedSupplementCS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(Form096LoincSupplementCS)
