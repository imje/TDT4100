package inheritance;

import java.util.ArrayList;
import java.util.List;

public class Train{
	
	private List<TrainCar> cars = new ArrayList<>();
	private int totalWeight;
	private int passengerCount;
	private int cargoWeight;


	public void addTrainCar(TrainCar car){ //denne metoden skal ta inn en togvogn og knytte den til dette lokomotivet.
		if (contains(car) == false) {
			cars.add(car);
			if (car instanceof PassengerCar) {
				totalWeight += ((PassengerCar) car).getTotalWeight();
				passengerCount += ((PassengerCar) car).getPassengerCount();
			}
			else if (car instanceof CargoCar) {
				totalWeight += ((CargoCar) car).getTotalWeight();
				cargoWeight += ((CargoCar) car).getCargoWeight();
			}
		}
	}
	
	public boolean contains(TrainCar car) { //Sjekker om lokomotivet har TrainCar-argument knyttet til seg.
		if (cars.contains(car)) {
			return true;
		}
		else {
			return false;
		}
	}
	
	public int getTotalWeight() { //returner alle vognene sin totale vekt. Vi tar ikke høyde for lokomotivet sin eventuelle vekt.
		return totalWeight;
	}
	
	public int getPassengerCount() { //tilsvarende PassengerCar sin metode, men returnerer antallet for alle vognene.}
		return passengerCount;
	}
	
	public int getCargoWeight() { //tilsvarende CargoCar sin metode, men returnerer lastevekten for alle vognene.
		return cargoWeight;
	}
	
	public String toString() { //toString-metoden skal sette sammen en String med oversikt over alle vognene som er knyttet til den. For hver vogn skal vogntype og totalvekt være med. Passasjervogner skal i tillegg ha med antall passasjerer og lastevogner skal ha med hvor mye lasten veier.
		String string = "";
		for (TrainCar car : cars) {
			if (car instanceof PassengerCar) {
				string += "Passenger car with total weight: " + ((PassengerCar) car).getTotalWeight() + " and " + ((PassengerCar) car).getPassengerCount() + " passengers.\n";
			}
			else if (car instanceof CargoCar){
				string += "Cargo car with total weight: " + ((CargoCar) car).getTotalWeight() + " and cargo weight: " + ((CargoCar) car).getCargoWeight() + "\n";
			}
		}
		return string;
	}
	
	public static void main(String[] args) {
		CargoCar cc = new CargoCar(324, 88);
		PassengerCar pc = new PassengerCar(200, 10);
		PassengerCar pc2 = new PassengerCar(100, 10);
		PassengerCar pc3 = new PassengerCar(300, 30);
		PassengerCar pc4 = new PassengerCar(400, 50);
		TrainCar tc = new TrainCar(55);
		Train train = new Train();
		train.addTrainCar(cc);
		train.addTrainCar(pc);
		train.addTrainCar(tc);
		train.addTrainCar(pc2);
		train.addTrainCar(pc3);
		train.addTrainCar(pc4);
		System.out.println(train);
		System.out.println(train.getPassengerCount());
		System.out.println(train.getTotalWeight());
		
	}
	
}
