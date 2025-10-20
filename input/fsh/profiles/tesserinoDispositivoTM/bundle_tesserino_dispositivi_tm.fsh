Profile: BundleTesserinoDispositiviTM
Parent: Bundle
Id: BundleTesserinoDispositiviTM
Description: "Profilo del Bundle utilizzato nel contesto del Tesserino Dispositivi"
* ^status = #draft
* type = #document (exactly)
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource.meta.profile"
* entry ^slicing.rules = #open
* entry contains
    composition 1..1 and
    device 0..* and
    patient 1..1 and
    condition 0..* and
    procedure 0..* and
    organization 0..*
* entry[composition].resource only CompositionTesserinoDispositiviTM
* entry[device].resource only DeviceTelemonitoraggio
* entry[patient].resource only PatientTelemonitoraggio
* entry[patient].resource.address 1..
* entry[procedure].resource only ProcedureTelemonitoraggio
* entry[organization].resource only OrganizationT1
