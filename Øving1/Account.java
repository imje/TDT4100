package stateandbehavior;

public class Account {
	
	double balance, rentefot;
	
	public Account() {
		this.balance = 0;
		this.rentefot = 0;
	}
	
	public void deposit(double value){
		if (value > 0){
			balance += value;
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
		rentefot = newInterest;
	}
	
	public String toString() {
		return "[Balanse: " + getBalance() + ". Rentefot: " + getInterestRate() + "]";
	}
	
	
	public static void main(String[] args) {
		Account account = new Account();
		System.out.println(account.toString());
		account.deposit(300);
		account.addInterest();
		account.setInterestRate(3.8);
		System.out.println(account.toString());
	}    
}
