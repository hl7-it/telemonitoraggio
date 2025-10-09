Alias: $loinc = http://loinc.org
Alias: $Condition = https://agenas.gov.it/fhir/StructureDefinition/Condition
Alias: $Procedure = https://agenas.gov.it/fhir/StructureDefinition/Procedure

Profile: CompositionTesserinoDispositiviTM
Parent: CompositionTelemedicina
Id: CompositionTesserinoDispositiviTM
Description: "Profilo della Composition utilizzata nel contesto del Tesserino Dispositivi"
* ^status = #draft
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains informazioniDevice 0..1
* section[informazioniDevice] ^sliceName = "informazioniDevice"
* section[informazioniDevice].code = $loinc#104972-5 (exactly)
* section[informazioniDevice].entry only Reference(DeviceUseStatementTelemonitoraggio)
