<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="AbstractAccount">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the abstract AbstractAccount class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.AbstractAccount"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the DebitAccount class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.DebitAccount"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the DebitAccount class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="inheritance.DebitAccount"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the CreditAccount class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.CreditAccount"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the CreditAccount class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="inheritance.CreditAccount"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write the source code for the SavingsAccount2 class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="inheritance.SavingsAccount2"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the SavingsAccount2 class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="inheritance.SavingsAccount2"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the DebitAccountTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="inheritance.DebitAccountTest"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the CreditAccountTest JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="inheritance.CreditAccountTest"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the SavingsAccount2Test JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="inheritance.SavingsAccount2Test"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="inheritance.*Account*" action="suspend.breakpoint"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490705897885" sizeMeasure="33" errorCount="1">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public abstract class AbstractAccount {&#xA;&#x9;&#xA;&#x9;protected double balance;&#xA;&#x9;&#xA;&#x9;public AbstractAccount() {&#xA;&#x9;&#x9;balance = 0;&#xA;&#x9;}&#xA;&#xA;&#x9;public void deposit(double amount) { //øker kontobalansen med innskutt beløp. Merk at det innskutte beløpet må være positivt. Ved ulovlig innskudd skal en IllegalArgumentException utløses.&#xA;&#x9;&#x9;if (amount > 0) {&#xA;&#x9;&#x9;&#x9;balance += amount;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Beløpet kan ikke være negativt&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;public void withdraw(double amount) { //Metoden kaller internalWithdraw(uttaksbeløp), som implementeres i hver subklasse. Hvis uttaksbeløpet er negativt skal metoden utløse en IllegalArgumentException. &#xA;&#x9;&#x9;if (amount &lt; 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Beløpet kan ikke være negativt.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;this.internalWithdraw(amount);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public abstract void internalWithdraw(double amount); //minsker kontobalansen med beløpet som blir tatt ut. Merk at reglene for uttak er ulik for klassene som implementerer AbstractAccount, og må derfor implementeres i hver klasse. Hvis det ikke er mulig å ta ut det angitte beløpet skal metoden utløse en IllegalStateException.&#xA;&#x9;&#xA;&#x9;public double getBalance() { //returnerer kontobalansen.&#xA;&#x9;&#x9;return balance;&#xA;&#x9;}&#xA;}jjs&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490705900029" sizeMeasure="33">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="1231" end="-2"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490705890584" sizeMeasure="17" errorCount="1">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public class DebitAccount extends AbstractAccount {&#xA;&#xA;&#x9;@Override&#xA;&#x9;public void internalWithdraw(double amount) {&#xA;&#x9;&#x9;if ((getBalance()-amount) &lt; 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;Beløpet på kontoen kan ikke være negativt&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;balance -= amount;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#xA;}&#xA;jdfj&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490705893252" sizeMeasure="16">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.1/@attempts.0/@edit" start="297" end="-2"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a"/>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.3/@q" answer="/0/@parts.0/@tasks.3/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490705932735" sizeMeasure="5">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public class CreditAccount {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490706040597" sizeMeasure="21">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="extends AbstractAccount{&#xA;&#x9;&#xA;&#x9;private double creditLine;&#xA;&#x9;&#xA;&#x9;public double getCredidLine() {&#xA;&#x9;&#x9;return creditLine;&#xA;&#x9;}&#xA;&#xA;&#x9;public void setCreditLine(double creditLine) {&#xA;&#x9;&#x9;this.creditLine = creditLine;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public void internalWithdraw(double amount) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.3/@attempts.0/@edit" start="49" end="-5"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490706116460" sizeMeasure="26">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (creditLine &lt; 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Kreditt på kontoen kan ikke være negativt.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;this.creditLine = creditLine;&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.3/@attempts.1/@edit" start="214" end="-111"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490706518940" sizeMeasure="35">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="CreditAccount(double creditLine) {&#xA;&#x9;&#x9;setCreditLine(creditLine);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public double getCredidLine() {&#xA;&#x9;&#x9;return creditLine;&#xA;&#x9;}&#xA;&#xA;&#x9;public void setCreditLine(double creditLine) {&#xA;&#x9;&#x9;if (creditLine &lt; 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Kreditt på kontoen kan ikke være negativt.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (balance &lt; 0) {&#xA;&#x9;&#x9;&#x9;if ((creditLine + balance) >= 0) {&#xA;&#x9;&#x9;&#x9;&#x9;this.creditLine = creditLine;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;Feil kreditt.&quot;);&#xA;&#x9;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.3/@attempts.2/@edit" start="114" end="-115"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490706597150" sizeMeasure="38">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;else {&#xA;&#x9;&#x9;&#x9;this.creditLine = creditLine;" edit="/1/@proposals.0/@proposals.3/@attempts.3/@edit" start="579" end="-115"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490706633961" sizeMeasure="38">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="balance -= amount;" edit="/1/@proposals.0/@proposals.3/@attempts.4/@edit" start="689" end="-11"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490706844954" sizeMeasure="43">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="tLine() {&#xA;&#x9;&#x9;return creditLine;&#xA;&#x9;}&#xA;&#xA;&#x9;public void setCreditLine(double creditLine) {&#xA;&#x9;&#x9;if (creditLine &lt; 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Kreditt på kontoen kan ikke være negativt.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (balance &lt; 0) {&#xA;&#x9;&#x9;&#x9;if ((creditLine + balance) >= 0) {&#xA;&#x9;&#x9;&#x9;&#x9;this.creditLine = creditLine;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;Feil kreditt.&quot;);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;this.creditLine = creditLine;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public void internalWithdraw(double amount) {&#xA;&#x9;&#x9;if ((balance -= amount) &lt;= getCreditLine()) {&#xA;&#x9;&#x9;&#x9;balance -= amount;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;For stort beløp.&quot;);&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.3/@attempts.5/@edit" start="206" end="-11"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490706955370" sizeMeasure="43">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Math.abs((balance -= amount))" edit="/1/@proposals.0/@proposals.3/@attempts.6/@edit" start="694" end="-132"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490707110788" sizeMeasure="42">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.3/@attempts.7/@edit" start="784" end="-15"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490707857472" sizeMeasure="42">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="- balance) >= 0) {&#xA;&#x9;&#x9;&#x9;&#x9;this.creditLine = creditLine;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;Feil kreditt.&quot;);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;this.creditLine = creditLine;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public void internalWithdraw(double amount) {&#xA;&#x9;&#x9;if ((Math.abs((balance -= amount))) &lt;= getCreditLine()) {&#xA;&#x9;&#x9;&#x9;balance -= amount;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {" edit="/1/@proposals.0/@proposals.3/@attempts.8/@edit" start="447" end="-15"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490707889938" sizeMeasure="42">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.3/@attempts.9/@edit" start="713" end="-82"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490708107470" sizeMeasure="50">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;CreditAccount ca = new CreditAccount(100);&#xA;&#x9;&#x9;System.out.println(ca.getCreditLine());&#xA;&#x9;&#x9;ca.setCreditLine(200);&#xA;&#x9;&#x9;System.out.println(ca.getCreditLine());" edit="/1/@proposals.0/@proposals.3/@attempts.10/@edit" start="791" end="-11"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490708145284" sizeMeasure="51">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="ca.internalWithdraw(300" edit="/1/@proposals.0/@proposals.3/@attempts.11/@edit" start="991" end="-13"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490708179895" sizeMeasure="51">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="0 - " edit="/1/@proposals.0/@proposals.3/@attempts.12/@edit" start="694" end="-333"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490708280363" sizeMeasure="52">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="ca.getBalance(" edit="/1/@proposals.0/@proposals.3/@attempts.13/@edit" start="1023" end="-13"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490708294505" sizeMeasure="52">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(ca.getBalance()" edit="/1/@proposals.0/@proposals.3/@attempts.14/@edit" start="1023" end="-13"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490708317649" sizeMeasure="52">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="4" edit="/1/@proposals.0/@proposals.3/@attempts.15/@edit" start="1015" end="-54"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490708353798" sizeMeasure="53">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;throw new IllegalArgumentException(&quot;for stort beløp.&quot;);" edit="/1/@proposals.0/@proposals.3/@attempts.16/@edit" start="787" end="-286"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490708382331" sizeMeasure="53">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=">" edit="/1/@proposals.0/@proposals.3/@attempts.17/@edit" start="728" end="-400"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490708402030" sizeMeasure="51">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="}" edit="/1/@proposals.0/@proposals.3/@attempts.18/@edit" start="787" end="-279"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490708728122" sizeMeasure="51">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="+" edit="/1/@proposals.0/@proposals.3/@attempts.19/@edit" start="447" end="-619"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490708932154" sizeMeasure="49">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;if (Math.abs(balance-amount) > creditLine) {&#xA;&#x9;&#x9;&#x9;&#x9;balance -= amount;&#xA;&#x9;" edit="/1/@proposals.0/@proposals.3/@attempts.20/@edit" start="689" end="-282"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490708967720" sizeMeasure="49">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&lt;" edit="/1/@proposals.0/@proposals.3/@attempts.21/@edit" start="719" end="-321"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490708986419" sizeMeasure="49">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="1" edit="/1/@proposals.0/@proposals.3/@attempts.22/@edit" start="986" end="-54"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490709125857" sizeMeasure="49">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="getBalance()" edit="/1/@proposals.0/@proposals.3/@attempts.23/@edit" start="703" end="-331"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490709207495" sizeMeasure="56">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if ((getBalance()-amount) &lt; 0) {&#xA;&#x9;&#x9;&#x9;if (Math.abs(getBalance()-amount) &lt; creditLine) {&#xA;&#x9;&#x9;&#x9;&#x9;balance -= amount;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;if ((getBalance()-amount) > creditLine) {&#xA;&#x9;&#x9;&#x9;&#x9;balance -= amount;&#xA;&#x9;&#x9;&#x9;}&#xA;" edit="/1/@proposals.0/@proposals.3/@attempts.24/@edit" start="689" end="-282"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490709256867" sizeMeasure="62">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;else {&#xA;&#x9;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;For stort bebløp.&quot;);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;if ((getBalance()-amount) > creditLine) {&#xA;&#x9;&#x9;&#x9;&#x9;balance -= amount;&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;&#x9;throw new IllegalStateException(&quot;For stort bebløp.&quot;)" edit="/1/@proposals.0/@proposals.3/@attempts.25/@edit" start="805" end="-289"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.4/@q" answer="/0/@parts.0/@tasks.4/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1490708107327" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1490708145132" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1490708280222" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1490708299810" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1490708317513" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1490708357737" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1490708382189" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1490708485050" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1490708945468" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1490708967578" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1490708986283" mode="run"/>
      </proposals>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.5/@q" answer="/0/@parts.0/@tasks.5/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490707176045" sizeMeasure="5">
          <edit xsi:type="exercise:StringEdit" storedString="package inheritance;&#xA;&#xA;public class SavingsAccount2 {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490707479729" sizeMeasure="31">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="extends AbstractAccount{&#xA;&#x9;&#xA;&#x9;private int withdrawals;&#xA;&#x9;private double fee;&#xA;&#x9;&#xA;&#x9;public SavingsAccount2(int withdrawals, double fee){&#xA;&#x9;&#x9;this.withdrawals = withdrawals;&#xA;&#x9;&#x9;this.fee = fee;&#xA;&#x9;}&#xA;&#xA;&#x9;@Override&#xA;&#x9;public void internalWithdraw(double amount) {&#xA;&#x9;&#x9;if ((balance - amount) &lt; 0 || (balance - (amount+fee)) &lt; 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Kan ikke ta ut så stort beløp.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else if (withdrawals == 0) {&#xA;&#x9;&#x9;&#x9;balance -= fee;&#xA;&#x9;&#x9;&#x9;balance -= amount;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;balance -= amount;&#xA;&#x9;&#x9;&#x9;withdrawals -= 1;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;" edit="/1/@proposals.0/@proposals.5/@attempts.0/@edit" start="51" end="-5"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490707649073" sizeMeasure="31">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="State" edit="/1/@proposals.0/@proposals.5/@attempts.1/@edit" start="379" end="-195"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.6/@q" answer="/0/@parts.0/@tasks.6/@a"/>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.7/@q" answer="/0/@parts.0/@tasks.7/@a" completion="1.0">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490705882680" completion="1.0" successCount="2"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490705915179" completion="1.0" successCount="2"/>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.8/@q" answer="/0/@parts.0/@tasks.8/@a" completion="1.0">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490706543643" completion="0.3333333333333333" successCount="1" failureCount="1" errorCount="1"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490706600781" completion="0.3333333333333333" successCount="1" failureCount="1" errorCount="1"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490706639340" completion="0.3333333333333333" successCount="1" failureCount="1" errorCount="1"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490706850122" completion="0.3333333333333333" successCount="1" failureCount="1" errorCount="1"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490706959579" completion="0.3333333333333333" successCount="1" failureCount="1" errorCount="1"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490707115967" completion="0.3333333333333333" successCount="1" failureCount="2"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490707664898" completion="0.3333333333333333" successCount="1" failureCount="2"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490707860783" completion="0.3333333333333333" successCount="1" failureCount="2"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490707893655" completion="0.3333333333333333" successCount="1" failureCount="2"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490708185180" completion="0.3333333333333333" successCount="1" failureCount="2"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490708386316" completion="0.3333333333333333" successCount="1" failureCount="1" errorCount="1"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490708402824" completion="0.3333333333333333" successCount="1" failureCount="2"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490708731469" completion="0.3333333333333333" successCount="1" failureCount="2"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490708935644" completion="0.3333333333333333" successCount="1" failureCount="2"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490708994642" completion="0.6666666666666666" successCount="2" failureCount="1"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490709211331" completion="0.6666666666666666" successCount="2" failureCount="1"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490709260486" completion="1.0" successCount="3"/>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.9/@q" answer="/0/@parts.0/@tasks.9/@a" completion="1.0">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490707511665" completion="0.5" successCount="1" failureCount="1"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490707652434" completion="1.0" successCount="2"/>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a"/>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.1/@tasks.3/@q" answer="/0/@parts.1/@tasks.3/@a"/>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>
