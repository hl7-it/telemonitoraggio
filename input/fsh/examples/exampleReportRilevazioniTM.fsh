/*
  REPORT DI RILEVAZIONI: Report (per semplicità quotidiano) delle rilevazioni 
  - Parametri rilevati: Peso, PA, FC, SpO2.
*/

// ===== Alias utili =====
Alias: $loinc = http://loinc.org

//**********Misurazione peso**********
Instance: RilevazionePeso
InstanceOf: ObservationTelemedicina
Description: "Esempio di ObservationTelemedicina relativa al peso corporeo rilevato nel contesto del Telemonitoraggio"
Title: "Peso corporeo - 11/11/2025"
Usage: #example
* id = "obs-peso-2025-11-11"
* status = #final
* code = $loinc#29463-7 "Body weight"
* subject = Reference(PatientTelemonitoraggioExample)
* effectiveDateTime = "2025-11-11T07:30:00+01:00"
* valueQuantity.value = 62.1
* valueQuantity.unit = "Kg"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code =  http://unitsofmeasure.org#kg
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs

//**********Misurazione pressione **********
Instance: RilevazionePressione
InstanceOf: ObservationTelemedicina
Description: "Esempio di ObservationTelemedicina relativa alla pressione rilevata nel contesto del Telemonitoraggio"
Title: "Pressione - 11/11/2025"
* id = "obs-pa-2025-11-11"
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#activity "Activity"
* code = http://loinc.org#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(PatientTelemonitoraggioExample)
* effectiveDateTime = "2025-11-11T08:32:00+01:00"
* method.text = "Sfigmomanometro automatico (bracciale)"
* device = Reference(DevSfigmo)
* performer[0] = Reference(RoleMedicoBianchiTM)
// component: Sistolica
* component[0].code = http://loinc.org#8480-6 "Systolic blood pressure"
* component[0].valueQuantity.value = 128
* component[0].valueQuantity.unit = "mmHg"
* component[0].valueQuantity.system = "http://unitsofmeasure.org"
* component[0].valueQuantity.code = http://unitsofmeasure.org#mm[Hg]
// component: Diastolica
* component[1].code = http://loinc.org#8462-4 "Diastolic blood pressure"
* component[1].valueQuantity.value = 84
* component[1].valueQuantity.unit = "mmHg"
* component[1].valueQuantity.system = "http://unitsofmeasure.org"
* component[1].valueQuantity.code = http://unitsofmeasure.org#mm[Hg]
* note[0].text = "Braccio sinistro, posizione seduta, bracciale adeguato."
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs

//**********Misurazione frequenza cardiaca**********
Instance: RilevazioneFrequenzaCardiaca
InstanceOf: ObservationTelemedicina
Description: "Esempio di ObservationTelemedicina relativa alla frequenza cardiaca rilevata nel contesto del Telemonitoraggio"
Title: "Frequenza cardiaca - 11/11/2025"
Usage: #example
* id = "obs-freqcard-2025-11-11"
* status = #final
* code = $loinc#8867-4 "Heart rate"
* subject = Reference(PatientTelemonitoraggioExample)
* effectiveDateTime = "2025-11-11T07:45:00+01:00"
* valueQuantity.value = 80
* valueQuantity.unit = "beats/min"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code =  http://unitsofmeasure.org#/min
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#activity "Activity"

//**********Misurazione SpO2**********
Instance: RilevazioneSpO2
InstanceOf: ObservationTelemedicina
Description: "Esempio di ObservationTelemedicina relativa alla SpO2 rilevata nel contesto del Telemonitoraggio"
Title: "SpO2 - 11/11/2025"
Usage: #example
* id = "obs-SpO2-2025-11-11"
* status = #final
* code = $loinc#59408-5 "Oxygen saturation in Arterial blood by Pulse oximetry"
* subject = Reference(PatientTelemonitoraggioExample)
* effectiveDateTime = "2025-11-11T07:45:00+01:00"
* valueQuantity.value = 96
* valueQuantity.unit = "%"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code =  http://unitsofmeasure.org#/%
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#activity "Activity"

/*
//**********Care Plan Report Rilevazione di telemonitoraggio**********
Instance: CarePlanReportRilevazione
InstanceOf: CarePlanReportRilevazioneTM
Description: "Esempio di CarePlan nel contesto del Report di Rilevazione di Telemonitoraggio"
Usage: #example

* identifier[0].system = "http://example.it/fhir/CarePlan/identifier"
* identifier[0].value = "TM-2025-11-11-123"
* subject = Reference(PatientTelemonitoraggioExample)

* status = #active
* intent = #order

* created = "2025-11-11T23:59:00+01:00"

* activity[+].outcomeReference = Reference(RilevazionePeso)
* activity[+].outcomeReference = Reference(RilevazionePressione)
* activity[+].outcomeReference = Reference(RilevazioneFrequenzaCardiaca)
* activity[+].outcomeReference = Reference(RilevazioneSpO2)

* note[0].text = "Rilevazioni del giorno 11/11/2025"

//**********Composition Report Rilevazione di telemonitoraggio**********

Instance: EsempioCompositionReportRilevazioneTM
InstanceOf: CompositionReportRilevazioneTM
Description: "Esempio di Composition nel contesto del Report Rilevazione di Telemonitoraggio"
Usage: #example
* status = #final
* type = $loinc#64296-7 "Personal health monitoring report Automated"

* date = "2025-11-11T23:59:59+01:00"
* title = "Report Rilevazione di Telemonitoraggio"
* subject = Reference(PatientTelemonitoraggioExample)
* author = Reference(RoleMedicoBianchiTM)

* attester[legalAuthenticator].mode = #legal
* attester[legalAuthenticator].time = "2025-11-07T10:15:00+01:00"
* attester[legalAuthenticator].party = Reference(RoleMedicoBianchiTM)

* section[pianoDiCura].code = $loinc#18776-5
* section[pianoDiCura].entry[0] = Reference(CarePlanReportRilevazione)

//************Bundle document Report Rilevazione di Telemonitoraggio************

// ===============================================
// BUNDLE DOCUMENT del Report Rilevazione di Telemonitoraggio
// ===============================================
Instance: EsempioReportRilevazioneTM
InstanceOf: BundleReportRilevazioniTM
Usage: #example
Description: "Esempio di Bundle nel contesto del Report di Rilevazione di Telemonitoraggio."
* type = #document
* identifier.system = "urn:ietf:rfc:39861"
* identifier.value = "urn:uuid:bnd-tm-2025-11-11-123"
* timestamp = "2025-11-12T00:01:00+01:00"

* entry[0].fullUrl = "http://example.org/fhir/Composition/composition-rilevazione-tm-11-11"
* entry[0].resource = EsempioCompositionReportRilevazioneTM

* entry[1].fullUrl = "http://example.org/fhir/CarePlan/careplan-rilevazione-tm-11-11"
* entry[1].resource = CarePlanReportRilevazione

* entry[2].fullUrl = "http://example.org/fhir/Patient/patient-telemonitoraggio"
* entry[2].resource = PatientTelemonitoraggioExample

* entry[3].fullUrl = "http://example.org/fhir/Observation/rilevazione1-11-11"
* entry[3].resource = RilevazionePeso

* entry[5].fullUrl = "http://example.org/fhir/Observation/rilevazione3-11-11"
* entry[5].resource = RilevazionePressione

* entry[6].fullUrl = "http://example.org/fhir/Observation/rilevazione4-11-11"
* entry[6].resource = RilevazioneFrequenzaCardiaca

* entry[7].fullUrl = "http://example.org/fhir/Observation/rilevazione5-11-11"
* entry[7].resource = RilevazioneSpO2

*/