package patterns.observable;

import java.util.ArrayList;
import java.util.List;

public class StockIndex implements StockListener{
	
	private String name;
	private double index;
	private List<Stock> stocksIndex = new ArrayList<>();
	
	public StockIndex(String name, Stock...stocks) {
		this.name = name;
		if (stocks == null) {
			index = 0;
		}
		else {
			 for (int i = 0; i < stocks.length; i++) {
			        addStock(stocks[i]);
			}	
		}
	}
	
	public void addStock(Stock stock){ //metode for å legge til en aksjepris i indeksen.
		if (!stocksIndex.contains(stock)) {
			index += stock.getPrice();
			stocksIndex.add(stock);
			stock.addStockListener(this);
		}
	}
	
	public void removeStock(Stock stock){ //metode for å fjerne en aksjepris fra indeksen.
		if (stocksIndex.contains(stock)) {
			index -= stock.getPrice();
			stocksIndex.remove(stock);
			stock.removeStockListener(this);
		}
	}
	
	public double getIndex(){ //hentemetode for indeksen.
		return index;
	}
	
	@Override
	public void stockPriceChanged(Stock stock, double oldPrice, double newPrice) {
		if (stocksIndex.contains(stock)) {
			index = (index - oldPrice) + newPrice;
		}
	}
	
	public static void main(String[] args) {
		Stock s1 = new Stock("A", 23);
		Stock s2 = new Stock("B", 123);
		Stock s3 = new Stock("C", 342);
		Stock s4 = new Stock("D", 439);
		Stock s5 = new Stock("E", 2343);
		StockIndex si1 = new StockIndex("FintNavn",s1,s2,s3,s4);
		System.out.println(si1.getIndex());
		si1.addStock(s5);
		System.out.println(si1.getIndex());
		si1.removeStock(s1);
		System.out.println(si1.getIndex());
		si1.stockPriceChanged(s5, 2343, 1);
		System.out.println(si1.getIndex());
		
	}
			
}
		
	
