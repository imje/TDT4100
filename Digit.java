package stateandbehavior;

public class Digit {

	int tallsystem, siffer;
	
	public Digit(int tall){
		this.tallsystem = tall;
		this.siffer= 0;
	}
	
	public int getValue(){
		return siffer;
	}
	
	public boolean increment(){
		if (siffer >= 0 && siffer < tallsystem-1){
			siffer += 1;
			return false;
		}
		else{
			siffer = 0;
			return true;
		}
	}
	
	public int getBase(){
		return tallsystem;
		
	}
	
	public String toString() {
		return (Integer.toHexString(siffer));
	}
	
	public static void main(String[] args) {
		Digit digit = new Digit(10);
		System.out.println(digit.toString());
		digit.increment();
		System.out.println(digit.toString());
		digit.increment();
		System.out.println(digit.toString());
	}
}
