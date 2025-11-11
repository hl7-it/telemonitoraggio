
//**********DeviceUseStatement Tesserino Dispositivo di telemonitoraggio**********
Instance: DeviceUseStatementBilancia
InstanceOf: DeviceUseStatementTelemonitoraggio
Usage: #example
Description: "Esempio di DeviceUseStatement nel contesto del Telemonitoraggio"
* id = "7cbbe77d-dcdb-409b-a215-devusestat"
* subject = Reference(PatientTelemonitoraggioExample)
* device = Reference(DevBilancia)
* timingPeriod.start = "2025-11-07T10:20:00+01:00"

//**********Composition Tesserino Dispositivo di telemonitoraggio**********
Instance: EsempioCompositionTesserinoDispositiviTM
InstanceOf: CompositionTesserinoDispositiviTM
Description: "Esempio di Composition nel contesto del Tesserino Dispositivo di Telemonitoraggio"
Usage: #example
* id = "composition-tesserinodisp"
* status = #final
//rivedere il type
* type = $loinc#75496-0 "Telehealth Note"
* title = "Tesserino dispositivi"
* subject = Reference(PatientTelemonitoraggioExample)
* date = "2025-11-07T10:20:00+01:00"
* author[0] = Reference(RoleMedicoBianchiTM)
* attester[legalAuthenticator].mode = #legal
* attester[legalAuthenticator].time = "2025-11-07T10:20:00+01:00"
* attester[legalAuthenticator].party = Reference(RoleMedicoBianchiTM)
* section[informazioniDevice].code = $loinc#104972-5
* section[informazioniDevice].title = "Informazioni sul dispositivo"
* section[informazioniDevice].entry[0] = Reference(DeviceUseStatementBilancia)

//************Bundle document tesserino dispositivo di telemonitoraggio************

// ===============================================
// BUNDLE DOCUMENT del Tesserino Dispositivo di Telemonitoraggio
// ===============================================
Instance: EsempioTesserinoDispositivoTM
InstanceOf: BundleTesserinoDispositiviTM
Usage: #example
Description: "Esempio di Bundle nel contesto del Tesserino Dispositivo di Telemonitoraggio."
* type = #document
* identifier.system = "urn:ietf:rfc:39861"
* identifier.value = "urn:uuid:bnd-tm-2025-11-11-124"
* timestamp = "2025-11-07T10:30:00+01:00"

* entry[0].fullUrl = "http://example.org/fhir/Composition/composition-tesserinodisp"
* entry[0].resource = EsempioCompositionTesserinoDispositiviTM

* entry[1].fullUrl = "http://example.org/fhir/Patient/2e7e0fe3-f0bf-4e0a-8228-b8e7fcec8c82"
* entry[1].resource = PatientTelemonitoraggioExample