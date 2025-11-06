Profile: CarePlanRelazioneFinaleTM
Parent: CarePlan
Id: CarePlanRelazioneFinaleTM
Description: "Profilo del Care Plan utilizzato nel contesto del Report Rilevazione di Telemonitoraggio"
* ^status = #draft
* identifier 1..
* identifier ^short = "Codice identificativo del Piano"
* subject only Reference(PatientTelemonitoraggio)
* subject ^short = "Per chi è destinato il piano di cura"
* activity ^short = "Azione da attuare come parte del piano"
* activity.outcomeReference only Reference(ObservationRelazioneFinaleTm)
* activity.outcomeReference ^short = "parametro rilevato"
