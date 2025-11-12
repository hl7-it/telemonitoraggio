// =======================================
// BUNDLE document — Report 09/11/2025
// =======================================
Instance: BundleReportRilevazioni-2025-11-09
InstanceOf: BundleReportRilevazioniTM
Usage: #example
Description: "Document bundle del Report Rilevazioni quotidiane del 09/11/2025"
* type = #document
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:bundle-report-2025-11-09"
* timestamp = "2025-11-09T09:05:00+01:00"

* entry[0].fullUrl = "http://example.org/fhir/Composition/composition-report-rilevazioni-2025-11-09"
* entry[0].resource = CompositionReportRilevazioneTM-2025-11-09

* entry[1].fullUrl = "http://example.org/fhir/Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82"
* entry[1].resource = PatientTelemonitoraggioExample

* entry[2].fullUrl = "http://example.org/fhir/CarePlan/careplan-report-2025-11-09"
* entry[2].resource = CarePlanReportRilevazioneTM-2025-11-09

* entry[3].fullUrl = "http://example.org/fhir/Observation/obs-peso-2025-11-09"
* entry[3].resource = ObsPeso-2025-11-09
* entry[4].fullUrl = "http://example.org/fhir/Observation/obs-pa-2025-11-09"
* entry[4].resource = ObsPA-2025-11-09
* entry[5].fullUrl = "http://example.org/fhir/Observation/obs-spo2-2025-11-09"
* entry[5].resource = ObsSpO2-2025-11-09

* entry[6].fullUrl = "http://example.org/fhir/PractitionerRole/practrole-bianchi-tm"
* entry[6].resource = RoleMedicoBianchiTM

* entry[7].fullUrl = "http://example.org/fhir/Practitioner/pract-bianchi"
* entry[7].resource = MedicoBianchi


// =======================================
// COMPOSITION Report Rilevazione TM
// =======================================
Instance: CompositionReportRilevazioneTM-2025-11-09
InstanceOf: CompositionReportRilevazioneTM
Usage: #example
Description: "Esempio di Composition nel contesto del report rilevazione di telemonitoraggio"
Title: "Report rilevazioni quotidiane — 09/11/2025"
* id = "composition-report-rilevazioni-2025-11-09"
* status = #final
* type = http://loinc.org#64296-7
* date = "2025-11-09T09:00:00+01:00"
* title = "Report rilevazioni quotidiane"
* subject = Reference(PatientTelemonitoraggioExample)
* author = Reference(RoleMedicoBianchiTM)
* attester[legalAuthenticator].mode = #legal
* attester[legalAuthenticator].time = "2025-11-07T10:15:00+01:00"
* attester[legalAuthenticator].party = Reference(RoleMedicoBianchiTM)

* section[pianoDiCura].code = http://loinc.org#18776-5
* section[pianoDiCura].title = "Riepilogo del piano e degli esiti di giornata"
* section[pianoDiCura].entry[0] = Reference(CarePlanReportRilevazioneTM-2025-11-09)

// =======================================
// CARE PLAN Report Rilevazione TM
// =======================================

Instance: CarePlanReportRilevazioneTM-2025-11-09
InstanceOf: CarePlanReportRilevazioneTM
Usage: #example
Title: "Report rilevazioni quotidiane — 09/11/2025"
* id = "careplan-report-2025-11-09"
* identifier[0].value = "RPT-2025-11-09-0001"
* subject = Reference(PatientTelemonitoraggioExample)
* status = #completed
* intent = #plan
* title = "Report rilevazioni quotidiane"
* period.start = "2025-11-09"
* period.end = "2025-11-09"

// Attività 1: Peso — outcome = Observation peso
* activity[0].detail.status = #completed
* activity[0].detail.code = http://snomed.info/sct#27113001 "Body weight"
* activity[0].outcomeReference[0] = Reference(ObsPeso-2025-11-09)

// Attività 2: Pressione arteriosa — outcome = Observation BP (panel)
* activity[1].detail.status = #completed
* activity[1].detail.code = http://snomed.info/sct#75367002 "Blood pressure"
* activity[1].outcomeReference[0] = Reference(ObsPA-2025-11-09)

// Attività 3: SpO₂ — outcome = Observation SpO2
* activity[2].detail.status = #completed
* activity[2].detail.code = http://snomed.info/sct#448703006 "Pulse oximeter"
* activity[2].outcomeReference[0] = Reference(ObsSpO2-2025-11-09)

* note[0].text = "Rilevazioni domestiche valide per il giorno 09/11/2025."


// =======================
// PESO (ObservationTelemedicina)
// =======================
Instance: ObsPeso-2025-11-09
InstanceOf: ObservationTelemedicina
Usage: #example
Description: "Esempio di osservazione per il peso corporeo"
Title: "Peso corporeo - 09/11/2025"
* id = "obs-peso-2025-11-09"
* status = #final
* code = http://loinc.org#29463-7 "Body weight"
* subject = Reference(PatientTelemonitoraggioExample)
* effectiveDateTime = "2025-11-09T08:05:00+01:00"
* valueQuantity.value = 72.4
* valueQuantity.unit = "kg"
* valueQuantity.system =  "http://unitsofmeasure.org"
* valueQuantity.code = http://unitsofmeasure.org#kg "kg"
* method.text = "Bilancia connessa domestica"
* device = Reference(DevBilancia)
* performer[0] = Reference(RoleMedicoBianchiTM)
* note[0].text = "Misurazione mattutina a digiuno."
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs


// =======================
// PRESSIONE ARTERIOSA (panel) (ObservationTelemedicina)
// =======================
Instance: ObsPA-2025-11-09
InstanceOf: ObservationTelemedicina
Usage: #example
Description: "Esempio di osservazione per la pressione arteriosa"
Title: "Pressione arteriosa - 09/11/2025"
* id = "obs-pa-2025-11-09"
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#activity "Activity"
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(PatientTelemonitoraggioExample)
* effectiveDateTime = "2025-11-09T08:32:00+01:00"
* method.text = "Sfigmomanometro automatico (bracciale)"
* device = Reference(DevSfigmo)
* performer[0] = Reference(RoleMedicoBianchiTM)
// component: Sistolica
* component[0].code = http://loinc.org#8480-6 "Systolic blood pressure"
* component[0].valueQuantity.value = 118
* component[0].valueQuantity.unit = "mmHg"
* component[0].valueQuantity.system = "http://unitsofmeasure.org"
* component[0].valueQuantity.code = http://unitsofmeasure.org#mm[Hg]
// component: Diastolica
* component[1].code = http://loinc.org#8462-4 "Diastolic blood pressure"
* component[1].valueQuantity.value = 74
* component[1].valueQuantity.unit = "mmHg"
* component[1].valueQuantity.system = "http://unitsofmeasure.org"
* component[1].valueQuantity.code = http://unitsofmeasure.org#mm[Hg]
* note[0].text = "Braccio sinistro, posizione seduta, bracciale adeguato."
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs

// =======================
// SpO2 (ObservationTelemedicina)
// =======================
Instance: ObsSpO2-2025-11-09
InstanceOf: ObservationTelemedicina
Usage: #example
Description: "Esempio di osservazione per la saturazione di ossigeno"
Title: "SpO₂ - 09/11/2025"
* id = "obs-spo2-2025-11-09"
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#activity "Activity"
* code = http://loinc.org#2708-6 "Oxygen saturation in Arterial blood"
* subject = Reference(PatientTelemonitoraggioExample)
* effectiveDateTime = "2025-11-09T08:47:00+01:00"
* valueQuantity.value = 95
* valueQuantity.unit = "%"
* valueQuantity.system =  "http://unitsofmeasure.org"
* valueQuantity.code = http://unitsofmeasure.org#%
* method.text = "Pulsossimetro da dito"
* device = Reference(DevPulsossimetro)
* performer[0] = Reference(RoleMedicoBianchiTM)
* note[0].text = "A riposo, dito indice."
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs

