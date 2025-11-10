//Esempio del paziente nel contesto del telemonitoraggio
Instance: PatientTelemonitoraggioExample
InstanceOf: PatientTelemonitoraggio
Description: "Esempio di paziente nel contesto del telemonitoraggio"
Usage: #example
* id = "2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82"
// * extension[luogoNascita].valueAddress.extension[residenza].valueBoolean = true
// * extension[luogoNascita].valueAddress.line[+].extension[odonimo].valueString = "Via della Vittoria"
//* extension[luogoNascita].valueAddress.line[=].extension[houseNumber].valueString = "1"
* extension[luogoNascita].valueAddress.line[0] = "Via della Vittoria, 1"
* extension[luogoNascita].valueAddress.city = "Milano"
* extension[luogoNascita].valueAddress.postalCode = "20100"
* extension[luogoNascita].valueAddress.country = "IT"
* extension[luogoNascita].valueAddress.state = "Italia"

* identifier
  * system = "http://hl7.it/sid/codiceFiscale"
  * value = "RSSMRA71E01F205E" 

* name.family = "Rossi"
* name.given = "Maria"

* telecom[0].system = #phone
* telecom[0].value = "3331245678"

* telecom[1].system = #email
* telecom[1].value = "maria.rossi@mail.com"
* birthDate = "1971-05-01"
* gender = #female
* address.city = "Milano"
* address.country = "IT"
* address.postalCode = "20100"
* address.line = "Via della Libertà, 52"
* address.use = #home
* address.state = "Italia"
//* address.extension[residenza].valueBoolean = true
//* address.extension[certificazioneIndirizzo].extension[who].valueCodeableConcept = https://www.hl7.it/fhir/terminology/CodeSystem/it-tipoEntita#gov
//* address.line.extension[dugCode].valueCodeableConcept  = $istat-DUG-CS#67 "via"
* contact[0].name.family = "Rossi"
* contact[0].name.given = "Luigi"
* contact[1].name.family = "Bianchi"
* contact[1].name.given = "Maria"
* contact[0].relationship.coding.code = #C
* contact[0].relationship.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0131"
* contact[0].relationship.coding.display = "Emergency Contact"
* contact[1].relationship.coding.code = #C
* contact[1].relationship.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0131"
* contact[1].relationship.coding.display = "Emergency Contact"
* contact[0].telecom.system = #phone
* contact[0].telecom.value = "3312345567"
* contact[1].telecom.system = #phone
* contact[1].telecom.value = "3311234598"

Instance: PractitionerRoleTelemonitoraggioConsulenteExample
InstanceOf: PractitionerRoleTelemonitoraggio
Description: "Esempio di practitionerRole nel contesto della Telemonitoraggio"
Usage: #example
* organization = Reference(AslRoma1)
* practitioner = Reference(PractitionerTelemonitoraggioConsulenteExample)
* specialty = csspecialityPractitionerRole#01 "Allergologia"
* id = "9f1a2b87-7d4c-4a65-8fc7-e8b56f7312f5"

Instance: PractitionerTelemonitoraggioConsulenteExample
InstanceOf: PractitionerTelemonitoraggio
Description: "Esempio di practitioner nel contesto della Telemonitoraggio"
Usage: #example
* id = "d37c3d0a-96d9-4de5-873c-68b6c1c64db2"
* name.given = "John"
* name.family = "Cena"
* identifier
  * system = "http://hl7.it/sid/codiceFiscale"
  * value = "RSSMRA71E01F205E" 

Instance: AslRoma1
InstanceOf: OrganizationT1
Title: "ASL Roma 1"
Description: "Esempio di Azienda Sanitaria Locale (ASL)"
Usage: #example
* id = "asl-roma-1"
* name = "ASL Roma 1"
* identifier[asl].system = "http://hl7.it/sid/fls"
* identifier[asl].value = "RM0011"
* identifier[aslRegione].system = "https://www.hl7.it/fhir/terminology/ValueSet/uri-idAslRegione"
* identifier[aslRegione].value = "RM1"
* identifier[partitaIva].system = "http://hl7.it/sid/partitaIva"
* identifier[partitaIva].value = "12345678901"
* identifier[codiceFiscale].system = "http://hl7.it/sid/codiceFiscale"
* identifier[codiceFiscale].value = "01234567890"


Instance: PresidioSandroPertini
InstanceOf: OrganizationT2
Title: "Presidio Sandro Pertini"
Description: "Presidio ospedaliero facente parte di ASL Roma 1"
Usage: #example

* id = "osp-pertini"
* name = "Ospedale Sandro Pertini"
* partOf = Reference(Organization/asl-roma-1)
* identifier.system = "http://hl7.it/sid/hsp"
* identifier.value = "HSP00123"


Instance: UOCardiologiaPertini
InstanceOf: OrganizationT3
Title: "U.O. Cardiologia - Ospedale Pertini"
Description: "Unità Operativa di Cardiologia afferente all'Ospedale Pertini"
Usage: #example

* id = "uo-cardiologia-pertini"
* name = "U.O. Cardiologia"
* partOf = Reference(Organization/osp-pertini)
* identifier.system = "http://hl7.it/sid/hsp"
* identifier.value = "UO12345"

Instance: Device-Pulsossimetro-Esempio
InstanceOf: DeviceTelemonitoraggio
Usage: #example
Title: "Pulsossimetro - Esempio"
Description: "Device di teleassistenza per monitoraggio SpO2"
* id = "7cbbe77d-dcdb-409b-a215-pulsioss"
* status = #active
* identifier[0].system = "http://example.org/fhir/id/device"
* identifier[0].value = "DEV-SPO2-0021"

* udiCarrier.deviceIdentifier = "98765432109876"
* udiCarrier.carrierHRF = "(01)98765432109876(21)SNSPO20021(10)BATCH9"

* manufacturer = "Meditech Italia S.r.l."
* manufactureDate = "2023-11-02"
* expirationDate = "2028-11-01"
* lotNumber = "BATCH9"
* serialNumber = "SNSPO20021"

* deviceName[modelloDelDevice].name = "Meditech OxiCare Pro"
* deviceName[modelloDelDevice].type = http://hl7.org/fhir/device-nametype#model-name "Model name"


// *************** Esempi per il Tesserino Dispositivo *******************
Instance: Pulsossimetro-DeviceUseStatement-Esempio
InstanceOf: DeviceUseStatementTelemonitoraggio
Usage: #example
Title: "Use statetement pulsossimetro - Esempio"
Description: "Assegnazione del device per il monitoraggio SpO2 al paziente"
* id = "7cbbe77d-dcdb-409b-a215-tessdisp"
* subject = Reference(PatientTelemonitoraggioExample)
* device = Reference(Device-Pulsossimetro-Esempio)
* timingPeriod.start = "2025-06-16T10:30:00+02:00"

Instance: CompositionTesserinoDispositiviTM-Esempio
InstanceOf: CompositionTesserinoDispositiviTM
Title: "Esempio di Tesserino Dispositivo"
Description: "Tesserino Dispositivo contenente tutte le informazioni obbligatorie"
Usage: #example
* id = "7cbbe77d-dcdb-409b-a215-comptess"
* status = #final
//rivedere il type
* type = $loinc#75496-0 "Telehealth Note"
* title = "Tesserino dispositivi"
* subject = Reference(PatientTelemonitoraggioExample)
* date = "2025-06-16T10:30:00+02:00"
* author = Reference(PractitionerRoleTelemonitoraggioConsulenteExample)
* attester[legalAuthenticator].mode = #legal
* attester[legalAuthenticator].time = "2025-06-16T10:30:00+02:00"
* attester[legalAuthenticator].party = Reference(PractitionerRoleTelemonitoraggioConsulenteExample)
* section[informazioniDevice].code = $loinc#104972-5
* section[informazioniDevice].title = "Informazioni sul dispositivo"
* section[informazioniDevice].entry[0] = Reference(Pulsossimetro-DeviceUseStatement-Esempio)

/*
  PIANO DI TELEMONITORAGGIO: Caso d’uso: Scompenso cardiaco in follow-up (Telemonitoraggio di Tipo I)
  Paziente: Maria Rossi (67 anni), dimessa da 10 giorni dopo riacutizzazione di scompenso cardiaco (HFrEF).
  Obiettivo del TM: intercettare precocemente segni di congestione e variazioni pressorie/frequenza.
  Parametri e frequenze:
  - Peso: 1 volta/die (mattina, a digiuno).
  - PA e FC: 1 volta/die.
  - SpO₂: 1 volta/die (a riposo).
  - Durata iniziale del piano: 30 giorni (rinnovabile).
  - Attori: Medico referente ambulatorio scompenso; infermieri territoriali; caregiver.
  - Dispositivi domiciliari: bilancia connessa (BLE→gateway), sfigmomanometro BT, pulsossimetro BT.
  - Modalità di revisione dati: revisione periodica (giornaliera/settimanale) secondo protocollo; nessuna gestione “real-time” degli allarmi (Tipo I).
*/

//**********Helper Res di telemonitoraggio**********

Instance: RoleMedicoBianchiTM
InstanceOf: PractitionerRoleTelemonitoraggio
Description: "Esempio di practitionerRole nel contesto del Telemonitoraggio"
Usage: #example
* practitioner = Reference(MedicoBianchi)         
* organization = Reference(PresidioSandroPertini)
* active = true
* id = "practrole-bianchi-tm"
* period.start = "2025-01-01"
* period.end = "2026-12-31"
* code[0].text = "Medico Referente Telemonitoraggio"
* specialty = csspecialityPractitionerRole#07 "Cardiochirurgia"

Instance: MedicoBianchi
InstanceOf: PractitionerTelemonitoraggio
Description: "Esempio di practitioner nel contesto del Telemonitoraggio"
Usage: #example
* id = "pract-bianchi"
* name[0].family = "Bianchi"
* name[0].given[0] = "Laura"
* identifier
  * system = "http://hl7.it/sid/codiceFiscale"
  * value = "BNCLRA71E41D612A"

// ===== Alias utili =====
Alias: $csTipoAlimentazione = http://example.it/fhir/CodeSystem/tipoAlimentazione
Alias: $csTipoCollegamento = http://example.it/fhir/CodeSystem/tipoCollegamento
Alias: $sct = http://snomed.info/sct

// ===== Fabbricante (profilo: OrganizationFabbricante) =====
Instance: OrgFab-AcmeHealth
InstanceOf: OrganizationFabbricante
Description: "Esempio di azienda produttrice di device nel contesto del telemonitoraggio"
Usage: #example
* identifier[0].system = "http://hl7.it/sid/partitaIVA"
* identifier[0].value = "09876543210"
* name = "Acme Health S.p.A."
* address[0].line[0] = "Via delle Industrie 12"
* address[0].city = "Milano"
* address[0].district = "MI"         
* address[0].state = "Lombardia"     
* address[0].postalCode = "20100"
* address[0].country = "IT"
* telecom[Website].system = #url
* telecom[Website].value = "https://www.acmehealth.example.it"


// ===== DeviceDefinition conformi a DeviceDefinitionTelemonitoraggio =====

// --- Bilancia connessa ACME-B100 ---
Instance: DevDef-Bilancia-B100
InstanceOf: DeviceDefinitionTelemonitoraggio
Description: "Esempio di deviceDefinition per il dispositivo bilancia ACME-B100 nel contesto del telemonitoraggio"
Usage: #example
* manufacturerReference = Reference(OrgFab-AcmeHealth)
* modelNumber = "ACME-B100"
* type = $sct#39857003 "Weighing patient"

* property[tipoAlimentazione].type.text = "Tipo di alimentazione"
* property[tipoAlimentazione].type = CSTipoPropertyDeviceDefinitionTM#tipoAlimentazione "Tipo di alimentazione"
* property[tipoAlimentazione].valueCode.coding[0].system = $csTipoAlimentazione
* property[tipoAlimentazione].valueCode.coding[0].code = #BAT
* property[tipoAlimentazione].valueCode.coding[0].display = "Batterie"

* property[tipoCollegamento].type.text = "Tipo di collegamento"
* property[tipoCollegamento].type = CSTipoPropertyDeviceDefinitionTM#tipoCollegamento "Tipo di collegamento"
* property[tipoCollegamento].valueCode.coding[0].system = $csTipoCollegamento
* property[tipoCollegamento].valueCode.coding[0].code = #BLE
* property[tipoCollegamento].valueCode.coding[0].display = "Bluetooth Low Energy"

// --- Sfigmomanometro BT ACME-P200 ---
Instance: DevDef-Sfigmo-P200
InstanceOf: DeviceDefinitionTelemonitoraggio
Description: "Esempio di deviceDefinition per il dispositivo Sfigmomanometro ACME-P200 nel contesto del telemonitoraggio"
Usage: #example
* manufacturerReference = Reference(OrgFab-AcmeHealth)
* modelNumber = "ACME-P200"
* type = $sct#75367002 "Blood pressure"

* property[tipoAlimentazione].type.text = "Tipo di alimentazione"
* property[tipoAlimentazione].valueCode.coding[0].system = $csTipoAlimentazione
* property[tipoAlimentazione].valueCode.coding[0].code = #BAT
* property[tipoAlimentazione].valueCode.coding[0].display = "Batterie"

* property[tipoCollegamento].type.text = "Tipo di collegamento"
* property[tipoCollegamento].valueCode.coding[0].system = $csTipoCollegamento
* property[tipoCollegamento].valueCode.coding[0].code = #BT
* property[tipoCollegamento].valueCode.coding[0].display = "Bluetooth"

// --- Pulsossimetro BT ACME-O50 ---
Instance: DevDef-Pulsossimetro-O50
InstanceOf: DeviceDefinitionTelemonitoraggio
Description: "Esempio di deviceDefinition per il pulsiossimetro ACME-O50 nel contesto del telemonitoraggio"
Usage: #example
* manufacturerReference = Reference(OrgFab-AcmeHealth)
* modelNumber = "ACME-O50"
* type = $sct#448703006 "Pulse oximeter"

* property[tipoAlimentazione].type.text = "Tipo di alimentazione"
* property[tipoAlimentazione].valueCode.coding[0].system = $csTipoAlimentazione
* property[tipoAlimentazione].valueCode.coding[0].code = #BAT
* property[tipoAlimentazione].valueCode.coding[0].display = "Batterie"

* property[tipoCollegamento].type.text = "Tipo di collegamento"
* property[tipoCollegamento].valueCode.coding[0].system = $csTipoCollegamento
* property[tipoCollegamento].valueCode.coding[0].code = #BT
* property[tipoCollegamento].valueCode.coding[0].display = "Bluetooth"


// ===== Dispositivi conformi a DeviceTelemonitoraggio =====

// --- Bilancia connessa ---
Instance: DevBilancia
InstanceOf: DeviceTelemonitoraggio
Description: "Esempio di deviceTelemonitoraggio per il dispositivo bilancia"
Usage: #example
* status = #active
* id = "device-bilancia"
* manufacturer = "Acme Health"
* manufactureDate = "2025-01-15"
* serialNumber = "SN-B100-00987"
* lotNumber = "LOT-2025-01-A"
* definition = Reference(DevDef-Bilancia-B100)
* owner = Reference(PresidioSandroPertini)
// UDI (esempio GS1)
* udiCarrier[0].deviceIdentifier = "12345678901234"
* udiCarrier[0].issuer = "urn:oid:1.3.160.10.3"          // esempio
* udiCarrier[0].carrierHRF = "(01)12345678901234(21)SN-B100-00987"
// deviceName slicing: nomeDelDevice + modelloDelDevice
* deviceName[nomeDelDevice].name = "Bilancia Connessa ACME-B100"
* deviceName[nomeDelDevice].type = #user-friendly-name
* deviceName[modelloDelDevice].name = "ACME-B100"
* deviceName[modelloDelDevice].type = #model-name
// Tipologia
* type = $sct#39857003 "Weighing patient"
// (facoltativo) estensione di “technicalCheck” — lasciare la sola URL se non modelli i sotto-campi
//* extension[technicalCheck].url = "http://hl7.it/fhir/StructureDefinition/DeviceTechnicalCheck"

// --- Sfigmomanometro BT ---
Instance: DevSfigmo
InstanceOf: DeviceTelemonitoraggio
Description: "Esempio di deviceTelemonitoraggio per il dispositivo sfigmomanometro"
Usage: #example
* status = #active
* id = "device-sfigmo"
* manufacturer = "Acme Health"
* manufactureDate = "2025-02-10"
* serialNumber = "SN-P200-00421"
* lotNumber = "LOT-2025-02-B"
* definition = Reference(DevDef-Sfigmo-P200)
* owner = Reference(PresidioSandroPertini)
// UDI (esempio GS1)
* udiCarrier[0].deviceIdentifier = "22345678901231"
* udiCarrier[0].issuer = "urn:oid:1.3.160.10.3"
* udiCarrier[0].carrierHRF = "(01)22345678901231(21)SN-P200-00421"
// deviceName slicing
* deviceName[nomeDelDevice].name = "Sfigmomanometro BT ACME-P200"
* deviceName[nomeDelDevice].type = #user-friendly-name
* deviceName[modelloDelDevice].name = "ACME-P200"
* deviceName[modelloDelDevice].type = #model-name
// Tipologia
* type = $sct#95691000146106 "Blood pressure using automatic blood pressure monitor"

// --- Pulsossimetro BT ---
Instance: DevPulsossimetro
InstanceOf: DeviceTelemonitoraggio
Description: "Esempio di deviceTelemonitoraggio per il dispositivo pulsiossimetro"
Usage: #example
* status = #active
* id = "device-spo2"
* manufacturer = "Acme Health"
* manufactureDate = "2025-03-05"
* serialNumber = "SN-O50-00033"
* lotNumber = "LOT-2025-03-C"
* definition = Reference(DevDef-Pulsossimetro-O50)
* owner = Reference(PresidioSandroPertini)
// UDI (esempio GS1)
* udiCarrier[0].deviceIdentifier = "32345678901230"
* udiCarrier[0].issuer = "urn:oid:1.3.160.10.3"
* udiCarrier[0].carrierHRF = "(01)32345678901230(21)SN-O50-00033"
// deviceName slicing
* deviceName[nomeDelDevice].name = "Pulsossimetro BT ACME-O50"
* deviceName[nomeDelDevice].type = #user-friendly-name
* deviceName[modelloDelDevice].name = "ACME-O50"
* deviceName[modelloDelDevice].type = #model-name
// Tipologia
* type = $sct#448703006 "Pulse oximeter"


// ===== Alias utili =====
Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct
Alias: $catTM = http://example.it/fhir/CodeSystem/observation-category-telemonitoraggio
Alias: $icd9cm = http://hl7.org/fhir/sid/icd-9-cm

// ======================================================
// OBSERVATION DEFINITION — profilo: ObservationDefinitionPianoTM
// ======================================================

// -- Peso corporeo --
Instance: ObsDef-Peso
InstanceOf: ObservationDefinitionPianoTM
Description: "Esempio di ObservationDefinitionPianoTM per il peso corporeo"
Usage: #example
* id = "obsdef-peso"
* category[0].coding[0].system = $catTM
* category[0].coding[0].code = #intermediato
* category[0].coding[0].display = "Intermediato"
* code = $loinc#29463-7 "Body weight"
* method.text = "Bilancia connessa domestica"
* qualifiedInterval[0].condition = "Attenzione se aumento > 2 kg in 3 giorni rispetto al baseline."

// -- Pressione arteriosa sistolica --
Instance: ObsDef-PAS
InstanceOf: ObservationDefinitionPianoTM
Description: "Esempio di ObservationDefinitionPianoTM per la pressione arteriosa sistolica"
Usage: #example
* id = "obsdef-pas"
* category[0].coding[0].system = $catTM
* category[0].coding[0].code = #intermediato
* category[0].coding[0].display = "Intermediato"
* code = $loinc#8480-6 "Systolic blood pressure"
* method.text = "Sfigmomanometro automatico (bracciale)"
* qualifiedInterval[0].range.low.value = 90
* qualifiedInterval[0].range.low.unit = "mmHg"
* qualifiedInterval[0].range.high.value = 160
* qualifiedInterval[0].range.high.unit = "mmHg"
* qualifiedInterval[0].condition = "Soglie operative per TM Tipo I."

// -- Pressione arteriosa diastolica --
Instance: ObsDef-PAD
InstanceOf: ObservationDefinitionPianoTM
Description: "Esempio di ObservationDefinitionPianoTM per la pressione arteriosa diastolica"
Usage: #example
* id = "obsdef-pad"
* category[0].coding[0].system = $catTM
* category[0].coding[0].code = #intermediato
* category[0].coding[0].display = "Intermediato"
* code = $loinc#8462-4 "Diastolic blood pressure"
* method.text = "Sfigmomanometro automatico (bracciale)"
* qualifiedInterval[0].range.low.value = 50
* qualifiedInterval[0].range.low.unit = "mmHg"
* qualifiedInterval[0].range.high.value = 100
* qualifiedInterval[0].range.high.unit = "mmHg"
* qualifiedInterval[0].condition = "Soglie operative per TM Tipo I."

// -- Frequenza cardiaca --
Instance: ObsDef-FC
InstanceOf: ObservationDefinitionPianoTM
Description: "Esempio di ObservationDefinitionPianoTM per la frequenza cardiaca"
Usage: #example
* id = "obsdef-fc"
* category[0].coding[0].system = $catTM
* category[0].coding[0].code = #intermediato
* category[0].coding[0].display = "Intermediato"
* code = $loinc#8867-4 "Heart rate"
* method.text = "Derivata da sfigmomanometro automatico"
* qualifiedInterval[0].range.low.value = 50
* qualifiedInterval[0].range.low.unit = "beats/min"
* qualifiedInterval[0].range.high.value = 110
* qualifiedInterval[0].range.high.unit = "beats/min"
* qualifiedInterval[0].condition = "Soglie operative per TM Tipo I."

// -- Saturazione periferica di O2 (SpO2) --
Instance: ObsDef-SpO2
InstanceOf: ObservationDefinitionPianoTM
Description: "Esempio di ObservationDefinitionPianoTM per la SpO2"
Usage: #example
* id = "obsdef-spo2"
* category[0].coding[0].system = $catTM
* category[0].coding[0].code = #intermediato
* category[0].coding[0].display = "Intermediato"
* code = $loinc#59408-5 "Oxygen saturation in Arterial blood by Pulse oximetry"
* method.text = "Pulsossimetro da dito"
* qualifiedInterval[0].range.low.value = 92
* qualifiedInterval[0].range.low.unit = "%"
* qualifiedInterval[0].range.high.value = 100
* qualifiedInterval[0].range.high.unit = "%"
* qualifiedInterval[0].condition = "Valori < 92% da verificare secondo protocollo."

// ======================================================
// ACTIVITY DEFINITION — profilo: ActivityDefinitionPianoTM
// ======================================================

// --- Rilevazione peso quotidiana ---
Instance: AD-PesoQuotidiano
InstanceOf: ActivityDefinitionPianoTM
Description: "Esempio di ActivityDefinitionPianoTM per la rilevazione quotidiana del peso."
Usage: #example
* name = "PesoQuotidiano"
* id = "ad-peso-quotidiano"
* url = "http://example.org/fhir/ActivityDefinition/ad-peso-quotidiano"
* title = "Rilevazione peso quotidiana"
* description = "Misurazione del peso corporeo al mattino, a digiuno, con bilancia connessa."
* status = #active
// timing[x] = Timing
* timingTiming.repeat.frequency = 1
* timingTiming.repeat.period = 1
* timingTiming.repeat.periodUnit = #d
* timingTiming.repeat.timeOfDay[0] = "08:00:00"
// codice della prestazione pianificata (es. SNOMED o locale)
* code = $sct#27113001 "Body weight"
// elenco dei parametri richiesti dall'attività
* observationRequirement[0] = Reference(ObsDef-Peso)

// --- Pressione arteriosa + Frequenza cardiaca quotidiane ---
Instance: AD-PAFC-Quotidiane
InstanceOf: ActivityDefinitionPianoTM
Description: "Esempio di ActivityDefinitionPianoTM per la rilevazione quotidiana di pressione arteriosa e frequenza cardiaca."
Usage: #example
* status = #active
* id = "ad-pafc-quotidiane"
* name = "PAFCQuotidiane"
* url = "http://example.org/fhir/ActivityDefinition/ad-pafc-quotidiane"
* title = "Pressione arteriosa e frequenza cardiaca quotidiane"
* description = "Misurazione PA (sistolica e diastolica) e FC con sfigmomanometro automatico."
* timingTiming.repeat.frequency = 1
* timingTiming.repeat.period = 1
* timingTiming.repeat.periodUnit = #d
* timingTiming.repeat.timeOfDay[0] = "08:30:00"
// codice dell'attività (SNOMED generico su misurazione PA/FC)
* code = $sct#75367002 "Blood pressure"
// observationRequirement multipli
* observationRequirement[0] = Reference(ObsDef-PAS)
* observationRequirement[1] = Reference(ObsDef-PAD)
* observationRequirement[2] = Reference(ObsDef-FC)

// --- SpO2 quotidiana ---
Instance: AD-SpO2-Quotidiana
InstanceOf: ActivityDefinitionPianoTM
Description: "Esempio di ActivityDefinitionPianoTM per la rilevazione quotidiana della SpO2."
Usage: #example
* status = #active
* id = "ad-spo2-quotidiana"
* url = "http://example.org/fhir/ActivityDefinition/ad-spo2-quotidiana"
* name = "SpO2Quotidiana"
* title = "Saturazione periferica di ossigeno quotidiana"
* description = "Misurazione SpO₂ a riposo con pulsossimetro da dito."
* timingTiming.repeat.frequency = 1
* timingTiming.repeat.period = 1
* timingTiming.repeat.periodUnit = #d
* timingTiming.repeat.timeOfDay[0] = "08:45:00"
// codice dell'attività
* code = $sct#448703006 "Pulse oximeter"
// observationRequirement
* observationRequirement[0] = Reference(ObsDef-SpO2)


Instance: ObsDiagnosiTM
InstanceOf: ObservationPianoTelemonitoraggio
Description: "Esempio di ObservationPianoTelemonitoraggio relativa ad una diagnosi di scompenso cardiaco."
Usage: #example
* id = "obs-diagnosi-tm"
* status = #final
* code = CodeSystem_DiagnosiICD9CM#428 "INSUFFICIENZA CARDIACA (SCOMPENSO CARDIACO)"
* code.text = "Scompenso cardiaco"
* subject = Reference(PatientTelemonitoraggioExample)
* effectiveDateTime = "2025-11-07"
// preferibile referenziare il ruolo se il profilo ObservationTelemedicina lo consente
* performer[0] = Reference(RoleMedicoBianchiTM)
// facoltativo: mantenere un mapping clinico descrittivo nel value
* valueCodeableConcept.text = "Scompenso cardiaco a frazione di eiezione ridotta (HFrEF)"


//**********Composition Piano di telemonitoraggio**********

Instance: EsempioCompositionPianoTM
InstanceOf: CompositionPianoTM
Description: "Esempio di Composition nel contesto del Piano di Telemonitoraggio"
Usage: #example
* status = #final
* type = $loinc#53576-5 "Personal health monitoring report Document"
* date = "2025-11-07T10:00:00+01:00"
* title = "Piano di Telemonitoraggio"
* subject = Reference(PatientTelemonitoraggioExample)
* author = Reference(RoleMedicoBianchiTM)
* id = "composition-piano-tm-1"
* attester[legalAuthenticator].mode = #legal
* attester[legalAuthenticator].time = "2025-11-07T10:15:00+01:00"
* attester[legalAuthenticator].party = Reference(RoleMedicoBianchiTM)

* event[0].period.start = "2025-11-07"
* event[0].period.end = "2025-12-07"

* section[pianoDiCura].code = $loinc#18776-5
* section[pianoDiCura].entry[0] = Reference(CarePlanPiano)

* section[diagnosi].code = $loinc#29548-5
* section[diagnosi].entry[0] = Reference(ObsDiagnosiTM)


//**********Care Plan Piano di telemonitoraggio**********
Instance: CarePlanPiano
InstanceOf: CarePlanPianoDiCuraTelemonitoraggio
Description: "Esempio di CarePlan nel contesto del Piano di Telemonitoraggio"
Usage: #example

* identifier[0].system = "http://example.it/fhir/CarePlan/identifier"
* identifier[0].value = "TM-2025-000123"
* category = csTipologiaPiano#01 "Piano di Telemonitoraggio"
* subject = Reference(PatientTelemonitoraggioExample)
* id = "careplan-tm-1"
* status = #active
* intent = #plan

* period.start = "2025-11-07"
* period.end = "2025-12-07"

* author = Reference(RoleMedicoBianchiTM)

* extension[statoDelPiano].url = "http://hl7.it/fhir/telemonitoraggio/StructureDefinition/careplan-stato-type"
* extension[statoDelPiano].valueCodeableConcept = CSCarePlanStato#initial "Prima stesura"

* activity[+].detail.status = #in-progress
* activity[=].detail.code = $sct#879780004 "Telehealth monitoring for chronic heart failure (regime/therapy)"
* activity[=].detail.code.text = "Peso quotidiano"
* activity[=].detail.instantiatesCanonical = "http://example.org/fhir/ActivityDefinition/ad-peso-quotidiano"
* activity[=].detail.performer[0] = Reference(DevBilancia)
* activity[=].detail.description = "Misurazione mattutina a digiuno, 1/die."

* activity[+].detail.status = #in-progress
* activity[=].detail.code = $sct#879780004 "Telehealth monitoring for chronic heart failure (regime/therapy)"
* activity[=].detail.code.text = "PA e FC quotidiane"
* activity[=].detail.instantiatesCanonical = "http://example.org/fhir/ActivityDefinition/ad-pafc-quotidiane"
* activity[=].detail.performer[0] = Reference(DevSfigmo)
* activity[=].detail.description = "1 misurazione/die, posizione seduta, bracciale adeguato."

* activity[+].detail.status = #in-progress
* activity[=].detail.code = $sct#879780004 "Telehealth monitoring for chronic heart failure (regime/therapy)"
* activity[=].detail.code.text = "SpO₂ quotidiana"
* activity[=].detail.instantiatesCanonical = "http://example.org/fhir/ActivityDefinition/ad-spo2-quotidiana"
* activity[=].detail.performer[0] = Reference(DevPulsossimetro)
* activity[=].detail.description = "A riposo, dito indice, 1 misurazione/die."

* note[0].text = "Prima stesura del Piano di Telemonitoraggio (30 giorni)."

//************Bundle document piano di telemonitoraggio************

// ===============================================
// BUNDLE DOCUMENT del Piano di Telemonitoraggio
// ===============================================
Instance: EsempioPianoDiTelemonitoraggio
InstanceOf: BundlePianoTM
Usage: #example
Description: "Esempio di Bundle nel contesto del Piano di Telemonitoraggio."
* type = #document
* identifier.system = "urn:ietf:rfc:39861"
* identifier.value = "urn:uuid:bnd-tm-2025-000123"
* timestamp = "2025-11-07T10:20:00+01:00"

* entry[0].fullUrl = "http://example.org/fhir/Composition/composition-piano-tm-1"
* entry[0].resource = EsempioCompositionPianoTM

* entry[1].fullUrl = "http://example.org/fhir/CarePlan/careplan-tm-1"
* entry[1].resource = CarePlanPiano

* entry[2].fullUrl = "http://example.org/fhir/Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82"
* entry[2].resource = PatientTelemonitoraggioExample

* entry[3].fullUrl = "http://example.org/fhir/PractitionerRole/practrole-bianchi-tm"
* entry[3].resource = RoleMedicoBianchiTM

// * entry[4].fullUrl = "http://example.org/fhir/PractitionerRole/9f1a2b87-7d4c-4a65-8fc7-e8b56f7312f5"
// * entry[4].resource = PractitionerRoleTelemonitoraggioConsulenteExample

// * entry[4].fullUrl = "http://example.org/fhir/Organization/asl-roma-1"
// * entry[4].resource = AslRoma1

* entry[4].fullUrl = "http://example.org/fhir/Practitioner/pract-bianchi"
* entry[4].resource = MedicoBianchi

// * entry[7].fullUrl = "http://example.org/fhir/Practitioner/d37c3d0a-96d9-4de5-873c-68b6c1c64db2"
// * entry[7].resource = PractitionerTelemonitoraggioConsulenteExample

* entry[5].fullUrl = "http://example.org/fhir/Device/device-bilancia"
* entry[5].resource = DevBilancia

* entry[6].fullUrl = "http://example.org/fhir/Device/device-sfigmo"
* entry[6].resource = DevSfigmo

* entry[7].fullUrl = "http://example.org/fhir/Device/device-spo2"
* entry[7].resource = DevPulsossimetro

* entry[8].fullUrl = "http://example.org/fhir/ActivityDefinition/ad-peso-quotidiano"
* entry[8].resource = AD-PesoQuotidiano

* entry[9].fullUrl = "http://example.org/fhir/ActivityDefinition/ad-pafc-quotidiane"
* entry[9].resource = AD-PAFC-Quotidiane

* entry[10].fullUrl = "http://example.org/fhir/ActivityDefinition/ad-spo2-quotidiana"
* entry[10].resource = AD-SpO2-Quotidiana

* entry[11].fullUrl = "http://example.org/fhir/ObservationDefinition/obsdef-peso"
* entry[11].resource = ObsDef-Peso

* entry[12].fullUrl = "http://example.org/fhir/ObservationDefinition/obsdef-pas"
* entry[12].resource = ObsDef-PAS

* entry[13].fullUrl = "http://example.org/fhir/ObservationDefinition/obsdef-pad"
* entry[13].resource = ObsDef-PAD

* entry[14].fullUrl = "http://example.org/fhir/ObservationDefinition/obsdef-fc"
* entry[14].resource = ObsDef-FC

* entry[15].fullUrl = "http://example.org/fhir/ObservationDefinition/obsdef-spo2"
* entry[15].resource = ObsDef-SpO2

* entry[16].fullUrl = "http://example.org/fhir/Observation/obs-diagnosi-tm"
* entry[16].resource = ObsDiagnosiTM



