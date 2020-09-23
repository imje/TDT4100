package objectstructures;

public class Partner {
	
	private String name;
	private Partner partner;
	private boolean hasPartner;

	public Partner(String name) {
		this.name = name;
	}
	
	public String getName() {
		return name;
	}
	
	public Partner getPartner() {
			return partner;
	}
	
	public void setPartner(Partner partner) {
		//Hvis argumentet er null, så kobles de fra hverandre
		if (partner == null) {
            if (this.getPartner() == null)
                hasPartner = false;
            else
                hasPartner = true;
            if (hasPartner) {
                Partner oldPartner = this.getPartner();
                this.partner = null;
                oldPartner.setPartner(null);
            }
            else
                this.partner = null;
		}
		else {
			// Ny partner som argument; Setter ny partner
            if (this.partner != null) {
            	// this har partner fra før av
                if ((this == this.partner.getPartner()) && (this.getPartner() != partner)) {
                	// Partnerens partner er this
                    Partner currentPartner = this.partner;
                    this.partner = null;
                    currentPartner.setPartner(null);

                    Partner ny = partner;
                    partner.setPartner(this);
                    this.setPartner(ny);
                }
            }
            else {
                // Dersom de ikke har noen partnere fra før av
                this.partner = partner;
                partner.setPartner(this);
           }
		}
		
	}
	
	@Override
	public String toString() {
		return name;
	}
	  
	public static void main(String[] args) {
		Partner p1 = new Partner("Per");
		Partner p2 = new Partner("Kari");
		Partner p3 = new Partner("Ola");
		
		System.out.println(p1.getName());
		System.out.println(p1.getPartner());
		p1.setPartner(p2);
		System.out.println(p1.getPartner());
		System.out.println(p2.getPartner());
	}
	
	
}
