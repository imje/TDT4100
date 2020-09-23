package stateandbehavior;


public class Location {
	
	int x, y;
	
	public Location(){
	this.x = 0;
	this.y = 0;
	}
	
	public void up(){
		y -= 1;
	}
	
	public void down(){
		y += 1;
	}
	
	public void left(){
		x -= 1;
	}
	
	public void right(){
		x += 1;
	}
	
	public int getX(){
		return x;
	}
	
	public int getY(){
		return y;
	}
	
	public String toString() {
		return "Posisjon: (" + getX() + "," + getY() + ")";
	}
	
	public static void main(String[] args) {
		Location location = new Location();
		location.up();
		location.left();
		System.out.println(location.toString());
		location.down();
		location.right();
		System.out.println(location.toString());
	}

}
