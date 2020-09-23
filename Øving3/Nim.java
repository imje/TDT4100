package encapsulation;

public class Nim {
	
	private int pile0;
	private int pile1;
	private int pile2;
	
	
	//Konstruktør_nr.1
	Nim(int pileSize) {
		if (pileSize >0) {
			pile0 = pileSize;
			pile1 = pileSize;
			pile2 = pileSize;
		}
		else {
			throw new IllegalArgumentException("The size of the piles must be grater than 0.");
		}
	}
	
	//Konstruktør_nr.2
	Nim() {
		pile0 = 10;
		pile1 = 10;
		pile2 = 10;
	}
	
	public void removePieces(int number, int targetPile) {
		if ((number > 0) && (number<=pile0) && (targetPile==0)) {
			pile0 -= number;
		}
		else if ((number > 0) && (number<=pile1) && (targetPile==1)) {
			pile1 -= number;
		}
		else if ((number > 0) && (number<=pile2) && (targetPile==2)) {
			pile2 -= number;
		}
		else if (isGameOver()==true) {
			throw new IllegalStateException("The game is over.");
		}
		else {
			throw new IllegalArgumentException("Note that number must be grater than 0, and targetPile must be 0, 1 or 2.");
		}
	}
	
	public boolean isValidMove(int number, int targetPile) {
		if (isGameOver()==true) {
			return false;
		}
		else if ((targetPile!=0) && (targetPile!=1) && (targetPile!=2)) {
			return false;
		}
		
		else if ((number > 0) && (number<=pile0) && (targetPile==0)) {
			return true;
		}
		else if ((number > 0) && (number<=pile1) && (targetPile==1)) {
			return true;
		}
		else if ((number > 0) && (number<=pile2) && (targetPile==2)) {
			return true;
		}
		else {
			return false;
		}
	}
	
	public boolean isGameOver() {
		if ((pile0==0) || (pile1==0) || (pile2==0)){
			return true;
		}
		else if ((pile0 > 0) && (pile1 > 0) && (pile2 > 0)) {
			return false;
		}
		else {
			throw new IllegalArgumentException("The piles can not contain a negative number of bricks.");
		}
	}
	
	public int getPile(int targetPile) {
		if (targetPile == 0) {
			return pile0;
		}
		else if (targetPile == 1) {
			return pile1;
		}
		else if (targetPile ==2) {
			return pile2;
		}
		else {
			throw new IllegalArgumentException("Target pile must be 0, 1 or 2.");
		}
	}
	
	public String toString() {
		return "Pile 0 contains " + getPile(0) + " bricks. Pile 1 contains " + getPile(1) + 
		        " bricks. Pile 2 contains " + getPile(2) + " bricks.";
	}
	
	public static void main(String[] args) {
		Nim nim = new Nim(7);
		
		Nim nim2 = new Nim();
	}

}