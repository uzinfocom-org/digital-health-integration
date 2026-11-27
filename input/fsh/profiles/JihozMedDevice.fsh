Profile: JihozMedDevice
Parent: UZCoreDevice
Id: jihozmed-device
Title: "JihozMed Device"
Description: "Integration profile for medical equipment cards transferred from the JihozMed system to the DHP Supplies component."
* ^status = #draft
* ^experimental = true
* ^publisher = "DHP Integration"

* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "Inventory numbers of the device"
* identifier contains
    jihozmed 1..1 MS and
    uzasbo 0..1 MS
* identifier[jihozmed]
  * ^short = "JihozMed inventory number (inventory_number)"
  * system 1..1
  * system = $jihozmed-inventory-number
  * value 1..1
* identifier[uzasbo]
  * ^short = "UzASBO inventory number (inventory_number_uzasbo); not sent when empty"
  * system 1..1
  * system = $uzasbo-inventory-number
  * value 1..1

* displayName ^short = "Equipment name (equipment_name)"

* status 1..1
* status ^short = "active | inactive | entered-in-error (from JihozMed status)"
* availabilityStatus ^short = "available | damaged (from JihozMed status; both \"needs repair\" and \"unusable\" map to damaged)"

* manufacturer ^short = "Manufacturer company (manufacturer)"
* manufactureDate 1..1
* manufactureDate ^short = "Manufacture date (manufacture_date)"
* expirationDate ^short = "End of service life (expired_at), in UTC"
* serialNumber ^short = "Serial number (serial_number)"
* modelNumber ^short = "Model (model)"

* name 0..1
* name ^short = "Equipment name registered in UzASBO (equipment_name_uzasbo)"
* name.type = #user-friendly-name

* type 1..1
* type from DeviceClassificationVS (required)
* type ^short = "Lowest selected classification level, usually the item (classification_id / section_id / paragraph_id)"

* owner 1..1
* owner ^short = "Organization that holds the device on its balance (organization)"
* location ^short = "Department or unit where the device is installed"

* extension contains
    DevicePhoto named devicePhoto 0..* and
    DeviceCountryOfOrigin named countryOfOrigin 0..1 MS and
    DeviceManufacturerCountry named manufacturerCountry 0..1 MS and
    DeviceInstallationDate named installationDate 0..1 MS and
    DeviceWarrantyDate named warrantyDate 0..1 MS and
    DeviceContract named contractInfo 0..1 MS and
    DeviceInvoice named invoiceInfo 0..1 MS and
    DevicePrice named price 0..1 MS and
    FundingSourceExtension named fundingSource 0..1 MS and
    DeviceCreationDate named creationDate 0..1 MS
* extension[devicePhoto] ^short = "Device photo (images)"
* extension[countryOfOrigin] ^short = "Country of manufacture (manufacture_country)"
* extension[manufacturerCountry] ^short = "Country of the manufacturer company (manufacturer_country)"
* extension[installationDate] ^short = "Installation date (installation_date)"
* extension[warrantyDate] ^short = "Warranty end date (warranty_period)"
* extension[contractInfo] ^short = "Purchase contract (contract_number, contract_doc)"
* extension[invoiceInfo] ^short = "Invoice (invoice, invoice_doc)"
* extension[price] ^short = "Equipment price in UZS (equipment_price)"
* extension[fundingSource] ^short = "Funding source (funding_source); not sent when empty"
* extension[creationDate] ^short = "Date the card was created in JihozMed (created_at)"


Instance: example-jihozmed-device-colonoscope
InstanceOf: JihozMedDevice
Title: "Example JihozMed Device - Video Colonoscope"
Description: "Example device card from JihozMed: a video colonoscope in operating condition, with its inventory numbers, classification, contract, invoice, price and funding source."
Usage: #example

* identifier[jihozmed].value = "10001922"
* identifier[uzasbo].value = "22122230006286"

* displayName = "Video colonoscope"
* status = #active
* availabilityStatus = $device-availability-status#available

* manufacturer = "UAB VILTECHMEDA"
* manufactureDate = "2018-01-01"
* expirationDate = "2034-03-31T19:00:00Z"
* serialNumber = "AOP188527"
* modelNumber = "VC-100"

* name.value = "Video colonoscope"
* name.type = #user-friendly-name

* type = $device-classification-cs#meq-0003-00006 "Colonofiberscopes"
* type.text = "Endoscopy Instruments — Colonofiberscopes"

* owner = Reference(Organization/example-organization)
* location = Reference(Location/example-location-1)

* extension[devicePhoto].valueAttachment.contentType = #image/jpeg
* extension[devicePhoto].valueAttachment.url = "https://example.org/jihozmed/images/10001922.jpg"
* extension[countryOfOrigin].valueCodeableConcept = $iso-3166#LT
* extension[manufacturerCountry].valueCodeableConcept = $iso-3166#LT
* extension[installationDate].valueDateTime = "2018-05-10"
* extension[warrantyDate].valueDateTime = "2023-01-01"
* extension[contractInfo].extension[number].valueString = "CN-UZMED-2024-889"
* extension[contractInfo].extension[document].valueAttachment.contentType = #application/pdf
* extension[contractInfo].extension[document].valueAttachment.url = "https://example.org/jihozmed/contracts/CN-UZMED-2024-889.pdf"
* extension[invoiceInfo].extension[number].valueString = "INV-OLY-2024-001"
* extension[invoiceInfo].extension[document].valueAttachment.contentType = #application/pdf
* extension[invoiceInfo].extension[document].valueAttachment.url = "https://example.org/jihozmed/invoices/INV-OLY-2024-001.pdf"
* extension[price].valueMoney.value = 7431127
* extension[fundingSource].valueCodeableConcept = https://terminology.dhp.uz/fhir/core/CodeSystem/financing-source-cs#fnncl-0001-00012 "Grant"
* extension[creationDate].valueDateTime = "2024-03-01T10:15:00+05:00"
