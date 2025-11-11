Profile: BundleRelazioneFinaleTM
Parent: Bundle
Id: BundleRelazioneFinaleTM
Description: "Profilo del Bundle utilizzato nel contesto della Relazione Finale di Telemonitoraggio"
* ^status = #draft
* type = #document (exactly)
* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.ordered = false
* entry ^slicing.rules = #open

* entry contains
    composition 1..1 and
    patient 1..1 and
    carePlan 0..* and
    practitionerRole 0..* and
    practitioner 0..* and
    organization 0..* and
    medicationRequest 0..* and
    encounter 0..* and
    observation 0..* and
    allergyIntolerance 0..* and
    procedure 0..* and
    device 0..* and
    // location 0..* and
    specimen 0..* and
    medicationStatement 0..* and
    documentReference 0..*

* entry[composition].resource only CompositionRelazioneFinaleTelemonitoraggio
* entry[patient].resource only PatientTelemonitoraggio
* entry[carePlan].resource only CarePlanRelazioneFinaleTM
* entry[practitionerRole].resource only PractitionerRoleTelemonitoraggio
* entry[practitioner].resource only PractitionerTelemonitoraggio
* entry[organization].resource only OrganizationT1
* entry[medicationRequest].resource only MedicationRequest
* entry[encounter].resource only EncounterRelazioneFinaleTm
* entry[observation].resource only ObservationTelemedicina
* entry[allergyIntolerance].resource only AllergyIntoleranceTelemedicina
* entry[procedure].resource only ProcedureTelemonitoraggio
* entry[device].resource only DeviceTelemonitoraggio
//* entry[location].resource only Location
* entry[specimen].resource only Specimen
* entry[medicationStatement].resource only MedicationStatementTelemedicina
* entry[documentReference].resource only DocumentReference
