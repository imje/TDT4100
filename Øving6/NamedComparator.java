package interfaces;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class NamedComparator implements Comparator<Named>{

	@Override
	public int compare(Named named1, Named named2) {
		if (named1.getFamilyName().compareTo(named2.getFamilyName()) != 0) {
			return (int) (named1.getFamilyName()).compareTo(named2.getFamilyName());
		}
		else if (named1.getFamilyName().compareTo(named2.getFamilyName()) == 0){
			return (int) (named1.getGivenName()).compareTo(named2.getGivenName());
		}
		else {
			return 0;
		}
	}
	
	public static void main(String[] args) {
		List<Named> name = new ArrayList<>();
		name.add(new Person1("Kari", "Knudsen"));
		name.add(new Person2("Ola Nordmann"));
		name.add(new Person2("Per Pålsen"));
		name.add(new Person1("Per", "Pålsen"));
		
		//Stokker om på samlingen (dvs. listen, som er en Collection)
		Collections.shuffle(name);
		
		for (Named a : name) {
			System.out.println(a.getFullName());
		}
	}
}
