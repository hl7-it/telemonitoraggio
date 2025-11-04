Profile: CarePlanPianoDiCuraTelemonitoraggio
Parent: CarePlan
Id: CarePlanPianoDiCuraTelemonitoraggio
Description: "Profilo del CarePlan utilizzato nel contesto del Telemonitoraggio"
* ^status = #draft
* extension contains CarePlanStato named statoDelPiano 0..1
* identifier ^short = "Codice identificativo del Piano"
* identifier ^definition = "Identificativi aziendali assegnati a questo piano di cura dall'esecutore o da altri sistemi, che rimangono costanti man mano che la risorsa viene aggiornata e propagata da server a server."
* category = csTipologiaPiano#01 "Piano di Telemonitoraggio"
* category ^short = "Tipologia di Piano"
* category 0..1
* category ^definition = "Identifica il \"tipo\" di piano per supportare la differenziazione tra più piani coesistenti."
* subject only Reference(PatientTelemonitoraggio)
* subject ^short = "Per chi è destinato il piano di cura"
* subject ^definition = "Identifica il paziente la cui cura prevista è descritta dal piano."
* period ^short = "Durata prevista del piano delle attività"
* period ^definition = "Durata prevista del piano delle attività."
* author only Reference(PractitionerRoleTelemonitoraggio)
* author ^short = "Autore del piano di cura del paziente"
* author ^definition = "Autore del piano di cura del paziente. Quando popolato l'autore è il responsabile del piano di cura."
* activity ^short = "Azione da attuare come parte del piano"
* activity ^definition = "Identifica un'azione pianificata da attuare come parte del piano."
* activity.detail.code ^short = "Tipologia dell'attività da eseguire (i.e. teleassitenza, teleriabilitazione neurologica,telemonitoraggio cardiologico etc.)" 
* activity.detail.code ^definition = "Tipologia di attività"
* activity.detail.code from TipologiaAttivitaPianoDiTelemonitoraggio (example) //TODO add things from excel
//* activity.reference only Reference(ServiceRequestTelemonitoraggio)
* activity.detail.instantiatesCanonical only Canonical(ActivityDefinitionPianoTM)
* activity.detail.performer only Reference(DeviceTelemonitoraggio)
* activity.detail.performer ^short = "Dispositivo per il telemonitoraggio"
* activity.detail.performer ^definition = "Dispositivo per il telemonitoraggio che raccoglie e trasmette dati clinici in tempo reale, supportando il monitoraggio remoto del paziente."
* note ^short = "Permette di indicare che si tratta della prima stesura, di un rinnovo o di una modifica del piano delle attività"