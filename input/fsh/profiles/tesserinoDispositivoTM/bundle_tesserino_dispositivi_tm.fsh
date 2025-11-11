Profile: BundleTesserinoDispositiviTM
Parent: Bundle
Id: BundleTesserinoDispositiviTM
Description: "Profilo del Bundle utilizzato nel contesto del Tesserino Dispositivi"
* ^status = #draft
* type = #document (exactly)
* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.ordered = false
* entry ^slicing.rules = #open
* entry contains
    composition 1..1 and
    device 0..* and
    patient 1..1 and 
    practitionerRole 0..* and
    deviceUseStatement 0..* 
    // condition 0..* and
    // procedure 0..* and
    // organization 0..*
* entry[composition].resource only CompositionTesserinoDispositiviTM
* entry[device].resource only DeviceTelemonitoraggio
* entry[patient].resource only PatientTelemonitoraggio
* entry[practitionerRole].resource only PractitionerTelemonitoraggio
* entry[deviceUseStatement].resource only DeviceUseStatementTelemonitoraggio
// * entry[procedure].resource only ProcedureTelemonitoraggio
// * entry[organization].resource only OrganizationT2
