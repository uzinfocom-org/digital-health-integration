CodeSystem: PrescriptionWorkflowActionCS
Id: prescription-workflow-action-cs
Title: "Prescription Workflow Action Codes"
Description: "Actions performed during the prescription signing, approval, revision and cancellation workflow."
* ^url = $prescription-workflow-action-cs
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^publisher = "Uzinfocom"
* #create "Create prescription"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Создание рецепта"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Retsept yaratish"
* #sign "Sign prescription"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Подписание рецепта"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Retseptni imzolash"
* #send-for-confirmation "Send for confirmation"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отправка на подтверждение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tasdiqlashga yuborish"
* #approve "Approve prescription"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Подтверждение рецепта"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Retseptni tasdiqlash"
* #request-revision "Request revision"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Возврат на доработку"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Qayta ishlashga qaytarish"
* #update "Update prescription"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Изменение рецепта"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Retseptni o'zgartirish"
* #renew "Renew prescription"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Продление рецепта"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Retseptni uzaytirish"
* #cancel "Cancel prescription"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отмена рецепта"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Retseptni bekor qilish"
* #dispense "Dispense medication"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отпуск препарата"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Dori vositasini berish"
* #administer "Administer medication"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Введение препарата"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Dori vositasini yuborish"

ValueSet: PrescriptionWorkflowActionVS
Id: prescription-workflow-action-vs
Title: "Prescription Workflow Actions"
Description: "Allowed actions in the DMED Prescription workflow."
* ^url = "https://terminology.dhp.uz/fhir/integrations/ValueSet/prescription-workflow-action-vs"
* ^status = #active
* ^experimental = false
* include codes from system PrescriptionWorkflowActionCS

CodeSystem: PrescriptionErrorCS
Id: prescription-error-cs
Title: "Prescription Integration Error Codes"
Description: "Stable prescription-specific error codes used in OperationOutcome.issue.details.coding."
* ^url = $prescription-error-cs
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^publisher = "Uzinfocom"
* #terminology-crosswalk-not-found "Terminology crosswalk not found"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Не найдено соответствие кода в справочнике"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ma'lumotnomada kod moslashuvi topilmadi"
* #reimbursement-eligibility-failed "Reimbursement eligibility failed"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Пациент не имеет права на реимбурсацию"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bemorda reimbursatsiya huquqi yo'q"
* #reimbursement-inn-limit-exceeded "Reimbursement INN limit exceeded"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Превышен лимит реимбурсации по МНН"
  * ^designation[+].language = #uz
  * ^designation[=].value = "XPN bo'yicha reimbursatsiya limiti oshib ketdi"
* #reimbursement-repeat-too-soon "Another reimbursement prescription for this INN exists in the previous 30 days"
  * ^designation[0].language = #ru
  * ^designation[=].value = "За последние 30 дней уже есть реимбурсационный рецепт с этим МНН"
  * ^designation[+].language = #uz
  * ^designation[=].value = "So'nggi 30 kun ichida ushbu XPN bilan reimbursatsiya retsepti mavjud"
* #reimbursement-partial-dispense-forbidden "Partial reimbursement dispense is forbidden"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Частичный отпуск по реимбурсационному рецепту запрещён"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Reimbursatsiya retsepti bo'yicha qisman berish taqiqlangan"
* #duration-exceeded "Prescription duration exceeds 90 days"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Длительность рецепта превышает 90 дней"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Retsept muddati 90 kundan oshadi"
* #review-required "Reviewer approval is required"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Требуется подтверждение проверяющего"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tekshiruvchining tasdig'i talab qilinadi"
* #quantity-exceeds-prescribed "Dispensed quantity exceeds the prescribed quantity"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Выдаваемое количество превышает назначенное"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Beriladigan miqdor buyurilgan miqdordan oshadi"
* #version-conflict "Resource version conflict"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Конфликт версий ресурса"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Resurs versiyalari ziddiyati"

ValueSet: PrescriptionErrorVS
Id: prescription-error-vs
Title: "Prescription Integration Errors"
Description: "Allowed prescription-specific error codes."
* ^url = "https://terminology.dhp.uz/fhir/integrations/ValueSet/prescription-error-vs"
* ^status = #active
* ^experimental = false
* include codes from system PrescriptionErrorCS

CodeSystem: DMEDPrescriptionTypeCS
Id: dmed-prescription-type-cs
Title: "DMED Prescription API Type Codes"
Description: "Source codes used by the DMED prescriptions API."
* ^url = $dmed-prescription-type-cs
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #simple "Ordinary"
* #reimbursement "Reimbursement"

ValueSet: DMEDPrescriptionTypeVS
Id: dmed-prescription-type-vs
Title: "DMED Prescription API Types"
Description: "Source prescription types used by DMED."
* ^url = "https://terminology.dhp.uz/fhir/integrations/ValueSet/dmed-prescription-type-vs"
* ^status = #active
* ^experimental = false
* include codes from system DMEDPrescriptionTypeCS

CodeSystem: DMEDPrescriptionStatusCS
Id: dmed-prescription-status-cs
Title: "DMED Prescription Status Codes"
Description: "Source business statuses observed in GET /api/prescriptions/v1/prescriptions on 2026-09-17. Codes reproduce the DMED API query and payload values exactly."
* ^url = $dmed-prescription-status-cs
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^publisher = "Uzinfocom"
* #approve "Approved"
  * ^designation.language = #ru
  * ^designation.value = "Подтвержден"
* #awaiting_confirmation "Awaiting confirmation"
  * ^designation.language = #ru
  * ^designation.value = "Ожидает подтверждения"
* #revision "Revision requested"
  * ^designation.language = #ru
  * ^designation.value = "На доработку"
* #created "Not issued"
  * ^designation.language = #ru
  * ^designation.value = "Не выдан"
* #partially_issued "Partially issued"
  * ^designation.language = #ru
  * ^designation.value = "Частично выдан"
* #issued "Issued"
  * ^designation.language = #ru
  * ^designation.value = "Выдан"
* #expired "Expired"
  * ^designation.language = #ru
  * ^designation.value = "Срок истек"
* #canceled "Cancelled"
  * ^designation.language = #ru
  * ^designation.value = "Отменен"
* #not_signed "Not signed"
  * ^designation.language = #ru
  * ^designation.value = "Не подписан"

ValueSet: DMEDPrescriptionStatusVS
Id: dmed-prescription-status-vs
Title: "DMED Prescription Statuses"
Description: "Source statuses used by the DMED Prescription workflow."
* ^url = "https://terminology.dhp.uz/fhir/integrations/ValueSet/dmed-prescription-status-vs"
* ^status = #active
* ^experimental = false
* include codes from system DMEDPrescriptionStatusCS

CodeSystem: DMEDPrescriptionRouteCS
Id: dmed-prescription-route-cs
Title: "DMED Prescription Route Identifiers"
Description: "Route of administration identifiers of the DMED prescriptions API (`drug_administration_route_id`, dictionary `GET /api/prescriptions/v1/drug-administration-routes`), with their Russian names as DMED shows them. Exported from the DMED test environment on 2026-11-03."
* ^url = $dmed-prescription-route-cs
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^language = #ru
* ^publisher = "Uzinfocom"
* #1 "Пероральный"
* #3 "Внутримышечный"
* #4 "Окулярный"
* #38 "Внутривенный"
* #56 "Вагинальный"
* #87 "Наружный"
* #128 "Ректальный"
* #158 "Субконъюнктивальный"
* #162 "Местный"
* #169 "В переднюю камеру глаза"
* #435 "Ингаляционный"
* #610 "Назальный"
* #789 "Внутриматочный"
* #2742 "Ушной"
* #3865 "Инъекционно"
* #3866 "Подкожный"
* #3867 "Внутриартериальный"
* #3868 "Внутрикожный"
* #3869 "Инстилляция"
* #3870 "Конъюнктивальный"
* #3871 "Энтеральный"
* #3872 "Интраназальный"
* #3873 "Внутрисуставный"
* #3874 "Внутриполостное"
* #3875 "Парентеральный"
* #3876 "Для регионарной и инфильтрационной анестезии"
* #3877 "Внутрисосудистый"
* #3878 "Интравагинально"
* #3879 "Эпидуральный"
* #3880 "Спинальная анестезия"
* #3881 "Эндотрахеально"
* #3882 "Внутрь простаты"
* #3883 "Трансдермальный"
* #3884 "Сублингвальный"
* #3885 "Инфильтрация"
* #3886 "Интравитреальный"
* #3887 "Ввдение в пазухи"
* #3888 "Через трахею"
* #3889 "Подъязычный"
* #3890 "Интрацервикальный"
* #3891 "Ретробульбарный"
* #3892 "Суборахноидальное"
* #3893 "Глазные и ушные"
* #3894 "Глазные"
* #3895 "Парабульбарное"
* #3896 "Ингаляционное"
* #3897 "Капельно"
* #3898 "Регионарная анестезия"
* #3899 "Под язычное"
* #3900 "Интратекальный"
* #3901 "Интратрахеально"
* #3902 "Внутрь"
* #3903 "Ректальное"
* #3904 "Внутриглазное"
* #3905 "Интравитральное"
* #3906 "Парентеральное введение"

ValueSet: DMEDPrescriptionRouteVS
Id: dmed-prescription-route-vs
Title: "DMED Prescription Routes"
Description: "All route of administration identifiers of the DMED prescriptions API."
* ^url = "https://terminology.dhp.uz/fhir/integrations/ValueSet/dmed-prescription-route-vs"
* ^status = #active
* ^experimental = false
* include codes from system DMEDPrescriptionRouteCS

CodeSystem: DMEDAdministrationMethodCS
Id: dmed-administration-method-cs
Title: "DMED Administration Method"
Description: "Administration methods of a DMED treatment course item (`administration_method`). DMED keeps them as a fixed list in its frontend, shared with the anesthesia induction methods of the surgery module; the codes are DMED's own and the displays are its Russian labels. The label of `parenteral` is shown in DMED with a typo (Пареневрально) and is corrected here. Taken from the DMED test environment on 2026-11-04."
* ^url = $dmed-administration-method-cs
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* ^language = #ru
* ^publisher = "Uzinfocom"
* #caudal "Каудально"
* #combined "Комбинированно"
* #endoneural "Эндоневрально"
* #endotracheal "Эндотрахеально (интубационно)"
* #epidural "Эпидурально/перидурально"
* #infiltration "Инфильтрационно"
* #inhalation "Ингаляционно"
* #intradermal "Внутрикожно"
* #intramuscular "Внутримышечно"
* #intravascular "Внутрисосудисто"
* #intravenous "Внутривенно"
* #oral "Перорально"
* #paracervical "Парацервикально"
* #parenteral "Парентерально"
* #perineural "Периневрально"
* #rectal "Ректально"
* #subarachnoid "Субарахноидально"
* #subcutaneous "Подкожно"
* #sublingual "Сублингвально"
* #topical "Аппликационно/поверхностно"
* #transmucosal "Трансбуккально"

ValueSet: DMEDAdministrationMethodVS
Id: dmed-administration-method-vs
Title: "DMED Administration Methods"
Description: "All administration methods of a DMED treatment course item."
* ^url = "https://terminology.dhp.uz/fhir/integrations/ValueSet/dmed-administration-method-vs"
* ^status = #active
* ^experimental = false
* include codes from system DMEDAdministrationMethodCS
