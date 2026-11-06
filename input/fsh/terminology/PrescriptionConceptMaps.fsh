Instance: dmed-prescription-type-to-medication-request-category
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Prescription Type to MedicationRequest Category"
Description: "Maps the DMED API prescription type to `MedicationRequest.category`. Every DMED prescription is outpatient; a reimbursement prescription also gets the UZ Core reimbursable order code. An ordinary prescription is the one without that code."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-prescription-type-to-medication-request-category"
* name = "DMEDPrescriptionTypeToMedicationRequestCategory"
* status = #active
* experimental = false
* publisher = "Uzinfocom"
* sourceScopeCanonical = Canonical(DMEDPrescriptionTypeVS)
* targetScopeCanonical = $medicationrequest-admin-location-vs
* group[+].source = Canonical(DMEDPrescriptionTypeCS)
* group[=].target = $medicationrequest-admin-location
* group[=].element[+].code = #simple
* group[=].element[=].target[+].code = #outpatient
* group[=].element[=].target[=].display = "Outpatient"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[=].element[+].code = #reimbursement
* group[=].element[=].target[+].code = #outpatient
* group[=].element[=].target[=].display = "Outpatient"
* group[=].element[=].target[=].relationship = #source-is-narrower-than-target
* group[+].source = Canonical(DMEDPrescriptionTypeCS)
* group[=].target = $medication-request-order-type-cs
* group[=].element[+].code = #reimbursement
* group[=].element[=].target[+].code = #rembr-0001-00001
* group[=].element[=].target[=].display = "Rembursatsiyali buyurtma"
* group[=].element[=].target[=].relationship = #equivalent

Instance: dmed-prescription-status-to-medication-request-status
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Prescription Status to MedicationRequest Status"
Description: "Maps DMED workflow statuses to the closest FHIR MedicationRequest clinical status. Approval state remains authoritative in PrescriptionApprovalTask.businessStatus. DMED sends a prescription to DHP only once it is signed, so `not_signed` is not mapped."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-prescription-status-to-medication-request-status"
* name = "DMEDPrescriptionStatusToMedicationRequestStatus"
* status = #active
* experimental = false
* publisher = "Uzinfocom"
* sourceScopeCanonical = Canonical(DMEDPrescriptionStatusVS)
* group.source = Canonical(DMEDPrescriptionStatusCS)
* group.target = $medicationrequest-status
* group.element[+].code = #awaiting_confirmation
* group.element[=].target[+].code = #active
* group.element[=].target[=].relationship = #related-to
* group.element[+].code = #approve
* group.element[=].target[+].code = #active
* group.element[=].target[=].relationship = #related-to
* group.element[+].code = #revision
* group.element[=].target[+].code = #on-hold
* group.element[=].target[=].relationship = #related-to
* group.element[+].code = #created
* group.element[=].target[+].code = #active
* group.element[=].target[=].relationship = #related-to
* group.element[+].code = #partially_issued
* group.element[=].target[+].code = #active
* group.element[=].target[=].relationship = #related-to
* group.element[+].code = #issued
* group.element[=].target[+].code = #completed
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #expired
* group.element[=].target[+].code = #ended
* group.element[=].target[=].relationship = #related-to
* group.element[+].code = #canceled
* group.element[=].target[+].code = #cancelled
* group.element[=].target[=].relationship = #source-is-broader-than-target
* group.element[=].target[=].comment = "Manual cancellation by a doctor, director or pharmacist, recorded with a cancellation reason."
* group.element[=].target[+].code = #ended
* group.element[=].target[=].relationship = #source-is-broader-than-target
* group.element[=].target[=].comment = "Cancellation by the DMED expiry job after expiration_date: no cancellation reason, author or cancellation time. The prescription expired rather than being cancelled."

Instance: dmed-prescription-route-to-fhir-route
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Prescription Route to FHIR Route"
Description: "Maps DMED `drug_administration_route_id` to SNOMED CT routes of administration in UZ Core RouteCodeVS. Only routes with an unambiguous SNOMED CT equivalent are mapped. Identifiers that name a method rather than a route (Инъекционно, Парентеральный, Инстилляция) or that combine two routes are left out; a prescription with such a route is rejected with `terminology-crosswalk-not-found`."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-prescription-route-to-fhir-route"
* name = "DMEDPrescriptionRouteToFHIRRoute"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* sourceScopeCanonical = Canonical(DMEDPrescriptionRouteVS)
* group.source = Canonical(DMEDPrescriptionRouteCS)
* group.target = $sct
* targetScopeCanonical = $route-code-vs
* group.element[+].code = #1
* group.element[=].display = "Пероральный"
* group.element[=].target[+].code = #26643006
* group.element[=].target[=].display = "Oral route"
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #3
* group.element[=].display = "Внутримышечный"
* group.element[=].target[+].code = #78421000
* group.element[=].target[=].display = "Intramuscular route"
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #4
* group.element[=].display = "Окулярный"
* group.element[=].target[+].code = #372472002
* group.element[=].target[=].display = "Ocular route"
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #38
* group.element[=].display = "Внутривенный"
* group.element[=].target[+].code = #47625008
* group.element[=].target[=].display = "Intravenous route"
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #56
* group.element[=].display = "Вагинальный"
* group.element[=].target[+].code = #16857009
* group.element[=].target[=].display = "Vaginal route"
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #87
* group.element[=].display = "Наружный"
* group.element[=].target[+].code = #6064005
* group.element[=].target[=].display = "Topical route"
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #128
* group.element[=].display = "Ректальный"
* group.element[=].target[+].code = #37161004
* group.element[=].target[=].display = "Rectal route"
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #162
* group.element[=].display = "Местный"
* group.element[=].target[+].code = #6064005
* group.element[=].target[=].display = "Topical route"
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #610
* group.element[=].display = "Назальный"
* group.element[=].target[+].code = #46713006
* group.element[=].target[=].display = "Nasal route"
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #2742
* group.element[=].display = "Ушной"
* group.element[=].target[+].code = #10547007
* group.element[=].target[=].display = "Otic route"
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #3866
* group.element[=].display = "Подкожный"
* group.element[=].target[+].code = #34206005
* group.element[=].target[=].display = "Subcutaneous route"
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #3867
* group.element[=].display = "Внутриартериальный"
* group.element[=].target[+].code = #58100008
* group.element[=].target[=].display = "Intra-arterial route"
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #3868
* group.element[=].display = "Внутрикожный"
* group.element[=].target[+].code = #372464004
* group.element[=].target[=].display = "Intradermal route"
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #3872
* group.element[=].display = "Интраназальный"
* group.element[=].target[+].code = #46713006
* group.element[=].target[=].display = "Nasal route"
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #3873
* group.element[=].display = "Внутрисуставный"
* group.element[=].target[+].code = #12130007
* group.element[=].target[=].display = "Intra-articular route"
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #3878
* group.element[=].display = "Интравагинально"
* group.element[=].target[+].code = #16857009
* group.element[=].target[=].display = "Vaginal route"
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #3883
* group.element[=].display = "Трансдермальный"
* group.element[=].target[+].code = #45890007
* group.element[=].target[=].display = "Transdermal route"
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #3884
* group.element[=].display = "Сублингвальный"
* group.element[=].target[+].code = #37839007
* group.element[=].target[=].display = "Sublingual route"
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #3889
* group.element[=].display = "Подъязычный"
* group.element[=].target[+].code = #37839007
* group.element[=].target[=].display = "Sublingual route"
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #3894
* group.element[=].display = "Глазные"
* group.element[=].target[+].code = #372472002
* group.element[=].target[=].display = "Ocular route"
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #3899
* group.element[=].display = "Под язычное"
* group.element[=].target[+].code = #37839007
* group.element[=].target[=].display = "Sublingual route"
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #3902
* group.element[=].display = "Внутрь"
* group.element[=].target[+].code = #26643006
* group.element[=].target[=].display = "Oral route"
* group.element[=].target[=].relationship = #equivalent
* group.element[+].code = #3903
* group.element[=].display = "Ректальное"
* group.element[=].target[+].code = #37161004
* group.element[=].target[=].display = "Rectal route"
* group.element[=].target[=].relationship = #equivalent

Instance: dmed-administration-method-to-fhir-route
InstanceOf: ConceptMap
Usage: #definition
Title: "DMED Administration Method to FHIR Route"
Description: "Maps the DMED treatment course `administration_method` to UZ Core routes of administration, sent in `MedicationAdministration.dosage.method` next to the DMED code. The DMED list names routes rather than techniques, so the targets are SNOMED CT routes, and `parenteral` maps to the UZ Core local route because SNOMED CT has no parenteral route in its route hierarchy. `subarachnoid` maps to the intrathecal route, which is the same space, and `transmucosal` follows its DMED label Трансбуккально to the buccal route. `combined` and `endoneural` have no route and stay unmapped; for them only the DMED code is sent."
* url = "https://terminology.dhp.uz/fhir/integrations/ConceptMap/dmed-administration-method-to-fhir-route"
* name = "DMEDAdministrationMethodToFHIRRoute"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"
* sourceScopeCanonical = Canonical(DMEDAdministrationMethodVS)
* targetScopeCanonical = $route-code-vs
* group[+].source = Canonical(DMEDAdministrationMethodCS)
* group[=].target = $sct
* group[=].element[+].code = #caudal
* group[=].element[=].display = "Каудально"
* group[=].element[=].target[+].code = #417070009
* group[=].element[=].target[=].display = "Caudal route"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #endotracheal
* group[=].element[=].display = "Эндотрахеально (интубационно)"
* group[=].element[=].target[+].code = #404818005
* group[=].element[=].target[=].display = "Intratracheal route"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #epidural
* group[=].element[=].display = "Эпидурально/перидурально"
* group[=].element[=].target[+].code = #404820008
* group[=].element[=].target[=].display = "Epidural route"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #infiltration
* group[=].element[=].display = "Инфильтрационно"
* group[=].element[=].target[+].code = #718329006
* group[=].element[=].target[=].display = "Infiltration route"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #inhalation
* group[=].element[=].display = "Ингаляционно"
* group[=].element[=].target[+].code = #447694001
* group[=].element[=].target[=].display = "Respiratory tract route"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #intradermal
* group[=].element[=].display = "Внутрикожно"
* group[=].element[=].target[+].code = #372464004
* group[=].element[=].target[=].display = "Intradermal route"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #intramuscular
* group[=].element[=].display = "Внутримышечно"
* group[=].element[=].target[+].code = #78421000
* group[=].element[=].target[=].display = "Intramuscular route"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #intravascular
* group[=].element[=].display = "Внутрисосудисто"
* group[=].element[=].target[+].code = #445755006
* group[=].element[=].target[=].display = "Intravascular route"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #intravenous
* group[=].element[=].display = "Внутривенно"
* group[=].element[=].target[+].code = #47625008
* group[=].element[=].target[=].display = "Intravenous route"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #oral
* group[=].element[=].display = "Перорально"
* group[=].element[=].target[+].code = #26643006
* group[=].element[=].target[=].display = "Oral route"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #paracervical
* group[=].element[=].display = "Парацервикально"
* group[=].element[=].target[+].code = #418851001
* group[=].element[=].target[=].display = "Paracervical route"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #perineural
* group[=].element[=].display = "Периневрально"
* group[=].element[=].target[+].code = #372475000
* group[=].element[=].target[=].display = "Perineural route"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #rectal
* group[=].element[=].display = "Ректально"
* group[=].element[=].target[+].code = #37161004
* group[=].element[=].target[=].display = "Rectal route"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #subarachnoid
* group[=].element[=].display = "Субарахноидально"
* group[=].element[=].target[+].code = #72607000
* group[=].element[=].target[=].display = "Intrathecal route"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #subcutaneous
* group[=].element[=].display = "Подкожно"
* group[=].element[=].target[+].code = #34206005
* group[=].element[=].target[=].display = "Subcutaneous route"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #sublingual
* group[=].element[=].display = "Сублингвально"
* group[=].element[=].target[+].code = #37839007
* group[=].element[=].target[=].display = "Sublingual route"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #topical
* group[=].element[=].display = "Аппликационно/поверхностно"
* group[=].element[=].target[+].code = #6064005
* group[=].element[=].target[=].display = "Topical route"
* group[=].element[=].target[=].relationship = #equivalent
* group[=].element[+].code = #transmucosal
* group[=].element[=].display = "Трансбуккально"
* group[=].element[=].target[+].code = #54471007
* group[=].element[=].target[=].display = "Buccal route"
* group[=].element[=].target[=].relationship = #equivalent
* group[+].source = Canonical(DMEDAdministrationMethodCS)
* group[=].target = $route-codes-cs
* group[=].element[+].code = #parenteral
* group[=].element[=].display = "Парентерально"
* group[=].element[=].target[+].code = #pharm-0001-0052
* group[=].element[=].target[=].display = "Parenteral"
* group[=].element[=].target[=].relationship = #equivalent
