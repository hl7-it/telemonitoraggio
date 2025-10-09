
Alias: $Organization_T1 = https://agenas.gov.it/fhir/StructureDefinition/Organization_T1
Alias: $Organization_T2 = https://agenas.gov.it/fhir/StructureDefinition/Organization_T2
Alias: $Organization_T3 = https://agenas.gov.it/fhir/StructureDefinition/Organization_T3
Alias: $specialityPractitionerRole = https://terminology.agenas.gov.it/ValueSet/specialityPractitionerRole

Profile: PractitionerRoleTelemonitoraggio
Parent: PractitionerRole
Id: PractitionerRoleTelemonitoraggio
Title: "PractitionerRoleTelemonitoraggio"
Description: "Profilo base del PractitionerRole condiviso in tutti i documenti di Telemedicina"
* ^version = "0.1.0"
* ^status = #active
* ^jurisdiction = urn:iso:std:iso:3166#IT

* identifier ^short = "Identificativo dell'operatore (e.g. Codice Fiscale, ID Regionale)"

* period ^short = "Il periodo durante il quale il professionista è autorizzato a svolgere questi ruoli"

* practitioner only Reference(PractitionerTelemonitoraggio)
* practitioner ^short = "Dettagli dell'operatore"

* organization only Reference(OrganizationT1 or OrganizationT1)
* organization ^short = "Organizzazione di Appartenenza"

* code ^short = "Ruoli che questo professionista può svolgere"

* specialty from vsspecialityPractitionerRole (required)