package inheritance;

public class CargoCar extends TrainCar{
	
	private int cargoWeight;
	
	public CargoCar(int deadWeight, int cargoWeight) {//her tas inn hvor mye en tom vogn veier (som i TrainCar), og hvor mye vogna sin last veier.
		super(deadWeight);
		this.cargoWeight = cargoWeight;
	}
	
	public int getCargoWeight() {//returnerer hvor mye lasten veier.
		return cargoWeight;
	}

	public void setCargoWeight(int cargoWeight) {//setter en ny verdi for vekten til lasten.
		this.cargoWeight = cargoWeight;
	}
	
	@Override
	public int getTotalWeight() {
		return super.getTotalWeight() + getCargoWeight();
	}
}
