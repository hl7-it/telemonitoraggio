Profile: ObservationDefinitionPianoTM
Parent: ObservationDefinition
Id: ObservationDefinitionPianoTM
Description: "Profilo della Observation utilizzata nel contesto del Telemonitoraggio"
* ^status = #draft
* category ^short = "Tipologia di rilevazione (e.g. intermediato, ciclo chiuso (interoperabilità diretta))"
* category ^definition = "Tipologia di rilevazione"
* code ^short = "Parametri"
* code ^definition = "Codice del parametro rilevato durante l'attività di telemonitoraggio."
* method ^short = "Metodo utilizzato per la rilevazione del parametro"
* method ^definition = "Metodo utilizzato per la rilevazione del parametro"
* qualifiedInterval.range ^short = "Soglia di allarme configurata sullo strumento"
* qualifiedInterval.range ^definition = "Valori predefiniti per parametri che, se superati, indicano un potenziale rischio per il paziente."
* qualifiedInterval.condition ^short = "Testo descrittivo delle regole di comportamento in violazione delle soglie"
* qualifiedInterval.condition ^definition = "Regole"