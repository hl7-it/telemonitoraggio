Alias: $loinc = http://loinc.org

Profile: CompositionRelazioneFinaleTelemonitoraggio
Parent: CompositionTelemedicina
Id: CompositionRelazioneFinaleTelemonitoraggio
Description: "Profilo della Composition utilizzata nel contesto della Relazione Finale di Telemonitoraggio"
* ^status = #draft
* title = "Relazione Finale di Telemonitoraggio" (exactly)
* type = $loinc#53576-5 (exactly)
// TODO: Legare l'encounter. Ma si aspetta un Encounter che derivi da EncounterTelemedicina
//* encounter only EncounterRelazioneFinaleTm
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains
    pianoDiCura 1..1 and
    quesitoDiagnostico 0..1 and
    inquadramentoClinicoIniziale 0..1 and
    precedentiEsamiEseguiti 0..1 and
    confrontoPrecedentiEsamiEseguiti 0..1 and
    prestazioni 0..1 and
    diagnosi 0..1 and
    referto 0..1 and
    terapiaFarmacologicaConsigliata 0..1 and
    suggerimentiPerMedicoPrescrittore 0..1 and
    accertamentiControlliConsigliati 0..1 and
    conclusioni 0..1 and
    allegati 0..1
* section[pianoDiCura] ^sliceName = "pianoDiCura"
* section[pianoDiCura].code = $loinc#18776-5 (exactly)
* section[pianoDiCura].entry only Reference(CarePlanRelazioneFinaleTM)
* section[quesitoDiagnostico] ^sliceName = "quesitoDiagnostico"
* section[quesitoDiagnostico].code = $loinc#29299-5 (exactly)
* section[quesitoDiagnostico].entry only Reference(ObservationTelemedicina)
* section[inquadramentoClinicoIniziale] ^sliceName = "inquadramentoClinicoIniziale"
* section[inquadramentoClinicoIniziale].code = $loinc#47039-3 (exactly)
* section[inquadramentoClinicoIniziale].section ^slicing.discriminator.type = #value
* section[inquadramentoClinicoIniziale].section ^slicing.discriminator.path = "code"
* section[inquadramentoClinicoIniziale].section ^slicing.rules = #open
* section[inquadramentoClinicoIniziale].section contains
    anamnesi 0..1 and
    allergie 0..* and
    terapiaFarmacologicaInAtto 0..* and
    esameObiettivo 0..1
* section[inquadramentoClinicoIniziale].section[anamnesi] ^sliceName = "anamnesi"
* section[inquadramentoClinicoIniziale].section[anamnesi].code = $loinc#11329-0  
* section[inquadramentoClinicoIniziale].section[anamnesi].entry only Reference(ObservationTelemedicina)
* section[inquadramentoClinicoIniziale].section[allergie] ^sliceName = "allergie"
* section[inquadramentoClinicoIniziale].section[allergie].code = $loinc#48765-2 (exactly)
* section[inquadramentoClinicoIniziale].section[allergie].entry only Reference(AllergyIntoleranceTelemedicina)
* section[inquadramentoClinicoIniziale].section[terapiaFarmacologicaInAtto] ^sliceName = "terapiaFarmacologicaInAtto"
* section[inquadramentoClinicoIniziale].section[terapiaFarmacologicaInAtto].code = $loinc#10160-0 (exactly)
* section[inquadramentoClinicoIniziale].section[terapiaFarmacologicaInAtto].entry only Reference(MedicationStatementTelemedicina)
* section[inquadramentoClinicoIniziale].section[esameObiettivo] ^sliceName = "esameObiettivo"
* section[inquadramentoClinicoIniziale].section[esameObiettivo].code = $loinc#29545-1 (exactly)
* section[inquadramentoClinicoIniziale].section[esameObiettivo].entry only Reference(ObservationTelemedicina)
* section[precedentiEsamiEseguiti] ^sliceName = "precedentiEsamiEseguiti"
* section[precedentiEsamiEseguiti].code = $loinc#30954-2 (exactly)
* section[precedentiEsamiEseguiti].entry only Reference(ObservationRelazioneFinaleTm)
* section[confrontoPrecedentiEsamiEseguiti] ^sliceName = "confrontoPrecedentiEsamiEseguiti"
* section[confrontoPrecedentiEsamiEseguiti].code = $loinc#93126-1 (exactly)
* section[confrontoPrecedentiEsamiEseguiti].entry only Reference(ObservationTelemedicina)
* section[prestazioni] ^sliceName = "prestazioni"
* section[prestazioni].code = $loinc#62387-6 (exactly)
* section[prestazioni].entry only Reference(ProcedureTelemonitoraggio)
* section[diagnosi] ^sliceName = "diagnosi"
* section[diagnosi].code = $loinc#29548-5 (exactly)
* section[diagnosi].entry only Reference(ObservationTelemedicina)
* section[referto] ^sliceName = "referto"
* section[referto].code = $loinc#47045-0 (exactly)
* section[referto].entry only Reference(ObservationTelemedicina)
* section[terapiaFarmacologicaConsigliata] ^sliceName = "terapiaFarmacologicaConsigliata"
* section[terapiaFarmacologicaConsigliata].code = $loinc#93341-6 (exactly)
* section[terapiaFarmacologicaConsigliata].entry only Reference(MedicationRequestTelemedicina)
* section[suggerimentiPerMedicoPrescrittore] ^sliceName = "suggerimentiPerMedicoPrescrittore"
* section[suggerimentiPerMedicoPrescrittore].code = $loinc#62385-0 (exactly)
* section[suggerimentiPerMedicoPrescrittore].entry only Reference(ObservationTelemedicina)
* section[accertamentiControlliConsigliati] ^sliceName = "accertamentiControlliConsigliati"
* section[accertamentiControlliConsigliati].code = $loinc#80615-8 (exactly)
* section[accertamentiControlliConsigliati].entry only Reference(ObservationTelemedicina)
* section[conclusioni] ^sliceName = "conclusioni"
* section[conclusioni].entry only Reference(ObservationTelemedicina)
* section[conclusioni].code = $loinc#55110-1  
* section[allegati] ^sliceName = "allegati"
* section[allegati].entry only Reference(DocumentReference or Binary or Media)
* section[allegati].code = $loinc#77599-9  