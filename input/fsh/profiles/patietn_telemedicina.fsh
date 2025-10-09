Alias: $patient-birthPlace = http://hl7.org/fhir/StructureDefinition/patient-birthPlace
Alias: $Address = http://hl7.it/fhir/StructureDefinition/Address
Alias: $uri-idRegionali = https://www.hl7.it/fhir/terminology/ValueSet/vs-anagrafi-regionali
Alias: $uri-idEni = https://www.hl7.it/fhir/terminology/ValueSet/VstipoIdentificatore 
Alias: $uri-idStp = https://www.hl7.it/fhir/terminology/ValueSet/VstipoIdentificatore
Alias: $anpr = http://hl7.it/sid/anpr
Alias: $cf = http://hl7.it/sid/codiceFiscale
Alias: $tipoIdentificatore = http://hl7.it/fhir/lab-report/ValueSet/VstipoIdentificatore

Profile: PatientTelemonitoraggio
Parent: Patient
Id: PatientTelemonitoraggio
Description: "Profilo base del Patient condiviso in tutti i documenti di Telemedicina"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = true
* ^date = "2024-04-29T16:08:42+02:00"

* extension contains $patient-birthPlace named luogoNascita 0..1
* extension[luogoNascita] ^isModifier = false

* identifier  
* identifier 1..
* identifier.extension contains ExtRecordCertification named certificazioneId 0..1
* identifier.extension[certificazioneId] ^short = "Identificativo certificato (tipicamente per CF)"
* identifier.extension[certificazioneId] ^definition = "Indica che questo identificativo è stato certificato. Usato tipicamente per il Codice Fiscale."
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "$this.system"
* identifier ^slicing.rules = #open
* identifier ^short = "Codice identificativo del paziente."
* identifier.value 1..  
* identifier.value ^short = "ID del paziente (e.g. Codice Fiscale)."
* identifier.value ^definition = "Identifictivo del paziente."
* identifier.type from VstipoIdentificatore (extensible)
* identifier contains
    codiceFiscale 0..1   and
    anpr 0..1 and
    idRegionale 0..1 and
    codiceENI 0..1 and
    codiceANA 0..1 and
    tesseraTEAM 0..1 and
    codiceSTP 0..1
* identifier[codiceFiscale] ^short = "Codice Fiscale."
* identifier[codiceFiscale].system ^short = "Namespace per il valore dell'identifier."
* identifier[codiceFiscale].system 1..  
* identifier[codiceFiscale].system = $cf (exactly)
* identifier[codiceFiscale].value ^short = "Valore dell'identifier."
* identifier[codiceFiscale].value obeys pat-id-cf-1
* identifier[anpr] ^short = "Identificativo del paziente nell'Anagrafe nazionale della popolazione residente."
* identifier[anpr].system ^short = "Namespace per il valore dell'identifier."
* identifier[anpr].system 1..  
* identifier[anpr].system = $anpr
* identifier[idRegionale] ^short = "Identificativo Regionale."
* identifier[idRegionale].system ^short = "Namespace per il valore dell'identifier."
* identifier[idRegionale].system 1..  
* identifier[idRegionale].system from $uri-idRegionali (required)
* identifier[codiceENI] ^short = "Codice ENI."
* identifier[codiceENI].system ^short = "Namespace per il valore dell'identifier."
* identifier[codiceENI].system 1..  
* identifier[codiceENI].system from $uri-idEni (required)
* identifier[codiceANA] ^short = "Codice ANA."
* identifier[codiceANA].system ^short = "Namespace per il valore dell'identifier."
* identifier[codiceANA].system = "urn:oid:2.16.840.1.113883.2.9.4.3.15"
* identifier[codiceANA].system 1..  
* identifier[tesseraTEAM] ^short = "Tessera TEAM."
* identifier[tesseraTEAM].system ^short = "Namespace per il valore dell'identifier."
* identifier[tesseraTEAM].system = "urn:oid:2.16.840.1.113883.2.9.4.3.7"
* identifier[tesseraTEAM].system 1..  
* identifier[codiceSTP] ^short = "Codice STP." 
* identifier[codiceSTP].system ^short = "Namespace per il valore dell'identifier."
* identifier[codiceSTP].system 1..  
* identifier[codiceSTP].system from $uri-idStp (required)

* name 1..
* name obeys it-pat-1
* name ^short = "Un nome associato al paziente"

* telecom ^short = "recapiti paziente"

* address ^slicing.discriminator.type = #value
* address ^slicing.discriminator.path = "use"
* address ^slicing.rules = #open
* address contains
    indirizzoResidenza 1..1 and
    indirizzoDomicilio 0..1
* address[indirizzoResidenza] ^short = "Indirizzo di residenza del paziente"
* address[indirizzoResidenza].use 1..
* address[indirizzoResidenza].use = #billing (exactly)
* address[indirizzoResidenza].city ^short = "Codice del comune di residenza dell'assistito"
//* address[indirizzoResidenza].city ^short = "Codice del comune di residenza dell'assistito"
//* address[indirizzoResidenza].city ^short = "Codice del comune di residenza dell'assistito"
* address[indirizzoDomicilio] ^short = "Indirizzo di domicilio del paziente"
* address[indirizzoDomicilio].use 1..
* address[indirizzoDomicilio].use = #home (exactly)

* birthDate ^short = "La data di nascita dell'individuo"

* deceased[x] ^short = "Indica se l'individuo è deceduto o meno."

* maritalStatus ^short = "Stato civile del paziente"

* generalPractitioner MS
* generalPractitioner ^slicing.discriminator.type = #profile
* generalPractitioner ^slicing.discriminator.path = "$this"
* generalPractitioner ^slicing.rules = #open
* generalPractitioner contains
    mmgPlsRole 0..* MS and
    mmgPls 0..* MS and
    aziendaAssistenza 0..* MS
* generalPractitioner[mmgPlsRole] only Reference(PractitionerRoleTelemonitoraggio)
* generalPractitioner[mmgPls] only Reference(PractitionerTelemonitoraggio)
* generalPractitioner[aziendaAssistenza] only Reference(OrganizationT1)



Invariant: pat-id-cf-1
Description: "Il Codice Fiscale deve essere di 16 caratteri alfanumerici (3 per il cognome; 3 per il nome; 2 caratteri numerici per l'anno di nascita; 1 per il mese di nascita; 2 caratteri numerici per il giorno di nascita ed il sesso; 4 associati al Comune oppure allo Stato estero di nascita. 1 carattere di controllo"
* severity = #error
* expression = "matches('^[A-Za-z]{6}[0-9LMNPQRSTUV]{2}[A-Za-z]{1}[0-9LMNPQRSTUV]{2}[A-Za-z]{1}[0-9LMNPQRSTUV]{3}[A-Za-z]{1}$')"
* xpath = "matches(@value,'^[A-Za-z]{6}[0-9LMNPQRSTUV]{2}[A-Za-z]{1}[0-9LMNPQRSTUV]{2}[A-Za-z]{1}[0-9LMNPQRSTUV]{3}[A-Za-z]{1}$')"

Invariant: it-pat-1
Description: "Patient.name.given or Patient.name.family or both SHALL be present"
* severity = #error
* expression = "family.exists() or given.exists()"
* xpath = "f:given or f:family"
