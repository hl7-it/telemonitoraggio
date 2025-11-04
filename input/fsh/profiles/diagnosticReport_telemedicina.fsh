Alias: $extension-DiagnosticReport.composition = http://hl7.org/fhir/5.0/StructureDefinition/extension-DiagnosticReport.composition
Alias: $extension-DiagnosticReport-suggestedServices = http://hl7.it/fhir/StructureDefinition/extension-DiagnosticReport-suggestedServices
Alias: $diagnosiICD9CM = https://terminology.agenas.gov.it/ValueSet/diagnosiICD9CM

Profile: DiagnosticReportTelemonitoraggio
Parent: DiagnosticReport
Id: DiagnosticReportTelemonitoraggio
Description: "Profilo base della DiagnosticReport condiviso in tutti i documenti di Telemedicina"
* ^version = "1.0.0"
* ^status = #draft
// TODO: rivedere extension
// * extension contains
//     $extension-DiagnosticReport.composition named DiagnosticReportCompositionR5 0..1 and
//     $extension-DiagnosticReport-suggestedServices named DiagnosticReportSuggestedServices 0..*
// * extension[DiagnosticReportCompositionR5] ^short = "Estensione di FHIR R5 per legare la DiagnosticReport a Composition."
// * extension[DiagnosticReportCompositionR5].value[x] 1..
// * extension[DiagnosticReportCompositionR5].value[x] ^short = "Reference a Composition."
// * extension[DiagnosticReportSuggestedServices] ^isModifier = false

* basedOn ^short = "Reference a una o più richieste associate al referto."

* category ^short = "Categoria del servizio."
* category.coding ^short = "Codice definito da un sistema terminologico"

* code ^short = "Nome/codice della diagnostic report."
* code.coding ^short = "Codice definito da un sistema terminologico."
* code.coding.system ^short = "Sistema terminologico."
* code.coding.code ^short = "Codice appartenente al sistema terminologico."
* code.coding.display ^short = "Descrizione del codice."

* subject ^short = "Soggetto del referto."

* encounter ^short = "Contesto in cui è stato generato il DiagnosticReport."

* performer ^short = "Responsabile del report clinico."
* performer ^definition = "Organizzazione o Persona che è responsabile del report; non è necessariamente l'autore dei dati atomici o l'entità che ha interpretato i risultati."
//* media.link.identifier.system = "https://terminology.agenas.gov.it/sid/identificativoOggettoCorrelato" (exactly)

* conclusionCode from diagnosi-icd9cm-vs (required)