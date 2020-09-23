package interfaces;

public class Person2 implements Named {
	
	private String fullName;
	
	public Person2(String fullName) {
		this.fullName = fullName;
	}

	@Override
	public void setGivenName(String name) {
		String[] splited = name.split(" ");
		splited[0] = name;
	}

	@Override
	public String getGivenName() {
		String[] splited = fullName.split(" ");
		return splited[0];
	}

	@Override
	public void setFamilyName(String name) {
		String[] splited = name.split(" ");
		splited[1] = name;
	}

	@Override
	public String getFamilyName() {
		String[] splited = fullName.split(" ");
		return splited[1];
	}

	@Override
	public void setFullName(String name) {
		fullName = name;
	}

	@Override
	public String getFullName() {
		return fullName;
	}

}
