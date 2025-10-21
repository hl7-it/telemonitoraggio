Profile: DeviceUseStatementTelemonitoraggio
Parent: DeviceUseStatement
Id: DeviceUseStatementTelemonitoraggio
Description: "Profilo della DeviceUseStatement che identifica il legame tra l'assistito e il device"
* ^status = #draft
* status = #active
* subject only Reference(PatientTelemonitoraggio)
* timing[x] ^short = "Data di impianto del dispositivo in oggetto (data di assegnazione del paziente) "
* timing[x] only dateTime 
* device only Reference(DeviceTelemonitoraggio)
* reasonReference only Reference(Condition)
* reasonReference ^short = "Patologia del paziente"