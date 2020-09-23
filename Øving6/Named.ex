<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="Named interface">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the Named interface."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="interfaces.Named"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Person1 and Person2">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the Person1 class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="interfaces.Person1"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the Person2 class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="interfaces.Person2"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the Person1 class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="interfaces.Person1"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the Person2 class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="interfaces.Person2"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the Person1Test JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="interfaces.Person1Test"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the Person2Test JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="interfaces.Person2Test"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="NamedComparator">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the NamedComparator class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="interfaces.NamedComparator"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the NamedComparator class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="interfaces.NamedComparator"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the NamedComparatorTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="interfaces.NamedComparatorTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug the Person classes."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="interfaces.Person*" action="suspend.breakpoint"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug the NamedComparator class."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="interfaces.Named*" action="suspend.breakpoint"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488535816428" sizeMeasure="5">
          <edit xsi:type="exercise:StringEdit" storedString="package interfaces;&#xA;&#xA;public interface Named {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488535958013" sizeMeasure="17">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;String setGivenName(String name);&#xA;&#x9;&#xA;&#x9;String getGivenName();&#xA;&#x9;&#xA;&#x9;String setFamilyName(String name);&#xA;&#x9;&#xA;&#x9;String getFamilyName();&#xA;&#x9;&#xA;&#x9;String setFullName(String name);&#xA;&#x9;&#xA;&#x9;String getFullName();&#xA;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="47" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488536531108" sizeMeasure="17">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="void setGivenName(String name);&#xA;&#x9;&#xA;&#x9;String getGivenName();&#xA;&#x9;&#xA;&#x9;void setFamilyName(String name);&#xA;&#x9;&#xA;&#x9;String getFamilyName();&#xA;&#x9;&#xA;&#x9;void" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="48" end="-57"/>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488535991331" sizeMeasure="5">
          <edit xsi:type="exercise:StringEdit" storedString="package interfaces;&#xA;&#xA;public class Person1 {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488536223977" sizeMeasure="49" warningCount="2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="implements Named {&#xA;&#x9;&#xA;&#x9;private String givenName;&#xA;&#x9;private String familyName;&#xA;&#x9;&#xA;&#x9;public Person1(String givenName, String familyName) {&#xA;&#x9;&#x9;this.givenName = givenName;&#xA;&#x9;&#x9;this.familyName = familyName;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String setGivenName(String name) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return null;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String getGivenName() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return null;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String setFamilyName(String name) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return null;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String getFamilyName() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return null;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String setFullName(String name) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return null;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String getFullName() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return null;&#xA;&#x9;}" edit="/1/@proposals.1/@proposals.0/@attempts.0/@edit" start="42" end="-5"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488536448515" sizeMeasure="49" errorCount="3" warningCount="2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.1/@proposals.0/@attempts.1/@edit" start="870" end="-871"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488536564037" sizeMeasure="44" errorCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="void setGivenName(String name) {&#xA;&#x9;&#x9;givenName = name;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String getGivenName() {&#xA;&#x9;&#x9;return givenName;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public void setFamilyName(String name) {&#xA;&#x9;&#x9;this.familyName = name;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String getFamilyName() {&#xA;&#x9;&#x9;return familyName;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String setFullName(String name) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return null;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String getFullName() {&#xA;&#x9;&#x9;return givenName + familyName" edit="/1/@proposals.1/@proposals.0/@attempts.2/@edit" start="260" end="-9"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488536569985" sizeMeasure="44" errorCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="void" edit="/1/@proposals.1/@proposals.0/@attempts.3/@edit" start="555" end="-166"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488536612446" sizeMeasure="43" errorCount="1" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="String fullName = name;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String getFullName() {&#xA;&#x9;&#x9;return full" edit="/1/@proposals.1/@proposals.0/@attempts.4/@edit" start="589" end="-13"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488536840012" sizeMeasure="45">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="[] splited = name.split(&quot; &quot;);&#xA;&#x9;&#x9;givenName = splited[0];&#xA;&#x9;&#x9;familyName = splited[1];&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String getFullName() {&#xA;&#x9;&#x9;return givenName + family" edit="/1/@proposals.1/@proposals.0/@attempts.5/@edit" start="595" end="-13"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488538479941" sizeMeasure="45">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&quot; &quot;" edit="/1/@proposals.1/@proposals.0/@attempts.6/@edit" start="745" end="-22"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488536001404" sizeMeasure="5">
          <edit xsi:type="exercise:StringEdit" storedString="package interfaces;&#xA;&#xA;public class Person2 {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488536274047" sizeMeasure="47" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="implements Named {&#xA;&#x9;&#xA;&#x9;private String fullName;&#xA;&#x9;&#xA;&#x9;public Person2(String fullName) {&#xA;&#x9;&#x9;this.fullName = fullName;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String setGivenName(String name) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return null;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String getGivenName() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return null;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String setFamilyName(String name) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return null;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String getFamilyName() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return null;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String setFullName(String name) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return null;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String getFullName() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return null;&#xA;&#x9;}" edit="/1/@proposals.1/@proposals.1/@attempts.0/@edit" start="42" end="-5"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488536888925" sizeMeasure="45" errorCount="2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="void setGivenName(String name) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return null;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String getGivenName() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return null;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public void setFamilyName(String name) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return null;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String getFamilyName() {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return null;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public void setFullName(String name) {&#xA;&#x9;&#x9;fullName = name;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String getFullName() {&#xA;&#x9;&#x9;return fullName" edit="/1/@proposals.1/@proposals.1/@attempts.1/@edit" start="177" end="-9"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488537033703" sizeMeasure="45" errorCount="2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="String[] splited = fullName.split(&quot; &quot;);&#xA;&#x9;&#x9;return splited[0];&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public void setFamilyName(String name) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;return null;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public String getFamilyName() {&#xA;&#x9;&#x9;String[] splited = fullName.split(&quot; &quot;);&#xA;&#x9;&#x9;return splited[1]" edit="/1/@proposals.1/@proposals.1/@attempts.2/@edit" start="311" end="-148"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488537065635" sizeMeasure="45" errorCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="String[] splited = name.split(&quot; &quot;);&#xA;&#x9;&#x9;splited[0] = name" edit="/1/@proposals.1/@proposals.1/@attempts.3/@edit" start="212" end="-478"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488537075410" sizeMeasure="45">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="String[] splited = name.split(&quot; &quot;);&#xA;&#x9;&#x9;splited[1] = name" edit="/1/@proposals.1/@proposals.1/@attempts.4/@edit" start="438" end="-259"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a"/>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.1/@tasks.3/@q" answer="/0/@parts.1/@tasks.3/@a"/>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.1/@tasks.4/@q" answer="/0/@parts.1/@tasks.4/@a"/>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.1/@tasks.5/@q" answer="/0/@parts.1/@tasks.5/@a"/>
    </proposals>
    <proposals exercisePart="/0/@parts.2">
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.2/@tasks.0/@q" answer="/0/@parts.2/@tasks.0/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488537095918" sizeMeasure="5">
          <edit xsi:type="exercise:StringEdit" storedString="package interfaces;&#xA;&#xA;public class NamedComparator {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488538174471" sizeMeasure="20">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.Comparator;&#xA;&#xA;public class NamedComparator implements Comparator&lt;Named>{&#xA;&#xA;&#x9;@Override&#xA;&#x9;public int compare(Named named1, Named named2) {&#xA;&#x9;&#x9;if (named1.getFamilyName() != named2.getFamilyName()) {&#xA;&#x9;&#x9;&#x9;return (int) (named1.getFamilyName()).compareTo(named2.getFamilyName());&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (named1.getFamilyName() == named2.getFamilyName()){&#xA;&#x9;&#x9;&#x9;return (int) (named1.getGivenName()).compareTo(named2.getGivenName());&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;return 0;&#xA;&#x9;&#x9;}&#xA;&#x9;}" edit="/1/@proposals.2/@proposals.0/@attempts.0/@edit" start="21" end="-5"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488538457538" sizeMeasure="43" errorCount="3">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="ArrayList;&#xA;import java.util.Collections;&#xA;import java.util.Comparator;&#xA;import java.util.List;&#xA;&#xA;import OF8.Animal;&#xA;import OF8.Cat;&#xA;import OF8.Dog;&#xA;&#xA;public class NamedComparator implements Comparator&lt;Named>{&#xA;&#xA;&#x9;@Override&#xA;&#x9;public int compare(Named named1, Named named2) {&#xA;&#x9;&#x9;if (named1.getFamilyName() != named2.getFamilyName()) {&#xA;&#x9;&#x9;&#x9;return (int) (named1.getFamilyName()).compareTo(named2.getFamilyName());&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (named1.getFamilyName() == named2.getFamilyName()){&#xA;&#x9;&#x9;&#x9;return (int) (named1.getGivenName()).compareTo(named2.getGivenName());&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;return 0;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;List&lt;Named> name = new ArrayList&lt;>();&#xA;&#x9;&#x9;name.add(new Person1(&quot;Kari&quot;, &quot;Knudsen&quot;));&#xA;&#x9;&#x9;name.add(new Person2(&quot;Ola Nordmann&quot;));&#xA;&#x9;&#x9;name.add(new Person2(&quot;Per Pålsen&quot;));&#xA;&#x9;&#x9;name.add(new Person1(&quot;Per&quot;, &quot;Pålsen&quot;));&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;//Stokker om på samlingen (dvs. listen, som er en Collection)&#xA;&#x9;&#x9;Collections.shuffle(name);&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;for (Named a : name) {&#xA;&#x9;&#x9;&#x9;//Polymorfisme: Dyrene behandles likt/uniformt, med makeAnimalSound()&#xA;&#x9;&#x9;&#x9;//men oppførselen (dvs. output) er ulik -- dette basert på (sub)typen til a.&#xA;&#x9;&#x9;&#x9;System.out.println(a.getFullName());&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;" edit="/1/@proposals.2/@proposals.0/@attempts.1/@edit" start="38" end="-3"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488538488044" sizeMeasure="39">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.2/@proposals.0/@attempts.2/@edit" start="132" end="-1009"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488538591996" sizeMeasure="40" errorCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="public class NamedComparator implements Comparator&lt;Named>{&#xA;&#xA;&#x9;@Override&#xA;&#x9;public int compare(Named named1, Named named2) {&#xA;&#x9;&#x9;if (named1.getFamilyName() != named2.getFamilyName()) {&#xA;&#x9;&#x9;&#x9;return (int) (named1.getFamilyName()).compareTo(named2.getFamilyName());&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (named1.getFamilyName() == named2.getFamilyName()){&#xA;&#x9;&#x9;&#x9;return (int) (named1.getGivenName()).compareTo(named2.getGivenName());&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;return 0;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;List&lt;Named> name = new ArrayList&lt;>();&#xA;&#x9;&#x9;name.add(new Person1(&quot;Kari&quot;, &quot;Knudsen&quot;));&#xA;&#x9;&#x9;name.add(new Person2(&quot;Ola Nordmann&quot;));&#xA;&#x9;&#x9;name.add(new Person2(&quot;Per Pålsen&quot;));&#xA;&#x9;&#x9;name.add(new Person1(&quot;Per&quot;, &quot;Pålsen&quot;));&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;//Stokker om på samlingen (dvs. listen, som er en Collection)&#xA;&#x9;&#x9;Collections.shuffle(name);&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;for (Named a : name) {&#xA;&#x9;&#x9;&#x9;//Polymorfisme: Dyrene behandles likt/uniformt, med makeAnimalSound()&#xA;&#x9;&#x9;&#x9;//men oppførselen (dvs. output) er ulik -- dette basert på (sub)typen til a.&#xA;&#x9;&#x9;&#x9;System.out.println(a.getFullName());&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;System.out.println(compare(name.get(1), name.get(2)));" edit="/1/@proposals.2/@proposals.0/@attempts.3/@edit" start="132" end="-8"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488538668675" sizeMeasure="38" errorCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.2/@proposals.0/@attempts.4/@edit" start="937" end="-109"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488538823135" sizeMeasure="37" errorCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="public static int compare(Named named1, Named named2) {&#xA;&#x9;&#x9;if (named1.getFamilyName() != named2.getFamilyName()) {&#xA;&#x9;&#x9;&#x9;return (int) (named1.getFamilyName()).compareTo(named2.getFamilyName());&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (named1.getFamilyName() == named2.getFamilyName()){&#xA;&#x9;&#x9;&#x9;return (int) (named1.getGivenName()).compareTo(named2.getGivenName());&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;return 0;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;List&lt;Named> name = new ArrayList&lt;>();&#xA;&#x9;&#x9;name.add(new Person1(&quot;Kari&quot;, &quot;Knudsen&quot;));&#xA;&#x9;&#x9;name.add(new Person2(&quot;Ola Nordmann&quot;));&#xA;&#x9;&#x9;name.add(new Person2(&quot;Per Pålsen&quot;));&#xA;&#x9;&#x9;name.add(new Person1(&quot;Per&quot;, &quot;Pålsen&quot;));&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;//Stokker om på samlingen (dvs. listen, som er en Collection)&#xA;&#x9;&#x9;Collections.shuffle(name);&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;for (Named a : name) {" edit="/1/@proposals.2/@proposals.0/@attempts.5/@edit" start="193" end="-109"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488538863504" sizeMeasure="38" errorCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="@Override&#xA;&#x9;public int compare(Named named1, Named named2) {&#xA;&#x9;&#x9;if (named1.getFamilyName() != named2.getFamilyName()) {&#xA;&#x9;&#x9;&#x9;return (int) (named1.getFamilyName()).compareTo(named2.getFamilyName());&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (named1.getFamilyName() == named2.getFamilyName()){&#xA;&#x9;&#x9;&#x9;return (int) (named1.getGivenName()).compareTo(named2.getGivenName());&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;return 0;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;List&lt;Named> name = new ArrayList&lt;>();&#xA;&#x9;&#x9;name.add(new Person1(&quot;Kari&quot;, &quot;Knudsen&quot;));&#xA;&#x9;&#x9;name.add(new Person2(&quot;Ola Nordmann&quot;));&#xA;&#x9;&#x9;name.add(new Person2(&quot;Per Pålsen&quot;));&#xA;&#x9;&#x9;name.add(new Person1(&quot;Per&quot;, &quot;Pålsen&quot;));&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;//Stokker om på samlingen (dvs. listen, som er en Collection)&#xA;&#x9;&#x9;Collections.shuffle(name);&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;for (Named a : name) {&#xA;&#x9;&#x9;&#x9;System.out.println(a.getFullName());&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;System.out.println(compare(name.get(1), name.get(2)));&#xA;&#x9;}&#xA;" edit="/1/@proposals.2/@proposals.0/@attempts.6/@edit" start="193" end="-3"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488539613602" sizeMeasure="37">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.2/@proposals.0/@attempts.7/@edit" start="979" end="-7"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488539750892" sizeMeasure="37">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=".compareTo(named2.getFamilyName()) != 0) {&#xA;&#x9;&#x9;&#x9;return (int) (named1.getFamilyName()).compareTo(named2.getFamilyName());&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (named1.getFamilyName().compareTo(named2.getFamilyName()) == 0){&#xA;&#x9;&#x9;&#x9;return (int) (named1.getGivenName()).compareTo(named2.getGivenName());&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;return 0;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;List&lt;Named> name = new ArrayList&lt;>();&#xA;&#x9;&#x9;name.add(new Person1(&quot;Kari&quot;, &quot;Knudsen&quot;));&#xA;&#x9;&#x9;name.add(new Person2(&quot;Ola Nordmann&quot;));&#xA;&#x9;&#x9;name.add(new Person2(&quot;Per Pålsen&quot;));&#xA;&#x9;&#x9;name.add(new Person1(&quot;Per&quot;, &quot;Pålsen&quot;));&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;//Stokker om på samlingen (dvs. listen, som er en Collection)&#xA;&#x9;&#x9;Collections.shuffle(name);&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;for (Named a : name) {&#xA;&#x9;&#x9;&#x9;System.out.println(a.getFullName());&#xA;&#x9;&#x9;}" edit="/1/@proposals.2/@proposals.0/@attempts.8/@edit" start="281" end="-7"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488539834389" sizeMeasure="37">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.2/@proposals.0/@attempts.9/@edit" start="1009" end="-1010"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.2/@tasks.1/@q" answer="/0/@parts.2/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488538457474" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488538491421" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488538594731" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488538823061" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488539616903" mode="run"/>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.2/@tasks.2/@q" answer="/0/@parts.2/@tasks.2/@a" completion="1.0">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488538193999" completion="0.0" failureCount="1"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488538876972" completion="0.0" failureCount="1"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488539771130" completion="1.0" successCount="1"/>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.3">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.3/@tasks.0/@q" answer="/0/@parts.3/@tasks.0/@a"/>
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.3/@tasks.1/@q" answer="/0/@parts.3/@tasks.1/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.3/@tasks.2/@q" answer="/0/@parts.3/@tasks.2/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.3/@tasks.3/@q" answer="/0/@parts.3/@tasks.3/@a"/>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.3/@tasks.4/@q" answer="/0/@parts.3/@tasks.4/@a"/>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>
