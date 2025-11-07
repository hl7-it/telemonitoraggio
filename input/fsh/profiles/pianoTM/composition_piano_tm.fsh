Alias: $loinc = http://loinc.org

Profile: CompositionPianoTM
Parent: CompositionTelemedicina
Id: CompositionPianoTM
Description: "Profilo della Composition utilizzata nel contesto del Telemonitoraggio"
* ^status = #draft
* subject ^definition = "Il soggetto a cui si riferisce la Composition, ad esempio un paziente sottoposto a monitoraggio remoto"
* title = "Piano di Telemonitoraggio" (exactly)
* title ^definition = "Titolo human-readable ufficiale per la Composition."

//Section
* section
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section ^slicing.ordered = false
* section contains
    pianoDiCura 0..1 and
    diagnosi 0..1
* section[pianoDiCura] ^sliceName = "pianoDiCura"
* section[pianoDiCura].code = $loinc#18776-5 (exactly)
* section[pianoDiCura].entry only Reference(CarePlanPianoDiCuraTelemonitoraggio)
* section[diagnosi] ^sliceName = "diagnosi"
* section[diagnosi].code = $loinc#29548-5 (exactly)
* section[diagnosi].entry only Reference(ObservationPianoTelemonitoraggio)