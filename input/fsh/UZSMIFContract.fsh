Profile: UZSMIFContract
Parent: Contract
Id: uz-smif-contract
Title: "UZSMIF Contract"
Description: "Contract between the State Medical Insurance Fund of Uzbekistan and a healthcare or pharmacy organization. Each term represents a supplementary agreement connecting the organization to a funding article."
* ^experimental = true
* ^status = #draft
* ^date = "2026-04-12"
* ^publisher = "State Medical Insurance Fund of the Republic of Uzbekistan"

// --- Root level ---

* identifier 1..* MS
  * ^short = "Contract number in the Fund's system"
  * system 1..1
  * system = $smif-contract-id-system (exactly)
  * value 1..1

* status 1..1 MS
  * ^short = "Contract lifecycle status"

* legalState 0..1 MS

* type 1..1 MS
  * ^short = "Contract type (medical services or pharmacy reimbursement)"
* type from SMIFContractTypeVS (required)

* issued 1..1 MS
  * ^short = "Date the contract was signed"

* applies 1..1 MS
  * ^short = "Contract validity period (typically a fiscal year)"

* subject 1..1 MS
* subject only Reference(UZCoreOrganization)
  * ^short = "Healthcare or pharmacy organization (counterparty)"

* authority 1..1 MS
* authority only Reference(UZCoreOrganization)
  * ^short = "State Medical Insurance Fund"

* author 0..1
* author only Reference(UZCoreOrganization or Practitioner)

* title 0..1 MS
  * ^short = "Human-readable contract title"

* signer MS
  * ^short = "Contract signatories (Fund and organization representatives)"

* legallyBinding[x] 0..1
  * ^short = "Scanned signed contract document (PDF)"

// --- Term = supplementary agreement (funding article connection) ---

* term MS
  * ^short = "Supplementary agreement — connection to a funding article"

* term.identifier 1..1 MS
  * ^short = "Supplementary agreement number"

* term.issued 1..1 MS
  * ^short = "Date the supplementary agreement was signed"

* term.applies 1..1 MS
  * ^short = "Supplementary agreement validity period"

* term.topicCodeableConcept 1..1 MS
  * ^short = "Funding article"
* term.topicCodeableConcept from SMIFFundingArticleVS (required)

* term.type 1..1 MS
  * ^short = "Payment model (capitation, fee-for-service, fixed monthly, reimbursement)"
* term.type from SMIFPaymentModelVS (required)

* term.text 0..1
  * ^short = "Textual description of the agreement conditions"

// --- Term.Offer ---

* term.offer 1..1 MS
* term.offer.party 2..2 MS
  * ^short = "Parties: Fund (authority) and organization (provider)"
* term.offer.party.reference 1..1
* term.offer.party.reference only Reference(UZCoreOrganization)
* term.offer.party.role 1..1
* term.offer.party.role from SMIFContractPartyRoleVS (required)

* term.offer.decision 0..1
  * ^short = "Decision on terms (e.g. policy — by Fund's decision)"

* term.offer.text 0..1
  * ^short = "Description of the offer"

// --- Term.Asset — financial conditions ---

* term.asset 0..* MS
  * ^short = "Financial conditions for the funding article"

* term.asset.scope 0..1
* term.asset.scope from SMIFAssetScopeVS (extensible)

* term.asset.period 0..*
  * ^short = "Period for the financial conditions"

* term.asset.valuedItem 0..* MS
  * ^short = "Limit or fixed amount"

* term.asset.valuedItem.entityCodeableConcept 0..1
* term.asset.valuedItem.entityCodeableConcept from SMIFAssetScopeVS (extensible)
  * ^short = "Type: budget limit / fixed amount / volume limit"

* term.asset.valuedItem.quantity 0..1
  * ^short = "Volume limit (number of cases)"

* term.asset.valuedItem.unitPrice 0..1
  * ^short = "Fixed amount per period (e.g. monthly payment)"

* term.asset.valuedItem.net 0..1
  * ^short = "Total budget limit for the funding article"

* term.asset.valuedItem.effectiveTime 0..1
  * ^short = "Effective date for the amount"

* term.asset.valuedItem.responsible 0..1
* term.asset.valuedItem.responsible only Reference(UZCoreOrganization)
  * ^short = "Payer (Fund)"

* term.asset.valuedItem.recipient 0..1
* term.asset.valuedItem.recipient only Reference(UZCoreOrganization)
  * ^short = "Payee (healthcare or pharmacy organization)"
