package objectstructures;

public class Sudoku {
	
	private SudokuNumber[][] numbers;
	private String[][] locked;
	private int rows = 9;
	private int cols = 9;
	private int startRow;
	private int startCol;
	
	
	// konstruktør
	public Sudoku(String board) {
		if (board.length() != 81) {
			throw new IllegalArgumentException("Illegal board");
		}
		numbers = new SudokuNumber[rows][cols];
		for (int i = 0; i < 9; i++) {
			for (int j = 0; j < 9; j++) {
				numbers[j][i] = new SudokuNumber(board.charAt(i+j*9));
			}
		}
		locked = new String[9][9]; // Markerer låste posisjoner med X
		for (int i = 0; i < 9; i++) {
			for (int j = 0; j<9; j++) {
				if (numbers[i][j].getNumber() != '.') {
						locked[i][j] = "X";
				}
			}
		}
	}
	public static void main(String[] args) {
		Sudoku game = new Sudoku(".....2..38.273.45....6..87.9.8..5367..6...1..4513..9.8.84..3....79.512.62..8.....");
		System.out.println(game);
		game.getInput("392");
		System.out.println(game);
		
	}
	
	// Skriver ut som et brett
	public String toString() {
		String outString = "";
		for (int i = 0; i < rows; i++) {
			if (i%3 == 0) {
				outString += " +---------+---------+---------+\n";
			}
			outString += i+1;
			for (int j = 0; j < cols; j++) {
				if (j%3 == 0) {
					outString += "|";
				}
				outString += this.numberToString(i, j);
			}
			outString += "|\n";
		}
		outString += " +---------+---------+---------+\n";
		outString += "   1  2  3   4  5  6   7  8  9";
		return outString;
			}
		
	private String getRow(int rowNr) { // Gir ut tallene i en gitt rad
		String outStr ="";
		for (int i = 0; i < cols; i++) {
			outStr += numbers[rowNr][i];
		}
		return outStr;
	}
	
	private String getCol (int colNr) { // Gir ut tallene i en gitt kolonne
		String outStr = "";
		for (int i = 0; i < rows; i++) {
			outStr += numbers[i][colNr];
		}
		return outStr;
	}
	
	private String getSquare(int rowNr, int colNr) { // Gir ut tallene i en firkant
		String squareString = "";
		
		if (rowNr < 3) { startRow = 0; }
		else if (rowNr < 6) { startRow = 3; }
		else { startRow = 6; }
		
		if (colNr < 3) { startCol = 0;}
		else if (colNr < 6) { startCol = 3; }
		else { startCol = 6; }
		
		for (int i = startRow; i < (startRow+3); i++) {
			for (int j = startCol; j < (startCol+3); j++) {
				squareString += numbers[i][j];
				}
			}
		return squareString;
	}
	
	public boolean validMove(int row, int col, int number) { // Sjekker om tallet som er satt inn er gyldig
		if (number == '.') {
			return true;
		}
		String rowStr = getRow(row);
		String colStr = getCol(col);
		String squStr = getSquare(row, col);
		String r = rowStr.substring(rowStr.indexOf(number)+1);
		String c = colStr.substring(colStr.indexOf(number)+1);
		String s = squStr.substring(squStr.indexOf(number)+1);
		if (r.indexOf(number) != -1 || c.indexOf(number) != -1 || s.indexOf(number) != -1) { 
			return false;
		}
		return true;
	}
	
	public String numberToString(int row, int col) { // Skriver ut tallet riktig formatert
		int number = numbers[row][col].getNumber();
		if (locked[row][col]=="X") {
			return "(" + numbers[row][col] + ")";
		}
		else if (! validMove(row, col, number)) {
			return " "+numbers[row][col] + " ";
		}
		else if (number == '.') {
			return " . ";
		}
		else {
			return " " + numbers[row][col] + " ";
		}
	}
	
	public void setInNumber(int row, int col, int value) { // Setter inn tall hvis det er lov
		if (locked[row][col] != "X") {
			char number = (char) (value + '0');
			SudokuNumber num = new SudokuNumber(number);
			numbers[row][col] = num;
		}
	}

	public void removeNumber(int row, int col) { // Fjerner tall hvis det er lov
		if (locked[row][col] != "X") {
		numbers[row][col].removeNumber();
		}
	}
	public void getInput(String input) { // Tar input fra brukeren
		int row = (int) input.charAt(0)-48;
		int col = (int) input.charAt(1)-48;
		if (input.length() == 2) {
			removeNumber(row-1, col-1);
		}
		else if (input.length() == 3) {
			int value = (int) input.charAt(2)-48;
			setInNumber(row-1, col-1, value);
		}
		else {
			throw new IllegalArgumentException("Illegal input");
		}
	}
}