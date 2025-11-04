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

* property[tipoAlimentazione].type 1..1
* property[tipoAlimentazione].type.text = "power-source"
* property[tipoAlimentazione].value[x] 1..*
* property[tipoAlimentazione].valueCodeableConcept 1..*
//* property[tipoAlimentazione].valueCodeableConcept from VSDevicePowerType (preferred)
* property[tipoAlimentazione].type ^short = "Tipo di alimentazione"
* property[tipoAlimentazione].valueCodeableConcept ^short = "Tipologia di alimentazione elettrica (es: cavo o batterie) "

* property[tipoCollegamento].type 1..1
* property[tipoCollegamento].type.text = "sampling-rate"
* property[tipoCollegamento].value[x] 1..1
* property[tipoCollegamento].valueCodeableConcept 1..*
//* property[tipoCollegamento].valueCodeableConcept from VSDevicePowerType (preferred)
* property[tipoCollegamento].type ^short = "Frequenza di campionamento"
* property[tipoCollegamento].valueCodeableConcept ^short = "Tipologia di collegamento (es: bluetooth) "
