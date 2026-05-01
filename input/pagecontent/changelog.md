### Changelog

---

#### 0.1.0 (in development)

#### Form 111 — Individual Pregnancy Card (Индивидуальная карта беременной и родильницы)

- Added `Form111PregnancyComposition` profile with 7 sections: labResults, anamnesis, obstetricsHistory, menstrualHistory, initialExamination, visitRecord (0..*), diagnosis
- Added full Bundle example (`example-form-111-pregnancy-card`) with ~91 inline instances covering all CSV fields: blood group, Rh (mother + husband via RelatedPerson), RW I/II, HIV, HBsAg I/II, gonorrhea, toxoplasmosis, CBC, urinalysis, CMV, chlamydia, blood chemistry, demographics, husband data, obstetric history, anamnesis, menstrual history, initial physical exam (pelvis, cervix, uterus, vaginal findings), prenatal visit record, and diagnosis
- Added `#form-111` code to `DocumentCategoryCS`
- Added `Form 111 Mapping` page to Documents menu
- Added field mapping documentation page

#### Form 044 — Medical Certificate for Foreign Travel (Медицинская справка для выезда за рубеж)

- Added `Form044Composition` profile with sections covering patient demographics, infectious disease history, vaccination records, and physician signature
- Added full Bundle example (`example-form-044-foreign-travel`)
- Added `#form-044` code to `DocumentCategoryCS`
- Added `Form 044 Mapping` page to Documents menu
- Added field mapping documentation page
