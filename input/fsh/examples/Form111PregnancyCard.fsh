// ============================================================
// Form 111 - Individual Pregnancy Card (Индивидуальная карта беременной и родильницы)
// Example Bundle demonstrating all sections of the Form111PregnancyComposition profile
// Note: language=#en used for consistency with other examples in this IG.
//       Patient names and titles are in Russian/Uzbek as per clinical practice.
// ============================================================

Instance: example-form-111-pregnancy-card
InstanceOf: Bundle
Usage: #example
Title: "Form 111 - Individual Pregnancy Card"
Description: "Example of an individual pregnancy card (Form 111) for a pregnant woman registered for antenatal care"
* language = #en
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:11100001-0000-0000-0000-000000000000"
* type = #document
* timestamp = "2025-01-15T09:00:00+05:00"
// Composition
* entry[0].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000001"
* entry[=].resource = form111-composition
// Patient
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000002"
* entry[=].resource = form111-patient
// RelatedPerson (husband)
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000003"
* entry[=].resource = form111-husband
// Encounter
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000004"
* entry[=].resource = form111-encounter
// Practitioner
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000005"
* entry[=].resource = form111-practitioner
// Lab: Blood type (ABO)
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000006"
* entry[=].resource = form111-obs-blood-type
// Lab: Rh mother
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000007"
* entry[=].resource = form111-obs-rh-mother
// Lab: Rh husband — subject=patient, focus=husband (RelatedPerson)
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000008"
* entry[=].resource = form111-obs-rh-husband
// Lab: RW I (Wassermann)
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000009"
* entry[=].resource = form111-obs-rw1
// Lab: HIV
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-00000000000a"
* entry[=].resource = form111-obs-hiv
// Lab: HBsAg
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-00000000000b"
* entry[=].resource = form111-obs-hbsag
// Obstetric history: pregnancy count
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-00000000000c"
* entry[=].resource = form111-obs-pregnancies
// Obstetric history: parity
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-00000000000d"
* entry[=].resource = form111-obs-parity
// Menstrual history: LMP
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-00000000000e"
* entry[=].resource = form111-obs-lmp
// Menstrual history: first fetal movement
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-00000000000f"
* entry[=].resource = form111-obs-fetal-movement
// Initial exam: height
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000010"
* entry[=].resource = form111-obs-height
// Initial exam: weight
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000011"
* entry[=].resource = form111-obs-weight-init
// Initial exam: blood pressure
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000012"
* entry[=].resource = form111-obs-bp-init
// Initial exam: uterine fundal height
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000013"
* entry[=].resource = form111-obs-fundal-height-init
// Initial exam: fetal heart rate
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000014"
* entry[=].resource = form111-obs-fhr-init
// Visit record: weight
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000015"
* entry[=].resource = form111-visit1-weight
// Visit record: blood pressure
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000016"
* entry[=].resource = form111-visit1-bp
// Visit record: hemoglobin
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000017"
* entry[=].resource = form111-visit1-hb
// Diagnosis: gestational age
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000018"
* entry[=].resource = form111-obs-gest-age
// Diagnosis: EDD
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000019"
* entry[=].resource = form111-obs-edd
// Diagnosis: Condition
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-00000000001a"
* entry[=].resource = form111-condition-diag
// Next appointment
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-00000000001b"
* entry[=].resource = form111-appointment
// Provenance
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-00000000001c"
* entry[=].resource = form111-provenance
// Lab: RW II
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-00000000001d"
* entry[=].resource = form111-obs-rw2
// Lab: Gonorrhea smear
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-00000000001e"
* entry[=].resource = form111-obs-gonorrhea
// Lab: Toxoplasmosis IgG
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-00000000001f"
* entry[=].resource = form111-obs-toxo
// Lab: Rubella IgG
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000020"
* entry[=].resource = form111-obs-rubella
// Lab: HBsAg II (second test at 30 weeks)
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000021"
* entry[=].resource = form111-obs-hbsag2
// Anamnesis: past illness (Condition)
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000022"
* entry[=].resource = form111-condition-past-illness
// Anamnesis: prior surgery (Procedure)
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000023"
* entry[=].resource = form111-procedure-appendectomy
// Obstetric history: prior birth outcome
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000024"
* entry[=].resource = form111-obs-birth-outcome
// Menstrual history: menarche age
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000025"
* entry[=].resource = form111-obs-menarche
// Initial exam: waist circumference
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000027"
* entry[=].resource = form111-obs-waist-init
// Initial exam: fetal presentation
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000028"
* entry[=].resource = form111-obs-fetal-presentation-init
// Visit 1: pulse
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000029"
* entry[=].resource = form111-visit1-pulse
// Visit 1: waist circumference
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-00000000002a"
* entry[=].resource = form111-visit1-waist
// Visit 1: uterine fundal height
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-00000000002b"
* entry[=].resource = form111-visit1-fundal
// Visit 1: urine protein
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-00000000002c"
* entry[=].resource = form111-visit1-urine-protein
// Visit 1: fetal movement
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-00000000002d"
* entry[=].resource = form111-visit1-fetal-movement
// Visit 1: staphylococcal anatoxin vaccination
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-00000000002e"
* entry[=].resource = form111-immunization-staph
// Social: education
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-00000000002f"
* entry[=].resource = form111-obs-education
// Social: occupation
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000030"
* entry[=].resource = form111-obs-employment
// Obstetric: complications in current pregnancy
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000031"
* entry[=].resource = form111-obs-complications
// Initial exam: breast examination
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000032"
* entry[=].resource = form111-obs-breast-exam
// Vaginal exam: external genitalia
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000033"
* entry[=].resource = form111-obs-ext-genitalia
// Vaginal exam: vagina
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000034"
* entry[=].resource = form111-obs-vagina
// Vaginal exam: uterus body
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000035"
* entry[=].resource = form111-obs-uterus
// Lab: Cytomegalovirus IgG
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000036"
* entry[=].resource = form111-obs-cmv
// Lab: Chlamydia trachomatis IgG
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000037"
* entry[=].resource = form111-obs-chlamydia
// Lab: CBC panel (umumiy qon tahlili)
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000038"
* entry[=].resource = form111-obs-cbc
// Lab: Urinalysis (umumiy siydik tahlili)
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000039"
* entry[=].resource = form111-obs-urinalysis
// Lab: Blood chemistry (qon biokimyasi)
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-00000000003a"
* entry[=].resource = form111-obs-blood-chem
// Anamnesis: allergic history
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-00000000003b"
* entry[=].resource = form111-obs-allergy
// Anamnesis: gynecological disease
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-00000000003c"
* entry[=].resource = form111-condition-gynecological
// Anamnesis: husband health status
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-00000000003d"
* entry[=].resource = form111-obs-husband-health
// Obstetric: extragenital disease
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-00000000003e"
* entry[=].resource = form111-condition-extragenital
// Obstetric: previous pregnancy complications
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-00000000003f"
* entry[=].resource = form111-obs-prev-complications
// Menstrual: cycle length (tsikl davomiyligi)
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000040"
* entry[=].resource = form111-obs-cycle-length
// Menstrual: menstruation duration (menstruatsiya muddati)
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000041"
* entry[=].resource = form111-obs-menstruation-duration
// Initial exam: pelvic dimensions (tos o'lchamlari)
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000042"
* entry[=].resource = form111-obs-pelvis-dims
// Initial exam: cervix examination (bo'yincha)
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000043"
* entry[=].resource = form111-obs-cervix
// Visit 1: edema (shishlar)
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000044"
* entry[=].resource = form111-visit1-edema
// Visit 1: complaints (shikoyatlar)
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000045"
* entry[=].resource = form111-visit1-complaints
// Visit 1: per-visit diagnosis
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000046"
* entry[=].resource = form111-condition-visit1-diag
// Initial exam: body build (телосложение)
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000047"
* entry[=].resource = form111-obs-body-build
// Initial exam: cardiovascular system (сердечно-сосудистая система)
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000048"
* entry[=].resource = form111-obs-cardiovascular
// Initial exam: ovaries and fallopian tubes (яичники, маточные трубы)
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-000000000049"
* entry[=].resource = form111-obs-ovaries-tubes
// Obstetric history: features of previous pregnancies (особенности предыдущих беременностей)
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-00000000004a"
* entry[=].resource = form111-obs-prev-pregnancy-features
// Visit 1: therapist examination (осмотр терапевта)
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-00000000004b"
* entry[=].resource = form111-obs-therapist-exam
// Visit 1: dentist examination (осмотр стоматолога)
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-00000000004c"
* entry[=].resource = form111-obs-dentist-exam
// Hospitalization encounter (госпитализация — Encounter.class=IMP, not in section per profile constraint)
* entry[+].fullUrl = "urn:uuid:11100001-0000-0000-0000-00000000004d"
* entry[=].resource = form111-encounter-hospitalization

// ============================================================
// COMPOSITION
// ============================================================

Instance: form111-composition
InstanceOf: Form111PregnancyComposition
Usage: #inline
* language = #en
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:uuid:11100001-0000-0000-0000-000000000001"
* identifier[+].system = "https://dhp.uz/fhir/core/sid/doc/uz/form-number"
* identifier[=].value = "111"
* status = #final
* type = $loinc#57055-6 "Antepartum summary note"
* category = $document-category-cs#form-111 "Individual card of pregnant and parturient woman"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* date = "2025-01-15T09:00:00+05:00"
* author = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* title = "Индивидуальная карта беременной и родильницы"
// Lab results section
* section[labResults].title = "Лабораторные исследования"
* section[=].code = $loinc#26436-6 "Laboratory studies (set)"
* section[=].entry[0] = Reference(urn:uuid:11100001-0000-0000-0000-000000000006)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-000000000007)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-000000000008)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-000000000009)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-00000000000a)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-00000000000b)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-00000000001d)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-00000000001e)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-00000000001f)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-000000000020)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-000000000021)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-000000000036)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-000000000037)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-000000000038)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-000000000039)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-00000000003a)
// Anamnesis section
* section[anamnesis].title = "Анамнез"
* section[=].code = $loinc#11329-0 "History general Narrative - Reported"
* section[=].entry[0] = Reference(urn:uuid:11100001-0000-0000-0000-000000000022)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-000000000023)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-00000000002f)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-000000000030)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-00000000003b)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-00000000003c)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-00000000003d)
// Obstetric history section
* section[obstetricsHistory].title = "Акушерский анамнез"
* section[=].code = $loinc#10162-6 "History of pregnancies Narrative"
* section[=].entry[0] = Reference(urn:uuid:11100001-0000-0000-0000-00000000000c)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-00000000000d)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-000000000024)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-000000000031)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-00000000003e)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-00000000003f)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-00000000004a)
// Menstrual history section
* section[menstrualHistory].title = "Менструальный цикл и репродуктивный анамнез"
* section[=].code = $loinc#49033-4 "Menstrual History - Reported"
* section[=].entry[0] = Reference(urn:uuid:11100001-0000-0000-0000-00000000000e)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-00000000000f)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-000000000025)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-000000000040)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-000000000041)
// Initial examination section
* section[initialExamination].title = "Первичный осмотр беременной"
* section[=].code = $loinc#57059-8 "Pregnancy visit summary note Narrative"
* section[=].entry[0] = Reference(urn:uuid:11100001-0000-0000-0000-000000000010)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-000000000011)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-000000000012)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-000000000013)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-000000000014)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-000000000027)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-000000000028)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-000000000032)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-000000000033)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-000000000034)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-000000000035)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-000000000042)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-000000000043)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-000000000047)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-000000000048)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-000000000049)
// Visit record section (one prenatal visit at 28 weeks)
* section[visitRecord].title = "Visit 2025-04-10 (28 weeks)"
* section[=].code = $loinc#57073-9 "Prenatal records"
* section[=].entry[0] = Reference(urn:uuid:11100001-0000-0000-0000-000000000015)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-000000000016)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-000000000017)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-00000000001b)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-000000000029)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-00000000002a)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-00000000002b)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-00000000002c)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-00000000002d)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-00000000002e)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-000000000044)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-000000000045)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-000000000046)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-00000000004b)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-00000000004c)
// Diagnosis section
* section[diagnosis].title = "Диагноз"
* section[=].code = $loinc#29308-4 "Diagnosis"
* section[=].entry[0] = Reference(urn:uuid:11100001-0000-0000-0000-00000000001a)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-000000000018)
* section[=].entry[+] = Reference(urn:uuid:11100001-0000-0000-0000-000000000019)

// ============================================================
// PATIENT
// ============================================================

Instance: form111-patient
InstanceOf: UZCorePatient
Usage: #inline
* language = #en
* identifier[nationalId].value = "32405159800456"
* identifier[healthCardId].value = "MED-2025-004512"
* name.use = #official
* name.text = "Karimova Nilufar Bakhtiyor qizi"
* name.family = "Karimova"
* name.given[0] = "Nilufar"
* name.given[+] = "Bakhtiyor qizi"
* birthDate = "1998-05-15"
* maritalStatus = $v3-MaritalStatus#M "Married"
* address.use = #home
* address.text = "Toshkent sh., Yunusobod t., Amir Temur ko'ch., 45-uy, 12-xonadon"
* telecom.system = #phone
* telecom.value = "+998901234567"
* telecom.use = #mobile

// ============================================================
// RELATED PERSON (Husband)
// ============================================================

Instance: form111-husband
InstanceOf: RelatedPerson
Usage: #inline
* language = #en
* patient = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* relationship = $v3-RoleCode#SPS "spouse"
* name.use = #official
* name.text = "Karimov Jasur Abdullayevich"
* name.family = "Karimov"
* name.given[0] = "Jasur"
* name.given[+] = "Abdullayevich"
* telecom.system = #phone
* telecom.value = "+998907654321"
* telecom.use = #work
* birthDate = "1994-03-20"

// ============================================================
// ENCOUNTER (Antenatal registration visit)
// ============================================================

Instance: form111-encounter
InstanceOf: UZCoreEncounter
Usage: #inline
* language = #en
* status = #completed
* class = $v3-ActCode#AMB "ambulatory"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* participant[0].type = $v3-ParticipationType#PPRF "primary performer"
* participant[=].actor = Reference(urn:uuid:11100001-0000-0000-0000-000000000005) "Toshmatova D.K."
* actualPeriod.start = "2025-01-15T09:00:00+05:00"
* actualPeriod.end = "2025-01-15T10:00:00+05:00"

// ============================================================
// PRACTITIONER (Gynecologist)
// ============================================================

Instance: form111-practitioner
InstanceOf: UZCorePractitioner
Usage: #inline
* language = #en
* identifier[nationalId].value = "12345678901299"
* name.use = #official
* name.text = "Toshmatova D.K."
* name.family = "Toshmatova"
* name.given[0] = "Dilnoza"
* name.given[+] = "Karimovna"

// ============================================================
// LAB RESULTS
// ============================================================

Instance: form111-obs-blood-type
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#883-9 "ABO group [Type] in Blood"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-01-15T09:30:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueCodeableConcept.text = "Blood group A (II)"

Instance: form111-obs-rh-mother
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#10331-7 "Rh [Type] in Blood"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-01-15T09:30:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueCodeableConcept.text = "RhD positive"

// Husband's Rh: subject = patient (the care record owner); focus = husband (RelatedPerson, actual blood donor)
// This follows FHIR R5 Observation.focus pattern since Observation.subject cannot reference RelatedPerson.
Instance: form111-obs-rh-husband
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#10331-7 "Rh [Type] in Blood"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* focus[0] = Reference(urn:uuid:11100001-0000-0000-0000-000000000003)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-01-15T09:30:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueCodeableConcept.text = "RhD positive"

Instance: form111-obs-rw1
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#laboratory "Laboratory"
// RW I (Wassermann reaction I) — VDRL
* code = $loinc#5292-8 "Reagin Ab [Presence] in Serum by VDRL"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-01-15T09:30:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueCodeableConcept = $sct#260385009 "Negative"

Instance: form111-obs-hiv
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#laboratory "Laboratory"
// HIV 4th generation (Ag/Ab combo) LOINC 56888-1
* code = $loinc#56888-1 "HIV 1+2 Ab+HIV1 p24 Ag [Presence] in Serum or Plasma by Immunoassay"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-01-15T09:30:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueCodeableConcept = $sct#260385009 "Negative"

Instance: form111-obs-hbsag
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#laboratory "Laboratory"
// HBsAg I — Hepatitis B surface antigen
* code = $loinc#109335-0 "Hepatitis B virus surface Ag [Measurement] in Serum"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-01-15T09:30:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueCodeableConcept = $sct#260385009 "Negative"

// ============================================================
// OBSTETRIC HISTORY
// ============================================================

Instance: form111-obs-pregnancies
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#social-history "Social History"
* code = $loinc#11996-6 "Pregnancies"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-01-15T09:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
// This is the 2nd pregnancy
* valueInteger = 2

Instance: form111-obs-parity
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#social-history "Social History"
* code = $loinc#11977-6 "Parity"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-01-15T09:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
// 1 prior birth
* valueInteger = 1

// ============================================================
// MENSTRUAL HISTORY
// ============================================================

Instance: form111-obs-lmp
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#social-history "Social History"
* code = $loinc#8665-2 "Last menstrual period start date"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-01-15T09:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueDateTime = "2024-11-18T00:00:00+05:00"

Instance: form111-obs-fetal-movement
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#exam "Exam"
* code = $loinc#57088-7 "Fetal movement - Reported"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-04-05T00:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueDateTime = "2025-04-05T00:00:00+05:00"

// ============================================================
// INITIAL OBSTETRIC EXAMINATION
// ============================================================

Instance: form111-obs-height
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#8302-2 "Body height"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-01-15T09:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueQuantity = 165 'cm' "cm"

Instance: form111-obs-weight-init
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#29463-7 "Body weight"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-01-15T09:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueQuantity = 58 'kg' "kg"

Instance: form111-obs-bp-init
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-01-15T09:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* bodySite = $sct#368208006 "Left upper arm structure (body structure)"
* component[0].code = $loinc#8480-6 "Systolic blood pressure"
* component[=].valueQuantity = 110 'mm[Hg]' "mmHg"
* component[+].code = $loinc#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity = 70 'mm[Hg]' "mmHg"

Instance: form111-obs-fundal-height-init
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#exam "Exam"
* code = $loinc#11881-0 "Uterus Fundal height Tape measure"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-01-15T09:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueQuantity = 8 'cm' "cm"

Instance: form111-obs-fhr-init
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#exam "Exam"
* code = $loinc#55283-6 "Fetal Heart rate"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-01-15T09:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"

// ============================================================
// VISIT RECORD — Second visit 2025-04-10 (28 weeks gestation)
// ============================================================

Instance: form111-visit1-weight
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#29463-7 "Body weight"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* issued = "2025-04-10T10:00:00+05:00"
* effectiveDateTime = "2025-04-10T10:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueQuantity = 67 'kg' "kg"

Instance: form111-visit1-bp
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* issued = "2025-04-10T10:00:00+05:00"
* effectiveDateTime = "2025-04-10T10:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* bodySite = $sct#368208006 "Left upper arm structure (body structure)"
* component[0].code = $loinc#8480-6 "Systolic blood pressure"
* component[=].valueQuantity = 115 'mm[Hg]' "mmHg"
* component[+].code = $loinc#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity = 75 'mm[Hg]' "mmHg"

Instance: form111-visit1-hb
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#718-7 "Hemoglobin [Mass/volume] in Blood"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* issued = "2025-04-10T10:00:00+05:00"
* effectiveDateTime = "2025-04-10T10:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueQuantity = 11.8 'g/dL' "g/dL"
* interpretation = $observation-interpretation#N "Normal"

// ============================================================
// DIAGNOSIS
// ============================================================

Instance: form111-obs-gest-age
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#exam "Exam"
* code = $loinc#11884-4 "Gestational age Estimated"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-04-10T10:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueQuantity = 28 'wk' "weeks"

Instance: form111-obs-edd
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#exam "Exam"
* code = $loinc#11778-8 "Delivery date Estimated"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-01-15T09:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueDateTime = "2025-08-25T00:00:00+05:00"

Instance: form111-condition-diag
InstanceOf: Condition
Usage: #inline
* language = #en
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
// ICD-10 Z34.9 Supervision of normal pregnancy, unspecified (WHO ICD-10; Z34.2 is ICD-10-CM only)
* code = $icd-10#Z34.9 "Supervision of normal pregnancy, unspecified"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* onsetDateTime = "2025-01-15"
* stage.summary = $sct#412726003 "Length of gestation at birth (observable entity)"

// ============================================================
// NEXT APPOINTMENT
// ============================================================

Instance: form111-appointment
InstanceOf: Appointment
Usage: #inline
* language = #en
* status = #booked
* serviceType.concept.text = "Obstetrics and Gynecology"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* start = "2025-05-08T09:00:00+05:00"
* end = "2025-05-08T09:30:00+05:00"
* participant[0].actor = Reference(urn:uuid:11100001-0000-0000-0000-000000000005) "Toshmatova D.K."
* participant[=].status = #accepted

// ============================================================
// PROVENANCE (Signature)
// ============================================================

Instance: form111-provenance
InstanceOf: Provenance
Usage: #inline
* language = #en
* target = Reference(Bundle/example-form-111-pregnancy-card)
* recorded = "2025-04-10T10:30:00+05:00"
* agent.type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#attester "Attester"
* agent.who = Reference(urn:uuid:11100001-0000-0000-0000-000000000005) "Toshmatova D.K."
* signature.type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.1 "Author's Signature"
* signature.when = "2025-04-10T10:30:00+05:00"
* signature.who = Reference(urn:uuid:11100001-0000-0000-0000-000000000005) "Toshmatova D.K."
* signature.sigFormat = #application/pdf
* signature.data = "JVBERi0xLjQKMSAwIG9iago8PAovVHlwZSAvQ2F0YWxvZwovUGFnZXMgMiAwIFIKPj4KZW5kb2JqCg=="

// ============================================================
// ADDITIONAL LAB RESULTS
// ============================================================

Instance: form111-obs-rw2
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#20507-0 "Reagin Ab [Presence] in Serum by RPR"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-04-10T10:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueCodeableConcept = $sct#260385009 "Negative"

Instance: form111-obs-gonorrhea
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#24111-7 "Neisseria gonorrhoeae DNA [Presence] in Specimen by NAA with probe detection"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-01-15T09:30:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueCodeableConcept = $sct#260385009 "Negative"

Instance: form111-obs-toxo
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#22580-5 "Toxoplasma gondii IgG Ab [Presence] in Serum"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-01-15T09:30:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueCodeableConcept = $sct#260385009 "Negative"

Instance: form111-obs-rubella
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#5334-8 "Rubella virus IgG Ab [Units/volume] in Serum or Plasma by Immunoassay"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-01-15T09:30:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueCodeableConcept = $sct#10828004 "Positive"

Instance: form111-obs-hbsag2
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#109335-0 "Hepatitis B virus surface Ag [Measurement] in Serum"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-04-10T10:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueCodeableConcept = $sct#260385009 "Negative"

// ============================================================
// ANAMNESIS — CONDITION AND PROCEDURE
// ============================================================

Instance: form111-condition-past-illness
InstanceOf: Condition
Usage: #inline
* language = #en
* clinicalStatus = $condition-clinical#resolved "Resolved"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* code = $icd-10#J06.9 "Acute upper respiratory infection, unspecified"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* onsetString = "childhood"
* abatementString = "resolved"

Instance: form111-procedure-appendectomy
InstanceOf: Procedure
Usage: #inline
* language = #en
* status = #completed
* code = $sct#80146002 "Appendectomy"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* occurrenceString = "2015"

// ============================================================
// OBSTETRIC HISTORY — PRIOR BIRTH OUTCOME
// ============================================================

Instance: form111-obs-birth-outcome
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#social-history "Social History"
* code = $loinc#63893-2 "Outcome of pregnancy"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-01-15T09:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueCodeableConcept = $sct#281050002 "Livebirth"

// ============================================================
// MENSTRUAL HISTORY — MENARCHE AGE AND CYCLE DURATION
// ============================================================

Instance: form111-obs-menarche
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#social-history "Social History"
* code = $loinc#42798-9 "Age at menarche"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-01-15T09:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueInteger = 13

// ============================================================
// INITIAL EXAMINATION — WAIST CIRCUMFERENCE AND FETAL PRESENTATION
// ============================================================

Instance: form111-obs-waist-init
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#exam "Exam"
* code = $loinc#8280-0 "Waist Circumference at umbilicus by Tape measure"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-01-15T09:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueQuantity = 75 'cm' "cm"

Instance: form111-obs-fetal-presentation-init
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#exam "Exam"
* code = $loinc#11877-8 "Fetal presentation US"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-01-15T09:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* dataAbsentReason = $data-absent-reason#not-performed "Not Performed"

// ============================================================
// VISIT 1 — ADDITIONAL OBSERVATIONS
// ============================================================

Instance: form111-visit1-pulse
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#8867-4 "Heart rate"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* issued = "2025-04-10T10:00:00+05:00"
* effectiveDateTime = "2025-04-10T10:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueQuantity = 78 '/min' "/min"

Instance: form111-visit1-waist
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#exam "Exam"
* code = $loinc#8280-0 "Waist Circumference at umbilicus by Tape measure"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* issued = "2025-04-10T10:00:00+05:00"
* effectiveDateTime = "2025-04-10T10:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueQuantity = 82 'cm' "cm"

Instance: form111-visit1-fundal
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#exam "Exam"
* code = $loinc#11881-0 "Uterus Fundal height Tape measure"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* issued = "2025-04-10T10:00:00+05:00"
* effectiveDateTime = "2025-04-10T10:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueQuantity = 28 'cm' "cm"

Instance: form111-visit1-urine-protein
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#5804-0 "Protein [Mass/volume] in Urine by Test strip"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* issued = "2025-04-10T10:00:00+05:00"
* effectiveDateTime = "2025-04-10T10:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueCodeableConcept = $sct#260385009 "Negative"

Instance: form111-visit1-fetal-movement
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#exam "Exam"
* code = $loinc#57088-7 "Fetal movement - Reported"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* issued = "2025-04-10T10:00:00+05:00"
* effectiveDateTime = "2025-04-10T10:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueCodeableConcept.text = "Active fetal movements present"

// base Immunization per Vadim's guidance (UZCoreImmunization does not yet exist in uz.dhp.core)
Instance: form111-immunization-staph
InstanceOf: Immunization
Usage: #inline
* language = #en
* status = #completed
* vaccineCode.text = "Staphylococcal anatoxin"
* patient = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* occurrenceDateTime = "2025-04-10T10:00:00+05:00"
* performer[0].actor = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* doseQuantity = 0.5 'mL' "mL"

// ============================================================
// SOCIAL HISTORY (UZCoreSocioeconomicObservation)
// ============================================================

Instance: form111-obs-education
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#social-history "Social History"
* code = $loinc#82589-3 "Highest level of education"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-01-15T09:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueCodeableConcept.text = "Secondary vocational education"

Instance: form111-obs-employment
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#social-history "Social History"
* code = $loinc#11341-5 "History of occupation"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-01-15T09:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueCodeableConcept.text = "Teacher"

// ============================================================
// OBSTETRIC HISTORY — COMPLICATIONS IN CURRENT PREGNANCY
// CSV: Осложнения в период данной беременности → LOINC 65869-0
// ============================================================

Instance: form111-obs-complications
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#exam "Exam"
* code = $loinc#65869-0 "Pregnancy complication"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-01-15T09:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueCodeableConcept.text = "No significant complications reported"

// ============================================================
// INITIAL EXAMINATION — BREAST EXAM
// CSV: Состояние молочных желез → SNOMED 46662001; using LOINC 10193-1 (17762-1 not in LOINC 2.82 on tx.fhir.org)
// ============================================================

Instance: form111-obs-breast-exam
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#exam "Exam"
* code = $loinc#10193-1 "Physical findings of Breasts Narrative"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-01-15T09:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueString = "Without pathological changes"

// ============================================================
// VAGINAL EXAMINATION
// CSV: Влагалищное исследование → LOINC 11432-2, 32487-1, 30705-8
// ============================================================

Instance: form111-obs-ext-genitalia
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#exam "Exam"
* code = $loinc#11432-2 "Physical findings of Female genitalia"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-01-15T09:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueString = "Within normal limits"

Instance: form111-obs-vagina
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#exam "Exam"
* code = $loinc#32487-1 "Physical findings of Vagina"
* bodySite = $sct#181441005 "Entire vagina (body structure)"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-01-15T09:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueString = "Without inflammation, pink mucosa"

Instance: form111-obs-uterus
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#exam "Exam"
* code = $loinc#30705-8 "US Uterus and Fallopian tubes"
* bodySite = $sct#35039007 "Uterine structure (body structure)"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-01-15T09:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueString = "Uterus enlarged corresponding to 8 weeks gestation"

// ============================================================
// LAB: CYTOMEGALOVIRUS IgG (sitomegalovirus)
// CSV: ЦМВ IgG → LOINC 22244-8
// ============================================================

Instance: form111-obs-cmv
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#22244-8 "Cytomegalovirus IgG Ab [Presence] in Serum or Plasma"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-01-15T09:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueCodeableConcept.text = "Negative"

// ============================================================
// LAB: CHLAMYDIA IgG (xlamidiya)
// CSV: Хламидиоз IgG → LOINC 26715-3
// ============================================================

Instance: form111-obs-chlamydia
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#26715-3 "Chlamydia trachomatis IgG Ab [Units/volume] in Serum by Immunoassay"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-01-15T09:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueCodeableConcept.text = "Negative"

// ============================================================
// LAB: COMPLETE BLOOD COUNT (umumiy qon tahlili)
// CSV: ОАК → LOINC 58410-2
// ============================================================

Instance: form111-obs-cbc
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#58410-2 "CBC panel - Blood by Automated count"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-01-15T09:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueString = "WBC 6.2 x10^9/L, RBC 4.1 x10^12/L, Hb 120 g/L, HCT 0.38, PLT 245 x10^9/L"

// ============================================================
// LAB: URINALYSIS (umumiy siydik tahlili)
// CSV: ОАМ → LOINC 24357-6
// ============================================================

Instance: form111-obs-urinalysis
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#24357-6 "Urinalysis macro (dipstick) panel - Urine"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-01-15T09:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueString = "Yellow, clear, sp.gr. 1.015, protein negative, glucose negative, leukocyte esterase negative"

// ============================================================
// LAB: BLOOD CHEMISTRY (qon biokimyasi)
// CSV: Биохимия крови → LOINC 24323-8
// ============================================================

Instance: form111-obs-blood-chem
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#24323-8 "Comprehensive metabolic 2000 panel - Serum or Plasma"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-01-15T09:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueString = "Glucose 4.5 mmol/L, total protein 72 g/L, ALT 18 U/L, AST 20 U/L, creatinine 65 umol/L, total bilirubin 10 umol/L"

// ============================================================
// ANAMNESIS: ALLERGIC HISTORY (allergik anamnez)
// CSV: Аллергологический анамнез → LOINC 10155-0
// ============================================================

Instance: form111-obs-allergy
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#survey "Survey"
* code = $loinc#10155-0 "History of allergies, reported"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-01-15T09:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueString = "No known drug or food allergies"

// ============================================================
// ANAMNESIS: GYNECOLOGICAL DISEASE (ginekologik kasallik)
// CSV: Гинекологические заболевания → Condition (ICD-10 N70.1)
// ============================================================

Instance: form111-condition-gynecological
InstanceOf: Condition
Usage: #inline
* language = #en
* clinicalStatus = $condition-clinical#resolved "Resolved"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* code = $icd-10#N70.1 "Chronic salpingitis and oophoritis"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* onsetDateTime = "2020-06-01"
* abatementDateTime = "2021-03-01"
* note.text = "Treated conservatively; fully resolved prior to current pregnancy"

// ============================================================
// ANAMNESIS: HUSBAND HEALTH STATUS (er salomatligi)
// CSV: Состояние здоровья мужа → LOINC 10157-6, focus=RelatedPerson
// ============================================================

Instance: form111-obs-husband-health
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#survey "Survey"
* code = $loinc#10157-6 "History of family member diseases note"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* focus = Reference(urn:uuid:11100001-0000-0000-0000-000000000003)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-01-15T09:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueString = "Husband is healthy; no hereditary conditions or chronic diseases reported"

// ============================================================
// OBSTETRIC HISTORY: EXTRAGENITAL DISEASE (ekstragenityal kasallik)
// CSV: Экстрагенитальные заболевания → Condition (ICD-10 J45.0)
// ============================================================

Instance: form111-condition-extragenital
InstanceOf: Condition
Usage: #inline
* language = #en
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* code = $icd-10#J45.0 "Predominantly allergic asthma"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* onsetDateTime = "2019-01-01"
* note.text = "Mild intermittent; controlled with inhaler; not aggravated during pregnancy"

// ============================================================
// OBSTETRIC HISTORY: PREVIOUS PREGNANCY COMPLICATIONS
// CSV: Осложнения предыдущих беременностей → LOINC 65869-0 (prior period)
// ============================================================

Instance: form111-obs-prev-complications
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#survey "Survey"
* code = $loinc#65869-0 "Pregnancy complication"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectivePeriod.start = "2022-02-01"
* effectivePeriod.end = "2022-10-20"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueString = "1st pregnancy (2022): mild iron-deficiency anemia; treated with iron supplements; no other complications"

// ============================================================
// MENSTRUAL HISTORY: CYCLE LENGTH (tsikl davomiyligi)
// CSV: Длительность цикла (дней) → LOINC 64700-8
// ============================================================

Instance: form111-obs-cycle-length
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#survey "Survey"
* code = $loinc#64700-8 "On average, during the last year, how many day were there in a typical menstrual cycle, that is, from the beginning of bleeding of one menstrual period to the beginning of bleeding of the next period [PhenX]"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-01-15T09:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueQuantity.value = 28
* valueQuantity.unit = "d"
* valueQuantity.system = $ucum
* valueQuantity.code = #d

// ============================================================
// MENSTRUAL HISTORY: MENSTRUATION DURATION (menstruatsiya muddati)
// CSV: Продолжительность менструации (дней) → LOINC 3144-3
// ============================================================

Instance: form111-obs-menstruation-duration
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#survey "Survey"
* code = $loinc#3144-3 "Last menstrual period duration"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-01-15T09:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueQuantity.value = 5
* valueQuantity.unit = "d"
* valueQuantity.system = $ucum
* valueQuantity.code = #d

// ============================================================
// INITIAL EXAMINATION: PELVIC DIMENSIONS (tos o'lchamlari)
// CSV: Размеры таза → LOINC 10204-6 (narrative)
// ============================================================

Instance: form111-obs-pelvis-dims
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#exam "Exam"
* code = $loinc#10204-6 "Physical findings of Pelvis Narrative"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-01-15T09:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueString = "Distantia spinarum 25 cm, distantia cristarum 28 cm, distantia trochanterica 30 cm, conjugata externa 20 cm, conjugata diagonalis 12.5 cm"

// ============================================================
// INITIAL EXAMINATION: CERVIX EXAM (bo'yincha)
// CSV: Шейка матки → LOINC 32486-3 + bodySite=cervix
// ============================================================

Instance: form111-obs-cervix
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#exam "Exam"
* code = $loinc#32486-3 "Physical findings of Uterus"
* bodySite = $sct#71252005 "Cervix uteri structure (body structure)"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-01-15T09:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueString = "Cervix closed, firm, posterior position; no effacement; os admits fingertip"

// ============================================================
// VISIT 1: EDEMA (shishlar)
// CSV: Отёки → LOINC 44966-0
// ============================================================

Instance: form111-visit1-edema
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#exam "Exam"
* code = $loinc#44966-0 "Edema"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-04-10T09:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueCodeableConcept.text = "Absent"

// ============================================================
// VISIT 1: COMPLAINTS (shikoyatlar)
// CSV: Жалобы → LOINC 75322-8
// ============================================================

Instance: form111-visit1-complaints
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#survey "Survey"
* code = $loinc#75322-8 "Complaint"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-04-10T09:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueString = "No active complaints. Slight fatigue reported."

// ============================================================
// VISIT 1: PER-VISIT DIAGNOSIS (har vizitdagi tashxis)
// CSV: Диагноз на каждом визите → Condition (ICD-10)
// ============================================================

Instance: form111-condition-visit1-diag
InstanceOf: Condition
Usage: #inline
* language = #en
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* code = $icd-10#Z34.9 "Supervision of normal pregnancy, unspecified"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* onsetDateTime = "2025-04-10"

// ============================================================
// INITIAL EXAM: BODY BUILD (телосложение)
// CSV: Особенности телосложения → Observation.code LOINC 8352-7
// ============================================================

Instance: form111-obs-body-build
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#exam "Exam"
* code = $loinc#10210-3 "Physical findings of General status Narrative"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-01-15T09:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueString = "Normosthenic body build, proportional"

// ============================================================
// INITIAL EXAM: CARDIOVASCULAR SYSTEM (сердечно-сосудистая система)
// CSV: Сердечно-сосудистая система → Observation.code LOINC LP7473-4 (part code)
// Actual observation code: LOINC 10200-4 "Physical findings of Heart Narrative"
// ============================================================

Instance: form111-obs-cardiovascular
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#exam "Exam"
* code = $loinc#10200-4 "Physical findings of Heart Narrative"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-01-15T09:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueString = "Heart sounds clear, rhythmic. No murmurs. Peripheral pulses present bilaterally."

// ============================================================
// INITIAL EXAM: OVARIES AND FALLOPIAN TUBES (яичники, маточные трубы)
// CSV: Яичники, маточные трубы → Observation.code (not specified in CSV)
// Using LOINC 10161-8 + SNOMED body site for ovaries and tubes
// ============================================================

Instance: form111-obs-ovaries-tubes
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#exam "Exam"
* code = $loinc#10198-0 "Physical findings of Genitourinary tract Narrative"
* bodySite.coding[0] = $sct#15497006 "Ovarian structure (body structure)"
* bodySite.coding[+] = $sct#31435000 "Fallopian tube structure (body structure)"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-01-15T09:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueString = "Ovaries and fallopian tubes not palpable, no tenderness on examination."

// ============================================================
// OBSTETRIC HISTORY: FEATURES OF PREVIOUS PREGNANCIES (особенности предыдущих беременностей)
// CSV: Особенности предыдущих беременностей → UZCoreQuestionnaireResponse (complex)
// Simplified as Observation with free-text valueString
// ============================================================

Instance: form111-obs-prev-pregnancy-features
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#social-history "Social History"
* code = $loinc#10163-4 "History of pregnancies"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-01-15T09:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueString = "First pregnancy (2022): term vaginal delivery, live birth, birth weight 3200 g, height 51 cm. Postpartum period uneventful."

// ============================================================
// VISIT 1: THERAPIST EXAMINATION (осмотр терапевта)
// CSV: Осмотр терапевта → Observation.note or CarePlan.activity.detail.description
// ============================================================

Instance: form111-obs-therapist-exam
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#exam "Exam"
* code = $loinc#10191-5 "Physical findings of Abdomen Narrative"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-04-10T11:00:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueString = "Examined by internist. Lungs clear bilaterally. Heart sounds normal. Abdomen soft. No oedema. No contraindications to continued pregnancy."

// ============================================================
// VISIT 1: DENTIST EXAMINATION (осмотр стоматолога)
// CSV: Осмотр стоматолога → Observation.note or CarePlan.activity.detail.description
// ============================================================

Instance: form111-obs-dentist-exam
InstanceOf: UZCoreObservation
Usage: #inline
* language = #en
* status = #final
* category = $observation-category#exam "Exam"
* code = $loinc#10201-2 "Physical findings of Mouth and Throat and Teeth Narrative"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* encounter = Reference(urn:uuid:11100001-0000-0000-0000-000000000004)
* effectiveDateTime = "2025-04-10T11:30:00+05:00"
* performer = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* valueString = "Oral cavity examined. Teeth in satisfactory condition. One cavity filled during visit. Gums healthy. No active dental infection."

// ============================================================
// HOSPITALIZATION ENCOUNTER (госпитализирована)
// CSV: Госпитализирована → Encounter.class = IMP
// Not referenced from any Composition section (profile restricts visitRecord
// entries to UZCoreObservation | Condition | Appointment | Immunization).
// Present in Bundle as supporting resource.
// ============================================================

Instance: form111-encounter-hospitalization
InstanceOf: Encounter
Usage: #inline
* language = #en
* status = #completed
* class = $v3-ActCode#IMP "inpatient encounter"
* subject = Reference(urn:uuid:11100001-0000-0000-0000-000000000002)
* participant[0].type = $v3-ParticipationType#PPRF "primary performer"
* participant[=].actor = Reference(urn:uuid:11100001-0000-0000-0000-000000000005)
* actualPeriod.start = "2025-04-10T14:00:00+05:00"
* actualPeriod.end = "2025-04-17T10:00:00+05:00"
* serviceType.concept.text = "Inpatient obstetric observation"
