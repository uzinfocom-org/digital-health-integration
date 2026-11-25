> Tarjima avtomatik tayyorlangan; tafovut bo'lsa inglizcha asl nusxadan foydalaning.

Orders yo'llanmalar, davlat hisobidan davolash asoslari va gospitalizatsiyani kelishish vazifalari almashinuvini tavsiflaydi. [Orders ServiceRequest](StructureDefinition-orders-servicerequest.html) va [Orders Referral Approval Task](StructureDefinition-orders-referral-approval-task.html) integratsiya qoidalarini UZ Core dan alohida belgilaydi.

### Ish jarayoni

1. Tashxis va bemorning imtiyozlarini UZ Core resurslarida qayd eting.
2. Yo'llanma maqsadi, mutaxassislik va xizmat bilan Orders ServiceRequest yarating.
3. Zarur bo'lsa davolash asosini `orderDetail.parameter[basis]`, SBDL mezonini `reason[sbdl]` da bering.
4. Har bir kelishuv Task yo'llanmaga `basedOn` va `focus` orqali havola qiladi; `partOf` bosqichlarni bog'laydi.
5. Qayta ishlashga qaytarish, komissiyalarga yuborish, muassasa tanlash, gospitalizatsiya va chiqarishni `businessStatus`, sababini `statusReason` da ko'rsating.

### Ma'lumotlar va terminologiya

| Artifact | Use |
|---|---|
| [Orders ServiceRequest](StructureDefinition-orders-servicerequest.html) | Referral, specialty, treatment basis and SBDL |
| [Orders Referral Approval Task](StructureDefinition-orders-referral-approval-task.html) | Approval workflow |
| [Referral purpose](ValueSet-orders-service-request-referral-purpose-vs.html) | `category[referralPurpose]` |
| [Specialty](ValueSet-orders-service-request-specialty-vs.html) | `category[specialty]` |
| [Treatment basis](ValueSet-orders-service-request-basis-vs.html) | `orderDetail.parameter[basis].valueCodeableConcept` |
| [SBDL](ValueSet-orders-sbdl-vs.html) | `reason[sbdl]` |
| [Task business status](ValueSet-orders-task-business-status-vs.html) | `Task.businessStatus` |
| [Task status reason](ValueSet-orders-task-status-reason-vs.html) | `Task.statusReason` |
| [Funding resolution](ValueSet-orders-funding-resolution-vs.html) | `extension[fundingResolution]` |
| [Discharge sections](ValueSet-orders-discharge-summary-section-vs.html) | `Composition.section.code` |
| [Local specialty mapping](ConceptMap-orders-service-request-specialty-to-snomed-cm.html) | Legacy specialty codes → SNOMED CT |

UZ Core to'lov turi `extension[paymentType]` da saqlanadi. 5199 va 311-sonli qarorlar qo'shimcha huquqiy moliyalashtirish asosi sifatida [Orders funding resolution](StructureDefinition-orders-funding-resolution.html) kengaytmasining `extension[fundingResolution]` kesimida beriladi. UZ Core kod tizimi o'zgartirilmaydi.

ICD-10 tashxisi va SBDL mezoni `reason` ning alohida takrorlanishlarida beriladi. UZ Core 0.12.0 `reason[icd10]` ichidagi barcha kodlashlarni ICD-10 bilan cheklaydi; bu kesimga SBDL joylashtirish ota profilni buzadi. Imtiyozlar UZ Core Socioeconomic Observation da qayd etilib, `supportingInfo` orqali bog'lanadi.

OrdersReferralApprovalTask FHIR Task dan meros oladi: UZ Core 0.12.0 ning majburiy businessStatus to'plamida Orders bosqichlari yo'q. Profil milliy rollar, hayot sikli va bemor hamda tashkilot havolalari cheklovlarini saqlaydi; businessStatus yadro va Orders kodlarini birlashtiradi.

### Examples

[Hospitalization referral](ServiceRequest-example-orders-hospitalization-referral.html) · [Returned for revision](Task-example-orders-task-specialist-returned.html) · [Hospitalization and discharge](Task-example-orders-task-hospitalization.html) · [Benefit observation](Observation-example-orders-nodira-benefits.html) · [Discharge sections](Composition-example-orders-discharge-summary.html)

### Manba va ko'chirish

Manba — UZ Core [#402](https://github.com/uzinfocom-org/digital-health-ig/pull/402), `cc439937e85a91b2ec5c1d94a6676ef242a0b2ee` kommiti. [#468](https://github.com/uzinfocom-org/digital-health-ig/pull/468) ushbu integratsiya funksiyalarini UZ Core dan olib tashlaydi. Ko'chirilgan artefaktlar nomi va identifikatorlari Orders prefiksidan, kanonik manzillar Integrations nomlar makonidan foydalanadi. Yadro identifikatorlari, kod tizimlari, to'lov turlari va Task harakat kodlari qayta ishlatiladi.

Katta SBDL va davolash asoslari kod tizimlari `input/vocabulary/` da tayyor JSON, `input/manual-fsh/` da FSH manbalari sifatida saqlanadi. Kodlar, tarjimalar, ICD-10 mosliklari, tashkilot darajalari va amal qilish sanalari saqlangan. Mutaxassislik ConceptMap'i eski mahalliy kodlarni saqlaydi; yangi yo'llanmalarda aniq ekvivalent bo'lsa SNOMED CT, aks holda mahalliy kod ishlatiladi.
