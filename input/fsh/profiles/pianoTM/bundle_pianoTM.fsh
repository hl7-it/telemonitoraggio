Profile: BundlePianoTM
Parent: Bundle
Id: BundlePianoTM
Description: "Profilo del Bundle utilizzato nel contesto del Piano di Telemonitoraggio"
* ^status = #draft
* type = #document (exactly)
* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.ordered = false
* entry ^slicing.rules = #open
* entry contains
    composition 1..1 and
    carePlan 0..* and
    patient 1..1 and
    practitionerRole 0..* and
    organization 0..* and
    practitioner 0..* and
    device 0..* and
    activityDefinition 0..* and
    observationDefinition 0..* and 
    observation 0..*
* entry[composition].resource only CompositionPianoTM
* entry[carePlan].resource only CarePlanPianoDiCuraTelemonitoraggio
* entry[patient].resource only PatientTelemonitoraggio
* entry[practitionerRole].resource only PractitionerRoleTelemonitoraggio
* entry[organization].resource only OrganizationT2
* entry[practitioner].resource only PractitionerTelemonitoraggio
* entry[device].resource only DeviceTelemonitoraggio
* entry[activityDefinition].resource only ActivityDefinitionPianoTM
* entry[observationDefinition].resource only ObservationDefinitionPianoTM
* entry[observation].resource only ObservationPianoTelemonitoraggio