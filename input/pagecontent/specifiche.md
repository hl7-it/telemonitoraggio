### Flusso documentale del Telemonitoraggio

Il flusso descritto in questa sezione illustra come vengono **prodotti, gestiti e pubblicati** nel Fascicolo Sanitario Elettronico (FSE) i documenti principali del percorso di **Telemonitoraggio**, ovvero:

- il **Piano di Telemonitoraggio**, redatto all’attivazione del servizio;
- il **Tesserino dispositivi di Telemonitoraggio**, generato alla consegna e configurazione del kit;
- il **Report Rilevazione di Telemonitoraggio**, prodotto periodicamente durante l’erogazione del servizio;
- la **Rilevazione Finale di Telemonitoraggio**, compilata alla chiusura del percorso.

Il processo coinvolge diversi attori: il **Medico Referente**, gli **Operatori Sanitari**, il **Paziente o Caregiver**, la **Infrastruttura Regionale di Telemedicina (IRT)** e il **FSE**, e si sviluppa in tre fasi principali: **attivazione**, **erogazione** e **chiusura del percorso**.


### Attivazione del percorso e Piano di Telemonitoraggio

Il flusso inizia con l’attivazione del percorso da parte del **Medico Referente**, che definisce i parametri clinici e organizzativi del servizio: obiettivi del monitoraggio, durata, frequenza delle rilevazioni, soglie di riferimento e modalità di revisione dei dati.

All’interno della piattaforma **IRT** vengono inseriti tutti gli elementi necessari alla redazione del Piano.  
Una volta completata la compilazione, la piattaforma genera automaticamente una **bozza del Piano di Telemonitoraggio**, che il medico può rivedere e modificare.

Quando il contenuto è ritenuto corretto, il medico procede con la **firma digitale** del documento, che ne certifica la validità clinica e organizzativa.  

In parallelo, gli **Operatori Sanitari** configurano i **dispositivi di telemonitoraggio** (pairing, test di trasmissione, associazione al paziente).  
A valle di questa attività, la piattaforma IRT genera il **Tesserino dispositivi di Telemonitoraggio**, che elenca le dotazioni assegnate e i riferimenti tecnici del kit.

Dopo la validazione, l’IRT trasmette al **FSE**:
- il **Piano di Telemonitoraggio**, pubblicato al momento dell’attivazione del servizio;
- il **Tesserino dispositivi di Telemonitoraggio**, pubblicato alla consegna del kit.

Entrambi i documenti diventano parte della documentazione clinica ufficiale del paziente.


### Erogazione del Telemonitoraggio

Con la pubblicazione del piano, inizia la fase di **erogazione del servizio**.  
I **Dispositivi** rilevano e trasmettono i parametri vitali o clinici alla piattaforma **IRT**, che li rende disponibili ai professionisti sanitari.

Il **Medico Referente** e gli **Operatori Sanitari** analizzano i dati periodicamente o secondo le tempistiche definite dal piano, intervenendo in caso di variazioni significative.  
Per ogni sessione o periodo di monitoraggio validato, la piattaforma genera un **Report Rilevazione di Telemonitoraggio**, che documenta i risultati e l’andamento clinico del paziente.

Il medico o l’operatore incaricato **convalida digitalmente** il report, che viene quindi **trasmesso e archiviato nel FSE**, con cadenza periodica o al termine delle revisioni programmate.


### Chiusura del percorso e Rilevazione Finale

Al termine del periodo di monitoraggio, il **Medico Referente** procede alla chiusura del percorso.  
Sulla base dei dati raccolti e dei report intermedi, la piattaforma IRT genera automaticamente una **bozza della Rilevazione Finale di Telemonitoraggio**, che riassume l’intero percorso: durata effettiva, esiti clinici, parametri rilevati, criticità e raccomandazioni finali.

Il medico può rivedere, integrare e infine **firmare digitalmente** la relazione, che viene così validata e pubblicata nel **FSE**.  
La pubblicazione della **Rilevazione Finale di Telemonitoraggio** segna la **chiusura formale del servizio**, completando il ciclo di presa in carico e monitoraggio del paziente.


### Sintesi del flusso

Il processo di telemonitoraggio si articola in tre fasi principali:

1. **Attivazione:** il medico redige e firma il *Piano di Telemonitoraggio* → la piattaforma pubblica nel FSE il piano e il *Tesserino dispositivi*;  
2. **Erogazione:** i dispositivi rilevano e trasmettono i dati → il team sanitario analizza e convalida i *Report di Rilevazione* → i report vengono pubblicati nel FSE;  
3. **Chiusura:** il medico redige e approva la *Rilevazione Finale di Telemonitoraggio* → il documento viene pubblicato nel FSE.


### Diagramma del flusso

Il diagramma seguente rappresenta graficamente le interazioni tra gli attori e i sistemi durante l’intero processo:

<p>{% include flussoTelemonitoraggio.svg -%}</p>
