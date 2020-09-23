package encapsulation;

public class Account {
	
	private double balance, rentefot;
	
	public Account(double startbeløp, double rentefot) {
		if (startbeløp >0) {
			balance = startbeløp;
		}
		else {
			throw new IllegalArgumentException("Beløpet kan ikke være negativt!");
		}
		if (rentefot > 0){
			this.rentefot = rentefot;
		}
		else {
			throw new IllegalArgumentException("Rentefoten kan ikke være negatvi!");
		}
	}
	
	public double getRentefot() {
		return rentefot;
	}

	public void setRentefot(double rentefot) {
		this.rentefot = rentefot;
	}

	public void setBalance(double balance) {
		this.balance = balance;
	}
	
	public void deposit(double value){
		if (value > 0){
			balance += value;
		}
		else {
			throw new IllegalArgumentException("Du kan ikke sette inn et negativt beløp!");
		}
	}
	
	public double getBalance(){
		return balance;
	}
	
	public void addInterest(){
		balance += ((balance/100)*rentefot);
	}
	
	public double getInterestRate(){
		return rentefot;
	}
	
	public void setInterestRate(double newInterest){
		if (newInterest > 0) {
		rentefot = newInterest;
		}
		else{
			throw new IllegalArgumentException("Rentefoten kan ikke være negativ!");
		}
	}
	
	public void withdraw(double verdi){
		if ((verdi > 0) && ((balance-verdi) >= 0)) {
			balance -= verdi;
		}
		else {
			throw new IllegalStateException("Beløpet på kontoen kan ikke være negativt!");
		}
		
	}
	
	public String toString() {
		return "[Balanse: " + getBalance() + ". Rentefot: " + getInterestRate() + "]";
	}
	
	
	public static void main(String[] args) {
		Account account1 = new Account(500, 3.6);
		System.out.println(account1.toString());
		account1.deposit(300);
		account1.addInterest();
		account1.setInterestRate(3.8);
		System.out.println(account1.toString());
		account1.withdraw(800);
		System.out.println(account1.toString());
	}    
}
