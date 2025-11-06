Alias: $Observation = http://hl7.it/fhir/StructureDefinition/Observation

Profile: CarePlanReportRilevazioneTM
Parent: CarePlan
Id: CarePlanReportRilevazioneTM
Description: "Profilo del Care Plan utilizzato nel contesto del Report Rilevazione di Telemonitoraggio"
* ^status = #draft
* identifier 1..
* identifier ^short = "Codice identificativo del Piano"
* identifier ^definition = "Identificativi aziendali assegnati a questo piano di cura dall'esecutore o da altri sistemi, che rimangono costanti man mano che la risorsa viene aggiornata e propagata da server a server."
* subject only Reference(PatientTelemonitoraggio)
* subject ^short = "Per chi è destinato il piano di cura"
* activity ^short = "Azione da attuare come parte del piano"
* activity.outcomeReference only Reference(ObservationTelemedicina)
* activity.outcomeReference ^short = "parametro rilevato"
* activity.outcomeReference ^definition = "parametro rilevato"

