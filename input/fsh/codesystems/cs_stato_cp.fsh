CodeSystem: CSCarePlanStato
Id: cs-careplan-edition-type
Title: "CarePlan Stato"
Description: "Tipologia di edizione del CarePlan: prima stesura, rinnovo o modifica."
* ^content = #complete
* ^experimental = false
* ^caseSensitive = false
* #initial "Prima stesura" "Prima emissione del piano delle attività."
* #renewal "Rinnovo" "Rinnovo del piano senza modifiche sostanziali alla struttura degli interventi."
* #update  "Modifica" "Aggiornamento/modifica del piano (variazioni rispetto alla versione precedente)."