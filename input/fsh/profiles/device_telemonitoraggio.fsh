Profile: DeviceTelemedicina
Parent: Device
Id: DeviceTelemedicina
Title: "Device"
Description: "Profilo base del Device condiviso in tutti i documenti di Telemedicina"
* ^status = #draft
* ^experimental = false
* ^date = "2024-04-29T16:08:42+02:00"

* identifier ^short = "Identificativo business del Device"

* udiCarrier ^short = "Unique Device Identifier (UDI)"

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
