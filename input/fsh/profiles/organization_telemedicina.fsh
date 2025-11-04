
Profile: OrganizationFabbricante
Parent: Organization
Id: OrganizationFabbricante
Description: "Profilo della risorsa Organization che rappresenta il fabbricante del dispositivo."
* ^status = #draft
* identifier ^short = "Identificativi di Organization"

* name ^short = "Nome del fabbricante del dispositivo medico in oggetto."

* address ^short = "Indirizzo del fabbricante del dispositivo medico in oggetto"
* address.city ^short = "Comune"
* address.district ^short = "Nome della provincia"
* address.state ^short = "Sotto-unità dello stato (Regione)."

* telecom ^slicing.discriminator[0].type = #value
* telecom ^slicing.discriminator[0].path = "system"
* telecom ^slicing.rules = #open 
* telecom contains
    Website 1..1
* telecom[Website].system 1..1
* telecom[Website].system = #url
* telecom[Website].value 1..1
* telecom[Website].value ^short = "URL del sito web del fabbricante"
