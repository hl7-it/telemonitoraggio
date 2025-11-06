// Profile for MedicationStatement in Telemedicina context
Profile: MedicationStatementTelemedicina
Parent: MedicationStatement
Id: MedicationStatementTelemedicina
Title: "MedicationStatement Telemedicina"
Description: "Profilo base della MedicationStatement condiviso in tutti i documenti di Telemedicina"
* ^status = #draft

// Limit medication to CodeableConcept
* medication[x] only CodeableConcept
* medication[x] ^mustSupport = true
* medication[x] from https://www.hl7.it/fhir/terminology/ValueSet/aifa-aic (required)
* medication[x] ^short = "Definizione farmaco"
* medication[x] ^binding.strength = #preferred

// Subject must be Telemedicina patient
* subject only Reference(PatientTelemonitoraggio)

// Optional metadata
* effective[x] 0..1
* note 0..1
* dosage 0..*