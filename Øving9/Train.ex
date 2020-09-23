<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="Train">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the TrainCar superclass."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.TrainCar"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the TrainCar class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="inheritance.TrainCar"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the CargoCar class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.CargoCar"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the CargoCar class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="inheritance.CargoCar"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the PassengerCar class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.PassengerCar"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the PassengerCar class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="inheritance.PassengerCar"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the Train class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.Train"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the Train class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="inheritance.Train"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the TrainCarTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="inheritance.TrainCarTest"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the PassengerCarTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="inheritance.PassengerCarTest"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the CargoCarTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="inheritance.CargoCarTest"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the TrainTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="inheritance.TrainTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code in *Car classes."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="inheritance.*Car" action="suspend.breakpoint"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code in the Train class."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="inheritance.Train" action="suspend.breakpoint"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use the debug command Step Over"/>
        <a xsi:type="workbench:CommandExecutionAnswer" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use the debug command Step Into"/>
        <a xsi:type="workbench:CommandExecutionAnswer" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use the Variables view"/>
        <a xsi:type="workbench:PartTaskAnswer" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
      </tasks>
    </parts>
  </exercise:Exercise>
  <exercise:ExerciseProposals exercise="/0">
    <proposals exercisePart="/0/@parts.0">
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.0/@q" answer="/0/@parts.0/@tasks.0/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490697515829" sizeMeasure="21" errorCount="1">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public class TrainCar {&#xA;&#x9;&#xA;&#x9;private int deadWeight;&#xA;&#xA;&#x9;public TrainCar(int deadWeight) {//en konstruktør som tar inn hvor mye en tom vogn veier.&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getTotalWeight(){//returnerer vognas totale vekt. Merk at denne også skal kunne kalles på subklasser og fortsatt returnere totalvekta toil vogna (stikkord: redefinering).&#xA;&#x9;&#x9;return totalWeight;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setDeadWeight(int deadWeight) {//setter hvor mye en tom vogn veier. Altså vekten til kun vognen, uten passasjerer eller last.&#xA;&#x9;this.deadWeight = deadWeight;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;int getDeadWeight() {//returnerer hvor mye en tom vogn veier. Altså vekten til kun vognen, uten passasjerer eller last.&#xA;&#x9;&#x9;return deadWeight;&#xA;&#x9;}&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490697541235" sizeMeasure="21">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="dead" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="362" end="-336"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490697621766" sizeMeasure="22">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;this.deadWeight = deadWeight;" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="166" end="-538"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490698296080" sizeMeasure="22">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="733" end="-734"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a"/>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490697644570" sizeMeasure="5">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public class CargoCar {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490697941315" sizeMeasure="21" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="extends TrainCar{&#xA;&#x9;&#xA;&#x9;private int deadWeight;&#xA;&#x9;private int cargoWeight;&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public CargoCar(int deadWeight, int cargoWeight) {//her tas inn hvor mye en tom vogn veier (som i TrainCar), og hvor mye vogna sin last veier.&#xA;&#x9;&#x9;super(deadWeight);&#xA;&#x9;&#x9;this.cargoWeight = cargoWeight;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getCargoWeight() {//returnerer hvor mye lasten veier.&#xA;&#x9;&#x9;return cargoWeight;&#xA;&#x9;}&#xA;&#xA;&#x9;public void setCargoWeight(int cargoWeight) {//setter en ny verdi for vekten til lasten.&#xA;&#x9;&#x9;this.cargoWeight = cargoWeight;&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.2/@attempts.0/@edit" start="44" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490698491301" sizeMeasure="26" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;@Override&#xA;&#x9;public int getTotalWeight() {&#xA;&#x9;&#x9;return super.getTotalWeight() + getCargoWeight()" edit="/1/@proposals.0/@proposals.2/@attempts.1/@edit" start="542" end="-8"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490698515041" sizeMeasure="24">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="cargoWeight;" edit="/1/@proposals.0/@proposals.2/@attempts.2/@edit" start="77" end="-528"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.3/@q" answer="/0/@parts.0/@tasks.3/@a"/>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.4/@q" answer="/0/@parts.0/@tasks.4/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490697959125" sizeMeasure="5">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public class PassengerCar {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490698145989" sizeMeasure="20">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="extends TrainCar{&#xA;&#x9;&#xA;&#x9;private int passengers;&#xA;&#x9;&#xA;&#x9;public PassengerCar(int deadWeight, int passengers) { //her tas inn hvor mye en tom vogn veier (som i TrainCar), og hvor mange passasjerer det er i vogna.&#xA;&#x9;&#x9;super(deadWeight);&#xA;&#x9;&#x9;this.passengers = passengers;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public int getPassengerCount() { // returner antall passasjerer.&#xA;&#x9;&#x9;return passengers;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setPassengerCount(int passengers) { //setter en ny verdi for antall passasjerer.&#xA;&#x9;&#x9;this.passengers = passengers;&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.4/@attempts.0/@edit" start="48" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490698293563" sizeMeasure="21" errorCount="3">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;set" edit="/1/@proposals.0/@proposals.4/@attempts.1/@edit" start="305" end="-232"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490698341725" sizeMeasure="20">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.4/@attempts.2/@edit" start="305" end="-232"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490698485906" sizeMeasure="24">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="}&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public int getPassengerCount() { // returner antall passasjerer.&#xA;&#x9;&#x9;return passengers;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setPassengerCount(int passengers) { //setter en ny verdi for antall passasjerer.&#xA;&#x9;&#x9;this.passengers = passengers;&#xA;&#x9;}&#xA;&#x9;@Override&#xA;&#x9;public int getTotalWeight() {&#xA;&#x9;&#x9;return super.getTotalWeight() + (getPassengerCount()*80)" edit="/1/@proposals.0/@proposals.4/@attempts.3/@edit" start="305" end="-8"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.5/@q" answer="/0/@parts.0/@tasks.5/@a"/>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.6/@q" answer="/0/@parts.0/@tasks.6/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490698532744" sizeMeasure="5">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public class Train {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490699160430" sizeMeasure="52" errorCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.ArrayList;&#xA;import java.util.List;&#xA;&#xA;public class Train{&#xA;&#x9;&#xA;&#x9;private List&lt;TrainCar> cars = new ArrayList&lt;>();&#xA;&#x9;private int totalWeight;&#xA;&#x9;private int passengerCount;&#xA;&#x9;private int cargoWeight;&#xA;&#xA;&#xA;&#x9;public void addTrainCar(TrainCar car){ //denne metoden skal ta inn en togvogn og knytte den til dette lokomotivet.&#xA;&#x9;&#x9;cars.add(car);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public boolean contains(TrainCar car) { //Sjekker om lokomotivet har TrainCar-argument knyttet til seg.&#xA;&#x9;&#x9;if (cars.contains(car)) {&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;return false;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getTotalWeight() { //returner alle vognene sin totale vekt. Vi tar ikke høyde for lokomotivet sin eventuelle vekt.&#xA;&#x9;&#x9;for (TrainCar car : cars) {&#xA;&#x9;&#x9;&#x9;totalWeight += car.getTotalWeight();&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return totalWeight;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getPassengerCount() { //tilsvarende PassengerCar sin metode, men returnerer antallet for alle vognene.&#xA;&#x9;&#x9;for (TrainCar car : cars) {&#xA;&#x9;&#x9;&#x9;passengerCount += (car.getTotalWeight()-(car.getDeadWeight())/80);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return passengerCount;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getCargoWeight() { //tilsvarende CargoCar sin metode, men returnerer lastevekten for alle vognene.&#xA;&#x9;&#x9;for(TrainCar car : cars) {&#xA;&#x9;&#x9;&#x9;cargoWeight += (car.getTotalWeight()-car.getDeadWeight());&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return cargoWeight;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String toString() { //toString-metoden skal sette sammen en String med oversikt over alle vognene som er knyttet til den. For hver vogn skal vogntype og totalvekt være med. Passasjervogner skal i tillegg ha med antall passasjerer og lastevogner skal ha med hvor mye lasten veier.&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;" edit="/1/@proposals.0/@proposals.6/@attempts.0/@edit" start="22" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490699203369" sizeMeasure="54" errorCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="for (TrainCar car : cars) {&#xA;&#x9;&#x9;&#x9;return &quot;Vogntype: &quot; + &#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.6/@attempts.1/@edit" start="1555" end="-9"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490699860524" sizeMeasure="53" errorCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.6/@attempts.2/@edit" start="1585" end="-13"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490700307522" sizeMeasure="61">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="String string = &quot;&quot;;&#xA;&#x9;&#x9;for (TrainCar car : cars) {&#xA;&#x9;&#x9;&#x9;if (car instanceof PassengerCar) {&#xA;&#x9;&#x9;&#x9;&#x9;string += &quot;Passenger car with total weight: &quot; + getTotalWeight() + &quot; and &quot; + getPassengerCount() + &quot; passengers.\n&quot;;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;else if (car instanceof CargoCar){&#xA;&#x9;&#x9;&#x9;&#x9;string += &quot;Cargo car with total weight: &quot; + getTotalWeight() + &quot; and cargo weight: &quot; + getCargoWeight() + &quot;\n&quot;;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return string;" edit="/1/@proposals.0/@proposals.6/@attempts.3/@edit" start="1555" end="-9"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490700396590" sizeMeasure="66">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (car instanceof PassengerCar) {&#xA;&#x9;&#x9;&#x9;&#x9;totalWeight += getTotalWeight();&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;else if(car instanceof CargoCar) {&#xA;&#x9;&#x9;&#x9;totalWeight += getTotalWeight();&#xA;&#x9;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.6/@attempts.4/@edit" start="715" end="-1206"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490700478809" sizeMeasure="69">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (car instanceof PassengerCar)&#xA;&#x9;&#x9;&#x9;passengerCount += getPassengerCount();&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return passengerCount;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getCargoWeight() { //tilsvarende CargoCar sin metode, men returnerer lastevekten for alle vognene.&#xA;&#x9;&#x9;for(TrainCar car : cars) {&#xA;&#x9;&#x9;&#x9;if (car instanceof CargoCar) {&#xA;&#x9;&#x9;&#x9;cargoWeight += getCargoWeight();&#xA;&#x9;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.6/@attempts.5/@edit" start="1050" end="-724"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490700601772" sizeMeasure="69">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="((PassengerCar) car).getPassengerCount();&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return passengerCount;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getCargoWeight() { //tilsvarende CargoCar sin metode, men returnerer lastevekten for alle vognene.&#xA;&#x9;&#x9;for(TrainCar car : cars) {&#xA;&#x9;&#x9;&#x9;if (car instanceof CargoCar) {&#xA;&#x9;&#x9;&#x9;cargoWeight += ((CargoCar) car)." edit="/1/@proposals.0/@proposals.6/@attempts.6/@edit" start="1104" end="-746"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490700659772" sizeMeasure="69">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="((PassengerCar) car).getTotalWeight();&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;else if(car instanceof CargoCar) {&#xA;&#x9;&#x9;&#x9;totalWeight += ((CargoCar) car)." edit="/1/@proposals.0/@proposals.6/@attempts.7/@edit" start="769" end="-1287"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490700692626" sizeMeasure="69">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="(PassengerCar) car).getPassengerCount()/2" edit="/1/@proposals.0/@proposals.6/@attempts.8/@edit" start="1144" end="-992"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490700716858" sizeMeasure="69">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="0.5" edit="/1/@proposals.0/@proposals.6/@attempts.9/@edit" start="1184" end="-992"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490700730926" sizeMeasure="69">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="(0.5)" edit="/1/@proposals.0/@proposals.6/@attempts.10/@edit" start="1184" end="-992"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490700936646" sizeMeasure="69">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=");&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return passengerCount;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getCargoWeight() { //tilsvarende CargoCar sin metode, men returnerer lastevekten for alle vognene.&#xA;&#x9;&#x9;for(TrainCar car : cars) {&#xA;&#x9;&#x9;&#x9;if (car instanceof CargoCar) {&#xA;&#x9;&#x9;&#x9;cargoWeight += ((CargoCar) car).getCargoWeight();&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return cargoWeight;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String toString() { //toString-metoden skal sette sammen en String med oversikt over alle vognene som er knyttet til den. For hver vogn skal vogntype og totalvekt være med. Passasjervogner skal i tillegg ha med antall passasjerer og lastevogner skal ha med hvor mye lasten veier.&#xA;&#x9;&#x9;String string = &quot;&quot;;&#xA;&#x9;&#x9;for (TrainCar car : cars) {&#xA;&#x9;&#x9;&#x9;if (car instanceof PassengerCar) {&#xA;&#x9;&#x9;&#x9;&#x9;string += &quot;Passenger car with total weight: &quot; + ((PassengerCar) car).getTotalWeight() + &quot; and &quot; + ((PassengerCar) car).getPassengerCount() + &quot; passengers.\n&quot;;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;else if (car instanceof CargoCar){&#xA;&#x9;&#x9;&#x9;&#x9;string += &quot;Cargo car with total weight: &quot; + ((CargoCar) car).getTotalWeight() + &quot; and cargo weight: &quot; + ((CargoCar) car)." edit="/1/@proposals.0/@proposals.6/@attempts.11/@edit" start="1183" end="-59"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490701079475" sizeMeasure="79">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;CargoCar cc = new CargoCar(324, 88);&#xA;&#x9;&#x9;PassengerCar pc = new PassengerCar(200, 3);&#xA;&#x9;&#x9;Train train = new Train();&#xA;&#x9;&#x9;train.addTrainCar(cc);&#xA;&#x9;&#x9;train.addTrainCar(pc);&#xA;&#x9;&#x9;System.out.println(train);&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.6/@attempts.12/@edit" start="2248" end="-9"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490701278146" sizeMeasure="81">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Car tc = new TrainCar(55);&#xA;&#x9;&#x9;Train train = new Train();&#xA;&#x9;&#x9;train.addTrainCar(cc);&#xA;&#x9;&#x9;train.addTrainCar(pc);&#xA;&#x9;&#x9;train.addTrainCar(t" edit="/1/@proposals.0/@proposals.6/@attempts.13/@edit" start="2382" end="-44"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490701331312" sizeMeasure="84">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;else {&#xA;&#x9;&#x9;&#x9;&#x9;string += &quot;Train car with total weight: &quot; + car.getTotalWeight()" edit="/1/@proposals.0/@proposals.6/@attempts.14/@edit" start="2224" end="-338"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490701393353" sizeMeasure="87">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;totalWeight += ((CargoCar) car).getTotalWeight();&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;&#x9;totalWeight += car" edit="/1/@proposals.0/@proposals.6/@attempts.15/@edit" start="854" end="-1753"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490701422870" sizeMeasure="87">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="/2;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getCargoWeight() { //tilsvarende CargoCar sin metode, men returnerer lastevekten for alle vognene.&#xA;&#x9;&#x9;for(TrainCar car : cars) {&#xA;&#x9;&#x9;&#x9;if (car instanceof CargoCar) {&#xA;&#x9;&#x9;&#x9;cargoWeight += ((CargoCar) car).getCargoWeight();&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return cargoWeight/2" edit="/1/@proposals.0/@proposals.6/@attempts.16/@edit" start="1270" end="-1162"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490701570343" sizeMeasure="87">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=";&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getCargoWeight() { //tilsvarende CargoCar sin metode, men returnerer lastevekten for alle vognene.&#xA;&#x9;&#x9;for(TrainCar car : cars) {&#xA;&#x9;&#x9;&#x9;if (car instanceof CargoCar) {&#xA;&#x9;&#x9;&#x9;cargoWeight += ((CargoCar) car).getCargoWeight();&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return cargoWeight" edit="/1/@proposals.0/@proposals.6/@attempts.17/@edit" start="1270" end="-1162"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490701774803" sizeMeasure="92">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (!cars.isEmpty()) {&#xA;&#x9;&#x9;&#x9;for (TrainCar car : cars) {&#xA;&#x9;&#x9;&#x9;&#x9;if (car instanceof PassengerCar) {&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;totalWeight += ((PassengerCar) car).getTotalWeight();&#xA;&#x9;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;&#x9;else if(car instanceof CargoCar) {&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;totalWeight += ((CargoCar) car).getTotalWeight();&#xA;&#x9;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;totalWeight += car.getTotalWeight();&#xA;&#x9;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;return totalWeight;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;return 0;&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.6/@attempts.18/@edit" start="684" end="-1704"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490701844327" sizeMeasure="93">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="{&#xA;&#x9;&#x9;&#x9;&#x9;passengerCount += (((PassengerCar) car).getPassengerCount());&#xA;&#x9;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.6/@attempts.19/@edit" start="1244" end="-1453"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490701889720" sizeMeasure="96">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;else {&#xA;&#x9;&#x9;&#x9;&#x9;passengerCount += 0" edit="/1/@proposals.0/@proposals.6/@attempts.20/@edit" start="1319" end="-1459"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490701962833" sizeMeasure="93">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.6/@attempts.21/@edit" start="1319" end="-1459"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490702015158" sizeMeasure="94">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="}&#xA;&#x9;&#x9;return passengerCount;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getCargoWeight() { //tilsvarende CargoCar sin metode, men returnerer lastevekten for alle vognene.&#xA;&#x9;&#x9;for(TrainCar car : cars) {&#xA;&#x9;&#x9;&#x9;if (car instanceof CargoCar) {&#xA;&#x9;&#x9;&#x9;cargoWeight += ((CargoCar) car).getCargoWeight();&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return cargoWeight;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String toString() { //toString-metoden skal sette sammen en String med oversikt over alle vognene som er knyttet til den. For hver vogn skal vogntype og totalvekt være med. Passasjervogner skal i tillegg ha med antall passasjerer og lastevogner skal ha med hvor mye lasten veier.&#xA;&#x9;&#x9;String string = &quot;&quot;;&#xA;&#x9;&#x9;for (TrainCar car : cars) {&#xA;&#x9;&#x9;&#x9;if (car instanceof PassengerCar) {&#xA;&#x9;&#x9;&#x9;&#x9;string += &quot;Passenger car with total weight: &quot; + ((PassengerCar) car).getTotalWeight() + &quot; and &quot; + ((PassengerCar) car).getPassengerCount() + &quot; passengers.\n&quot;;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;else if (car instanceof CargoCar){&#xA;&#x9;&#x9;&#x9;&#x9;string += &quot;Cargo car with total weight: &quot; + ((CargoCar) car).getTotalWeight() + &quot; and cargo weight: &quot; + ((CargoCar) car).getCargoWeight() + &quot;\n&quot;;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;&#x9;string += &quot;Train car with total weight: &quot; + car.getTotalWeight();&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;return string;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;CargoCar cc = new CargoCar(324, 88);&#xA;&#x9;&#x9;PassengerCar pc = new PassengerCar(200, 3);&#xA;&#x9;&#x9;TrainCar tc = new TrainCar(55);&#xA;&#x9;&#x9;Train train = new Train();&#xA;&#x9;&#x9;train.addTrainCar(cc);&#xA;&#x9;&#x9;train.addTrainCar(pc);&#xA;&#x9;&#x9;train.addTrainCar(tc);&#xA;&#x9;&#x9;System.out.println(train);&#xA;&#x9;&#x9;System.out.println(train.getPassengerCount()" edit="/1/@proposals.0/@proposals.6/@attempts.22/@edit" start="1319" end="-14"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490702090303" sizeMeasure="100" errorCount="3">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="10);&#xA;&#x9;&#x9;PassengerCar pc2 = new PassengerCar(100, 400);&#xA;&#x9;&#x9;PassengerCar pc3 = new PassengerCar(300, 30);&#xA;&#x9;&#x9;PassengerCar pc4 = new PassengerCar(400, 50);&#xA;&#x9;&#x9;TrainCar tc = new TrainCar(55);&#xA;&#x9;&#x9;Train train = new Train();&#xA;&#x9;&#x9;train.addTrainCar(cc);&#xA;&#x9;&#x9;train.addTrainCar(pc);&#xA;&#x9;&#x9;train.addTrainCar(tc);&#xA;&#x9;&#x9;train.addTrainCar(tc2);&#xA;&#x9;&#x9;train.addTrainCar(tc3);&#xA;&#x9;&#x9;train.addTrainCar(tc4" edit="/1/@proposals.0/@proposals.6/@attempts.23/@edit" start="2587" end="-92"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490702098815" sizeMeasure="100">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="pc2);&#xA;&#x9;&#x9;train.addTrainCar(pc3);&#xA;&#x9;&#x9;train.addTrainCar(p" edit="/1/@proposals.0/@proposals.6/@attempts.24/@edit" start="2895" end="-94"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490702212757" sizeMeasure="100">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" + &quot;\n&quot;" edit="/1/@proposals.0/@proposals.6/@attempts.25/@edit" start="2431" end="-611"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490702427061" sizeMeasure="101">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(train.getTotalWeigh" edit="/1/@proposals.0/@proposals.6/@attempts.26/@edit" start="3040" end="-17"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490703755815" sizeMeasure="101">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="1" edit="/1/@proposals.0/@proposals.6/@attempts.27/@edit" start="2642" end="-451"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490704337216" sizeMeasure="102">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;" edit="/1/@proposals.0/@proposals.6/@attempts.28/@edit" start="363" end="-2733"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490704581485" sizeMeasure="85">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (contains(car) == false) {&#xA;&#x9;&#x9;&#x9;cars.add(car);&#xA;&#x9;&#x9;&#x9;if (car instanceof PassengerCar) {&#xA;&#x9;&#x9;&#x9;&#x9;totalWeight += ((PassengerCar) car).getTotalWeight();&#xA;&#x9;&#x9;&#x9;&#x9;passengerCount += ((PassengerCar) car).getPassengerCount();&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;else if (car instanceof CargoCar) {&#xA;&#x9;&#x9;&#x9;&#x9;totalWeight += ((CargoCar) car).getTotalWeight();&#xA;&#x9;&#x9;&#x9;&#x9;cargoWeight += ((CargoCar) car).getCargoWeight();&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public boolean contains(TrainCar car) { //Sjekker om lokomotivet har TrainCar-argument knyttet til seg.&#xA;&#x9;&#x9;if (cars.contains(car)) {&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;return false;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getTotalWeight() { //returner alle vognene sin totale vekt. Vi tar ikke høyde for lokomotivet sin eventuelle vekt.&#xA;&#x9;&#x9;return totalWeight;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getPassengerCount() { //tilsvarende PassengerCar sin metode, men returnerer antallet for alle vognene.}&#xA;&#x9;&#x9;return passengerCount;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getCargoWeight() { //tilsvarende CargoCar sin metode, men returnerer lastevekten for alle vognene." edit="/1/@proposals.0/@proposals.6/@attempts.29/@edit" start="347" end="-1508"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490704620453" sizeMeasure="82">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.6/@attempts.30/@edit" start="2088" end="-671"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.7/@q" answer="/0/@parts.0/@tasks.7/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1490701085278" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1490701284438" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1490701336710" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1490702019895" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1490702105494" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1490702216605" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1490702410221" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1490702426936" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1490703755613" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1490704148850" mode="debug"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1490704171496" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1490704174817" mode="debug"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1490704178854" mode="debug"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1490704191073" mode="debug"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1490704587196" mode="run"/>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.8/@q" answer="/0/@parts.0/@tasks.8/@a" completion="1.0">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490697622646" completion="1.0" successCount="1"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490701963663" completion="1.0" successCount="1"/>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.9/@q" answer="/0/@parts.0/@tasks.9/@a" completion="1.0">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490698194337" completion="0.0" failureCount="1"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490698492253" completion="1.0" successCount="1"/>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.10/@q" answer="/0/@parts.0/@tasks.10/@a" completion="1.0">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490698171295" completion="0.0" failureCount="1"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490698498597" completion="1.0" successCount="1"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490698521168" completion="1.0" successCount="1"/>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.11/@q" answer="/0/@parts.0/@tasks.11/@a" completion="1.0">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490697556182" completion="0.0" errorCount="1"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490699861684" completion="0.25" successCount="1" failureCount="3"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490700315779" completion="0.25" successCount="1" failureCount="3"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490700483348" completion="0.25" successCount="1" errorCount="3"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490700665159" completion="0.25" successCount="1" failureCount="3"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490700700329" completion="0.25" successCount="1" failureCount="3"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490700721613" completion="0.25" successCount="1" failureCount="3"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490700735806" completion="0.25" successCount="1" failureCount="3"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490701151621" completion="0.25" successCount="1" failureCount="3"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490701399877" completion="0.25" successCount="1" failureCount="3"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490701427458" completion="0.25" successCount="1" failureCount="3"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490701854094" completion="0.25" successCount="1" failureCount="3"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490701893556" completion="0.25" successCount="1" failureCount="3"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490702308653" completion="0.25" successCount="1" failureCount="3"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490704599083" completion="1.0" successCount="4"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490704625490" completion="1.0" successCount="4"/>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a"/>
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a" performedCount="18">
        <attempts timestamp="1490704198654"/>
        <attempts timestamp="1490704201593"/>
        <attempts timestamp="1490704202603"/>
        <attempts timestamp="1490704203441"/>
        <attempts timestamp="1490704204139"/>
        <attempts timestamp="1490704205622"/>
        <attempts timestamp="1490704225352"/>
        <attempts timestamp="1490704225971"/>
        <attempts timestamp="1490704226574"/>
        <attempts timestamp="1490704234648"/>
        <attempts timestamp="1490704250155"/>
        <attempts timestamp="1490704250975"/>
        <attempts timestamp="1490704251526"/>
        <attempts timestamp="1490704252194"/>
        <attempts timestamp="1490704253228"/>
        <attempts timestamp="1490704269902"/>
        <attempts timestamp="1490704275719"/>
        <attempts timestamp="1490704279900"/>
      </proposals>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.3/@q" answer="/0/@parts.1/@tasks.3/@a" performedCount="3">
        <attempts timestamp="1490704157267"/>
        <attempts timestamp="1490704181391"/>
        <attempts timestamp="1490704214296"/>
      </proposals>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.1/@tasks.4/@q" answer="/0/@parts.1/@tasks.4/@a" performedCount="1">
        <attempts timestamp="1490704207818"/>
      </proposals>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>
