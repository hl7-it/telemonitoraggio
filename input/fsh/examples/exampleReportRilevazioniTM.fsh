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
Usage: #example
* status = #final
* code = $loinc#29463-7 "Body weight"
* effectiveDateTime = "2025-11-11T07:30:00+01:00"
* valueQuantity.value = 62.1
* valueQuantity.unit = "Kg"

//**********Misurazione pressione sistolica**********
Instance: RilevazionePressioneSistolica
InstanceOf: ObservationTelemedicina
Description: "Esempio di ObservationTelemedicina relativa alla pressione sistolica rilevata nel contesto del Telemonitoraggio"
Usage: #example
* status = #final
* code = $loinc#8480-6 "Systolic blood pressure"
* effectiveDateTime = "2025-11-11T07:45:00+01:00"
* valueQuantity.value = 132
* valueQuantity.unit = "mmHg"

//**********Misurazione pressione diastolica**********
Instance: RilevazionePressioneDiastolica
InstanceOf: ObservationTelemedicina
Description: "Esempio di ObservationTelemedicina relativa alla pressione diastolica rilevata nel contesto del Telemonitoraggio"
Usage: #example
* status = #final
* code = $loinc#8462-4 "Diastolic blood pressure"
* effectiveDateTime = "2025-11-11T07:45:00+01:00"
* valueQuantity.value = 86
* valueQuantity.unit = "mmHg"

//**********Misurazione frequenza cardiaca**********
Instance: RilevazioneFrequenzaCardiaca
InstanceOf: ObservationTelemedicina
Description: "Esempio di ObservationTelemedicina relativa alla frequenza cardiaca rilevata nel contesto del Telemonitoraggio"
Usage: #example
* status = #final
* code = $loinc#8867-4 "Heart rate"
* effectiveDateTime = "2025-11-11T07:45:00+01:00"
* valueQuantity.value = 80
* valueQuantity.unit = "beats/min"

//**********Misurazione SpO2**********
Instance: RilevazioneSpO2
InstanceOf: ObservationTelemedicina
Description: "Esempio di ObservationTelemedicina relativa alla SpO2 rilevata nel contesto del Telemonitoraggio"
Usage: #example
* status = #final
* code = $loinc#59408-5 "Oxygen saturation in Arterial blood by Pulse oximetry"
* effectiveDateTime = "2025-11-11T07:45:00+01:00"
* valueQuantity.value = 96
* valueQuantity.unit = "%"

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
* activity[+].outcomeReference = Reference(RilevazionePressioneSistolica)
* activity[+].outcomeReference = Reference(RilevazionePressioneDiastolica)
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

* entry[4].fullUrl = "http://example.org/fhir/Observation/rilevazione2-11-11"
* entry[4].resource = RilevazionePressioneDiastolica

* entry[5].fullUrl = "http://example.org/fhir/Observation/rilevazione3-11-11"
* entry[5].resource = RilevazionePressioneSistolica

* entry[6].fullUrl = "http://example.org/fhir/Observation/rilevazione4-11-11"
* entry[6].resource = RilevazioneFrequenzaCardiaca

* entry[7].fullUrl = "http://example.org/fhir/Observation/rilevazione5-11-11"
* entry[7].resource = RilevazioneSpO2

