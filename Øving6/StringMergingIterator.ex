<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="StringMergingIterator">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Modify the code for the StringMergingIterator class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="debugging.StringMergingIterator"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the StringMergingIterator class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="debugging.StringMergingIterator"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the StringMergingIteratorProgram class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="debugging.StringMergingIteratorProgram"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="debugging.StringMergingIterator*" action="suspend.breakpoint"/>
      </tasks>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488917621456" sizeMeasure="52">
          <edit xsi:type="exercise:StringEdit" storedString="package debugging;&#xA;&#xA;import java.util.Iterator;&#xA;import java.util.NoSuchElementException;&#xA;&#xA;public class StringMergingIterator implements Iterator&lt;String> {&#xA;&#xA;&#x9;private Iterator&lt;String> first;&#xA;&#x9;private Iterator&lt;String> second;&#xA;&#x9;private boolean turnSwitch;&#xA;&#xA;&#x9;public StringMergingIterator(Iterator&lt;String> first, Iterator&lt;String> second){&#xA;&#x9;&#x9;this.first = first;&#xA;&#x9;&#x9;this.second = second;&#xA;&#x9;&#x9;this.turnSwitch = true;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public boolean hasNext() {&#xA;&#x9;&#x9;return first.hasNext() || second.hasNext();&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String next() {&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if(! hasNext()){ throw new NoSuchElementException(); }&#xA;&#xA;&#x9;&#x9;String result = null;&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if(! second.hasNext()){ //byttet first til second&#xA;&#x9;&#x9;&#x9;result = first.next();&#xA;&#x9;&#x9;} &#xA;&#x9;&#x9;else if(! first.hasNext()){ //byttet second til first&#xA;&#x9;&#x9;&#x9;result = second.next();&#xA;&#x9;&#x9;} &#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;if(turnSwitch){&#xA;&#x9;&#x9;&#x9;&#x9;result = first.next();&#xA;&#x9;&#x9;&#x9;&#x9;turnSwitch = false;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;if(!turnSwitch){&#xA;&#x9;&#x9;&#x9;&#x9;result = second.next();&#xA;&#x9;&#x9;&#x9;&#x9;turnSwitch = true;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;return result;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488917704522" sizeMeasure="52">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="else { //byttet ut if med else" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="878" end="-95"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a"/>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488917158817" mode="debug"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488917621324" mode="debug"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488917710605" mode="debug"/>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a"/>
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a" performedCount="5">
        <attempts timestamp="1488917159539"/>
        <attempts timestamp="1488917607988"/>
        <attempts timestamp="1488917622117"/>
        <attempts timestamp="1488917646682"/>
        <attempts timestamp="1488917711087"/>
      </proposals>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a" performedCount="55">
        <attempts timestamp="1488917175287"/>
        <attempts timestamp="1488917191232"/>
        <attempts timestamp="1488917193900"/>
        <attempts timestamp="1488917195454"/>
        <attempts timestamp="1488917198651"/>
        <attempts timestamp="1488917203735"/>
        <attempts timestamp="1488917216852"/>
        <attempts timestamp="1488917218182"/>
        <attempts timestamp="1488917607173"/>
        <attempts timestamp="1488917607981"/>
        <attempts timestamp="1488917625678"/>
        <attempts timestamp="1488917631395"/>
        <attempts timestamp="1488917632524"/>
        <attempts timestamp="1488917633366"/>
        <attempts timestamp="1488917634428"/>
        <attempts timestamp="1488917635630"/>
        <attempts timestamp="1488917636648"/>
        <attempts timestamp="1488917637649"/>
        <attempts timestamp="1488917641294"/>
        <attempts timestamp="1488917641888"/>
        <attempts timestamp="1488917642432"/>
        <attempts timestamp="1488917642909"/>
        <attempts timestamp="1488917646096"/>
        <attempts timestamp="1488917646679"/>
        <attempts timestamp="1488917647322"/>
        <attempts timestamp="1488917648431"/>
        <attempts timestamp="1488917712474"/>
        <attempts timestamp="1488917718204"/>
        <attempts timestamp="1488917718789"/>
        <attempts timestamp="1488917719270"/>
        <attempts timestamp="1488917719938"/>
        <attempts timestamp="1488917720470"/>
        <attempts timestamp="1488917721145"/>
        <attempts timestamp="1488917721652"/>
        <attempts timestamp="1488917722253"/>
        <attempts timestamp="1488917722764"/>
        <attempts timestamp="1488917723302"/>
        <attempts timestamp="1488917723950"/>
        <attempts timestamp="1488917724580"/>
        <attempts timestamp="1488917725148"/>
        <attempts timestamp="1488917725761"/>
        <attempts timestamp="1488917726500"/>
        <attempts timestamp="1488917727509"/>
        <attempts timestamp="1488917728384"/>
        <attempts timestamp="1488917729216"/>
        <attempts timestamp="1488917729972"/>
        <attempts timestamp="1488917730610"/>
        <attempts timestamp="1488917731227"/>
        <attempts timestamp="1488917731772"/>
        <attempts timestamp="1488917732966"/>
        <attempts timestamp="1488917734881"/>
        <attempts timestamp="1488917735571"/>
        <attempts timestamp="1488917736244"/>
        <attempts timestamp="1488917736864"/>
        <attempts timestamp="1488917737377"/>
      </proposals>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.3/@q" answer="/0/@parts.1/@tasks.3/@a"/>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.1/@tasks.4/@q" answer="/0/@parts.1/@tasks.4/@a" performedCount="1">
        <attempts timestamp="1488917170917"/>
      </proposals>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>
