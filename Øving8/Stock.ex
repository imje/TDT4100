<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="Stock class and StockListener interface">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the StockListener interface."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="patterns.observable.StockListener"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the Stock class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="patterns.observable.Stock"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the Stock class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="patterns.observable.Stock"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the Stock JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="patterns.observable.StockTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="StockIndex implements StockListener">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the StockIndex class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="patterns.observable.StockIndex"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the StockIndex class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="patterns.observable.StockIndex"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the StockIndex JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="patterns.observable.StockIndexTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Extra assignments">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Write source code for the SmartStock class."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" className="patterns.observable.SmartStock"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Test the SmartStock class, by running its main method."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="patterns.observable.SmartStock"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run the SmartStock JUnit test."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="patterns.observable.SmartStockTest"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use breakpoints to debug code."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="patterns.observable.*Stock*" action="suspend.breakpoint"/>
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
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490639382953" sizeMeasure="5">
          <edit xsi:type="exercise:StringEdit" storedString="package patterns.observable;&#xA;&#xA;public interface StockListener {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490639437710" sizeMeasure="6">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;void stockPriceChanged(Stock stock, double oldPrice, double newPrice);  //lyttermetode for å holde lytteren oppdatert på aksjeprisen. Metoden skal ta inn et Stock-objekt, samt gammel og ny pris. Alle lyttere må implementere denne metoden." edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="64" end="-4"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490639047551" sizeMeasure="5">
          <edit xsi:type="exercise:StringEdit" storedString="package patterns.observable;&#xA;&#xA;public class Stock {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490639320249" sizeMeasure="29">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;private String ticker;&#xA;&#x9;private double price;&#xA;&#x9;&#xA;&#x9;public Stock(String ticker, double price){ //en konstruktør som tar inn en aksjekode (ticker) og en aksjepris.&#xA;&#x9;&#x9;this.ticker = ticker;&#xA;&#x9;&#x9;this.price = price;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setPrice(double price){ //endringsmetode for aksjeprisen. Dersom aksjepris er negativ eller lik null, skal metoden utløse en IllegalArgumentException.&#xA;&#x9;&#x9;if (price &lt;= 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Price can not be zero or negative.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;this.price = price;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String getTicker(){ //metode for å hente aksjekoden.&#xA;&#x9;&#x9;return ticker;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public double getPrice() {//metode for å hente aksjeprisen.&#xA;&#x9;&#x9;return price;&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.1/@attempts.0/@edit" start="51" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490639866341" sizeMeasure="42">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.ArrayList;&#xA;import java.util.List;&#xA;&#xA;&#xA;public class Stock{&#xA;&#x9;&#xA;&#x9;private String ticker;&#xA;&#x9;private double price;&#xA;&#x9;private List&lt;StockListener> stockListeners = new ArrayList&lt;>();&#xA;&#x9;&#xA;&#x9;public Stock(String ticker, double price){ //en konstruktør som tar inn en aksjekode (ticker) og en aksjepris.&#xA;&#x9;&#x9;this.ticker = ticker;&#xA;&#x9;&#x9;this.price = price;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setPrice(double price){ //endringsmetode for aksjeprisen. Dersom aksjepris er negativ eller lik null, skal metoden utløse en IllegalArgumentException.&#xA;&#x9;&#x9;if (price &lt;= 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Price can not be zero or negative.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;this.price = price;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String getTicker(){ //metode for å hente aksjekoden.&#xA;&#x9;&#x9;return ticker;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public double getPrice() {//metode for å hente aksjeprisen.&#xA;&#x9;&#x9;return price;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;void addStockListener(StockListener s){ //metode for å legge til nye observatører.&#xA;&#x9;&#x9;stockListeners.add(s);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;void removeStockListener(StockListener s){ //metode for å fjerne observatører.&#xA;&#x9;&#x9;stockListeners.remove(s)" edit="/1/@proposals.0/@proposals.1/@attempts.1/@edit" start="30" end="-8"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490640865747" sizeMeasure="48" errorCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Stock s = new Stock(getTicker(),getPrice());&#xA;&#x9;&#x9;&#x9;for (StockListener listener: stockListeners) {&#xA;&#x9;&#x9;&#x9;&#x9;listener.stockPriceChanged(s, getPrice(), price);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;this.price = price;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String getTicker(){ //metode for å hente aksjekoden.&#xA;&#x9;&#x9;return ticker;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public double getPrice() {//metode for å hente aksjeprisen.&#xA;&#x9;&#x9;return price;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;void addStockListener(StockListener s){ //metode for å legge til nye observatører.&#xA;&#x9;&#x9;stockListeners.add(s);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;void removeStockListener(StockListener s){ //metode for å fjerne observatører.&#xA;&#x9;&#x9;stockListeners.remove(s);&#xA;&#x9;}&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.1/@attempts.2/@edit" start="659" end="-7"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490640896052" sizeMeasure="47">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.1/@attempts.3/@edit" start="1238" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490645281648" sizeMeasure="48">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="double oldPrice = this.price;&#xA;&#x9;&#x9;&#x9;double newPrice = price;&#xA;&#x9;&#x9;&#x9;this.price = newPrice;&#xA;&#x9;&#x9;&#x9;for (StockListener s : stockListeners) {&#xA;&#x9;&#x9;&#x9;&#x9;s.stockPriceChanged(this, oldPrice, newPrice);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String getTicker(){ //metode for å hente aksjekoden.&#xA;&#x9;&#x9;return ticker;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public double getPrice() {//metode for å hente aksjeprisen.&#xA;&#x9;&#x9;return price;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;void addStockListener(StockListener s){ //metode for å legge til nye observatører.&#xA;&#x9;&#x9;stockListeners.add(s);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;void removeStockListener(StockListener s){ //metode for å fjerne observatører.&#xA;&#x9;&#x9;stockListeners.remove(s);&#xA;&#x9;}&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.1/@attempts.4/@edit" start="659" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490645297471" sizeMeasure="47">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Stock s = new Stock(getTicker(),getPrice());&#xA;&#x9;&#x9;&#x9;for (StockListener listener: stockListeners) {&#xA;&#x9;&#x9;&#x9;&#x9;listener.stockPriceChanged(s, getPrice(), price);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;&#x9;this.price = price;" edit="/1/@proposals.0/@proposals.1/@attempts.5/@edit" start="659" end="-406"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490645753519" sizeMeasure="47">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.1/@attempts.6/@edit" start="153" end="-1080"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490646006223" sizeMeasure="46">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="private List&lt;StockListener> stockListeners = new ArrayList&lt;>();&#xA;&#x9;&#xA;&#x9;public Stock(String ticker, double price){ //en konstruktør som tar inn en aksjekode (ticker) og en aksjepris.&#xA;&#x9;&#x9;this.ticker = ticker;&#xA;&#x9;&#x9;this.price = price;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void setPrice(double price){ //endringsmetode for aksjeprisen. Dersom aksjepris er negativ eller lik null, skal metoden utløse en IllegalArgumentException.&#xA;&#x9;&#x9;if (price &lt;= 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException(&quot;Price can not be zero or negative.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;for (StockListener listener: stockListeners) {&#xA;&#x9;&#x9;&#x9;&#x9;listener.stockPriceChanged(thi" edit="/1/@proposals.0/@proposals.1/@attempts.7/@edit" start="153" end="-456"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a"/>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.3/@q" answer="/0/@parts.0/@tasks.3/@a" completion="1.0">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490639334648" completion="0.5" successCount="1" errorCount="1"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490639867662" completion="0.5" successCount="1" failureCount="1"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490640874885" completion="0.0" errorCount="2"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490640900688" completion="1.0" successCount="2"/>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490641072461" sizeMeasure="5">
          <edit xsi:type="exercise:StringEdit" storedString="package patterns.observable;&#xA;&#xA;public class StockIndex {&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490641171180" sizeMeasure="9">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;public StockIndex(String name, Stock stocks) {&#xA;&#x9;&#x9;&#xA;&#x9;}" edit="/1/@proposals.1/@proposals.0/@attempts.0/@edit" start="56" end="-5"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490641240440" sizeMeasure="16" warningCount="3">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="import java.util.ArrayList;&#xA;import java.util.List;&#xA;&#xA;public class StockIndex {&#xA;&#x9;&#xA;&#x9;private String name;&#xA;&#x9;private double index;&#xA;&#x9;private List&lt;Stock> stocks = new ArrayList&lt;>();" edit="/1/@proposals.1/@proposals.0/@attempts.1/@edit" start="30" end="-61"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490641529959" sizeMeasure="27" warningCount="2">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="...stocks) {&#xA;&#x9;&#x9;if (stocks == null) {&#xA;&#x9;&#x9;&#x9;this.index = 0;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;public void addStock(Stock stock){ //metode for å legge til en aksjepris i indeksen.&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void removeStock(Stock stock){ //metode for å fjerne en aksjepris fra indeksen.&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public double getIndex(){ //hentemetode for indeksen.&#xA;&#x9;&#x9;return index;&#xA;&#x9;}&#xA;&#x9;" edit="/1/@proposals.1/@proposals.0/@attempts.2/@edit" start="243" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490641821195" sizeMeasure="42" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="implements StockListener{&#xA;&#x9;&#xA;&#x9;private String name;&#xA;&#x9;private double index;&#xA;&#x9;private List&lt;Stock> stocks = new ArrayList&lt;>();&#xA;&#x9;&#xA;&#x9;public StockIndex(String name, Stock...stocks) {&#xA;&#x9;&#x9;this.name = name;&#xA;&#x9;&#x9;if (stocks == null) {&#xA;&#x9;&#x9;&#x9;this.index = 0;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;public void addStock(Stock stock){ //metode for å legge til en aksjepris i indeksen.&#xA;&#x9;&#x9;index += stock.getPrice();&#xA;&#x9;&#x9;stocks.add(stock);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void removeStock(Stock stock){ //metode for å fjerne en aksjepris fra indeksen.&#xA;&#x9;&#x9;index -= stock.getPrice();&#xA;&#x9;&#x9;stocks.remove(stock);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public double getIndex(){ //hentemetode for indeksen.&#xA;&#x9;&#x9;return index;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public void stockPriceChanged(Stock stock, double oldPrice, double newPrice) {&#xA;&#x9;&#x9;// TODO Auto-generated method stub&#xA;&#x9;&#x9;" edit="/1/@proposals.1/@proposals.0/@attempts.3/@edit" start="106" end="-9"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490641978434" sizeMeasure="45" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=" for (int i = 0; i &lt; stocks.length; i++) {&#xA;&#x9;&#x9;&#x9;        this.addStock(stocks[i]);&#xA;&#x9;&#x9;&#x9;}" edit="/1/@proposals.1/@proposals.0/@attempts.4/@edit" start="359" end="-518"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490642038530" sizeMeasure="46" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="        index += stocks[i].getPrice(" edit="/1/@proposals.1/@proposals.0/@attempts.5/@edit" start="442" end="-525"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490642221498" sizeMeasure="48" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (stock.getPrice()==oldPrice &amp;&amp; stock.getPrice()==newPrice) {&#xA;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;}" edit="/1/@proposals.1/@proposals.0/@attempts.6/@edit" start="957" end="-12"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490642528227" sizeMeasure="49" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;removeStock(stock);&#xA;&#x9;&#x9;&#x9;stock.setPrice(newPrice);&#xA;&#x9;&#x9;&#x9;addStock(stock);&#xA;&#x9;&#x9;&#x9;&#xA;&#x9;}&#xA;&#x9;&#x9;&#xA;}&#xA;&#x9;" edit="/1/@proposals.1/@proposals.0/@attempts.7/@edit" start="957" end="-2"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490642626165" sizeMeasure="48" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="addStock(stocks[i]" edit="/1/@proposals.1/@proposals.0/@attempts.8/@edit" start="413" end="-564"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490642666945" sizeMeasure="52" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (oldPrice != newPrice) {&#xA;&#x9;&#x9;&#x9;removeStock(stock);&#xA;&#x9;&#x9;&#x9;stock.setPrice(newPrice);&#xA;&#x9;&#x9;&#x9;addStock(stock);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#x9;&#x9;&#xA;}&#xA;&#x9;&#x9;" edit="/1/@proposals.1/@proposals.0/@attempts.9/@edit" start="910" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490642768421" sizeMeasure="53" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="stock.setPrice(oldPrice);" edit="/1/@proposals.1/@proposals.0/@attempts.10/@edit" start="941" end="-105"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490643041012" sizeMeasure="53" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.1/@proposals.0/@attempts.11/@edit" start="1070" end="-1071"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490643304972" sizeMeasure="49" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;stock.setPrice(oldPrice);&#xA;&#x9;&#x9;&#x9;removeStock(stock);&#xA;&#x9;&#x9;&#x9;stock.setPrice(newPrice);&#xA;&#x9;&#x9;&#x9;addStock(stock);" edit="/1/@proposals.1/@proposals.0/@attempts.12/@edit" start="910" end="-16"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490643468474" sizeMeasure="54" errorCount="2" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="f (index -= stock.getPrice() &lt; 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumetnException(&quot;index kan ikke være negativ.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;index -= stock.getPrice();&#xA;&#x9;&#x9;stocks.remove(stock);&#xA;&#x9;&#x9;}" edit="/1/@proposals.1/@proposals.0/@attempts.13/@edit" start="686" end="-289"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490643504613" sizeMeasure="54" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="(index -= stock.getPrice()) &lt; 0) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgument" edit="/1/@proposals.1/@proposals.0/@attempts.14/@edit" start="689" end="-401"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490644074010" sizeMeasure="58" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void addStock(Stock stock){ //metode for å legge til en aksjepris i indeksen.&#xA;&#x9;&#x9;index += stock.getPrice();&#xA;&#x9;&#x9;stocks.add(stock);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void removeStock(Stock stock){ //metode for å fjerne en aksjepris fra indeksen.&#xA;&#x9;&#x9;index -= stock.getPrice();&#xA;&#x9;&#x9;stocks.remove(stock);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public double getIndex(){ //hentemetode for indeksen.&#xA;&#x9;&#x9;return index;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public void stockPriceChanged(Stock stock, double oldPrice, double newPrice) {&#xA;&#x9;&#x9;&#x9;stock.setPrice(oldPrice);&#xA;&#x9;&#x9;&#x9;removeStock(stock);&#xA;&#x9;&#x9;&#x9;stock.setPrice(newPrice);&#xA;&#x9;&#x9;&#x9;addStock(stock);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;Stock s1 = new Stock(&quot;A&quot;, 23);&#xA;&#x9;&#x9;Stock s2 = new Stock(&quot;B&quot;, 123);&#xA;&#x9;&#x9;Stock s3 = new Stock(&quot;C&quot;, 342);&#xA;&#x9;&#x9;Stock s4 = new Stock(&quot;D&quot;, 439);&#xA;&#x9;&#x9;Stock s5 = new Stock(&quot;E&quot;, 2343);&#xA;&#x9;&#x9;StockIndex si1 = new StockIndex(&quot;FintNavn&quot;,s1,s2,s3,s4,s5);&#xA;&#x9;&#x9;si1.getIndex(" edit="/1/@proposals.1/@proposals.0/@attempts.15/@edit" start="438" end="-18"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490644087114" sizeMeasure="58" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(si1.getIndex()" edit="/1/@proposals.1/@proposals.0/@attempts.16/@edit" start="1285" end="-18"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490644167848" sizeMeasure="60" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=");&#xA;&#x9;&#x9;System.out.println(si1.getIndex());&#xA;&#x9;&#x9;si1.addStock(" edit="/1/@proposals.1/@proposals.0/@attempts.17/@edit" start="1277" end="-58"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490644286771" sizeMeasure="65" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;si1.removeStock(s1);&#xA;&#x9;&#x9;System.out.println(si1.getIndex());&#xA;&#x9;&#x9;si1.stockPriceChanged(s5, 2343, 1);&#xA;&#x9;&#x9;System.out.println(si1.getIndex());&#xA;&#x9;&#x9;" edit="/1/@proposals.1/@proposals.0/@attempts.18/@edit" start="1377" end="-16"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490644428475" sizeMeasure="66" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (oldPrice == stock.getPrice()) {&#xA;&#x9;&#x9;&#x9;removeStock(stock);&#xA;&#x9;&#x9;&#x9;stock.setPrice(newPrice);&#xA;&#x9;&#x9;&#x9;addStock(stock);&#xA;&#x9;&#x9;}" edit="/1/@proposals.1/@proposals.0/@attempts.19/@edit" start="905" end="-528"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490644486241" sizeMeasure="67" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="static List&lt;Stock> stocks = new ArrayList&lt;>();&#xA;&#x9;&#xA;&#x9;public StockIndex(String name, Stock...stocks) {&#xA;&#x9;&#x9;this.name = name;&#xA;&#x9;&#x9;if (stocks == null) {&#xA;&#x9;&#x9;&#x9;this.index = 0;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9; for (int i = 0; i &lt; stocks.length; i++) {&#xA;&#x9;&#x9;&#x9;        addStock(stocks[i]);&#xA;&#x9;&#x9;&#x9;}&#x9;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void addStock(Stock stock){ //metode for å legge til en aksjepris i indeksen.&#xA;&#x9;&#x9;index += stock.getPrice();&#xA;&#x9;&#x9;stocks.add(stock);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void removeStock(Stock stock){ //metode for å fjerne en aksjepris fra indeksen.&#xA;&#x9;&#x9;index -= stock.getPrice();&#xA;&#x9;&#x9;stocks.remove(stock);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public double getIndex(){ //hentemetode for indeksen.&#xA;&#x9;&#x9;return index;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public void stockPriceChanged(Stock stock, double oldPrice, double newPrice) {&#xA;&#x9;&#x9;if (oldPrice == stock.getPrice()) {&#xA;&#x9;&#x9;&#x9;removeStock(stock);&#xA;&#x9;&#x9;&#x9;stock.setPrice(newPrice);&#xA;&#x9;&#x9;&#x9;addStock(stock);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;Stock s1 = new Stock(&quot;A&quot;, 23);&#xA;&#x9;&#x9;Stock s2 = new Stock(&quot;B&quot;, 123);&#xA;&#x9;&#x9;Stock s3 = new Stock(&quot;C&quot;, 342);&#xA;&#x9;&#x9;Stock s4 = new Stock(&quot;D&quot;, 439);&#xA;&#x9;&#x9;Stock s5 = new Stock(&quot;E&quot;, 2343);&#xA;&#x9;&#x9;StockIndex si1 = new StockIndex(&quot;FintNavn&quot;,s1,s2,s3,s4);&#xA;&#x9;&#x9;System.out.println(si1.getIndex());&#xA;&#x9;&#x9;si1.addStock(s5);&#xA;&#x9;&#x9;System.out.println(si1.getIndex());&#xA;&#x9;&#x9;si1.removeStock(s1);&#xA;&#x9;&#x9;System.out.println(si1.getIndex());&#xA;&#x9;&#x9;si1.stockPriceChanged(s5, 2343, 1);&#xA;&#x9;&#x9;System.out.println(si1.getIndex());&#xA;&#x9;&#x9;System.out.println(stocks" edit="/1/@proposals.1/@proposals.0/@attempts.20/@edit" start="188" end="-21"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490644668724" sizeMeasure="77" errorCount="1" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="List&lt;Stock> stocks = new ArrayList&lt;>();&#xA;&#x9;&#xA;&#x9;public StockIndex(String name, Stock...stocks) {&#xA;&#x9;&#x9;this.name = name;&#xA;&#x9;&#x9;if (stocks == null) {&#xA;&#x9;&#x9;&#x9;this.index = 0;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9; for (int i = 0; i &lt; stocks.length; i++) {&#xA;&#x9;&#x9;&#x9;        addStock(stocks[i]);&#xA;&#x9;&#x9;&#x9;}&#x9;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void addStock(Stock stock){ //metode for å legge til en aksjepris i indeksen.&#xA;&#x9;&#x9;if (!stocks.contains(stock)) {&#xA;&#x9;&#x9;&#x9;index += stock.getPrice();&#xA;&#x9;&#x9;&#x9;stocks.add(stock);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void removeStock(Stock stock){ //metode for å fjerne en aksjepris fra indeksen.&#xA;&#x9;&#x9;if (stocks.contains(stock)) {&#xA;&#x9;&#x9;&#x9;index -= stock.getPrice();&#xA;&#x9;&#x9;&#x9;stocks.remove(stock);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;}" edit="/1/@proposals.1/@proposals.0/@attempts.21/@edit" start="188" end="-844"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490644684033" sizeMeasure="76" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.1/@proposals.0/@attempts.22/@edit" start="1639" end="-21"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490644747873" sizeMeasure="72" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="ndex = index - oldPrice + newPrice;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;Stock s1 = new Stock(&quot;A&quot;, 23);&#xA;&#x9;&#x9;Stock s2 = new Stock(&quot;B&quot;, 123);&#xA;&#x9;&#x9;Stock s3 = new Stock(&quot;C&quot;, 342);&#xA;&#x9;&#x9;Stock s4 = new Stock(&quot;D&quot;, 439);&#xA;&#x9;&#x9;Stock s5 = new Stock(&quot;E&quot;, 2343);&#xA;&#x9;&#x9;StockIndex si1 = new StockIndex(&quot;FintNavn&quot;,s1,s2,s3,s4);&#xA;&#x9;&#x9;System.out.println(si1.getIndex());&#xA;&#x9;&#x9;si1.addStock(s5);&#xA;&#x9;&#x9;System.out.println(si1.getIndex());&#xA;&#x9;&#x9;si1.removeStock(s1);&#xA;&#x9;&#x9;System.out.println(si1.getIndex());&#xA;&#x9;&#x9;si1.stockPriceChanged(s5, 2343, 1);&#xA;&#x9;&#x9;System.out.println(si1.getIndex()" edit="/1/@proposals.1/@proposals.0/@attempts.23/@edit" start="1017" end="-21"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490644836408" sizeMeasure="78" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;stock.addStockListener(this);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void removeStock(Stock stock){ //metode for å fjerne en aksjepris fra indeksen.&#xA;&#x9;&#x9;if (stocks.contains(stock)) {&#xA;&#x9;&#x9;&#x9;index -= stock.getPrice();&#xA;&#x9;&#x9;&#x9;stocks.remove(stock);&#xA;&#x9;&#x9;&#x9;stock.removeStockListener(this);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public double getIndex(){ //hentemetode for indeksen.&#xA;&#x9;&#x9;return index;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public void stockPriceChanged(Stock stock, double oldPrice, double newPrice) {&#xA;&#x9;&#x9;if (oldPrice == stock.getPrice()) {&#xA;&#x9;&#x9;&#x9;removeStock(stock);&#xA;&#x9;&#x9;&#x9;stock.setPrice(newPrice);&#xA;&#x9;&#x9;&#x9;addStock(stock);&#xA;&#x9;&#x9;}" edit="/1/@proposals.1/@proposals.0/@attempts.24/@edit" start="622" end="-528"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490644926315" sizeMeasure="75" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="this.index = 0;&#xA;&#x9;&#x9;&#x9; for (int i = 0; i &lt; stocks.length; i++) {&#xA;&#x9;&#x9;&#x9;        addStock(stocks[i]);&#xA;&#x9;&#x9;&#x9;}&#x9;&#xA;&#x9;&#x9;}&#xA;" edit="/1/@proposals.1/@proposals.0/@attempts.25/@edit" start="302" end="-1278"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490645062150" sizeMeasure="79">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="@SuppressWarnings(&quot;unused&quot;)&#xA;&#x9;private String name;&#xA;&#x9;private double index;&#xA;&#x9;private List&lt;Stock> stocks = new ArrayList&lt;>();&#xA;&#x9;&#xA;&#x9;public StockIndex(String name, Stock...stocks) {&#xA;&#x9;&#x9;this.name = name;&#xA;&#x9;&#x9;if (stocks == null) {&#xA;&#x9;&#x9;&#x9;this.index = 0;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9; for (int i = 0; i &lt; stocks.length; i++) {&#xA;&#x9;&#x9;&#x9;        addStock(stocks[i]);&#xA;&#x9;&#x9;&#x9;}&#x9;&#xA;&#x9;&#x9;}&#xA;&#x9;}" edit="/1/@proposals.1/@proposals.0/@attempts.26/@edit" start="135" end="-1278"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490645155362" sizeMeasure="78" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="private String name;&#xA;&#x9;private double index;&#xA;&#x9;private List&lt;Stock> stocks = new ArrayList&lt;>();&#xA;&#x9;&#xA;&#x9;public StockIndex(String name, Stock...stocks) {&#xA;&#x9;&#x9;this.name = name;&#xA;&#x9;&#x9;if (stocks == null) {&#xA;&#x9;&#x9;&#x9;" edit="/1/@proposals.1/@proposals.0/@attempts.27/@edit" start="135" end="-1392"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490645383208" sizeMeasure="76" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="!= newPrice &amp;&amp; stocks.contains(stock)) {&#xA;&#x9;&#x9;&#x9;index += newPrice-oldPrice" edit="/1/@proposals.1/@proposals.0/@attempts.28/@edit" start="1093" end="-533"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490645456429" sizeMeasure="76" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.1/@proposals.0/@attempts.29/@edit" start="1084" end="-588"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490645508035" sizeMeasure="76" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.1/@proposals.0/@attempts.30/@edit" start="180" end="-1484"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490645757363" sizeMeasure="70" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="}&#xA;&#x9;&#xA;&#x9;public void removeStock(Stock stock){ //metode for å fjerne en aksjepris fra indeksen.&#xA;&#x9;&#x9;if (stocks.contains(stock)) {&#xA;&#x9;&#x9;&#x9;index -= stock.getPrice();&#xA;&#x9;&#x9;&#x9;stocks.remove(stock);&#xA;&#x9;&#x9;&#x9;stock.removeStockListener(this);" edit="/1/@proposals.1/@proposals.0/@attempts.31/@edit" start="645" end="-771"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490646008563" sizeMeasure="70" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="private " edit="/1/@proposals.1/@proposals.0/@attempts.32/@edit" start="180" end="-1450"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1490646071498" sizeMeasure="70" warningCount="1">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="Index = new ArrayList&lt;>();&#xA;&#x9;&#xA;&#x9;public StockIndex(String name, Stock...stocks) {&#xA;&#x9;&#x9;this.name = name;&#xA;&#x9;&#x9;if (stocks == null) {&#xA;&#x9;&#x9;&#x9;index = 0;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;else {&#xA;&#x9;&#x9;&#x9; for (int i = 0; i &lt; stocks.length; i++) {&#xA;&#x9;&#x9;&#x9;        addStock(stocks[i]);&#xA;&#x9;&#x9;&#x9;}&#x9;&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void addStock(Stock stock){ //metode for å legge til en aksjepris i indeksen.&#xA;&#x9;&#x9;if (!stocksIndex.contains(stock)) {&#xA;&#x9;&#x9;&#x9;index += stock.getPrice();&#xA;&#x9;&#x9;&#x9;stocksIndex.add(stock);&#xA;&#x9;&#x9;&#x9;stock.addStockListener(this);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void removeStock(Stock stock){ //metode for å fjerne en aksjepris fra indeksen.&#xA;&#x9;&#x9;if (stocksIndex.contains(stock)) {&#xA;&#x9;&#x9;&#x9;index -= stock.getPrice();&#xA;&#x9;&#x9;&#x9;stocksIndex.remove(stock);&#xA;&#x9;&#x9;&#x9;stock.removeStockListener(this);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public double getIndex(){ //hentemetode for indeksen.&#xA;&#x9;&#x9;return index;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;@Override&#xA;&#x9;public void stockPriceChanged(Stock stock, double oldPrice, double newPrice) {&#xA;&#x9;&#x9;if (stocksIndex" edit="/1/@proposals.1/@proposals.0/@attempts.33/@edit" start="206" end="-582"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1490644073863" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1490644092428" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1490644167746" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1490644291531" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1490644492323" mode="run"/>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1490645484382" mode="run"/>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a" completion="0.75">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490642222961" completion="0.0" failureCount="4"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490642535223" completion="0.0" failureCount="4"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490642674164" completion="0.25" successCount="1" failureCount="3"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490642773999" completion="0.25" successCount="1" failureCount="3"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490642834756" completion="0.25" successCount="1" failureCount="3"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490643076420" completion="0.25" successCount="1" failureCount="3"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490643318024" completion="0.25" successCount="1" failureCount="3"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490643510939" completion="0.25" successCount="1" failureCount="3"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490644436698" completion="0.25" successCount="1" failureCount="3"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490644517301" completion="0.25" successCount="1" failureCount="3"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490644685372" completion="0.75" successCount="3" failureCount="1"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490644752799" completion="0.75" successCount="3" failureCount="1"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490644843720" completion="0.75" successCount="3" failureCount="1"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490644931978" completion="0.75" successCount="3" failureCount="1"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490645072452" completion="0.75" successCount="3" failureCount="1"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490645288563" completion="0.75" successCount="3" failureCount="1"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490645389963" completion="0.75" successCount="3" failureCount="1"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490645514106" completion="0.75" successCount="3" failureCount="1"/>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1490645764969" completion="0.75" successCount="3" failureCount="1"/>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.2">
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.2/@tasks.0/@q" answer="/0/@parts.2/@tasks.0/@a"/>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.2/@tasks.1/@q" answer="/0/@parts.2/@tasks.1/@a"/>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.2/@tasks.2/@q" answer="/0/@parts.2/@tasks.2/@a"/>
    </proposals>
    <proposals exercisePart="/0/@parts.3">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.3/@tasks.0/@q" answer="/0/@parts.3/@tasks.0/@a"/>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.3/@tasks.1/@q" answer="/0/@parts.3/@tasks.1/@a" performedCount="15">
        <attempts timestamp="1490642896021"/>
        <attempts timestamp="1490642917448"/>
        <attempts timestamp="1490642919717"/>
        <attempts timestamp="1490642921296"/>
        <attempts timestamp="1490642922394"/>
        <attempts timestamp="1490642923300"/>
        <attempts timestamp="1490642923905"/>
        <attempts timestamp="1490642924823"/>
        <attempts timestamp="1490642925721"/>
        <attempts timestamp="1490642928190"/>
        <attempts timestamp="1490642928946"/>
        <attempts timestamp="1490642929632"/>
        <attempts timestamp="1490642930355"/>
        <attempts timestamp="1490642930881"/>
        <attempts timestamp="1490642932138"/>
      </proposals>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.3/@tasks.2/@q" answer="/0/@parts.3/@tasks.2/@a" performedCount="11">
        <attempts timestamp="1490642871481"/>
        <attempts timestamp="1490642875280"/>
        <attempts timestamp="1490642880347"/>
        <attempts timestamp="1490642881687"/>
        <attempts timestamp="1490642883662"/>
        <attempts timestamp="1490642884992"/>
        <attempts timestamp="1490642886849"/>
        <attempts timestamp="1490642900483"/>
        <attempts timestamp="1490642901917"/>
        <attempts timestamp="1490642905692"/>
        <attempts timestamp="1490642906944"/>
      </proposals>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.3/@tasks.3/@q" answer="/0/@parts.3/@tasks.3/@a" performedCount="1">
        <attempts timestamp="1490642861718"/>
      </proposals>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>
