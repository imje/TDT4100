package inheritance;

public class PassengerCar extends TrainCar{
	
	private int passengers;
	
	public PassengerCar(int deadWeight, int passengers) { //her tas inn hvor mye en tom vogn veier (som i TrainCar), og hvor mange passasjerer det er i vogna.
		super(deadWeight);
		this.passengers = passengers;
	}
	
	
	public int getPassengerCount() { // returner antall passasjerer.
		return passengers;
	}
	
	public void setPassengerCount(int passengers) { //setter en ny verdi for antall passasjerer.
		this.passengers = passengers;
	}
	@Override
	public int getTotalWeight() {
		return super.getTotalWeight() + (getPassengerCount()*80);
	}
}
