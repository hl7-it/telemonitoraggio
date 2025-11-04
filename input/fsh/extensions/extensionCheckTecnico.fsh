Extension: DeviceTechnicalCheck
Id: device-technical-check
Title: "Device Technical Check"
Description: "Esito e dettagli dell'attività di verifica tecnica del dispositivo (R4)."
* ^context[0].type = #element
* ^context[0].expression = "Device"
* extension contains
    date 0..1 and
    performer 0..1 and
    nextDue 0..1 and
    esito 0..*
* extension[date].valueDateTime 1..1
* extension[performer].valueReference 1..1
* extension[performer].valueReference only Reference(OrganizationT1)
* extension[nextDue].valueDate 1..1
* extension[esito].valueString 1..1
