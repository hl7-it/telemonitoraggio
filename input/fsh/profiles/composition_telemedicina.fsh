Profile: CompositionTelemedicina
Parent: Composition
Id: CompositionTelemedicina
Description: "Profilo base della Composition condiviso in tutti i documenti di Telemedicina"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = true
* ^date = "2024-04-29T16:08:42+02:00"

* identifier ^short = "Identificatore indipendente dalla versione."

* status ^short = "Stato di completezza della risorsa Composition. Lo stato della risorsa rappresenta anche lo stato del documento."

* type from vsTipologiaDocumentale (required)
* type ^short = "Tipo di Composition."

* subject only Reference(PatientTelemonitoraggio)

* encounter only Reference(EncounterTelemedicina)
* encounter ^short = "Contesto in cui è stato generato il documento."

* date ^short = "Data di modifica della risorsa da parte del firmatario."

* author only Reference(PractitionerRoleTelemonitoraggio or OrganizationT1)
* author ^short = "Autore della Composition (Medico Refertante)."

* title ^short = "Titolo del documento"

// * confidentiality ^short = "Codice di confidenzialità della Composition."
* attester ^slicing.discriminator.type = #value
* attester ^slicing.discriminator.path = "mode"
* attester ^slicing.rules = #open
* attester ^short = "Professionisti che attestano la validità del documento. Se la risorsa è creata a fine documentale uno degli attester dovrebbe essere il firmatario, ovvero chi allega la firma digitale al documento."
* attester contains legalAuthenticator 1..1
* attester[legalAuthenticator].mode = #legal (exactly)
* attester[legalAuthenticator].time 1..
* attester[legalAuthenticator].time ^short = "Data di firma del documento"
* attester[legalAuthenticator].party 1..
* attester[legalAuthenticator].party only Reference(PractitionerRoleTelemonitoraggio)
* attester[legalAuthenticator].party ^short = "Medico firmatario del documento"

* relatesTo ^short = "Ulteriori documenti correlati"

* event.code ^short = "Tipologia di accesso"

* section 1..
* section.title ^short = "Titolo della sezione."
* section.code ^short = "Codice della sezione."
