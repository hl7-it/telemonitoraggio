// #Alias: $serviceRequest_tm = http://hl7.it/fhir/StructureDefinition/ServiceRequestTV

Profile: AppointmentTelemedicina
Parent: Appointment
Id: AppointmentTelemedicina
Description: "Profilo base del Appointment condiviso in tutti i documenti di Telemedicina"
* ^status = #draft
* ^date = "2023-10-18T12:01:35+02:00"

* identifier 1..
* identifier ^short = "Codice della prenotazione"
* serviceCategory ^short = "Categorizzazione del servizio erogato durante l'appuntamento."

* reasonCode ^short = "Motivo codificato per cui è stato fissato l'appuntamento"

* start ^short = "Quando deve avvenire l'appuntamento"
* start ^comment = "Nota: questa opzione è destinata ai casi in cui è necessario osservare con precisione gli orari, tipicamente i log di sistema e così via, e non gli orari riferiti dall'uomo; per questi ultimi, vedere date e dateTime (che può essere preciso come un istante, ma non è necessario che lo sia). Il fuso orario è sempre richiesto"

* end ^short = "Quando si conclude l'appuntamento"

* created ^short = "La data di creazione della nomina"

// #* basedOn only Reference(ServiceRequestTV)
* basedOn ^short = "La richiesta di servizio per la quale viene assegnato questo appuntamento valuta"

* participant ^short = "Partecipanti coinvolti nell'appuntamento"
* participant.actor ^short = "reference a Practioner e Patient"
* participant.actor ^comment = "I riferimenti DEVONO essere un riferimento a una risorsa FHIR effettiva e DEVONO essere risolvibili (consentendo il controllo dell'accesso, la non disponibilità temporanea, ecc.) La risoluzione può avvenire tramite recupero dall'URL o, se applicabile per tipo di risorsa, trattando un riferimento assoluto come un URL canonico e cercandolo in un registro/repository locale."
