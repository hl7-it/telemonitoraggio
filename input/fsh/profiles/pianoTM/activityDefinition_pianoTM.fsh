Profile: ActivityDefinitionPianoTM
Parent: ActivityDefinition
Id: ActivityDefinitionPianoTM
Description: "Profilo dell'ActivityDefinition utilizzato nel contesto di Telemonitoraggio"
* ^status = #draft
* description ^short = "Descrizione della prestazione pianificata"
* description ^definition = "Descrizione attività"

* code ^short = "Codice della prestazione pianificata."
* timing[x] only Timing
* timingTiming.repeat.count ^short = "Numero di cicli di attività previsti durante la durata del piano."
* timingTiming.repeat.duration ^short = "Durata del singolo ciclo."
* timingTiming.repeat.frequency ^short = "Numero di attività per Ciclo."

* observationRequirement only Reference(ObservationDefinitionPianoTM)
* observationRequirement ^short = "Elenco dei parametri da rilevare"
* observationRequirement ^definition = "Elenco di parametri da rilevare durante il telemonitoraggio."