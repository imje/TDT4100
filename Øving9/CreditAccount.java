package inheritance;

public class CreditAccount extends AbstractAccount{
	
	private double creditLine;
	
	public CreditAccount(double creditLine) {
		setCreditLine(creditLine);
	}
	
	public double getCreditLine() {
		return creditLine;
	}

	public void setCreditLine(double creditLine) {
		if (creditLine < 0) {
			throw new IllegalArgumentException("Kreditt på kontoen kan ikke være negativt.");
		}
		else if (balance < 0) {
			if ((creditLine + balance) >= 0) {
				this.creditLine = creditLine;
			}
			else {
				throw new IllegalStateException("Feil kreditt.");
			}
		}
		else {
			this.creditLine = creditLine;
		}
	}
	
	@Override
	public void internalWithdraw(double amount) {
		if ((getBalance()-amount) < 0) {
			if (Math.abs(getBalance()-amount) < creditLine) {
				balance -= amount;
			}
			else {
				throw new IllegalStateException("For stort bebløp.");
			}
		}
		else {
			if ((getBalance()-amount) > creditLine) {
				balance -= amount;
			}
			else {
				throw new IllegalStateException("For stort bebløp.");
			}
		}
	}
	
	public static void main(String[] args) {
		CreditAccount ca = new CreditAccount(100);
		System.out.println(ca.getCreditLine());
		ca.setCreditLine(200);
		System.out.println(ca.getCreditLine());
		ca.internalWithdraw(100);
		System.out.println(ca.getBalance());
		
	}

}
