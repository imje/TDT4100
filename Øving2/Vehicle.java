package encapsulation;

public class Vehicle {

	private char Vehicle;
	private char fuel;
	private String register;
	
	public Vehicle( char Vehicle, char fuel, String register ) {
		
		if (  (Vehicle != 'M' && Vehicle != 'C' )){
			throw new IllegalArgumentException("Kjøretøytype kan ikke være C eller M.");
		}
		
		else if  (( fuel != 'H' && fuel != 'E' && fuel != 'D' && fuel != 'G')) {
			throw new IllegalArgumentException("Drivstofftype må være H, E, D eller G." );
		}
		
		else if (!register.substring(0,2).matches("[A-Z]*+")) {
			throw new IllegalArgumentException("Registreringsnummeret må starte med to bokstaver mellom A og Z."); 	
		}
		
		else if (Vehicle =='C' && register.length() != 7){
			throw new IllegalArgumentException("Lengden av registreringsnummeret må være 7.");
		}
		
		else if (Vehicle == 'M' && register.length() != 6) {
			throw new IllegalArgumentException("Lengden av registreringsnummeret må være 6.");
		}
		
		else if (fuel == 'H' && Vehicle != 'C'){
			throw new IllegalArgumentException("Bare biler kan kjøre på hydrogen");
			
		}
		
		else if (!register.substring(2,6).matches("[0-9]*+")) {
			throw new IllegalArgumentException("Feil registreringsnummer.");
		}
		
		else if (((register.substring(0,2).matches("EL") || register.substring(0,2).matches("EK")) && (fuel != 'E'))){
			throw new IllegalArgumentException("Bare biler som kjører på elektrisitet kan ha registreringsnummer som begynner med EL eller EK.");
		}
		
		else if (fuel == 'E' && !register.substring(0,2).matches("EL") && !register.substring(0,2).matches("EK")){
			throw new IllegalArgumentException("Bare biler som kjører på elektrisitet kan ha registreringsnummer som begynner med EL eller EK.");
		}
		
		else if ((fuel != 'H' && register.substring(0,2).matches("HY")) || (fuel =='H' && !register.substring(0,2).matches("HY"))) {
			throw new IllegalArgumentException("Bare biler som kjører på hydrogen kan ha registreringsnummer som begynner med HY.");
		}
		
		else {
			this.Vehicle = Vehicle;
			this.fuel = fuel;
			this.register = register;
					
		}
		
		
	}
	public void setRegistrationNumber( String register) {
		
		if (fuel == 'H') {
			if (!register.substring(0,2).matches("HY")) {
				throw new IllegalArgumentException("Registreringsnummeret må begynne med HY.");
			}
			else if (this.register.length() != register.length()) {
				throw new IllegalArgumentException("Registreringsnummeret er enten for langt eller for kort.");
			}
			
			else if ( !register.substring(0,2).matches("[A-Z]*+")){
				throw new IllegalArgumentException("Registreringsnummeret begynner med feil bokstaver.");
			}
			
			else if (!register.substring(2,6).matches("[0-9]*+")){
				throw new IllegalArgumentException("Registreringsnummeret er feil.");
			}
			else {
				this.register = register;
			}
				
		}
		
		else if (fuel == 'D' || fuel == 'G') {
			if ((register.substring(0,2).matches("HY")) || (register.substring(0,2).matches("EL")) || (register.substring(0,2).matches("EK"))) {
				throw new IllegalArgumentException("Registration number cant start with EL, EK or HY.");
			}
			else if (this.register.length() != register.length()){
				throw new IllegalArgumentException("Registreringsnummeret er enten for langt eller for kort.");
			}
			else if ( !register.substring(0,2).matches("[A-Z]*+")){
				throw new IllegalArgumentException("Registreringsnummeret begynner med feil bokstaver.");
			}
			else if (!register.substring(2,6).matches("[0-9]*+")){
				throw new IllegalArgumentException("Registreringsnummeret er feil.");
			}
			else {
				this.register = register;
			}
		}
		
		else if (fuel == 'E') {
			if ((!register.substring(0,2).matches("EL")) && (!register.substring(0,2).matches("EK"))) {
				throw new IllegalArgumentException("E fuel: registration number starts with EL or EK.");
			}
			else if (this.register.length() != register.length()){
				throw new IllegalArgumentException("Registreringsnummeret er enten for langt eller for kort.");
			}
			else if ( !register.substring(0,2).matches("[A-Z]*+")){
				throw new IllegalArgumentException("Registreringsnummeret begynner med feil bokstaver.");
				}
			else if (!register.substring(2,6).matches("[0-9]*+")){
				throw new IllegalArgumentException("Registreringsnummeret er feil.");
				}
			else {
				this.register = register;
			}
		}
		else {
			throw new IllegalArgumentException("Registreringsnummeret er feil.");
		}
		
	}
		
	
	
	public char getFuelType() {
		return fuel;
	}
	
	public String getRegistrationNumber(){
		return register;
	}
	
	
	
	public char getVehicleType() {
		return Vehicle;
	}
	public static void main(String[] args) {
		Vehicle vehicle1 = new Vehicle('C', 'G', "UF84830");
	}
}