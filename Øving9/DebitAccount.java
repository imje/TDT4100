package inheritance;

public class DebitAccount extends AbstractAccount {

	@Override
	public void internalWithdraw(double amount) {
		if ((getBalance()-amount) < 0) {
			throw new IllegalStateException("Beløpet på kontoen kan ikke være negativt");
		}
		else {
			balance -= amount;
		}
		
	}

}