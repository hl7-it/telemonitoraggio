Profile: DeviceDefinitionTelemonitoraggio
Parent: DeviceDefinition
Id: DeviceDefinitionTelemonitoraggio
Title: "DeviceDefinition - Telemonitoraggio"
Description: "Profilo del DeviceDefinition per dispositivi di telemonitoraggio."
* ^status = #draft
* ^experimental = false

* manufacturer[x] 1..1
* manufacturer[x] ^short = "Fabbricante (nome o riferimento a Organization)"
* manufacturerReference only Reference(OrganizationFabbricante)

* modelNumber 0..1
* modelNumber ^short = "Numero di modello"

// Slicing per tipo di property
* property ^slicing.discriminator[0].type = #value
* property ^slicing.discriminator[0].path = "type"
* property ^slicing.rules = #open
* property contains
    tipoAlimentazione 0..1 and
    tipoCollegamento 0..1
* property[tipoAlimentazione].type ^short = "Tipo di alimentazione"
* property[tipoAlimentazione].type = CSTipoPropertyDeviceDefinitionTM#tipoAlimentazione "Tipo di alimentazione"
* property[tipoAlimentazione].valueCode ^short = "Tipologia di alimentazione elettrica (es: cavo o batterie) "

* property[tipoCollegamento].type ^short = "Frequenza di campionamento"
* property[tipoCollegamento].type = CSTipoPropertyDeviceDefinitionTM#tipoCollegamento "Tipo di collegamento"
* property[tipoCollegamento].valueCode ^short = "Tipologia di collegamento (es: bluetooth) "
