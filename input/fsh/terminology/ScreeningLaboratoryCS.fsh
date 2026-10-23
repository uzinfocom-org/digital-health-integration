CodeSystem: ScreeningLaboratoryCS
Id: screening-laboratory-cs
Title: "Laboratory Tests CodeSystem"
Description: "Terminology for laboratory tests used in cervical and breast cancer screening programs (LOINC)"

* insert SupplementCodeSystemDraft(screening-laboratory-cs, $loinc, 2.82.0)

* #18500-9 "Microscopic observation [Identifier] in Cervix by Cyto stain.thin prep"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Цитологическое исследование материала шейки матки методом жидкостной цитологии"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bachadon bo'yni materialini suyuqlik sitologiyasi usulida tekshirish"

* #82675-0 "HPV I/H Risk 4 DNA Cvx Ql NAA+probe"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Определение ДНК ВПЧ типов 16, 18, 31, 33, 35, 39, 45, 51, 52, 56, 58, 59, 66 и 68 в материале шейки матки методом амплификации нуклеиновых кислот с зондовой детекцией"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bachadon bo'yni materialida OPVning 16, 18, 31, 33, 35, 39, 45, 51, 52, 56, 58, 59, 66 va 68 turlari DNKsini nuklein kislotalarni amplifikatsiyalash va zond bilan aniqlash usulida tekshirish"
