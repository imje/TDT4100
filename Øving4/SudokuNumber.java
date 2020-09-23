package objectstructures;

public class SudokuNumber {
	
	public int numbers;
	protected boolean canEdit;
	protected boolean validPlace;
	

	//Konstruktør
	public SudokuNumber(int number) {
		if (number<0 && number>9) {
			throw new IllegalArgumentException("Invalid number");
		}
		else {
			this.numbers = number;
		}
	}


	public int getNumber() {
		return numbers;
	}

	protected void canEdit(boolean in) {
		canEdit = in;
	}
	
	protected void setValidPlace(boolean validPlace) {
		this.validPlace = validPlace;
	}
	
	public void removeNumber() {
		this.numbers = '.';
	}
	
	@Override
	public String toString() {
		if (numbers == 0) {
			return " . ";
		}
		else if (! canEdit) {
			return " " + (int) (this.numbers - '0') + " ";
		}
		else if (! validPlace) {
			return (int) (this.numbers - '0') + " ";
		}
		else {
			return String.format("%2d", (int) (this.numbers - '0'));
		}
	}
}

