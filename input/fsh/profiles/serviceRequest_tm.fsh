Alias: $brancaPrestazione = https://terminology.agenas.gov.it/ValueSet/brancaPrestazione

Profile: ServiceRequestTelemonitoragio
Parent: ServiceRequest
Id: ServiceRequestTelemonitoragio
Description: "Profilo base della ServiceRequest condiviso in tutti i documenti di Telemedicina"
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2024-04-29T16:08:42+02:00"

* identifier ^short = "Identifiicativi associati alle singole istanze della richiesta (Numero ricetta medica)."

* requisition ^short = "Identificativo univoco della richiesta composita"
* requisition.type ^short = "Descrizione della tipologia di identificativo"
* requisition.type.coding ^slicing.discriminator.type = #value
* requisition.type.coding ^slicing.discriminator.path = "system"
* requisition.type.coding ^slicing.rules = #open
* requisition.type.coding ^short = "Codice che identifica la tipologia di identificativo"
* requisition.type.coding contains tipoRicetta 0..1
* requisition.type.coding[tipoRicetta] ^short = "Codice che identifica la tipologia di identificativo, nel caso di prescrizioni"
* requisition.type.coding[tipoRicetta] ^definition = "Codice che identifica la tipologia di identificativo, nel caso di una prescrizione per soggetti stranieri o naviganti"
* requisition.type.coding[tipoRicetta].system = "https://terminology.agenas.gov.it/CodeSystem/tipoRicetta" (exactly)
* requisition.type.coding[tipoRicetta].system ^short = "Identifica il sistema terminologico"
* requisition.type.coding[tipoRicetta].system ^definition = "Identificazione del sistema terminologico che definisce il significato del codice."
* requisition.type.coding[tipoRicetta].code 1..
* requisition.type.coding[tipoRicetta].code from vs-tipo-ricetta (required)
* requisition.type.coding[tipoRicetta].code ^short = "Codice valido per il sistema terminologico di riferimento"
* requisition.type.coding[tipoRicetta].code ^definition = "Un codice valido per il sistema terminologico di riferimento, i cui valori sono disponibili consultando il ValueSet dedicato."
* requisition.system obeys requisition-system
* requisition.system ^short = "Lo spazio dei nomi per il valore dell'identificatore"
* requisition.value ^short = "Il valore che è unico"

* status ^definition = "Stato della richiesta."

* category ^slicing.discriminator.type = #value
* category ^slicing.discriminator.path = "coding.system"
* category ^slicing.rules = #open
* category ^short = "Classificazione del servizio"
* category contains brancaPrestazione 0..*
* category[brancaPrestazione].coding ..1
* category[brancaPrestazione].coding from specialita-mediche (preferred)
* category[brancaPrestazione].coding ^short = "Codice definito da un sistema terminologico"
* category[brancaPrestazione].coding ^definition = "Un riferimento a un codice definito da un sistema terminologico"
* category[brancaPrestazione].coding.system = "https://terminology.agenas.gov.it/CodeSystem/brancaPrestazione" (exactly)
* category[brancaPrestazione].coding.system ^short = "Identifica il sistema di terminologia"
* category[brancaPrestazione].coding.system ^definition = "Identificazione del sistema terminologico che definisce il significato del codice."
* category[brancaPrestazione].coding.code from specialita-mediche (preferred)
* category[brancaPrestazione].coding.code ^short = "Codice valido per il sistema terminologico di riferimento"
* category[brancaPrestazione].coding.code ^definition = "Un codice valido per il sistema terminologico di riferimento, i cui valori sono definiti nel CodeSystem dedicato"

* priority ^short = "priorità della richiesta"

* code ^short = "Cosa viene richiesto/ordinato"
* code.coding ^short = "Codice definito da un sistema terminologico"

* orderDetail ^short = "Informazioni aggiuntive sulla richiesta"

* quantity[x] ^short = "Quantità prestazione"

* subject only Reference(PatientTelemonitoraggio)
* subject ^short = "Reference a Patient"

* encounter ^short = "reference ad Encounter"
* encounter.display ^definition = "descrizione della reference"

* occurrence[x] ^short = "Quando la richiesta deve essere erogata"

* authoredOn ^short = "Data di invio della richiesta."

* requester only Reference(PractitionerRoleTelemonitoraggio)
* requester ^short = "Medico prescrittore."

* performer ^short = "Esecutori della richiesta"

* reasonCode ^short = "Codice diagnosi/Quesito diagnostico"
* reasonCode.coding ^short = "Codifica associata al quesito diagnostico"
* reasonReference only Reference(DiagnosticReportTelemonitoraggio)

* insurance ^short = "Copertura assicurativa associata"

* specimen ^short = "Reference usata solo se il campione cui punta la richiesta è già stato prelevato ed esiste."

* note ^short = "Uleriori note"
// * code.coding ^slicing.discriminator.type = #value
// * code.coding ^slicing.discriminator.path = "extension.value"
// * code.coding ^slicing.rules = #open
// * code.coding contains
//     codiceNomenclatoreTariffario 0..1 and
//     codiceCatalogoRegionalePrestazione 0..1
// * code.coding[codiceNomenclatoreTariffario] from $catalogoNazionalePrestazioni (preferred)
// * code.coding[codiceNomenclatoreTariffario].extension 1..
// * code.coding[codiceNomenclatoreTariffario].extension contains $extension_serviceRequest_codeCodingType named tipologiaCodificaServizio 1..1
// * code.coding[codiceNomenclatoreTariffario].extension[tipologiaCodificaServizio] ^isModifier = false
// * code.coding[codiceNomenclatoreTariffario].extension[tipologiaCodificaServizio].value[x] = "codiceNomenclatoreTariffario" (exactly)
// * code.coding[codiceNomenclatoreTariffario].system ^short = "Identifica il sistema di terminologia"
// * code.coding[codiceNomenclatoreTariffario].system ^definition = "Identificazione del sistema terminologico che definisce il significato del codice. https://terminology.agenas.gov.it/CodeSystem/catalogoNazionalePrestazioni"
// * code.coding[codiceNomenclatoreTariffario].code ^short = "Codice valido per il sistema terminologico di riferimento"
// * code.coding[codiceNomenclatoreTariffario].code ^definition = "Un codice valido per il sistema terminologico di riferimento, i cui valori sono definiti nel CodeSystem dedicato"
// * code.coding[codiceCatalogoRegionalePrestazione] from $catalogoRegionalePrestazioni (preferred)
// * code.coding[codiceCatalogoRegionalePrestazione].extension 1..
// * code.coding[codiceCatalogoRegionalePrestazione].extension contains $extension_serviceRequest_codeCodingType named tipologiaCodificaServizio 1..1
// * code.coding[codiceCatalogoRegionalePrestazione].extension[tipologiaCodificaServizio] ^isModifier = false
// * code.coding[codiceCatalogoRegionalePrestazione].extension[tipologiaCodificaServizio].value[x] = "codiceCatalogoRegionalePrestazione" (exactly)
// * code.coding[codiceCatalogoRegionalePrestazione].system ^short = "Identifica il sistema di terminologia"
// * code.coding[codiceCatalogoRegionalePrestazione].system ^definition = "Identificazione del sistema terminologico che definisce il significato del codice. https://terminology.agenas.gov.it/CodeSystem/catalogoRegionalePrestazioni"
// * code.coding[codiceCatalogoRegionalePrestazione].code ^short = "Codice valido per il sistema terminologico di riferimento"
// * code.coding[codiceCatalogoRegionalePrestazione].code ^definition = "Un codice valido per il sistema terminologico di riferimento, i cui valori sono definiti nel CodeSystem dedicato"


Invariant: requisition-system
Description: "il system deve seguire questa struttura: \"http://www.[nome prodotto o fornitore].it/identifiers/requisition\""
* severity = #error
* expression = "startsWith('http://www') and endsWith('.it/identifiers/requisition')"