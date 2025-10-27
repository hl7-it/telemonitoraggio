//Alias: $Timing = http://hl7.it/fhir/StructureDefinition/Timing
//Alias: $ObservationDefinition_PianoTM = http://hl7.it/fhir/StructureDefinition/ObservationDefinition_PianoTM
//Alias: $catalogoNazionalePrestazioni = https://terminology.agenas.gov.it/ValueSet/catalogoNazionalePrestazioni

Profile: ActivityDefinitionPianoTM
Parent: ActivityDefinition
Id: ActivityDefinitionPianoTM
Description: "Profilo dell'ActivityDefinition utilizzato nel contesto di Telemonitoraggio"
* ^status = #draft
* description ^short = "Descrizione della prestazione pianificata"
* description ^definition = "Descrizione attività"
* code from ValueSetCatalogoNazionalePrestazioni (example)
* code ^short = "Codice della prestazione pianificata"
* code ^definition = "Codice attività"
* timing[x] only TimingTelemedicina or dateTime or Age or Period or Range or Duration
* observationRequirement only Reference(ObservationDefinitionPianoTM)
* observationRequirement ^short = "Elenco dei parametri da rilevare"
* observationRequirement ^definition = "Elenco di parametri da rilevare durante il telemonitoraggio."