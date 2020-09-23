<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="Partner">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the Partner class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="objectstructures.Partner"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the Partner class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="objectstructures.Partner"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the PartnerTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="objectstructures.PartnerTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="objectstructures.Partner" action="suspend.breakpoint"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488195424913" sizeMeasure="31" errorCount="4">
          <edit xsi:type="exercise:StringEdit" storedString="package objectstructures;&#xA;&#xA;public class Partner {&#xA;&#x9;&#xA;&#x9;private String name;&#xA;&#x9;private String partner;&#xA;&#xA;&#x9;public Partner(String name, String partner) {&#xA;&#x9;&#x9;this.name = name;&#xA;&#x9;&#x9;this.partner = partner;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String getName() {&#xA;&#x9;&#x9;return name;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String getPartner() {&#xA;&#x9;&#x9;if name.getPartner() == false {&#xA;&#x9;&#x9;&#x9;return null;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;return name.getPartner();&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setPartner() {&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488195988041" sizeMeasure="37" errorCount="2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=") {&#xA;&#x9;&#x9;this.name = name;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String getName() {&#xA;&#x9;&#x9;return name;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String getPartner() {&#xA;&#x9;&#x9;return partner;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setPartner(String partner) {&#xA;&#x9;&#x9;if (this.partner == partner) {&#xA;&#x9;&#x9;&#x9;return;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;Partner oldPartner = new Partner(partner);&#xA;&#x9;&#x9;this.partner = partner;&#xA;&#x9;&#x9;if (oldPartner != null &amp;&amp; oldPartner.getPartner() == this) {&#xA;&#x9;&#x9;&#x9;oldPartner.setPartner(null);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;if (this.partner != null) {&#xA;&#x9;&#x9;&#x9;this.partner.setPartner(this);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="127" end="-14"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488196143854" sizeMeasure="42" errorCount="3">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (name.getPartner == false) {&#xA;&#x9;&#x9;&#x9;return null;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;return partner;&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="235" end="-350"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488196167108" sizeMeasure="42" errorCount="3">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="null" edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="258" end="-405"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488196185322" sizeMeasure="42" errorCount="3">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="()" edit="/1/@proposals.0/@proposals.0/@attempts.3/@edit" start="254" end="-413"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488196278308" sizeMeasure="42" errorCount="2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=") {&#xA;&#x9;&#x9;&#x9;return null;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;return partner;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setPartner(String partner) {&#xA;&#x9;&#x9;if (this.partner == partner) {&#xA;&#x9;&#x9;&#x9;return;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;Partner oldPartner = new Partner(partner);&#xA;&#x9;&#x9;this.partner = partner;&#xA;&#x9;&#x9;if (oldPartner != null &amp;&amp; oldPartner.getPartner() == partner) {&#xA;&#x9;&#x9;&#x9;oldPartner.setPartner(null);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;if (this.partner != null) {&#xA;&#x9;&#x9;&#x9;this.partner.setPartner(partner" edit="/1/@proposals.0/@proposals.0/@attempts.4/@edit" start="260" end="-23"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488196393186" sizeMeasure="42" errorCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="partner == null" edit="/1/@proposals.0/@proposals.0/@attempts.5/@edit" start="239" end="-411"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488196476014" sizeMeasure="50" errorCount="1" warningCount="2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="public static void main(String[] args) {&#xA;&#x9;&#x9;Partner p1 = new Partner(&quot;Per&quot;);&#xA;&#x9;&#x9;Partner p2 = new Partner(&quot;Kari&quot;);&#xA;&#x9;&#x9;Partner p3 = new Partner(&quot;Ola&quot;);&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;System.out.println(p1.getName());" edit="/1/@proposals.0/@proposals.0/@attempts.6/@edit" start="661" end="-11"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488196507167" sizeMeasure="51" errorCount="1" warningCount="2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;System.out.println(p1.getPartner" edit="/1/@proposals.0/@proposals.0/@attempts.7/@edit" start="848" end="-15"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488196539125" sizeMeasure="53" errorCount="2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;p1.setPartner(p2" edit="/1/@proposals.0/@proposals.0/@attempts.8/@edit" start="887" end="-52"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488196991699" sizeMeasure="52" errorCount="1" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;private String oldPartner;&#xA;&#xA;&#x9;public Partner(String name) {&#xA;&#x9;&#x9;this.name = name;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String getName() {&#xA;&#x9;&#x9;return name;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String getPartner() {&#xA;&#x9;&#x9;if (partner == null) {&#xA;&#x9;&#x9;&#x9;return null;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;return partner;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setPartner(String partner) {&#xA;&#x9;&#x9;//Er parntere fra før av&#xA;&#x9;&#x9;if (this.partner == partner) {&#xA;&#x9;&#x9;&#x9;return;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;//Om personen ikke har en partner fra før av, settes en&#xA;&#x9;&#x9;if (this.partner == null) {&#xA;&#x9;&#x9;&#x9;this.partner = partner;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;//Dersom personen har en partner fra før av må den slettes, og en ny en må settes" edit="/1/@proposals.0/@proposals.0/@attempts.9/@edit" start="99" end="-308"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488197076040" sizeMeasure="52" warningCount="2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Partner partner;&#xA;&#x9;private String oldPartner;&#xA;&#xA;&#x9;public Partner(String name) {&#xA;&#x9;&#x9;this.name = name;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String getName() {&#xA;&#x9;&#x9;return name;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public Partner getPartner() {&#xA;&#x9;&#x9;if (partner == null) {&#xA;&#x9;&#x9;&#x9;return null;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;return partner;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setPartner(Partner" edit="/1/@proposals.0/@proposals.0/@attempts.10/@edit" start="83" end="-597"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488197176646" sizeMeasure="60" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;&#x9;public Partner(String name) {&#xA;&#x9;&#x9;this.name = name;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String getName() {&#xA;&#x9;&#x9;return name;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public Partner getPartner() {&#xA;&#x9;&#x9;if (partner == null) {&#xA;&#x9;&#x9;&#x9;return null;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;return partner;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setPartner(Partner partner) {&#xA;&#x9;&#x9;//Er parntere fra før av&#xA;&#x9;&#x9;if (this.partner == partner) {&#xA;&#x9;&#x9;&#x9;return;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;//Om personen ikke har en partner fra før av, settes en&#xA;&#x9;&#x9;if (this.partner == null) {&#xA;&#x9;&#x9;&#x9;this.partner = partner;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;//Dersom personen har en partner fra før av må den slettes, og en ny en må settes&#xA;&#x9;&#x9; Partner oldPartner = this.partner;&#xA;&#x9;&#x9;    this.partner = partner;&#xA;&#x9;&#x9;    // hvis det var en kobling fra før, koble den andre fra&#xA;&#x9;&#x9;    if (oldPartner != null &amp;&amp; oldPartner.getPartner() == this) {&#xA;&#x9;&#x9;        oldPartner.setPartner(null);&#xA;&#x9;&#x9;    }&#xA;&#x9;&#x9;    // hvis dette er en ny kobling, koble den andre til&#xA;&#x9;&#x9;    if (this.partner != null) {&#xA;&#x9;&#x9;        this.partner.setPartner(this);&#xA;&#x9;&#x9;    }" edit="/1/@proposals.0/@proposals.0/@attempts.11/@edit" start="100" end="-305"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488197199691" sizeMeasure="61" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;System.out.println(p2" edit="/1/@proposals.0/@proposals.0/@attempts.12/@edit" start="1318" end="-26"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488197362361" sizeMeasure="61" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.0/@attempts.13/@edit" start="679" end="-685"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488197547139" sizeMeasure="61" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="this.partner = partner;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;//Om personen ikke har en partner fra før av, settes en&#xA;&#x9;&#x9;if (this.partner == null) {&#xA;&#x9;&#x9;&#x9;this.partner = partner;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;//Dersom personen har en partner fra før av må den slettes, og en ny en må settes&#xA;&#x9;&#x9; Partner oldPartner = this.partner;&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.14/@edit" start="423" end="-685"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488197652696" sizeMeasure="61" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" = partner; " edit="/1/@proposals.0/@proposals.0/@attempts.15/@edit" start="1009" end="-352"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488197982084" sizeMeasure="65" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (partner == null) {&#xA;&#x9;&#x9;&#x9;this.partner = null;&#xA;&#x9;&#x9;&#x9;partner = null;&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.16/@edit" start="362" end="-1014"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488274036722" sizeMeasure="64" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.0/@attempts.17/@edit" start="411" end="-1033"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488276569275" sizeMeasure="67" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="}&#xA;&#x9;&#x9;//Er parntere fra før av&#xA;&#x9;&#x9;if (this.partner == partner) {&#xA;&#x9;&#x9;&#x9;this.partner = partner;&#xA;&#x9;&#x9;&#x9;partner.setPartner(this);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;//Om personen ikke har en partner fra før av, settes en&#xA;&#x9;&#x9;if (this.partner == null) {&#xA;&#x9;&#x9;&#x9;this.partner = partner;&#xA;&#x9;&#x9;&#x9;partner.setPartner(this);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;//Dersom personen har en partner fra før av må den slettes, og en ny en må settes&#xA;&#x9;&#x9; Partner oldPartner = this.partner;&#xA;&#x9;&#x9; this.partner = partner;&#xA;&#x9;&#x9;    // hvis det var en kobling fra før, koble den andre fra&#xA;&#x9;&#x9;    if (oldPartner != null &amp;&amp; oldPartner.getPartner() == this) {&#xA;&#x9;&#x9;        oldPartner.setPartner(null);&#xA;&#x9;&#x9;    }&#xA;&#x9;&#x9;    // hvis dette er en ny kobling, koble den andre til&#xA;&#x9;&#x9;    if (this.partner != null) {&#xA;&#x9;&#x9;        this.partner = partner; &#xA;&#x9;&#x9;        partner.setPartner(this);" edit="/1/@proposals.0/@proposals.0/@attempts.18/@edit" start="411" end="-352"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488276710258" sizeMeasure="67" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=".partner);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;//Om personen ikke har en partner fra før av, settes en&#xA;&#x9;&#x9;if (this.partner == null) {&#xA;&#x9;&#x9;&#x9;this.partner = partner;&#xA;&#x9;&#x9;&#x9;partner.setPartner(this.partner);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;//Dersom personen har en partner fra før av må den slettes, og en ny en må settes&#xA;&#x9;&#x9; Partner oldPartner = this.partner;&#xA;&#x9;&#x9; this.partner = partner;&#xA;&#x9;&#x9;    // hvis det var en kobling fra før, koble den andre fra&#xA;&#x9;&#x9;    if (oldPartner != null &amp;&amp; oldPartner.getPartner() == this) {&#xA;&#x9;&#x9;        oldPartner.setPartner(null);&#xA;&#x9;&#x9;    }&#xA;&#x9;&#x9;    // hvis dette er en ny kobling, koble den andre til&#xA;&#x9;&#x9;    if (this.partner != null) {&#xA;&#x9;&#x9;        this.partner = partner; &#xA;&#x9;&#x9;        partner.setPartner(this.partner" edit="/1/@proposals.0/@proposals.0/@attempts.19/@edit" start="526" end="-354"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488277083906" sizeMeasure="64" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="}&#xA;&#x9;&#x9;//Om personen ikke har en partner fra før av, settes en&#xA;&#x9;&#x9;if (this.partner == null) {&#xA;&#x9;&#x9;&#x9;this.partner = partner;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;//Dersom personen har en partner fra før av må den slettes, og en ny en må settes&#xA;&#x9;&#x9; Partner oldPartner = this.partner;&#xA;&#x9;&#x9; this.partner = partner;&#xA;&#x9;&#x9;    // hvis det var en kobling fra før, koble den andre fra&#xA;&#x9;&#x9;    if (oldPartner != null &amp;&amp; oldPartner.getPartner() == this) {&#xA;&#x9;&#x9;        oldPartner.setPartner(null);&#xA;&#x9;&#x9;    }&#xA;&#x9;&#x9;    // hvis dette er en ny kobling, koble den andre til&#xA;&#x9;&#x9;    if (this.partner != null) {&#xA;&#x9;&#x9;        this.partner = partner; " edit="/1/@proposals.0/@proposals.0/@attempts.20/@edit" start="502" end="-352"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488277116335" sizeMeasure="65" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="p2.setPartner(p1" edit="/1/@proposals.0/@proposals.0/@attempts.21/@edit" start="1340" end="-91"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488277140622" sizeMeasure="64" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.0/@attempts.22/@edit" start="1340" end="-91"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488277805475" sizeMeasure="73" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;private boolean hasPartner;&#xA;&#xA;&#x9;public Partner(String name) {&#xA;&#x9;&#x9;this.name = name;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String getName() {&#xA;&#x9;&#x9;return name;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public Partner getPartner() {&#xA;&#x9;&#x9;&#x9;return partner;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setPartner(Partner partner) {&#xA;&#x9;&#x9;//Hvis argumentet er null, så kobles de fra hverandre&#xA;&#x9;&#x9;if (partner == null) {&#xA;            if (this.getPartner() == null)&#xA;                hasPartner = false;&#xA;            else&#xA;                hasPartner = true;&#xA;            if (hasPartner) {&#xA;                Partner other = this.getPartner();&#xA;                this.partner = null;&#xA;                other.setPartner(null);&#xA;            }&#xA;            else&#xA;                this.partner = null;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;// New partner as arg; Set new partners&#xA;            if (this.partner != null) {&#xA;            &#x9;// this currently has partner&#xA;                if ((this == this.partner.getPartner()) &amp;&amp; (this.getPartner() != partner)) {&#xA;                &#x9;// Partners partner is this&#xA;                    Partner currentPartner = this.partner;&#xA;                    this.partner = null;&#xA;                    currentPartner.setPartner(null);&#xA;&#xA;                    Partner swinger = partner;&#xA;                    partner.setPartner(this);&#xA;                    this.setPartner(swinger);&#xA;                }&#xA;            }&#xA;            else {&#xA;                // If no current partner&#xA;                this.partner = partner;&#xA;                partner.setPartner(this);&#xA;           }&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;Partner p1 = new Partner(&quot;Per&quot;);&#xA;&#x9;&#x9;Partner p2 = new Partner(&quot;Kari&quot;);&#xA;&#x9;&#x9;Partner p3 = new Partner(&quot;Ola&quot;);&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;System.out.println(p1.getName());&#xA;&#x9;&#x9;System.out.println(p1.getPartner());&#xA;&#x9;&#x9;p1.setPartner(p2" edit="/1/@proposals.0/@proposals.0/@attempts.23/@edit" start="100" end="-91"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488278023923" sizeMeasure="73" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="y partner som argument; Setter ny partner&#xA;            if (this.partner != null) {&#xA;            &#x9;// this har partner fra før av&#xA;                if ((this == this.partner.getPartner()) &amp;&amp; (this.getPartner() != partner)) {&#xA;                &#x9;// Partners partner er this&#xA;                    Partner currentPartner = this.partner;&#xA;                    this.partner = null;&#xA;                    currentPartner.setPartner(null);&#xA;&#xA;                    Partner swinger = partner;&#xA;                    partner.setPartner(this);&#xA;                    this.setPartner(swinger);&#xA;                }&#xA;            }&#xA;            else {&#xA;                // Dersom de ikke har noen partnere fra før av" edit="/1/@proposals.0/@proposals.0/@attempts.24/@edit" start="789" end="-443"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488278071888" sizeMeasure="78" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="@Override&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;return name;&#xA;&#x9;}&#xA;&#x9;  " edit="/1/@proposals.0/@proposals.0/@attempts.25/@edit" start="1568" end="-336"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488278282275" sizeMeasure="78" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="ldPartner = this.getPartner();&#xA;                this.partner = null;&#xA;                oldPartner.setPartner(null);&#xA;            }&#xA;            else&#xA;                this.partner = null;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;// Ny partner som argument; Setter ny partner&#xA;            if (this.partner != null) {&#xA;            &#x9;// this har partner fra før av&#xA;                if ((this == this.partner.getPartner()) &amp;&amp; (this.getPartner() != partner)) {&#xA;                &#x9;// Partners partner er this&#xA;                    Partner currentPartner = this.partner;&#xA;                    this.partner = null;&#xA;                    currentPartner.setPartner(null);&#xA;&#xA;                    Partner ny = partner;&#xA;                    partner.setPartner(this);&#xA;                    this.setPartner(ny" edit="/1/@proposals.0/@proposals.0/@attempts.26/@edit" start="598" end="-620"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1488278289306" sizeMeasure="78" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.0/@attempts.27/@edit" start="1962" end="-1963"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488196478819" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488196509811" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488196560746" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488197081364" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488197180677" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488197202234" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488197656043" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488197987140" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488276573349" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488276601981" mode="debug"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488276939465" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488277087030" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488277119671" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488277808555" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1488278074399" mode="run"/>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a" completion="1.0">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488197218869" completion="0.25" successCount="1" failureCount="3"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488197691563" completion="0.25" successCount="1" failureCount="3"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488197994355" completion="0.25" successCount="1" failureCount="3"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1488277836521" completion="1.0" successCount="4"/>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a" performedCount="1">
        <attempts timestamp="1488276627193"/>
      </proposals>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a" performedCount="20">
        <attempts timestamp="1488276619380"/>
        <attempts timestamp="1488276632589"/>
        <attempts timestamp="1488276635270"/>
        <attempts timestamp="1488276639178"/>
        <attempts timestamp="1488276640941"/>
        <attempts timestamp="1488276641558"/>
        <attempts timestamp="1488276642431"/>
        <attempts timestamp="1488276643168"/>
        <attempts timestamp="1488276643882"/>
        <attempts timestamp="1488276646771"/>
        <attempts timestamp="1488276647225"/>
        <attempts timestamp="1488276647656"/>
        <attempts timestamp="1488276648093"/>
        <attempts timestamp="1488276649024"/>
        <attempts timestamp="1488276649542"/>
        <attempts timestamp="1488276650097"/>
        <attempts timestamp="1488276650971"/>
        <attempts timestamp="1488276651699"/>
        <attempts timestamp="1488276652438"/>
        <attempts timestamp="1488276653695"/>
      </proposals>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.1/@tasks.3/@q" answer="/0/@parts.1/@tasks.3/@a" performedCount="1">
        <attempts timestamp="1488276609751"/>
      </proposals>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>
