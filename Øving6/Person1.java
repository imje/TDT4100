package interfaces;

public class Person1 implements Named {
	
	private String givenName;
	private String familyName;
	
	public Person1(String givenName, String familyName) {
		this.givenName = givenName;
		this.familyName = familyName;
	}

	@Override
	public void setGivenName(String name) {
		givenName = name;
	}

	@Override
	public String getGivenName() {
		return givenName;
	}

	@Override
	public void setFamilyName(String name) {
		this.familyName = name;
	}

	@Override
	public String getFamilyName() {
		return familyName;
	}

	@Override
	public void setFullName(String name) {
		String[] splited = name.split(" ");
		givenName = splited[0];
		familyName = splited[1];
	}

	@Override
	public String getFullName() {
		return givenName + " " + familyName;
	}

}
