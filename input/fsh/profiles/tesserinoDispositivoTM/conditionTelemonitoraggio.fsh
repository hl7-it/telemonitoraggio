Profile: ConditionTelemonitoraggio
Parent: Condition
Id: ConditionTelemonitoraggio
Description: "Profilo della Condition utilizzato nel contesto del telemonitoraggio"
* code ^short = "Patologia paziente."
* code from ValueSet_DiagnosiICD9CM (required)
* subject only Reference(PatientTelemonitoraggio)