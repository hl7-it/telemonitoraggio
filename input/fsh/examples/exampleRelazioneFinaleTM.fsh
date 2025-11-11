// ===== Alias utili =====
Alias: $specType = http://terminology.hl7.org/CodeSystem/v2-0487
Alias: $sct = http://snomed.info/sct
Alias: $loinc = http://loinc.org

//**********Specimen Relazione finale di telemonitoraggio**********
Instance: CampionePrecedenteEsameRelazioneFinaleTM
InstanceOf: SpecimenRelazioneFinaleTm
Description: "Esempio di Specimen nel contesto della Relazione finale di Telemonitoraggio"
Usage: #example
* id = "camp-prec-esame"
* subject = Reference(PatientTelemonitoraggioExample)
* type = $specType#BLD "Whole blood"
* collection.method = $sct#129300006 "Puncture - action"

//**********Observation Relazione finale di telemonitoraggio**********
Instance: PrecedenteEsameRelazioneFinaleTM
InstanceOf: ObservationRelazioneFinaleTm
Description: "Esempio di ObservationRelazioneFinaleTM relativa ad un precedente esame eseguito"
Usage: #example

* id = "obs-prec-esame"
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

* id = "careplan-relfin-tm"

* identifier[0].system = "http://example.it/fhir/CarePlan/identifier"
* identifier[0].value = "TM-2025-07-12-123"
* subject = Reference(PatientTelemonitoraggioExample)

* status = #completed
* intent = #order

* created = "2025-07-12T16:15:00+01:00"

* activity[+].outcomeReference = Reference(RilevazionePeso)
* activity[+].outcomeReference = Reference(RilevazionePressione)
* activity[+].outcomeReference = Reference(RilevazioneFrequenzaCardiaca)
* activity[+].outcomeReference = Reference(RilevazioneSpO2)

* note[0].text = "Rilevazioni avvenute nel corso del piano di telemonitoraggio"


//**********Composition Relazione finale di telemonitoraggio**********

Instance: EsempioCompositionRelazioneFinaleTM
InstanceOf: CompositionRelazioneFinaleTelemonitoraggio
Usage: #example
Description: "Esempio di Composition conforme al profilo della Relazione Finale di Telemonitoraggio"
* status = #final
* id = "composition-relfin-tm"
* type = $loinc#53576-5
* date = "2025-12-07T16:30:00+01:00"
* title = "Relazione Finale di Telemonitoraggio"
* subject = Reference(PatientTelemonitoraggioExample)
* author = Reference(RoleMedicoBianchiTM)
* encounter = Reference(EncounterRelazioneFinaleTM-Esempio)
* attester[legalAuthenticator].mode = #legal
* attester[legalAuthenticator].time = "2025-12-07T16:30:00+01:00"
* attester[legalAuthenticator].party = Reference(RoleMedicoBianchiTM)

* section[pianoDiCura].code = $loinc#18776-5
* section[pianoDiCura].entry[0] = Reference(CarePlanRelazioneFinale)

* section[quesitoDiagnostico].code = $loinc#29299-5
* section[quesitoDiagnostico].entry[0] = Reference(QuesitoDiagnosticoTM)

* section[inquadramentoClinicoIniziale].code = $loinc#47039-3

* section[inquadramentoClinicoIniziale].section[anamnesi].code = $loinc#11329-0
* section[inquadramentoClinicoIniziale].section[anamnesi].entry[0] = Reference(AnamnesiInizialeTM)

* section[inquadramentoClinicoIniziale].section[allergie].code = $loinc#48765-2
* section[inquadramentoClinicoIniziale].section[allergie].entry[0] = Reference(AllergiaACEi)

* section[inquadramentoClinicoIniziale].section[terapiaFarmacologicaInAtto].code = $loinc#10160-0
* section[inquadramentoClinicoIniziale].section[terapiaFarmacologicaInAtto].entry[0] = Reference(TerapiaInAttoTM)

* section[inquadramentoClinicoIniziale].section[esameObiettivo].code = $loinc#29545-1
* section[inquadramentoClinicoIniziale].section[esameObiettivo].entry[0] = Reference(EsameObiettivoInizialeTM)

* section[precedentiEsamiEseguiti].code = $loinc#30954-2
* section[precedentiEsamiEseguiti].entry[0] = Reference(PrecedenteEsameRelazioneFinaleTM)

* section[confrontoPrecedentiEsamiEseguiti].code = $loinc#93126-1
* section[confrontoPrecedentiEsamiEseguiti].entry[0] = Reference(ConfrontoPrecedentiEsamiTM)

* section[prestazioni].code = $loinc#62387-6
* section[prestazioni].entry[0] = Reference(PrestazioneTM)

* section[diagnosi].code = $loinc#29548-5
* section[diagnosi].entry[0] = Reference(ObsDiagnosiTM)

* section[referto].code = $loinc#47045-0
* section[referto].entry[0] = Reference(RefertoSintesiTM)

* section[terapiaFarmacologicaConsigliata].code = $loinc#93341-6
* section[terapiaFarmacologicaConsigliata].entry[0] = Reference(TerapiaConsigliataTM)


* section[suggerimentiPerMedicoPrescrittore].code = $loinc#62385-0
* section[suggerimentiPerMedicoPrescrittore].entry[0] = Reference(SuggerimentiPrescrittoreTM)

* section[accertamentiControlliConsigliati].code = $loinc#80615-8
* section[accertamentiControlliConsigliati].entry[0] = Reference(AccertamentiControlliTM)

* section[conclusioni].code = $loinc#55110-1
* section[conclusioni].entry[0] = Reference(ConclusioniTM)

* section[allegati].code = $loinc#77599-9
* section[allegati].entry[0] = Reference(AllegatoEducazionaleTM)

//************Bundle document Relazione finale di Telemonitoraggio************

// ===============================================
// BUNDLE DOCUMENT del Relazione finale di Telemonitoraggio
// ===============================================
Instance: EsempioRelazioneFinaleTM
InstanceOf: BundleRelazioneFinaleTM
Usage: #example
Description: "Esempio di Bundle nel contesto della Relazione finale di Telemonitoraggio."
* type = #document
* identifier.system = "urn:ietf:rfc:39861"
* identifier.value = "urn:uuid:bnd-tm-2025-12-07-123"
* timestamp = "2025-12-07T16:30:00+01:00"

* entry[0].fullUrl = "http://example.org/fhir/Composition/composition-relfin-tm"
* entry[0].resource = EsempioCompositionRelazioneFinaleTM

* entry[1].fullUrl = "http://example.org/fhir/Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82"
* entry[1].resource = PatientTelemonitoraggioExample

* entry[2].fullUrl = "http://example.org/fhir/Encounter/encounter-relfin"
* entry[2].resource = EncounterRelazioneFinaleTM-Esempio

* entry[3].fullUrl = "http://example.org/fhir/CarePlan/careplan-relfin-tm"
* entry[3].resource = CarePlanRelazioneFinale

* entry[4].fullUrl = "http://example.org/fhir/PractitionerRole/practrole-bianchi-tm"
* entry[4].resource = RoleMedicoBianchiTM

* entry[5].fullUrl = "http://example.org/fhir/Practitioner/pract-bianchi"
* entry[5].resource = MedicoBianchi

* entry[6].fullUrl = "http://example.org/fhir/Organization/asl-roma-1"
* entry[6].resource = AslRoma1

* entry[7].fullUrl = "http://example.org/fhir/Observation/obs-diagnosi-tm"
* entry[7].resource = ObsDiagnosiTM

* entry[8].fullUrl = "http://example.org/fhir/Observation/quesito-diagnostico"
* entry[8].resource = QuesitoDiagnosticoTM

* entry[9].fullUrl = "http://example.org/fhir/Observation/anamnesi"
* entry[9].resource = AnamnesiInizialeTM

* entry[10].fullUrl = "http://example.org/fhir/AllergyIntolerance/allergia"
* entry[10].resource = AllergiaACEi

* entry[11].fullUrl = "http://example.org/fhir/Observation/esame-obiettivo"
* entry[11].resource = EsameObiettivoInizialeTM

* entry[12].fullUrl = "http://example.org/fhir/Observation/prec-esame"
* entry[12].resource = PrecedenteEsameRelazioneFinaleTM

* entry[13].fullUrl = "http://example.org/fhir/Observation/confronto-prec-esami"
* entry[13].resource = ConfrontoPrecedentiEsamiTM

* entry[14].fullUrl = "http://example.org/fhir/Observation/obs-peso-2025-11-11"
* entry[14].resource = RilevazionePeso

* entry[15].fullUrl = "http://example.org/fhir/Observation/obs-pa-2025-11-11"
* entry[15].resource = RilevazionePressione

* entry[16].fullUrl = "http://example.org/fhir/Observation/obs-freqcard-2025-11-11"
* entry[16].resource = RilevazioneFrequenzaCardiaca

* entry[17].fullUrl = "http://example.org/fhir/Observation/obs-SpO2-2025-11-11"
* entry[17].resource = RilevazioneSpO2

* entry[18].fullUrl = "http://example.org/fhir/Observation/referto"
* entry[18].resource = RefertoSintesiTM

* entry[19].fullUrl = "http://example.org/fhir/Observation/suggerimenti-prescrittore"
* entry[19].resource = SuggerimentiPrescrittoreTM

* entry[20].fullUrl = "http://example.org/fhir/Observation/accertamenti-controlli"
* entry[20].resource = AccertamentiControlliTM

* entry[21].fullUrl = "http://example.org/fhir/Observation/conclusioni"
* entry[21].resource = ConclusioniTM

* entry[22].fullUrl = "http://example.org/fhir/Procedure/prestazione-tm"
* entry[22].resource = PrestazioneTM

* entry[23].fullUrl = "http://example.org/fhir/MedicationRequest/terapia-consigliata"
* entry[23].resource = TerapiaConsigliataTM

* entry[24].fullUrl = "http://example.org/fhir/Specimen/camp-prec-esame"
* entry[24].resource = CampionePrecedenteEsameRelazioneFinaleTM

* entry[25].fullUrl = "http://example.org/fhir/Device/device-bilancia"
* entry[25].resource = DevBilancia

* entry[26].fullUrl = "http://example.org/fhir/Device/device-sfigmo"
* entry[26].resource = DevSfigmo

* entry[27].fullUrl = "http://example.org/fhir/Device/device-spo2"
* entry[27].resource = DevPulsossimetro

* entry[28].fullUrl = "http://example.org/fhir/MedicationStatement/terapia-in-atto"
* entry[28].resource = TerapiaInAttoTM

* entry[29].fullUrl = "http://example.org/fhir/DocumentReference/allegato-pdf"
* entry[29].resource = AllegatoEducazionaleTM

// ========== Alias ==========
Alias: $loinc = http://loinc.org
Alias: $sct = http://snomed.info/sct

// ========== Risorse DI SUPPORTO (minime) per rispettare le slice ==========

// Quesito diagnostico (motivazione/quesito del referto)
Instance: QuesitoDiagnosticoTM
InstanceOf: ObservationTelemedicina
Usage: #example
* id = "quesito-diagnostico"
* status = #final
* code.text = "Quesito diagnostico"
* subject = Reference(PatientTelemonitoraggioExample)
* effectiveDateTime = "2025-11-07"
* valueString = "Follow-up scompenso cardiaco HFrEF in telemonitoraggio: valutare andamento clinico nel periodo e necessità di modifiche terapeutiche."

// Inquadramento clinico iniziale — Anamnesi
Instance: AnamnesiInizialeTM
InstanceOf: ObservationTelemedicina
Usage: #example
* id = "anamnesi"
* status = #final
* code = $loinc#11329-0 "History of past illness Narrative"
* subject = Reference(PatientTelemonitoraggioExample)
* effectiveDateTime = "2025-11-07"
* valueString = "Storia di scompenso cardiaco HFrEF, ipertensione arteriosa, dislipidemia."

// Inquadramento clinico iniziale — Allergia (esempio singolo)
Instance: AllergiaACEi
InstanceOf: AllergyIntoleranceTelemedicina
Usage: #example
* id = "allergia"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed
* code = $sct#373270004 "Adverse reaction to angiotensin-converting-enzyme inhibitor (finding)"
* patient = Reference(PatientTelemonitoraggioExample)
* onsetDateTime = "2015-06-01"

// Inquadramento clinico iniziale — Terapia farmacologica in atto
Instance: TerapiaInAttoTM
InstanceOf: MedicationStatementTelemedicina
Usage: #example
* id = "terapia-in-atto"
* status = #active
* subject = Reference(PatientTelemonitoraggioExample)
* effectivePeriod.start = "2025-11-07"
* medicationCodeableConcept.text = "ACE-inibitore, beta-bloccante, diuretico dell'ansa"

// Inquadramento clinico iniziale — Esame obiettivo
* id = "esame-obiettivo"
Instance: EsameObiettivoInizialeTM
InstanceOf: ObservationTelemedicina
Usage: #example
* status = #final
* code = $loinc#29545-1 "Physical findings Narrative"
* subject = Reference(PatientTelemonitoraggioExample)
* effectiveDateTime = "2025-11-07"
* valueString = "PA 125/75 mmHg, FC 74 bpm, MV conservato, assenza edemi declivi."

// Confronto con precedenti esami eseguiti
Instance: ConfrontoPrecedentiEsamiTM
InstanceOf: ObservationTelemedicina
Usage: #example
* id = "confronto-prec-esami"
* status = #final
* code = $loinc#93126-1 "Comparison with previous studies"
* subject = Reference(PatientTelemonitoraggioExample)
* effectiveDateTime = "2025-12-07"
* valueString = "Nessuna variazione clinicamente significativa rispetto ai controlli precedenti."

// Prestazioni (procedura/e effettuate nel periodo)
Instance: PrestazioneTM
InstanceOf: ProcedureTelemonitoraggio
Usage: #example
* id = "prestazione-tm"
* status = #completed
* subject = Reference(PatientTelemonitoraggioExample)
* performedPeriod.start = "2025-11-07"
* performedPeriod.end = "2025-12-07"
* code = CsCatalogoNazionalePrestazioni#89.17.3 "MONITORAGGIO CARDIORESPIRATORIO NOTTURNO COMPLETOPer studio apnee"

// Referto (sintesi narrativa strutturata)
Instance: RefertoSintesiTM
InstanceOf: ObservationTelemedicina
Usage: #example
* id = "referto"
* status = #final
* code = $loinc#47045-0 "Interpretation and findings"
* subject = Reference(PatientTelemonitoraggioExample)
* effectiveDateTime = "2025-12-07"
* valueString = "Andamento clinico stabile: peso senza aumenti significativi; PA nella norma; FC in range; SpO₂ 96–98%."

// Terapia farmacologica consigliata (post-valutazione)
Instance: TerapiaConsigliataTM
InstanceOf: MedicationRequestTelemedicina
Usage: #example
* id = "terapia-consigliata"
* status = #active
* intent = #plan
* subject = Reference(PatientTelemonitoraggioExample)
* requester
* authoredOn = "2025-12-07"
* medicationCodeableConcept.text = "Confermare terapia in atto; valutare titolazione beta-bloccante se FC > 80 bpm in controlli successivi."

// Suggerimenti per medico prescrittore
Instance: SuggerimentiPrescrittoreTM
InstanceOf: ObservationTelemedicina
Usage: #example
* id = "suggerimenti-prescrittore"
* status = #final
* code = $loinc#62385-0 "Recommendations to prescriber"
* subject = Reference(PatientTelemonitoraggioExample)
* effectiveDateTime = "2025-12-07"
* valueString = "Educazione a monitoraggio domiciliare; verificare aderenza; follow-up a 30 giorni in MMG/cardiologia."

// Accertamenti/controlli consigliati
Instance: AccertamentiControlliTM
InstanceOf: ObservationTelemedicina
Usage: #example
* id = "accertamenti-controlli"
* status = #final
* code = $loinc#80615-8 "Follow-up studies recommended"
* subject = Reference(PatientTelemonitoraggioExample)
* effectiveDateTime = "2025-12-07"
* valueString = "Ematochimici di controllo tra 30 giorni; eco-cardiogramma a 3–6 mesi."

// Conclusioni
Instance: ConclusioniTM
InstanceOf: ObservationTelemedicina
Usage: #example
* id = "conclusioni"
* status = #final
* code = $loinc#55110-1 "Clinical impression/plan Narrative"
* subject = Reference(PatientTelemonitoraggioExample)
* effectiveDateTime = "2025-12-07"
* valueString = "Quadro compensato; proseguire TM al bisogno; educazione terapeutica mantenuta."

// Allegati (es. opuscolo educativo in PDF)
Instance: AllegatoEducazionaleTM
InstanceOf: DocumentReference
Usage: #example
* id = "allegato-pdf"
* status = #current
* type = $loinc#53576-5 "Personal health monitoring report Document"
* subject = Reference(PatientTelemonitoraggioExample)
* date = "2025-12-07T16:25:00+01:00"
* content[0].attachment.url = "http://example.org/files/opuscolo-scompenso.pdf"


Instance: EncounterRelazioneFinaleTM-Esempio
InstanceOf: EncounterRelazioneFinaleTm
Usage: #example
Description: "Encounter che descrive l'episodio di telemonitoraggio del caso d'uso HFrEF (Tipo I)"
* id = "encounter-relfin"

* identifier[codiceNosologico].system = "http://agenas.gov.it/sid/codiceNosologico"
* identifier[codiceNosologico].value = "NOSO-2025-000123"

* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#VR "virtual"

* type[0] = http://snomed.info/sct#394579002 "Cardiologia"

* subject = Reference(PatientTelemonitoraggioExample)

* period.start = "2025-11-07T10:00:00+01:00"
* period.end   = "2025-12-07T16:30:00+01:00"

// Partecipante (figura tecnica/clinica) – vincolo su PractitionerTelemonitoraggio
* participant[0].individual = Reference(MedicoBianchi)