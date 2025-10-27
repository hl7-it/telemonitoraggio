/*
    Esempio del paziente nel contesto del telemonitoraggio
*/
Instance: PatientTelemonitoraggioExample
InstanceOf: PatientTelemonitoraggio
Description: "Esempio di paziente nel contesto della televisita"
Usage: #example
* id = "2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82"
// * extension[luogoNascita].valueAddress.extension[residenza].valueBoolean = true
// * extension[luogoNascita].valueAddress.line[+].extension[odonimo].valueString = "Via della Vittoria"
//* extension[luogoNascita].valueAddress.line[=].extension[houseNumber].valueString = "1"
* extension[luogoNascita].valueAddress.line[0] = "Via della Vittoria, 1"
* extension[luogoNascita].valueAddress.city = "Milano"
* extension[luogoNascita].valueAddress.postalCode = "20100"
* extension[luogoNascita].valueAddress.country = "IT"
* extension[luogoNascita].valueAddress.state = "Italia"

* identifier
  * system = "http://hl7.it/sid/codiceFiscale"
  * value = "RSSMRA71E01F205E" 

* name.family = "Rossi"
* name.given = "Maria"

* telecom[0].system = #phone
* telecom[0].value = "3331245678"

* telecom[1].system = #email
* telecom[1].value = "maria.rossi@mail.com"
* birthDate = "1971-05-01"
* gender = #female
* address.city = "Milano"
* address.country = "IT"
* address.postalCode = "20100"
* address.line = "Via della Libertà, 52"
* address.use = #home
* address.state = "Italia"
//* address.extension[residenza].valueBoolean = true
//* address.extension[certificazioneIndirizzo].extension[who].valueCodeableConcept = https://www.hl7.it/fhir/terminology/CodeSystem/it-tipoEntita#gov
//* address.line.extension[dugCode].valueCodeableConcept  = $istat-DUG-CS#67 "via"
* contact[0].name.family = "Rossi"
* contact[0].name.given = "Luigi"
* contact[1].name.family = "Bianchi"
* contact[1].name.given = "Maria"
* contact[0].relationship.coding.code = #C
* contact[0].relationship.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0131"
* contact[0].relationship.coding.display = "Emergency Contact"
* contact[1].relationship.coding.code = #C
* contact[1].relationship.coding.system = "http://terminology.hl7.org/CodeSystem/v2-0131"
* contact[1].relationship.coding.display = "Emergency Contact"
* contact[0].telecom.system = #phone
* contact[0].telecom.value = "3312345567"
* contact[1].telecom.system = #phone
* contact[1].telecom.value = "3311234598"


Instance: PractitionerRoleTelemonitoraggioConsulenteExample
InstanceOf: PractitionerRoleTelemonitoraggio
Description: "Esempio di practitionerRole nel contesto della Telemonitoraggio"
Usage: #example
* organization = Reference(AslRoma1)
* practitioner = Reference(PractitionerTelemonitoraggioConsulenteExample)
* specialty = csspecialityPractitionerRole#01 "Allergologia"
* id = "9f1a2b87-7d4c-4a65-8fc7-e8b56f7312f5"

Instance: PractitionerTelemonitoraggioConsulenteExample
InstanceOf: PractitionerTelemonitoraggio
Description: "Esempio di practitioner nel contesto della Telemonitoraggio"
Usage: #example
* id = "d37c3d0a-96d9-4de5-873c-68b6c1c64db2"
* name.given = "John"
* name.family = "Cena"
* identifier
  * system = "http://hl7.it/sid/codiceFiscale"
  * value = "RSSMRA71E01F205E" 

Instance: AslRoma1
InstanceOf: OrganizationT1
Title: "ASL Roma 1"
Description: "Esempio di Azienda Sanitaria Locale (ASL)"
Usage: #example
* id = "asl-roma-1"
* name = "ASL Roma 1"
* identifier[asl].system = "http://hl7.it/sid/fls"
* identifier[asl].value = "RM0011"
* identifier[aslRegione].system = "https://www.hl7.it/fhir/terminology/ValueSet/uri-idAslRegione"
* identifier[aslRegione].value = "RM1"
* identifier[partitaIva].system = "http://hl7.it/sid/partitaIva"
* identifier[partitaIva].value = "12345678901"
* identifier[codiceFiscale].system = "http://hl7.it/sid/codiceFiscale"
* identifier[codiceFiscale].value = "01234567890"


Instance: PresidioSandroPertini
InstanceOf: OrganizationT2
Title: "Presidio Sandro Pertini"
Description: "Presidio ospedaliero facente parte di ASL Roma 1"
Usage: #example

* id = "osp-pertini"
* name = "Ospedale Sandro Pertini"
* partOf = Reference(Organization/asl-roma-1)
* identifier.system = "http://hl7.it/sid/hsp"
* identifier.value = "HSP00123"


Instance: UOCardiologiaPertini
InstanceOf: OrganizationT3
Title: "U.O. Cardiologia - Ospedale Pertini"
Description: "Unità Operativa di Cardiologia afferente all'Ospedale Pertini"
Usage: #example

* id = "uo-cardiologia-pertini"
* name = "U.O. Cardiologia"
* partOf = Reference(Organization/osp-pertini)
* identifier.system = "http://hl7.it/sid/hsp"
* identifier.value = "UO12345"