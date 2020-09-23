package inheritance;

public class TrainCar {
	
	private int deadWeight;

	public TrainCar(int deadWeight) {//en konstruktør som tar inn hvor mye en tom vogn veier.
		this.deadWeight = deadWeight;
	}
	
	public int getTotalWeight(){//returnerer vognas totale vekt. Merk at denne også skal kunne kalles på subklasser og fortsatt returnere totalvekta toil vogna (stikkord: redefinering).
		return deadWeight;
	}
	
	public void setDeadWeight(int deadWeight) {//setter hvor mye en tom vogn veier. Altså vekten til kun vognen, uten passasjerer eller last.
	this.deadWeight = deadWeight;
	}
	
	int getDeadWeight() {//returnerer hvor mye en tom vogn veier. Altså vekten til kun vognen, uten passasjerer eller last.
		return deadWeight;
	}
}
