Profile: DeviceTelemonitoraggio
Parent: Device
Id: DeviceTelemonitoraggio
Description: "Profilo base del Device condiviso in tutti i documenti di Telemedicina"
* ^status = #draft
* ^experimental = false
* ^date = "2024-04-29T16:08:42+02:00"
* extension contains DeviceTechnicalCheck named technicalCheck 0..*
* identifier ^short = "Identificativo business del Device"
* identifier ^definition = "Descrive identificativi business per la risorsa"
* udiCarrier ^short = "L'UDI utilizza il formato “identificazione automatica e raccolta dei dati” (AIDC), ad esempio codici a barre lineari o 2D e l'identificativo del dispositivo UDI (UDI-DI) utilizza un formato leggibile dall'uomo"
* udiCarrier ^definition = "Unique device identifier (UDI) assegnato all'etichetta o al pacchetto del dispositivo."
* udiCarrier 1..
* manufacturer ^short = "Informazioni del fabbricante."
* manufactureDate ^short = "Data di fabbricazione"
* expirationDate ^short = "Data di scadenza (se applicabile)"
* lotNumber ^short = "Numero di lotto"
* serialNumber ^short = "Numero seriale"
* deviceName ^slicing.discriminator[0].type = #value
* deviceName ^slicing.discriminator[0].path = "type"
* deviceName ^slicing.rules = #open
* deviceName contains
    nomeDelDevice 0..1 and
    modelloDelDevice 0..1
* deviceName[nomeDelDevice] ^short = "Denominazione del dispositivo (user-friendly)"
* deviceName[nomeDelDevice].type = #user-friendly-name
* deviceName[nomeDelDevice].name ^short = "Nome del dispositivo"
* deviceName[modelloDelDevice] ^short = "Modello del dispositivo"
* deviceName[modelloDelDevice].type = #model-name
* deviceName[modelloDelDevice].name ^short = "Nome del modello"
* type ^short = "Tipologia del device"
* definition ^short = "Riferimento alla definizione (o modello) del dispositivo"
* definition only Reference(DeviceDefinitionTelemonitoraggio)
* owner ^short = "Nome e indirizzo dell’istituzione sanitaria che ha effettuato l’assegnazione del dispositivo in oggetto "
* owner only Reference(OrganizationT2)
* property ^short = "Parametri tecnici del dispositivo"

