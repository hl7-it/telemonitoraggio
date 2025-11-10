// ===== Alias utili =====
Alias: $specType = http://terminology.hl7.org/CodeSystem/v2-0487
Alias: $sct = http://snomed.info/sct
Alias: $loinc = http://loinc.org

//**********Specimen Relazione finale di telemonitoraggio**********
Instance: CampionePrecedenteEsameRelazioneFinaleTM
InstanceOf: SpecimenRelazioneFinaleTm
Description: "Esempio di Specimen nel contesto della Relazione finale di Telemonitoraggio"
Usage: #example
* subject = Reference(PatientTelemonitoraggioExample)
* type = $specType#BLD "Whole blood"
* collection.method = $sct#129300006 "Puncture - action"

//**********Observation Relazione finale di telemonitoraggio**********
Instance: PrecedenteEsameRelazioneFinaleTM
InstanceOf: ObservationRelazioneFinaleTm
Description: "Esempio di ObservationRelazioneFinaleTM relativa ad un precedente esame eseguito"
Usage: #example

* status = #final

* code = $loinc#10346-5	"Hemoglobin A [Units/volume] in Blood by Electrophoresis"
* valueQuantity.value = 13.6
* valueQuantity.unit = "g/dL"
* specimen = Reference(CampionePrecedenteEsameRelazioneFinaleTM)
* referenceRange.low.value = 12.0
* referenceRange.high.value = 16.0 

//**********Care Plan Relazione finale di telemonitoraggio**********
Instance: CarePlanRelazioneFinale
InstanceOf: CarePlanRelazioneFinaleTM
Description: "Esempio di CarePlan nel contesto della Relazione finale di Telemonitoraggio"
Usage: #example

* identifier[0].system = "http://example.it/fhir/CarePlan/identifier"
* identifier[0].value = "TM-2025-07-12-123"
* subject = Reference(PatientTelemonitoraggioExample)

* status = #completed
* intent = #order

* created = "2025-07-12T16:15:00+01:00"

* activity[+].outcomeReference = Reference(RilevazionePeso)
* activity[+].outcomeReference = Reference(RilevazionePressioneSistolica)
* activity[+].outcomeReference = Reference(RilevazionePressioneDiastolica)
* activity[+].outcomeReference = Reference(RilevazioneFrequenzaCardiaca)
* activity[+].outcomeReference = Reference(RilevazioneSpO2)

* note[0].text = "Rilevazioni avvenute nel corso del piano di telemonitoraggio"


//**********Composition Relazione finale di telemonitoraggio**********

Instance: EsempioCompositionRelazioneFinaleTM
InstanceOf: CompositionRelazioneFinaleTelemonitoraggio
Description: "Esempio di Composition nel contesto della Relazione Finale di Telemonitoraggio"
Usage: #example
* status = #final
* type = $loinc#53576-5 "Personal health monitoring report Document"

* date = "2025-12-07T16:30:00+01:00"
* title = "Relazione Finale di Telemonitoraggio"
* subject = Reference(PatientTelemonitoraggioExample)
* author = Reference(RoleMedicoBianchiTM)

* attester[legalAuthenticator].mode = #legal
* attester[legalAuthenticator].time = "2025-12-07T16:30:00+01:00"
* attester[legalAuthenticator].party = Reference(RoleMedicoBianchiTM)

* section[pianoDiCura].code = $loinc#18776-5
* section[pianoDiCura].entry[0] = Reference(CarePlanRelazioneFinale)

* section[quesitoDiagnostico].code = $loinc#29299-5
* section[quesitoDiagnostico].entry[0] = Reference(ObsDiagnosiTM)

* section[inquadramentoClinicoIniziale].code = $loinc#47039-3
* section[inquadramentoClinicoIniziale].text.status = #additional
* section[inquadramentoClinicoIniziale].text.div = "<div>Paziente con storia di scompenso cardiaco HFrEF, dimessa da 10 giorni dopo episodio di riacutizzazione. Presentava segni di congestione polmonare e periferica, con terapia ottimizzata in ospedale. Obiettivo del telemonitoraggio era intercettare tempestivamente variazioni di peso, pressione arteriosa, frequenza cardiaca e saturazione di ossigeno per prevenire recidive.</div>"

* section[precedentiEsamiEseguiti].code = $loinc#30954-2
* section[precedentiEsamiEseguiti].entry[0] = Reference(PrecedenteEsameRelazioneFinaleTM)

* section[referto].code = $loinc#47045-0
* section[referto].text.status = #additional
* section[referto].text.div = "<div>Peso: stabile, senza trend di aumento significativo. Pressione arteriosa: nessun nuovo episodio di ipertensione marcata. Frequenza cardiaca: media 75 bpm, con normali variazioni fisiologiche. Saturazione ossigeno: stabile intorno al 96-98% a riposo. Durante il periodo di telemonitoraggio, la paziente ha mantenuto uno stato clinico stabile con assenza di segni evidenti di congestione o peggioramento emodinamico. Non sono stati rilevati aumenti significativi di peso o variazioni patologiche di PA, FC o SpO2. La diagnosi di scompenso cardiaco HFrEF rimane stabile in fase compensata.</div>" 

* section[diagnosi].code = $loinc#29548-5
* section[diagnosi].entry[0] = Reference(ObsDiagnosiTM)

//************Bundle document Relazione finale di Telemonitoraggio************

// ===============================================
// BUNDLE DOCUMENT del Relazione finale di Telemonitoraggio
// ===============================================
Instance: EsempioRelazioneFinaleTM
InstanceOf: BundleRelazioneFinaleTM
Usage: #example
Description: "Esempio di Bundle nel contesto del Relazione finale di Telemonitoraggio."
* type = #document
* identifier.system = "urn:ietf:rfc:39861"
* identifier.value = "urn:uuid:bnd-tm-2025-12-07-123"
* timestamp = "2025-12-07T16:30:00+01:00"

* entry[0].fullUrl = "http://example.org/fhir/Composition/composition-relfin-tm"
* entry[0].resource = EsempioCompositionRelazioneFinaleTM

* entry[1].fullUrl = "http://example.org/fhir/Patient/patient-telemonitoraggio"
* entry[1].resource = PatientTelemonitoraggioExample

* entry[2].fullUrl = "http://example.org/fhir/CarePlan/careplan-relfin-tm"
* entry[2].resource = CarePlanRelazioneFinale

* entry[3].fullUrl = "http://example.org/fhir/PractitionerRole/practrole-bianchi-tm"
* entry[3].resource = RoleMedicoBianchiTM

* entry[4].fullUrl = "http://example.org/fhir/Organization/org-asl-roma-1"
* entry[4].resource = AslRoma1

* entry[5].fullUrl = "http://example.org/fhir/Practitioner/pract-bianchi"
* entry[5].resource = MedicoBianchi

* entry[6].fullUrl = "http://example.org/fhir/Observation/obs-diagnosi-tm"
* entry[6].resource = ObsDiagnosiTM

* entry[7].fullUrl = "http://example.org/fhir/Observation/rilevazione1-11-11"
* entry[7].resource = RilevazionePeso

* entry[8].fullUrl = "http://example.org/fhir/Observation/rilevazione2-11-11"
* entry[8].resource = RilevazionePressioneDiastolica

* entry[9].fullUrl = "http://example.org/fhir/Observation/rilevazione3-11-11"
* entry[9].resource = RilevazionePressioneSistolica

* entry[10].fullUrl = "http://example.org/fhir/Observation/rilevazione4-11-11"
* entry[10].resource = RilevazioneFrequenzaCardiaca

* entry[11].fullUrl = "http://example.org/fhir/Observation/rilevazione5-11-11"
* entry[11].resource = RilevazioneSpO2

* entry[12].fullUrl = "http://example.org/fhir/Observation/prec-esame"
* entry[12].resource = PrecedenteEsameRelazioneFinaleTM

* entry[13].fullUrl = "http://example.org/fhir/Specimen/camp-prec-esame"
* entry[13].resource = CampionePrecedenteEsameRelazioneFinaleTM