> Ushbu matn avtomatik tarjima qilingan.

Profil donor laboratoriya buyurtmalari va qon komponentlarini ikkilamchi qayta ishlash so'rovlarini ifodalaydi. U [UZ Core ServiceRequest](https://dhp.uz/fhir/core/StructureDefinition-uz-core-servicerequest.html) asosida tuzilgan va mavjud donor, tashrif, namuna hamda ombor resurslariga murojaat qiladi.

### Majburiy va qo'llab-quvvatlanadigan elementlar

Majburiy elementlar mavjud bo'lishi kerak. Must Support elementlari alohida so'rovda ixtiyoriy bo'lsa ham, tizimlar tomonidan qo'llab-quvvatlanishi shart.

#### Har bir Blood ServiceRequest uchun majburiy ma'lumotlar

Har bir so'rovda holat, `order` maqsadi va donorga havola bo'lishi shart. Har bir orderDetail kamida bitta parametrni o'z ichiga oladi; parametr tanlangan tekshiruv yoki operatsiya kodi va `valueBoolean: true` qiymatini saqlaydi. Meros olingan prr-1 qoidasi orderDetail mavjud bo'lsa code to'ldirilishini talab qiladi.

#### Har bir Blood ServiceRequest qo'llab-quvvatlaydigan ma'lumotlar

- Buyurtma identifikatorlari va umumiy requisition identifikatori.
- Qabul qiluvchi laboratoriya toifasi, donor tashrifi, rejalashtirilgan vaqt va yaratish vaqti.
- So'rov muallifi, ijrochi, joy, namunalar va klinik sabab.
- Qon komponenti, qo'shimcha ma'lumotlar, izohlar va tanlangan tekshiruv yoki operatsiyalar.

### Ish jarayoni

Har bir laboratoriya uchun alohida so'rov yaratiladi: zaxira donor uchun to'rtta, doimiy donor uchun beshta. Laboratoriya ixtiyoriy `category[dhpCategory]` orqali ko'rsatiladi. Ikkilamchi qayta ishlashda har bir komponent uchun barcha tanlangan operatsiyalar bilan bitta so'rov yaratiladi; mos toifa bo'lmasa category berilmaydi. Barcha operatsiyalar tasdiqlanguncha holat active bo'lib qoladi, keyin completed bo'ladi. Bu o'tishni ilova boshqaradi.

### Ochiq amalga oshirish masalalari

Laboratoriya kodlari dastlabki: usul, namuna va probirka mosligi tasdiqlanishi kerak. SNOMED CT `64108007` umumiy qayta ishlash xizmati uchun dastlabki kod bo'lib, profilda qat'iy belgilanmagan. Faqat fraksiyalash, kriopretsipitat yoki utilizatsiya yo'nalishlari hali kelishilmagan. focus UZ Core InventoryItem ni qabul qiladi; server qo'llab-quvvatlashini tekshiring. Bir komponentni supportingInfo da takrorlamang.

Manba jadvalida so'rov raqami uchun qon mahsuloti identifikator tizimi taklif qilingan. Bu tizim mahsulotlarni belgilaydi, shuning uchun buyurtma raqamlari uchun qat'iy belgilanmagan. identifier yoki requisition berilsa, system majburiy; tasdiqlangan UZ Core hujjat identifikator tizimidan foydalaning. Yangi identifikator tizimi kiritilmaydi.

### JSON ni bosqichma-bosqich tuzish

Birinchi misol minimal; ikkinchisi laboratoriya tekshiruvini qo'shadi; uchinchisi dastlabki umumiy xizmat kodi bilan mahalliy operatsiyani ko'rsatadi. To'liq misollar: [laboratoriya buyurtmasi](ServiceRequest-example-blood-laboratory-order.html) va [komponentni qayta ishlash](ServiceRequest-example-blood-component-processing-order.html).

```json
{
  "resourceType": "ServiceRequest",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/blood-servicerequest"
    ]
  },
  "status": "active",
  "intent": "order",
  "subject": {
    "reference": "Patient/example-blood-donor"
  }
}
```

```json
{
  "resourceType": "ServiceRequest",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/blood-servicerequest"
    ]
  },
  "status": "active",
  "intent": "order",
  "subject": {
    "reference": "Patient/example-blood-donor"
  },
  "code": {
    "concept": {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "108252007"
        }
      ]
    }
  },
  "orderDetail": [
    {
      "parameter": [
        {
          "code": {
            "coding": [
              {
                "system": "http://loinc.org",
                "code": "1975-2"
              }
            ]
          },
          "valueBoolean": true
        }
      ]
    }
  ]
}
```

```json
{
  "resourceType": "ServiceRequest",
  "meta": {
    "profile": [
      "https://dhp.uz/fhir/integrations/StructureDefinition/blood-servicerequest"
    ]
  },
  "status": "active",
  "intent": "order",
  "subject": {
    "reference": "Patient/example-blood-donor"
  },
  "code": {
    "concept": {
      "coding": [
        {
          "system": "http://snomed.info/sct",
          "code": "64108007"
        }
      ]
    }
  },
  "focus": [
    {
      "reference": "InventoryItem/example-blood-component-inventory"
    }
  ],
  "orderDetail": [
    {
      "parameter": [
        {
          "code": {
            "coding": [
              {
                "system": "https://terminology.dhp.uz/fhir/integrations/CodeSystem/processing-operation-cs",
                "code": "bld-operation-0001"
              }
            ]
          },
          "valueBoolean": true
        }
      ]
    }
  ]
}
```

[Tez boshlash](#quick-start) bo'limiga qarang.
