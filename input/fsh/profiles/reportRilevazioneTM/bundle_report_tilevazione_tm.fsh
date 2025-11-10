Profile: BundleReportRilevazioniTM
Parent: Bundle
Id: BundleReportRilevazioniTM
Description: "Profilo Bundle utilizzato per il documento di Report Rilevazione di Telemonitoraggio"
* ^status = #draft
* type = #document (exactly)
* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.ordered = false
* entry ^slicing.rules = #open
* entry contains
    composition 1..1 and
    patient 1..* and
    carePlan 1..* and
    observation 0..* and
    practitionerRole 0..* and
    practitioner 0..*
* entry[composition].resource only CompositionReportRilevazioneTM
* entry[patient].resource only PatientTelemonitoraggio
* entry[carePlan].resource only CarePlanReportRilevazioneTM
* entry[observation].resource only ObservationTelemedicina
* entry[practitionerRole].resource only PractitionerRoleTelemonitoraggio
* entry[practitioner].resource only PractitionerTelemonitoraggio