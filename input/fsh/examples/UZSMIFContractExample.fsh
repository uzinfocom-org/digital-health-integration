// ============================================================
//  Example: SMIF contract with the Republican Oncology Center
// ============================================================

Instance: example-smif-contract-oncology
InstanceOf: UZSMIFContract
Title: "Example UZSMIF Contract - Oncology Center"
Description: "Example SMIF contract with the Republican Oncology Center for 2025"
Usage: #example
* language = #uz

* identifier[0]
  * system = $smif-contract-id-system
  * value = "SMIF-2025/001"

* status = #executed

* type = smif-contract-type-cs#medical-service "Tibbiy xizmatlar shartnomasi"

* issued = "2025-01-15"
* applies.start = "2025-01-01"
* applies.end = "2025-12-31"

* subject = Reference(example-smif-organization-oncology) "Respublika onkologiya markazi"
* authority = Reference(example-smif-fund-organization) "Davlat tibbiy sug'urta fondi"

* title = "Tibbiy xizmatlar shartnomasi — Respublika onkologiya markazi"

// --- Signer: Fund ---
* signer[0].type = $v3-ParticipationType#AUT
* signer[0].party = Reference(example-smif-fund-organization) "Davlat tibbiy sug'urta fondi"
* signer[0].signature[0].type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.1 "Author's Signature"
* signer[0].signature[0].when = "2025-01-15T10:00:00+05:00"
* signer[0].signature[0].who = Reference(example-smif-fund-organization)

// --- Signer: Organization ---
* signer[1].type = $v3-ParticipationType#CONS
* signer[1].party = Reference(example-smif-organization-oncology) "Respublika onkologiya markazi"
* signer[1].signature[0].type = urn:iso-astm:E1762-95:2013#1.2.840.10065.1.12.1.1 "Author's Signature"
* signer[1].signature[0].when = "2025-01-15T14:00:00+05:00"
* signer[1].signature[0].who = Reference(example-smif-organization-oncology)

// --- Term 1: Oncology fixed monthly payment ---
* term[0].identifier.value = "SMIF-2025/001-SA-01"
* term[0].issued = "2025-01-15"
* term[0].applies.start = "2025-01-01"
* term[0].applies.end = "2025-12-31"
* term[0].topicCodeableConcept = smif-funding-article-cs#oncology-fixed "Onkologik yordam (belgilangan)"
* term[0].type = smif-payment-model-cs#fixed-monthly "Oylik belgilangan to'lov"
* term[0].text = "Onkologik markazga oylik belgilangan to'lov"

* term[0].offer.party[0].reference = Reference(example-smif-fund-organization)
* term[0].offer.party[0].role = smif-contract-party-role-cs#authority "Buyurtmachi (Fond)"
* term[0].offer.party[1].reference = Reference(example-smif-organization-oncology)
* term[0].offer.party[1].role = smif-contract-party-role-cs#provider "Ijrochi (tashkilot)"
* term[0].offer.text = "Oylik belgilangan to'lov — Fond tarifiga muvofiq"

* term[0].asset[0].scope = smif-asset-scope-cs#fixed-payment "Belgilangan to'lov"
* term[0].asset[0].period[0].start = "2025-01-01"
* term[0].asset[0].period[0].end = "2025-12-31"
* term[0].asset[0].valuedItem[0].entityCodeableConcept = smif-asset-scope-cs#fixed-payment "Belgilangan to'lov"
* term[0].asset[0].valuedItem[0].unitPrice.value = 250000000
* term[0].asset[0].valuedItem[0].unitPrice.currency = #UZS
* term[0].asset[0].valuedItem[0].responsible = Reference(example-smif-fund-organization)
* term[0].asset[0].valuedItem[0].recipient = Reference(example-smif-organization-oncology)

// --- Term 2: Preferential inpatient treatment (fee-for-service with budget limit) ---
* term[1].identifier.value = "SMIF-2025/001-SA-02"
* term[1].issued = "2025-02-01"
* term[1].applies.start = "2025-02-01"
* term[1].applies.end = "2025-12-31"
* term[1].topicCodeableConcept = smif-funding-article-cs#inpatient-preferential "Imtiyozli statsionar davolash"
* term[1].type = smif-payment-model-cs#fee-for-service "Ko'rsatilgan xizmat uchun to'lov"
* term[1].text = "Yo'naltirishlar bo'yicha imtiyozli statsionar davolash"

* term[1].offer.party[0].reference = Reference(example-smif-fund-organization)
* term[1].offer.party[0].role = smif-contract-party-role-cs#authority "Buyurtmachi (Fond)"
* term[1].offer.party[1].reference = Reference(example-smif-organization-oncology)
* term[1].offer.party[1].role = smif-contract-party-role-cs#provider "Ijrochi (tashkilot)"

// Budget limit
* term[1].asset[0].scope = smif-asset-scope-cs#budget-limit "Byudjet limiti"
* term[1].asset[0].valuedItem[0].entityCodeableConcept = smif-asset-scope-cs#budget-limit "Byudjet limiti"
* term[1].asset[0].valuedItem[0].net.value = 200000000
* term[1].asset[0].valuedItem[0].net.currency = #UZS
* term[1].asset[0].valuedItem[0].responsible = Reference(example-smif-fund-organization)
* term[1].asset[0].valuedItem[0].recipient = Reference(example-smif-organization-oncology)

// Volume limit
* term[1].asset[1].scope = smif-asset-scope-cs#volume-limit "Hajm limiti"
* term[1].asset[1].valuedItem[0].entityCodeableConcept = smif-asset-scope-cs#volume-limit "Hajm limiti"
* term[1].asset[1].valuedItem[0].quantity.value = 500
* term[1].asset[1].valuedItem[0].quantity.unit = "case"


// ============================================================
//  Supporting examples: Organizations
// ============================================================

Instance: example-smif-fund-organization
InstanceOf: UZCoreOrganization
Title: "Example Organization - State Medical Insurance Fund"
Description: "State Medical Insurance Fund of the Republic of Uzbekistan"
Usage: #example
* language = #uz
* identifier[taxId]
  * use = #official
  * type = $identifier-type#TAX "Tax ID number"
  * value = "000000000"
* active = true
* name = "O'zbekiston Respublikasi Davlat tibbiy sug'urta fondi"

Instance: example-smif-organization-oncology
InstanceOf: UZCoreOrganization
Title: "Example Organization - Republican Oncology Center"
Description: "Example healthcare organization (Republican Oncology Center)"
Usage: #example
* language = #uz
* identifier[taxId]
  * use = #official
  * type = $identifier-type#TAX "Tax ID number"
  * value = "200935935"
* active = true
* name = "Respublika onkologiya markazi"
