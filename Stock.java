package patterns.observable;

import java.util.ArrayList;
import java.util.List;


public class Stock{
	
	private String ticker;
	private double price;
	private List<StockListener> stockListeners = new ArrayList<>();
	
	public Stock(String ticker, double price){ //en konstruktør som tar inn en aksjekode (ticker) og en aksjepris.
		this.ticker = ticker;
		this.price = price;
	}
	
	public void setPrice(double price){ //endringsmetode for aksjeprisen. Dersom aksjepris er negativ eller lik null, skal metoden utløse en IllegalArgumentException.
		if (price <= 0) {
			throw new IllegalArgumentException("Price can not be zero or negative.");
		}
		else {
			for (StockListener listener: stockListeners) {
				listener.stockPriceChanged(this, getPrice(), price);
			}
			this.price = price;
		}
	}
	
	public String getTicker(){ //metode for å hente aksjekoden.
		return ticker;
	}
	
	public double getPrice() {//metode for å hente aksjeprisen.
		return price;
	}
	
	void addStockListener(StockListener s){ //metode for å legge til nye observatører.
		stockListeners.add(s);
	}
	
	void removeStockListener(StockListener s){ //metode for å fjerne observatører.
		stockListeners.remove(s);
	}
		
}
