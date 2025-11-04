Profile: ProcedureTelemonitoraggio
Parent: Procedure
Id: ProcedureTelemonitoraggio
Description:  "Profilo base della Procedure condiviso in tutti i documenti di Telemedicina"

* ^status = #draft
* extension contains http://hl7.org/fhir/StructureDefinition/procedure-method named ModalitaEsecuzioneProcedura 0..1
* extension[ModalitaEsecuzioneProcedura] ^short = "Modalità esecuzione procedura operativa"
* basedOn ^short = "La richiesta su cui si basa questa procedura"

* partOf only Reference(Procedure or ObservationTelemedicina)

* status ^comment = "Il codice \"unknown\" non deve essere utilizzato per comunicare altri stati.  Il codice \"unknown\" deve essere usato quando si applica uno degli stati, ma il sistema autore non conosce lo stato attuale della procedura.\n\nQuesto elemento è etichettato come modificatore perché lo stato contiene codici che contrassegnano la risorsa come non valida al momento."

* code ^short = "Codice della prestazione eseguita"
* code from VsCatalogoNazionalePrestazioni (required)

* subject only Reference(PatientTelemonitoraggio)
* subject ^short = "Paziente coinvolto nella procedira"

* performed[x] only Period
* performed[x] ^short = "Quando è stata eseguita la procedura"

* recorder ^short = "Chi ha registrato la procedura"

* performer ^short = "Le persone che hanno eseguito la procedura"
* performer.actor only Reference(PractitionerTelemonitoraggio or PractitionerRoleTelemonitoraggio or OrganizationT1 or Patient or DeviceTelemonitoraggio)

* outcome ^short = "Parametri rilevanti al fine di caratterizzare la procedura"
* outcome.text ^short = "Testo libero per la relazione alla fine della procedura"

* usedReference ^short = "Strumentazione utilizzata nel corso della procedura"
//* usedReference only Reference(DeviceTelemonitoraggioTesserino)

* category ^short = "procedura operativa eseguita"

* note ^short = "Note"