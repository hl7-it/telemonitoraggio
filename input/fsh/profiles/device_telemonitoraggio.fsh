Alias: $Device = http://hl7.org/fhir/StructureDefinition/Device

Profile: DeviceTelemonitoraggio
Parent: $Device
Id: DeviceTelemonitoraggio
Description: "Profilo base del Device condiviso in tutti i documenti di Telemedicina"
* ^status = #draft
* ^experimental = false
* ^date = "2024-04-29T16:08:42+02:00"

* identifier ^short = "Identificativo business del Device"
* identifier ^definition = "Descrive identificativi business per la risorsa"
* udiCarrier MS
* udiCarrier ^short = "L'UDI utilizza il formato “identificazione automatica e raccolta dei dati” (AIDC), ad esempio codici a barre lineari o 2D e l'identificativo del dispositivo UDI (UDI-DI) utilizza un formato leggibile dall'uomo"
* udiCarrier ^definition = "Unique device identifier (UDI) assegnato all'etichetta o al pacchetto del dispositivo."
* status MS
* manufacturer MS
* manufacturer ^short = "Nome del fabbricante"

* manufactureDate ^short = "Data di fabbricazione"

* expirationDate ^short = "Data di scadenza (se applicabile)"

* lotNumber ^short = "Numero di lotto"

* serialNumber ^short = "Numero seriale"

* deviceName ^short = "Il nome del dispositivo fornito dal produttore"
* deviceName.name ^short = "Nome del device"
* deviceName.name ^definition = "Nome del device"
* deviceName.type ^definition = "Tipologia del deviceName"

* type ^short = "Tipologia del device"
* type ^definition = "Tipologia device associati al piano (es. monitor multiparametrico)."
