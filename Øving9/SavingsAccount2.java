package inheritance;

public class SavingsAccount2 extends AbstractAccount{
	
	private int withdrawals;
	private double fee;
	
	public SavingsAccount2(int withdrawals, double fee){
		this.withdrawals = withdrawals;
		this.fee = fee;
	}

	@Override
	public void internalWithdraw(double amount) {
		if ((balance - amount) < 0 || (balance - (amount+fee)) < 0) {
			throw new IllegalStateException("Kan ikke ta ut så stort beløp.");
		}
		else if (withdrawals == 0) {
			balance -= fee;
			balance -= amount;
		}
		else {
			balance -= amount;
			withdrawals -= 1;
		}
		
	}
	
	

}
