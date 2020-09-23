<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="Nim">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the Nim class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="encapsulation.Nim"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the Nim JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="encapsulation.NimTest"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1486038079043" sizeMeasure="33">
          <edit xsi:type="exercise:StringEdit" storedString="package encapsulation;&#xA;&#xA;public class Nim {&#xA;&#x9;&#xA;&#x9;//Konstruktør_nr.1&#xA;&#x9;Nim(int pileSize) {&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//Konstruktør_nr.2&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public void removePieces(int number, int targetPile) {&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public boolean isValidMove(int number, int targetPile) {&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public boolean isGameOver() {&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getPile(int targetPile) {&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1486038545279" sizeMeasure="45">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="private int pile0;&#xA;&#x9;private int pile1;&#xA;&#x9;private int pile2;&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;//Konstruktør_nr.1&#xA;&#x9;Nim(int pileSize) {&#xA;&#x9;&#x9;if (pileSize >0) {&#xA;&#x9;&#x9;&#x9;pile0 = pileSize;&#xA;&#x9;&#x9;&#x9;pile1 = pileSize;&#xA;&#x9;&#x9;&#x9;pile2 = pileSize;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;The size of the piles must be grater than 0.&quot;);&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="46" end="-283"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1486038770031" sizeMeasure="56">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (number >= 0 &amp;&amp; targetPile==0) {&#xA;&#x9;&#x9;&#x9;pile0 -= number;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (number >= 0 &amp;&amp; targetPile==1) {&#xA;&#x9;&#x9;&#x9;pile1 -= number;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (number >= 0 &amp;&amp; targetPile==2) {&#xA;&#x9;&#x9;&#x9;pile2 -= number;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Note that number must be grater than 0, and targetPile must be 0, 1 or 2.&quot;);&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="425" end="-195"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1486039187002" sizeMeasure="70">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Nim() {&#xA;&#x9;&#x9;pile0 = 10;&#xA;&#x9;&#x9;pile1 = 10;&#xA;&#x9;&#x9;pile2 = 10;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void removePieces(int number, int targetPile) {&#xA;&#x9;&#x9;if (number >= 0 &amp;&amp; targetPile==0) {&#xA;&#x9;&#x9;&#x9;pile0 -= number;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (number >= 0 &amp;&amp; targetPile==1) {&#xA;&#x9;&#x9;&#x9;pile1 -= number;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (number >= 0 &amp;&amp; targetPile==2) {&#xA;&#x9;&#x9;&#x9;pile2 -= number;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Note that number must be grater than 0, and targetPile must be 0, 1 or 2.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public boolean isValidMove(int number, int targetPile) {&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public boolean isGameOver() {&#xA;&#x9;&#x9;if (pile0==0 || pile1==0 || pile2==0) {&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getPile(int targetPile) {&#xA;&#x9;&#x9;if (targetPile == 0) {&#xA;&#x9;&#x9;&#x9;return pile0;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (targetPile == 1) {&#xA;&#x9;&#x9;&#x9;return pile1;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (targetPile ==2) {&#xA;&#x9;&#x9;&#x9;return pile2;&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="364" end="-44"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1486039732421" sizeMeasure="70" errorCount="4">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.0/@attempts.3/@edit" start="1196" end="-1197"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1486039952999" sizeMeasure="90" errorCount="4">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="int pile0;&#xA;&#x9;int pile1;&#xA;&#x9;int pile2;&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;//Konstruktør_nr.1&#xA;&#x9;Nim(int pileSize) {&#xA;&#x9;&#x9;if (pileSize >0) {&#xA;&#x9;&#x9;&#x9;pile0 = pileSize;&#xA;&#x9;&#x9;&#x9;pile1 = pileSize;&#xA;&#x9;&#x9;&#x9;pile2 = pileSize;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;The size of the piles must be grater than 0.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//Konstruktør_nr.2&#xA;&#x9;Nim() {&#xA;&#x9;&#x9;pile0 = 10;&#xA;&#x9;&#x9;pile1 = 10;&#xA;&#x9;&#x9;pile2 = 10;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void removePieces(int number, int targetPile) {&#xA;&#x9;&#x9;if (number >= 0 &amp;&amp; number&lt;=targetPile &amp;&amp; targetPile==0) {&#xA;&#x9;&#x9;&#x9;pile0 -= number;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (number >= 0 &amp;&amp; number&lt;=targetPile &amp;&amp; targetPile==1) {&#xA;&#x9;&#x9;&#x9;pile1 -= number;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (number >= 0 &amp;&amp; number&lt;=targetPile &amp;&amp; targetPile==2) {&#xA;&#x9;&#x9;&#x9;pile2 -= number;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Note that number must be grater than 0, and targetPile must be 0, 1 or 2.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public boolean isValidMove(int number, int targetPile) {&#xA;&#x9;&#x9;if (number >= 0 &amp;&amp; number&lt;=targetPile &amp;&amp; targetPile==0) {&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (number >= 0 &amp;&amp; number&lt;=targetPile &amp;&amp; targetPile==1) {&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (number >= 0 &amp;&amp; number&lt;=targetPile &amp;&amp; targetPile==2) {&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;return false;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public boolean isGameOver() {&#xA;&#x9;&#x9;if (pile0==0 || pile1==0 || pile2==0){&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;return false;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getPile(int targetPile) {&#xA;&#x9;&#x9;if (targetPile == 0) {&#xA;&#x9;&#x9;&#x9;return pile0;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (targetPile == 1) {&#xA;&#x9;&#x9;&#x9;return pile1;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (targetPile ==2) {&#xA;&#x9;&#x9;&#x9;return pile2;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;return &quot;Pile 0 contains &quot; + getPile(0) + &quot; bricks. Pile 1 contains &quot; + getPile(1) + &#xA;&#x9;&#x9;        &quot; bricks. Pile 2 contains &quot; + getPile(2) + &quot; bricks.&quot;;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;Nim nim = new Nim(7);&#xA;&#x9;&#x9;Nim nim2 = new Nim();" edit="/1/@proposals.0/@proposals.0/@attempts.4/@edit" start="46" end="-8"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1486040015972" sizeMeasure="90" errorCount="4">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="private int pile0;&#xA;&#x9;private int pile1;&#xA;&#x9;private int pile2;&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;//Konstruktør_nr.1&#xA;&#x9;Nim(int pileSize) {&#xA;&#x9;&#x9;if (pileSize >0) {&#xA;&#x9;&#x9;&#x9;pile0 = pileSize;&#xA;&#x9;&#x9;&#x9;pile1 = pileSize;&#xA;&#x9;&#x9;&#x9;pile2 = pileSize;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;The size of the piles must be grater than 0.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;//Konstruktør_nr.2&#xA;&#x9;Nim() {&#xA;&#x9;&#x9;pile0 = 10;&#xA;&#x9;&#x9;pile1 = 10;&#xA;&#x9;&#x9;pile2 = 10;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void removePieces(int number, int targetPile) {&#xA;&#x9;&#x9;if (number >= 0 &amp;&amp; number&lt;=targetPile &amp;&amp; targetPile==0) {&#xA;&#x9;&#x9;&#x9;pile0 -= number;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (number >= 0 &amp;&amp; number&lt;=targetPile &amp;&amp; targetPile==1) {&#xA;&#x9;&#x9;&#x9;pile1 -= number;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (number >= 0 &amp;&amp; number&lt;=targetPile &amp;&amp; targetPile==2) {&#xA;&#x9;&#x9;&#x9;pile2 -= number;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Note that number must be grater than 0, and targetPile must be 0, 1 or 2.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public boolean isValidMove(int number, int targetPile) {&#xA;&#x9;&#x9;if (number >= 0 &amp;&amp; number&lt;=targetPile &amp;&amp; targetPile==0) {&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (number >= 0 &amp;&amp; number&lt;=targetPile &amp;&amp; targetPile==1) {&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (number >= 0 &amp;&amp; number&lt;=targetPile &amp;&amp; targetPile==2) {&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;return false;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public boolean isGameOver() {&#xA;&#x9;&#x9;if (pile0==0 || pile1==0 || pile2==0){&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;return false;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getPile(int targetPile) {&#xA;&#x9;&#x9;if (targetPile == 0) {&#xA;&#x9;&#x9;&#x9;return pile0;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (targetPile == 1) {&#xA;&#x9;&#x9;&#x9;return pile1;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (targetPile ==2) {&#xA;&#x9;&#x9;&#x9;return pile2;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.5/@edit" start="46" end="-283"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1486040082877" sizeMeasure="90" errorCount="4">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.0/@attempts.6/@edit" start="1812" end="-1813"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1486040168361" sizeMeasure="90" errorCount="1" warningCount="2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.0/@attempts.7/@edit" start="1812" end="-1813"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1486040207893" sizeMeasure="91" errorCount="1" warningCount="2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.0/@attempts.8/@edit" start="1784" end="-32"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1486040396582" sizeMeasure="94" errorCount="1" warningCount="2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="targetPile!=0 || targetPile!=1 || targetPile!=2) {&#xA;&#x9;&#x9;&#x9;return false;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else " edit="/1/@proposals.0/@proposals.0/@attempts.9/@edit" start="935" end="-885"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1486040535554" sizeMeasure="97" errorCount="1" warningCount="2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (pile0 > 0 &amp;&amp; pile1 >0 &amp;&amp; pile2 >0) {&#xA;&#x9;&#x9;&#x9;return false;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;The piles can not contain a negative number of bricks.&quot;)" edit="/1/@proposals.0/@proposals.0/@attempts.10/@edit" start="1396" end="-486"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1486041953780" sizeMeasure="97" errorCount="1" warningCount="2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" 0 &amp;&amp; number&lt;=targetPile &amp;&amp; targetPile==0) {&#xA;&#x9;&#x9;&#x9;pile0 -= number;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (number > 0 &amp;&amp; number&lt;=targetPile &amp;&amp; targetPile==1) {&#xA;&#x9;&#x9;&#x9;pile1 -= number;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (number > 0 &amp;&amp; number&lt;=targetPile &amp;&amp; targetPile==2) {&#xA;&#x9;&#x9;&#x9;pile2 -= number;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Note that number must be grater than 0, and targetPile must be 0, 1 or 2.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public boolean isValidMove(int number, int targetPile) {&#xA;&#x9;&#x9;if (targetPile!=0 || targetPile!=1 || targetPile!=2) {&#xA;&#x9;&#x9;&#x9;return false;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (number > 0 &amp;&amp; number&lt;=targetPile &amp;&amp; targetPile==0) {&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (number > 0 &amp;&amp; number&lt;=targetPile &amp;&amp; targetPile==1) {&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (number > 0 &amp;&amp; number&lt;=targetPile &amp;&amp; targetPile==2) {&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;return false;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public boolean isGameOver() {&#xA;&#x9;&#x9;if ((pile0==0) || (pile1==0) || (pile2==0)){&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if ((pile0 > 0) &amp;&amp; (pile1 >0) &amp;&amp; (pile2 >0)" edit="/1/@proposals.0/@proposals.0/@attempts.11/@edit" start="489" end="-615"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1486042346524" sizeMeasure="97" errorCount="1" warningCount="2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="pile0 &amp;&amp; targetPile==0) {&#xA;&#x9;&#x9;&#x9;pile0 -= number;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (number > 0 &amp;&amp; number&lt;=pile1 &amp;&amp; targetPile==1) {&#xA;&#x9;&#x9;&#x9;pile1 -= number;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (number > 0 &amp;&amp; number&lt;=pile2" edit="/1/@proposals.0/@proposals.0/@attempts.12/@edit" start="503" end="-1365"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1486042419592" sizeMeasure="97" errorCount="1" warningCount="2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="pile0 &amp;&amp; targetPile==0) {&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (number > 0 &amp;&amp; number&lt;=pile1 &amp;&amp; targetPile==1) {&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (number > 0 &amp;&amp; number&lt;=pile2" edit="/1/@proposals.0/@proposals.0/@attempts.13/@edit" start="1022" end="-839"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1486042621744" sizeMeasure="97" errorCount="1" warningCount="2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="(number > 0) &amp;&amp; (number&lt;=pile0) &amp;&amp; (targetPile==0)) {&#xA;&#x9;&#x9;&#x9;pile0 -= number;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if ((number > 0) &amp;&amp; (number&lt;=pile1) &amp;&amp; (targetPile==1)) {&#xA;&#x9;&#x9;&#x9;pile1 -= number;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if ((number > 0) &amp;&amp; (number&lt;=pile2) &amp;&amp; (targetPile==2)) {&#xA;&#x9;&#x9;&#x9;pile2 -= number;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Note that number must be grater than 0, and targetPile must be 0, 1 or 2.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public boolean isValidMove(int number, int targetPile) {&#xA;&#x9;&#x9;if ((targetPile!=0) || (targetPile!=1) || (targetPile!=2)) {&#xA;&#x9;&#x9;&#x9;return false;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if ((number > 0) &amp;&amp; (number&lt;=pile0) &amp;&amp; (targetPile==0)) {&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if ((number > 0) &amp;&amp; (number&lt;=pile1) &amp;&amp; (targetPile==1)) {&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if ((number > 0) &amp;&amp; (number&lt;=pile2) &amp;&amp; (targetPile==2)" edit="/1/@proposals.0/@proposals.0/@attempts.14/@edit" start="481" end="-822"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1486042972776" sizeMeasure="97" errorCount="1" warningCount="2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" 0) &amp;&amp; (pile2 > " edit="/1/@proposals.0/@proposals.0/@attempts.15/@edit" start="1435" end="-617"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1486043258843" sizeMeasure="100" errorCount="1" warningCount="2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (isGameOver()==true) {&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;The game is over.&quot;)" edit="/1/@proposals.0/@proposals.0/@attempts.16/@edit" start="744" end="-1337"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1486043474829" sizeMeasure="103" errorCount="1" warningCount="2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Target pile must be 0, 1 or 2.&quot;)" edit="/1/@proposals.0/@proposals.0/@attempts.17/@edit" start="1873" end="-296"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1486044879726" sizeMeasure="106" warningCount="2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (isGameOver()==true) {&#xA;&#x9;&#x9;&#x9;return fals" edit="/1/@proposals.0/@proposals.0/@attempts.18/@edit" start="1369" end="-893"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1486045578107" sizeMeasure="108" warningCount="2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (isGameOver()==true) {&#xA;&#x9;&#x9;&#x9;return false;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if ((number > 0) &amp;&amp; (number&lt;=pile0) &amp;&amp; (targetPile==0)) {&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if ((number > 0) &amp;&amp; (number&lt;=pile1) &amp;&amp; (targetPile==1)) {&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if ((number > 0) &amp;&amp; (number&lt;=pile2) &amp;&amp; (targetPile==2)) {&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.19/@edit" start="1105" end="-887"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1486045601047" sizeMeasure="106" warningCount="2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="}&#xA;&#x9;&#x9;else if (isGameOver()==true) {&#xA;&#x9;&#x9;&#x9;return false;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if ((number > 0) &amp;&amp; (number&lt;=pile0) &amp;&amp; (targetPile==0)) {&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if ((number > 0) &amp;&amp; (number&lt;=pile1) &amp;&amp; (targetPile==1)) {&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if ((number > 0) &amp;&amp; (number&lt;=pile2) &amp;&amp; (targetPile==2)) {&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.20/@edit" start="1105" end="-887"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1486045688051" sizeMeasure="106" warningCount="2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&amp;&amp; (targetPile!=1) &amp;&amp;" edit="/1/@proposals.0/@proposals.0/@attempts.21/@edit" start="1045" end="-1236"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1486046050363" sizeMeasure="108" warningCount="2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="isGameOver()==true) {&#xA;&#x9;&#x9;&#x9;return false;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;else if ((targetPile!=0) &amp;&amp; (targetPile!=1) &amp;&amp; (targetPile!=2)) {&#xA;&#x9;&#x9;&#x9;return false;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.22/@edit" start="1029" end="-1142"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1486046148408" sizeMeasure="107" warningCount="2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.0/@attempts.23/@edit" start="1074" end="-1234"/>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a" completion="1.0">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1486040220598" completion="0.0" failureCount="1" errorCount="3"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1486040406084" completion="0.0" failureCount="1" errorCount="3"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1486040543165" completion="0.0" failureCount="1" errorCount="3"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1486041966619" completion="0.0" failureCount="1" errorCount="3"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1486042353411" completion="0.0" failureCount="1" errorCount="3"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1486042426699" completion="0.0" failureCount="1" errorCount="3"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1486042981392" completion="0.0" failureCount="1" errorCount="3"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1486043266463" completion="0.0" failureCount="1" errorCount="3"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1486043482526" completion="0.75" successCount="3" failureCount="1"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1486044886596" completion="0.75" successCount="3" failureCount="1"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1486045395934" completion="0.75" successCount="3" failureCount="1"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1486045601942" completion="0.75" successCount="3" failureCount="1"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1486045608045" completion="0.75" successCount="3" failureCount="1"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1486045691092" completion="0.75" successCount="3" failureCount="1"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1486045815030" completion="0.75" successCount="3" failureCount="1"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1486046053300" completion="0.75" successCount="3" failureCount="1"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1486046149187" completion="1.0" successCount="4"/>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a" performedCount="3">
        <attempts timestamp="1486460582140"/>
        <attempts timestamp="1486460745479"/>
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
