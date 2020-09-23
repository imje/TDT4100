# TDT4100
Objektorientert programmering (vår 2017)

Oppgaven handler om å utvide et allerede eksisterende spill fra Øving 04: Objektstrukturer med spill | 2017 med nye funksjoner.

Del 1 - Angre og gjenta (50%)
Her skal du implementere kommandoer for å angre (eng: undo) handlinger (legg, trekk, ...) og gjenta (eng: redo) handlinger som er angret. Hvis brukeren angrer en handling, så skal spillet settes tilbake til den forrige tilstanden, dvs. tilstanden før handlingen. Dersom brukeren gjentar en handling (altså angrer angringen) vil handlingen som brukeren angret bli utført på nytt.
Angre- og gjenta-logikken kan for eksempel implementeres med to Stack-objekter som inneholder "handling"-objekter, dvs. objekter som inneholder informasjon om en brukerhandling. Når en handling er utført så legges den på angre-stack'en. Ved angring tas det øverste elementet av angre-stack'en, handlingen som dette objektet representerer reverseres og legges på gjenta-stack'en. Ved gjenta, så tas det øverste elementet av gjenta-stack'en, handlingen som dette objektet representerer utføres og legges (tilbake) på angre-stack'en. For å implementere angre og gjenta må en altså:
finne en måte å representere brukerhandlinger, dvs. lage en klasse som kan lagre informasjon om handlinger
implementere logikk for å reversere og gjenta handlingen som slike objekter representerer
administrere angre- og gjenta-stack'er som forklart over (eller tilsvarende logikk)
tenke på hva som skal skje dersom en spiller prøver å angre når det ikke skal være mulig (f.eks. ingen trekk gjort), eller gjentar når ingenting har blitt angret
Disse metodene skal altså implementeres i spillklassen:
void undo() - angre som beskrevet over
void redo() - gjenta som beskrevet over
Obs! For slagskip-spillet skal man ikke implementere angre og gjenta. Se egen artikkel for slagskip. Del 2 skal fremdeles gjøres for slagskip som beskrevet her, med samme metodenavn. Angre- og gjenta-knappene i JavaFX-applikasjonen (se del 3) vil ikke fungere for slagskip.

Del 2 - Lagring (50%)
I denne delen skal du implementere lagring av spill og innlesing av tidligere lagrede spill, slik at en kan fortsette der en slapp, f.eks. med et vanskelig Sokoban-brett. Du må altså definere et egnet filformat, og støtte dette formatet både ved skriving til fil og lesing fra fil. Merk at det kun er nødvendig å lagre nå-tilstanden til spillet, en trenger ikke lagre tilstand knyttet til angring (undo). Det naturlige vil være å ha et tekstlig (i motsetning til binært) format, med én linje pr. rad i spillet og én eller flere tegn pr. rute i raden. Sokoban har forøvrig et definert standardformat (se http://sokobano.de/wiki/index.php?title=Level_format), som det kan være lurt å støtte for å forenkle bruk av eksisterende brett.
For å gjøre det enklere å bytte til et annet lagringsformat, så skal du definere et grensesnitt (altså et interface) knyttet til lagring og innlesing og lage minst én implementasjon som støtter ditt definerte filformat. Du må selvsagt også implementere en kommando for det, så brukeren både kan lagre og gjenoppta et tidligere lagret spill. Du skal også forklare hvordan du med en annen implementasjon kan støtte et annet lagringsformat og hvordan dette i så fall kan gjøres uten store endringer i hovedprogrammet. Som en ekstra utfordring kan du velge hvilket filformat som brukes basert på endelsen til fila som spillet lagres i. 
I tillegg til å definere grensesnittet må disse metodene implementeres i spillklassen:
void save(String fileName) - lagrer tilstanden til spillet i en tekstfil med navnet fileName. Her skal filtypen (.txt) være med i fileName. 
void load(String fileName) - gjenopptar et spill allerede lagret med filnavnet fileName.
Før du går i gang med denne delen kan det være lurt å ta en titt på wikisiden for Lesing fra og skriving til fil.

Del 3 - JavaFX
Det er laget en JavaFX-applikasjon som har all funksjonalitet fra øving 4, i tillegg til å støtte lagring og angre/gjenta. For at dette skal fungere er det viktig at metodenavn er som beskrevet over, og at koden ellers er som beskrevet i Øving 4. Du kan da kjøre applikasjonen (game > PersistentGame.fxml > Run As > FXML Application) og teste spillet ditt. Demonstrer dette for stud.assen din.
Mer hjelp til kjøring av JavaFX og generelt om øvinger finner du i Hjelp til øvinger.
