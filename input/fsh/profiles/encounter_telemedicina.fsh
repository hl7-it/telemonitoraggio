Alias: $ValueSet-encounter-class.html = http://terminology.hl7.org/ValueSet/encounter-class

Profile: EncounterTelemedicina
Parent: Encounter
Id: EncounterTelemedicina
Description: "Profilo base dell'Encounter condiviso in tutti i documenti di Telemedicina"
* ^status = #draft

* extension contains
    actual-period named periodoEffettivo 0..1 and
    planned-start-date named dataInizioPianificata 0..1 and
    planned-end-date named dataFinePianificata 0..1 
* extension[periodoEffettivo] ^short = "Periodo effettivo della visita"
* extension[periodoEffettivo] ^definition = "Periodo temporale che rappresenta l'inizio e la fine effettiva della visita."
* extension[dataInizioPianificata] ^short = "Data di inizio pianificata"
* extension[dataInizioPianificata] ^definition = "Data e ora pianificate di inizio visita (es. data di ammissione)."
* extension[dataFinePianificata] ^short = "Data di fine pianificata"
* extension[dataFinePianificata] ^definition = "Data e ora pianificate di fine visita (es. data di dimissione)."

* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains codiceNosologico 0..*
* identifier[codiceNosologico].system = "http://agenas.gov.it/sid/codiceNosologico" (exactly)

* status ^short = "Descrizione attributo: Stato attuale dell'incontro. Possibili valori: planned | arrived | triaged | in-progress | onleave | finished | cancelled"
* status ^definition = "Descrizione attributo: Stato attuale dell'incontro. Possibili valori: planned | arrived | triaged | in-progress | onleave | finished | cancelled"

* class ^short = "Classificazione dell'incontro con il paziente."
// * class ^binding.strength = #required
// * class.system from $ValueSet-encounter-class.html (preferred)
// * class.system ^short = "Identità del sistema terminologico"
// * class.system ^definition = "L'identificazione del sistema di codice che definisce il significato del simbolo nel codice."
// * class.system ^comment = "Il system proposto dallo standard è: \"http://terminology.hl7.org/ValueSet/v3-ActEncounterCode\""
// * class.code from $ValueSet-encounter-class.html (required)
// * class.code ^binding.description = "Classification of the encounter."

* priority ^short = "Indica la priorità della richiesta."
* priority.coding ^short = "Codice definito da un sistema terminologico"
* priority.coding.system ^short = "Identità del sistema terminologico"

* subject ^short = "Paziente coinvolto nell'incontro"
* subject only Reference(PatientTelemonitoraggio)

* basedOn only Reference(ServiceRequestTelemonitoraggio) 
* basedOn ^short = "La richiesta che ha avviato la visita"

* participant ^short = "Altre figura tecnica coinvolte"
* participant.individual only Reference(PractitionerTelemonitoraggio)

* appointment only Reference(AppointmentTelemedicina)
* appointment ^short = "L'appuntamento da cui è partita l'incontro"

* period ^short = "Data di inizio e di fine dell'incontro"

* reasonReference ^short = "Motivo scatenante l'incontro"
* reasonReference only Reference(ConditionTelemonitoraggio or ProcedureTelemonitoraggio)

* location ^short = "Elenco delle location gestite in questa visita"
* location.location ^short = "reference a Location"
// * location.physicalType.coding.system ^definition = "Per questo elemento è stato definito un system aziendale."
// * location.physicalType.coding.system ^comment = "L'URI può essere un OID (urn:oid:...) o un UUID (urn:uuid:...).  Gli OID e gli UUID DEVONO essere riferimenti al registro OID HL7. In caso contrario, l'URI dovrebbe provenire dall'elenco HL7 di URI speciali definiti FHIR o dovrebbe fare riferimento a una definizione che stabilisce il sistema in modo chiaro e inequivocabile."
// * location.physicalType.coding.code ^short = "Codice location"
// * location.physicalType.coding.code ^definition = "Simbolo nella sintassi definita dal sistema. Il simbolo può essere un codice predefinito o un'espressione in una sintassi definita dal sistema di codifica (ad esempio post-coordinamento)."
// * location.physicalType.coding.display ^short = "Descrizione del physicalType."
// * location.physicalType.coding.display ^definition = "Descrizione del physicalType."

* serviceProvider ^short = "Organizzazione che eroga il il servizio"
* serviceProvider only Reference(OrganizationT1)