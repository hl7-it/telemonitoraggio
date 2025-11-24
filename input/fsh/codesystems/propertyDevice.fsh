// ===============================
// CodeSystem: Tipo di property del DeviceDefinition
// ===============================
CodeSystem: CSTipoPropertyDeviceDefinitionTM
Id: cs-tipo-property-devicedefinition-tm
Title: "Tipo di property - DeviceDefinition Telemonitoraggio"
Description: "Codifica dei tipi di property utilizzate nei DeviceDefinition di telemonitoraggio (es. tipo di alimentazione, tipo di collegamento)."
* ^status = #active
* ^content = #complete
* ^caseSensitive = true
* ^experimental = false
* #tipoAlimentazione "Tipo di alimentazione" "Tipologia di alimentazione elettrica del dispositivo (es. rete, batterie, ricaricabile)."
* #tipoCollegamento "Tipo di collegamento" "Tipologia di collegamento dati del dispositivo (es. Bluetooth, Wi-Fi, cellulare)."
* #parametriTecnici "Parametri tecnici dispositivo" "Parametri tecnici dispositivo."
// ===============================
// ValueSet: Tipo di property del DeviceDefinition
// ===============================
ValueSet: VSTipoPropertyDeviceDefinitionTM
Id: vs-tipo-property-devicedefinition-tm
Title: "ValueSet - Tipo di property del DeviceDefinition per Telemonitoraggio"
Description: "Insieme dei codici ammessi per la property.type dei DeviceDefinition nel contesto di telemonitoraggio."
* ^status = #active
* ^experimental = false
* codes from system CSTipoPropertyDeviceDefinitionTM
