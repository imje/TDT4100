<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="CoffeeCupProgram">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Correct the error in the CoffeeCupProgram class"/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="debugging.CoffeeCupProgram"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code."/>
        <a xsi:type="workbench:DebugEventAnswer" action="suspend.breakpoint"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1486461403009" sizeMeasure="59" warningCount="1">
          <edit xsi:type="exercise:StringEdit" storedString="package debugging;&#xA;&#xA;import java.util.Random;&#xA;&#xA;public class CoffeeCupProgram {&#xA;&#xA;&#x9;private CoffeeCup cup;&#xA;&#x9;private Random r;&#xA;&#x9;&#xA;&#x9;public void init(){&#xA;&#x9;&#x9;cup = new CoffeeCup();&#xA;&#x9;&#x9;r = new Random(123456789L);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void run(){&#xA;&#x9;&#x9;//part1();&#xA;&#x9;&#x9;part2();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;private void part1(){&#xA;&#x9;&#x9;cup.increaseCupSize(40.0);&#xA;&#x9;&#x9;cup.fillCoffee(20.5);&#xA;&#x9;&#x9;cup.drinkCoffee(Math.floor(r.nextDouble()*20.5));&#xA;&#x9;&#x9;cup.fillCoffee(32.5);&#xA;&#x9;&#x9;cup.drinkCoffee(Math.ceil(r.nextDouble()*38.9));&#xA;&#x9;&#x9;cup.drinkCoffee(Math.ceil(r.nextDouble()*42));&#xA;&#x9;&#x9;cup.increaseCupSize(17);&#xA;&#x9;&#x9;cup.drinkCoffee(40);&#xA;&#x9;&#x9;cup.drinkCoffee(Math.ceil(r.nextDouble()*42));&#xA;&#x9;&#x9;cup.drinkCoffee(Math.floor(r.nextDouble()*20.5));&#xA;&#x9;&#x9;cup.fillCoffee(32.5);&#xA;&#x9;&#x9;cup.drinkCoffee(Math.ceil(r.nextDouble()*38.9));&#xA;&#x9;&#x9;cup.drinkCoffee(Math.ceil(r.nextDouble()*42));&#xA;&#x9;&#x9;cup.increaseCupSize(17);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;private void part2(){&#xA;&#x9;&#x9;cup = new CoffeeCup(40.0, 20.5);&#xA;&#x9;&#x9;r = new Random(987654321L);&#xA;&#x9;&#x9;cup.drinkCoffee(Math.floor(r.nextDouble()*20.5));&#xA;&#x9;&#x9;cup.fillCoffee(Math.floor(r.nextDouble()*30));&#xA;&#x9;&#x9;cup.drinkCoffee(Math.ceil(r.nextDouble()*38.9));&#xA;&#x9;&#x9;cup.drinkCoffee(Math.ceil(r.nextDouble()*42));&#xA;&#x9;&#x9;cup.increaseCupSize(Math.floor(r.nextDouble()*26));&#xA;&#x9;&#x9;cup.fillCoffee(Math.ceil(r.nextDouble()*59));&#xA;&#x9;&#x9;cup.drinkCoffee(Math.ceil(r.nextDouble()*42));&#xA;&#x9;&#x9;cup.increaseCupSize(Math.floor(r.nextDouble()*35));&#xA;&#x9;&#x9;cup.fillCoffee(Math.floor(r.nextDouble()*30));&#xA;&#x9;&#x9;cup.increaseCupSize(Math.floor(r.nextDouble()*26));&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;CoffeeCupProgram program = new CoffeeCupProgram();&#xA;&#x9;&#x9;program.init();&#xA;&#x9;&#x9;program.run();&#xA;&#x9;}&#xA;&#xA;}&#xA;"/>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a" performedCount="3">
        <attempts timestamp="1486460582141"/>
        <attempts timestamp="1486460745480"/>
        <attempts timestamp="1486461403603"/>
      </proposals>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a" performedCount="1">
        <attempts timestamp="1486460719399"/>
      </proposals>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a" performedCount="3">
        <attempts timestamp="1486460627771"/>
        <attempts timestamp="1486460634199"/>
        <attempts timestamp="1486460636378"/>
      </proposals>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.1/@tasks.3/@q" answer="/0/@parts.1/@tasks.3/@a" performedCount="15">
        <attempts timestamp="1486460675799"/>
        <attempts timestamp="1486460754807"/>
        <attempts timestamp="1486460797025"/>
        <attempts timestamp="1486460864596"/>
        <attempts timestamp="1486461009788"/>
        <attempts timestamp="1486461093870"/>
        <attempts timestamp="1486461450271"/>
        <attempts timestamp="1486461493641"/>
        <attempts timestamp="1486461516572"/>
        <attempts timestamp="1486461521693"/>
        <attempts timestamp="1486461557503"/>
        <attempts timestamp="1486461567712"/>
        <attempts timestamp="1486461572429"/>
        <attempts timestamp="1486461578290"/>
        <attempts timestamp="1486461716634"/>
      </proposals>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>
