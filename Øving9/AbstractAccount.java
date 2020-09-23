package inheritance;

public abstract class AbstractAccount {
	
	protected double balance;
	
	public AbstractAccount() {
		balance = 0;
	}

	public void deposit(double amount) { //øker kontobalansen med innskutt beløp. Merk at det innskutte beløpet må være positivt. Ved ulovlig innskudd skal en IllegalArgumentException utløses.
		if (amount > 0) {
			balance += amount;
		}
		else {
			throw new IllegalArgumentException("Beløpet kan ikke være negativt");
		}
	}
	public void withdraw(double amount) { //Metoden kaller internalWithdraw(uttaksbeløp), som implementeres i hver subklasse. Hvis uttaksbeløpet er negativt skal metoden utløse en IllegalArgumentException. 
		if (amount < 0) {
			throw new IllegalArgumentException("Beløpet kan ikke være negativt.");
		}
		else {
			this.internalWithdraw(amount);
		}
	}
	
	public abstract void internalWithdraw(double amount); //minsker kontobalansen med beløpet som blir tatt ut. Merk at reglene for uttak er ulik for klassene som implementerer AbstractAccount, og må derfor implementeres i hver klasse. Hvis det ikke er mulig å ta ut det angitte beløpet skal metoden utløse en IllegalStateException.
	
	public double getBalance() { //returnerer kontobalansen.
		return balance;
	}
}
