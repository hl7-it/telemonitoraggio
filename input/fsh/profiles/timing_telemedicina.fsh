//Alias: $Timing = http://hl7.org/fhir/StructureDefinition/Timing

Profile: TimingTelemedicina
Parent: Timing
Id: TimingTelemedicina
Description: "Descrizione dei campi da valorizzare in Timing"
* ^status = #draft
* repeat.count ^short = "Numero di cicli di attività previsti durante la durata del piano"
* repeat.duration ^short = "Durata del singolo ciclo"
* repeat.frequency ^short = "Frequenza, indica la periodicità (1 ril/die, 2 ril/die, 2 ril/sett) / indica “incontinuo” se è un telemonitoraggio incontinuo"
* repeat.timeOfDay ^short = "Orario, fascia orario di svolgimento dell'attività programmata"