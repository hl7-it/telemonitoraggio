Profile: ObservationRelazioneFinaleTm
Parent: ObservationTelemedicina
Id: ObservationRelazioneFinaleTm
Description: "Profilo base di Observation condiviso in tutti i documenti di Telemedicina"
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = true
* effectiveDateTime ^short = "Data e ora dell'osservazione"
* code ^short = "Tipo di indagine/analisi"
* valueInteger ^short = "Risultato della misurazione"
* referenceRange ^short = "Intervallo di riferimento"
* specimen ^short = "Campione utilizzato per l'osservazione"
* specimen only Reference(SpecimenRelazioneFinaleTm)
* partOf ^short = "Immagine allegata o inserita all'interno del referto"
* partOf only Reference(ImagingStudy)
* note ^short = "Commento da parte del medico"
* category ^short = "Specialità dell'esame"
* interpretation ^short = "Codice interpretativo, se noto e rilevante"
* note ^short = "Valori passati della stessa misurazione"
* hasMember only Reference(ObservationRelazioneFinaleTm)
* derivedFrom only Reference(Media)

