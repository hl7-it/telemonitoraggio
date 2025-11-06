Profile: EncounterRelazioneFinaleTm
Parent: Encounter
Id: EncounterRelazioneFinaleTm
Description: "Risorsa che descrive l'evento di telemonitoraggio"

* identifier 1..
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains codiceNosologico 0..*
* identifier[codiceNosologico].system = "http://agenas.gov.it/sid/codiceNosologico" (exactly)

* type ^short = "Disciplina specialistica ambulatoriale"

* class ^short = "Classificazione dell'incontro di telemonitoraggio/Teleriabilitazione"
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#VR (exactly)
* period ^short = "Data e ora inizio telemonitoraggio"
* period.start ^short = "Data e ora inizio telemonitoraggio"
* period.start ^short = "Data e ora fine telemonitoraggio"
* participant ^short = "Altra figura tecnica coinvolta nell'esecuzione della procedura."
* participant.individual only Reference(PractitionerTelemonitoraggio)