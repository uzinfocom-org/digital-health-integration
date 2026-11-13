### Donor questionnaire field mapping

[Source spreadsheet](https://docs.google.com/spreadsheets/d/1SFVk1U3Z4mQ-SYf6bX28hfKYHE3UL2Rz2bMEyQDzPeI/edit).

The table preserves the source's reason, proposed deferral type and duration. These are reference mappings, not executable eligibility rules. Broad chronic disease and exposure questions do not establish lifelong exclusion. Refused testing consent and an unconfirmed declaration are administrative stop conditions. The source contains a dental timing discrepancy (2 weeks versus 90 days). The combined alcohol/medication declaration has no single matching reason code. No automatic extraction, duration calculation or deferral classification is implemented.

The question code is stored in `Questionnaire.item.code` from [DonorDeferralReasonCS](CodeSystem-donor-deferral-reason-cs.html). The proposed type codes refer to [DonorDeferralTypeCS](CodeSystem-donor-deferral-type-cs.html): `tmpdf-0001-00001` / `lldf-0001-00001`. They are source guidance and are not response answers.

| linkId | Question | Answer type | Reason code | Source deferral type | Source days |
|---|---|---|---|---|---|
| last-donation | When was your last blood donation? | date | #donrsn-0001-00006 | #tmpdf-0001-00001 | 180 |
| last-doctor-visit | When was your last visit to a doctor? For what reason? | text | — | — | — |
| feeling-well | Are you feeling well today? | boolean | #donrsn-0001-00026 | #tmpdf-0001-00001 | 0 |
| chronic-disease | Do you have any chronic diseases (e.g. epilepsy, diabetes, cancer, or other long-term conditions)? | boolean | #donrsn-0001-00009 | #lldf-0001-00001 | — |
| regular-treatment | Are you currently receiving regular medical treatment? | boolean | #donrsn-0001-00005 | — | 14 |
| medication-procedures | Do you regularly undergo any procedures or take any tablets/medicines? | boolean | #donrsn-0001-00005 | — | 14 |
| hepatitis-brucellosis | Have you ever had hepatitis or brucellosis? | boolean | #donrsn-0001-00018 | #lldf-0001-00001 | — |
| advised-not-to-donate | Has a doctor ever advised you not to donate blood? | boolean | — | — | — |
| dental-procedure | Have you undergone any dental procedures recently (during the last 2 weeks)? | boolean | #donrsn-0001-00010 | #tmpdf-0001-00001 | 90 |
| malaria-illness | Have you had malaria during the last 3 weeks? | boolean | #donrsn-0001-00011 | — | 90 |
| vaccination | Have you been vaccinated during the last month? | boolean | #donrsn-0001-00019 | #tmpdf-0001-00001 | 30 |
| recent-symptoms | During the last 3 months, have you experienced night sweats, unexplained weight loss, chills, diarrhoea, or enlarged lymph nodes? | boolean | #donrsn-0001-00020 | — | 90 |
| infected-contact | Have you been in contact with a person infected with hepatitis or HIV/AIDS? | boolean | #donrsn-0001-00021 | — | — |
| unprotected-sex | Have you had casual unprotected sexual contact during the last 6 months? | boolean | #donrsn-0001-00022 | #tmpdf-0001-00001 | 180 |
| hospitalization | Have you been hospitalized during the last 6 months? | boolean | — | — | — |
| surgery | Have you undergone surgery, a medical intervention, or an endoscopic procedure during the last 6 months? | boolean | #donrsn-0001-00012 | #tmpdf-0001-00001 | 180 |
| blood-transfusion | Have you ever received a blood transfusion or blood components? | boolean | #donrsn-0001-00003 | #tmpdf-0001-00001 | 180 |
| sti-treatment | Have you been treated for sexually transmitted infections such as syphilis, gonorrhoea, chlamydia, genital ulcers, or herpes? | boolean | #donrsn-0001-00023 | — | 180 |
| shared-needles | Have you used shared needles, syringes, or scarifiers? | boolean | #donrsn-0001-00024 | — | 180 |
| tattoo-piercing | Have you had a tattoo, piercing, or acupuncture during the last 6 months? | boolean | #donrsn-0001-00001 | #tmpdf-0001-00001 | 180 |
| incarceration | Have you been in places of detention or imprisonment? | boolean | #donrsn-0001-00025 | — | 180 |
| testing-consent | Do you consent to testing your blood for HIV/AIDS, hepatitis, and syphilis? | boolean | #donrsn-0001-00027 | — | 0 |
| additional-health | What else can you add about your health? | text | — | — | — |
| declaration | Do you confirm that you understood these questions and the reason for asking them, and that you answered honestly? | boolean | #donrsn-0001-00028 | — | 0 |
| regular-donation-preference | Would you like to donate blood regularly? | boolean | — | — | — |
| contact-consent | May we contact you in the future? | boolean | — | — | — |
| flu-arvi | Have you recently had influenza, an acute respiratory viral infection (ARVI), or a sore throat? | boolean | #donrsn-0001-00004 | #tmpdf-0001-00001 | 30 |
| travel-abroad | Have you travelled abroad during the last 6 months? | boolean | — | — | — |
| malaria-exposure | During the last 3 weeks, have you had a fever or visited malaria-risk areas? | boolean | #donrsn-0001-00011 | — | 90 |
| pregnancy | Are you pregnant? | boolean | #donrsn-0001-00007 | — | — |
| postpartum-miscarriage | Have you given birth or had a miscarriage in the last 6 months? | boolean | #donrsn-0001-00017 | — | — |
| breastfeeding | Are you currently breastfeeding? | boolean | #donrsn-0001-00008 | — | — |
| alcohol-medication-declaration | I confirm that I have not consumed alcohol in the last 48 hours and have not taken aspirin or other analgesics in the last 72 hours. | boolean | — | — | — |
