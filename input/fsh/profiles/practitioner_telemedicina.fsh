Profile: PractitionerTelemonitoraggio
Parent: Practitioner
Id: PractitionerTelemonitoraggio
Description: "Profilo base del Practitioner condiviso in tutti i documenti di Telemedicina"
* ^version = "0.1.0"
* ^status = #active
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.description = "Slice based on the identifier pattern"
* identifier ^slicing.rules = #open
* identifier ^short = "Identificativo dell'operatore sanitario"
* identifier ^definition = "Un identificatore che si applica a questa persona in questo ruolo."
* identifier contains codiceFiscale 0..1
* identifier[codiceFiscale] ^short = "Codice Fiscale del Medico"
* identifier[codiceFiscale] ^definition = "Codice Fiscale"
* identifier[codiceFiscale] ^patternIdentifier.system = "http://hl7.it/sid/codiceFiscale"
* identifier[codiceFiscale].system = "http://hl7.it/sid/codiceFiscale" (exactly)

* name ^short = "Nome dell'operatore sanitario"
