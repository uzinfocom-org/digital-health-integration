The eight required sections remain mandatory (`1..1`). The clinical sections
`medicalAndObstetricHistory`, `currentPregnancy`, `obstetricExamination`,
`laborCourse`, `newbornDeliveryRecord`, and `postpartumPeriod` allow zero or more
entries (`0..*`). If any of these sections has no entries, it must provide both
`section.emptyReason` and explanatory `section.text` (invariant
`form096-empty-section`). The section title and code remain required.

Use the explanation to distinguish an inapplicable section (for example, labor
and newborn information for an admission that ended without delivery) from
information unavailable in the source system (for example, postpartum
observations not yet recorded in DMED). Missing information must not be
interpreted as a normal examination or the confirmed absence of complications.
Do not create placeholder clinical resources to satisfy section cardinality.

A section containing entries must not also carry `emptyReason`, as required by
the inherited FHIR constraint `cmp-2`. Empty sections still need narrative text
to satisfy `cmp-1`; `emptyReason` alone is insufficient.

The `admissionInformation` and `responsiblePersons` sections still require at
least one entry. `Composition.author` remains mandatory and `Composition.status`
remains fixed to `final`. These structural rules do not replace the source
system's checks that a form is ready for official exchange.

### Newborn identity and observations

The [Form 096 integration document](https://wiki.dhp.uz/doc/integration-096-B4wPNidWqJ)
defines the exchange contract. The mapping workbook provides supporting
traceability and must follow that document.

Include each newborn as a separate `UZCorePatient` in the document Bundle even
when PINFL is unavailable. Map the child's DMED medical-card number to
`Patient.identifier[healthCardId].value`, with system
`https://dhp.uz/fhir/core/sid/pid/uz/hc`, type `HC` from
`http://terminology.hl7.org/CodeSystem/v2-0203`, and use `official`. Reuse the
existing UZ Core slice; no additional Patient profile or identifier terminology
is needed.

The card number was verified at `data.patient.number_med_card` in the response
from `GET /api/mis/v2/hospitalizations/{child_hospitalization_id}` for a newborn's
own hospitalization. Resolve the child's patient through the DMED relationship
to that hospitalization; this does not establish a nested patient selector in
the maternal `newborn_children[*]` payload. Do not substitute a hospitalization
ID, newborn record ID, patient ID or UUID for a card number in the HC namespace.
The producer must ensure that HC is stable and unique in that namespace; an
absent card number requires an agreed alternative identifier.

Individual birth observations use the corresponding newborn as `subject`,
the maternal hospitalization as `encounter`, and birth time as
`effectiveDateTime`. Birth weight (LOINC `8339-4`, UCUM `g`), birth outcome
(LOINC `69043-8`) and 1-minute Apgar score (LOINC `9272-6`, `valueInteger`) are
components of that newborn's observation. Delivery-wide counts use the mother
as `subject` and `component.valueInteger`.

Reuse the same newborn identity in Form 097. When PINFL becomes available, add
`identifier[nationalId]` to that identity while retaining HC. The adapter must
resolve an existing DHP patient or use an agreed registration process and
retain the association for retries and subsequent forms. The identifier alone
does not specify a DHP Patient creation or deduplication API. `Bundle.entry.fullUrl`
and `Resource.id` are reference keys, separate from the business identifier.
