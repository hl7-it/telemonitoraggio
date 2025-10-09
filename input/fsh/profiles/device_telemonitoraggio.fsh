Alias: $Device = http://hl7.org/fhir/StructureDefinition/Device

Profile: deviceTelemonitoraggio
Parent: $Device
Id: deviceTelemonitoraggio
Description: "Profilo base del Device condiviso in tutti i documenti di Telemedicina"
* ^status = #draft
* ^experimental = false
* ^date = "2024-04-29T16:08:42+02:00"
* id MS
* id ^short = "Id della risorsa"
* meta MS
* meta ^short = "Metadati della risorsa"
* meta ^definition = "I metadati di una risorsa. Questo è il contenuto della risorsa gestita dall'infrastruttura. Le modifiche al contenuto potrebbero non essere sempre associate alle modifiche alla versione della risorsa."
* identifier MS
* identifier ^short = "Identificativo business del Device"
* identifier ^definition = "Descrive identificativi business per la risorsa"
* udiCarrier MS
* udiCarrier ^short = "L'UDI utilizza il formato “identificazione automatica e raccolta dei dati” (AIDC), ad esempio codici a barre lineari o 2D e l'identificativo del dispositivo UDI (UDI-DI) utilizza un formato leggibile dall'uomo"
* udiCarrier ^definition = "Unique device identifier (UDI) assegnato all'etichetta o al pacchetto del dispositivo."
* status MS
* manufacturer MS
* manufacturer ^short = "Nome del fabbricante"
* manufacturer ^definition = "Nome del fabbricante"
* manufactureDate MS
* manufactureDate ^short = "Data di fabbricazione"
* manufactureDate ^definition = "Data di fabbricazione"
* expirationDate MS
* expirationDate ^short = "Data di scadenza (se applicabile)"
* expirationDate ^definition = "Data di scadenza"
* lotNumber MS
* lotNumber ^short = "Numero del lotto"
* lotNumber ^definition = "Numero del lotto"
* serialNumber MS
* serialNumber ^short = "Numero seriale"
* serialNumber ^definition = "Numero seriale assegnato al dispositivo"
* deviceName MS
* deviceName ^short = "Il nome del dispositivo fornito dal produttore"
* deviceName ^definition = "Rappresenta il nome del produttore del device fornito dal dispositivo, da un'etichetta UDI o da una persona che descrive il dispositivo."
* deviceName.name MS
* deviceName.name ^short = "Denominazoine del dispositivo"
* deviceName.name ^definition = "Nome del dispositivo"
* deviceName.type MS
* deviceName.type ^definition = "Tipologia del deviceName"
* type MS
* type ^short = "Tipologia del dispositivo"
* type ^definition = "Tipologia dispositivo associati al piano (es. monitor multiparametrico)."
* type.text MS