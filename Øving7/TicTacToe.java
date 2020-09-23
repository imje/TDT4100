package objectstructures;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Reader;

public class TicTacToe {
	
	private static StringBuilder theBoard = new StringBuilder("         ");
	private int moves;
	private StringBuilder oldBoard;
	private StringBuilder newestBoard;
	
	public TicTacToe(){
		if (theBoard.length() != 9) {
			throw new IllegalArgumentException("Illegal board");
		}
	}
	
	public char getCell(int x, int y) {//- returnerer verdien til ruten på posisjon x, y.
		if (x < 4) {
			return theBoard.charAt(y);
		}
		else if (x > 3 && x < 7) {
			return theBoard.charAt(y+3);
		}
		else {
			return theBoard.charAt(y+6);
		}
	}

	public boolean setCell(char c, int x, int y) {//- setter ruten i posisjon x, y til c. Metoden må sjekke om ruten er ledig før brettet oppdateres (okkuperte ruter kan ikke overskrives) og returnerer true hvis en ny brikke har blitt lagt på, false ellers.
		if (isFinished() == true) {
			throw new IllegalArgumentException("Spillet er ferdig!");
		}
		else if (x==0 && y<3) {
			if (theBoard.charAt(y) == ' ') {
				theBoard.setCharAt(y, c);
				oldBoard = theBoard;
				return true;
			}
			else{
				return false;
			}
		}
		else if (x==1 && y<3) {
			if (theBoard.charAt(y+3) == ' ') {
				theBoard.setCharAt(y+3, c);
				oldBoard = theBoard;
				return true;
			}
			else{
				return false;
			}
		}
		else if (x==2 && y<3){
			if (theBoard.charAt(y+6) == ' ') {
				theBoard.setCharAt(y+6, c);
				oldBoard = theBoard;
				return true;
			}
			else{
				oldBoard = theBoard;
				return false;
			}
		}
		else {
			return false;
		}
	}
	
	private boolean isOccupied(int x, int y){ //- returnerer true hvis ruten på posisjon x, y har en brikke og false ellers.
		if (x<4) {
			if (theBoard.charAt(y) == ' ') {
				return false;
			}
			else{
				return true;
			}
		}
		else if (x > 3 && x < 7) {
			if (theBoard.charAt(y+3) == ' ') {
				return false;
			}
			else{
				return true;
			}
		}
		else {
			if (theBoard.charAt(y+6) == ' ') {
				return false;
			}
			else{
				return true;
			}
		}
	}
	
	public char getCurrentPlayer() {//- returnerer spilleren/brikken som har turen
		if (moves%2==0) {
			return 'x';
		}
		else {
			return 'o';
		}
	}
	
	public String toString(){
		String stringBoard = "";
		stringBoard += theBoard.charAt(0);
		stringBoard += " |";
		stringBoard += theBoard.charAt(1);
		stringBoard += " |";
		stringBoard += theBoard.charAt(2);
		stringBoard += "\n--------\n";
		stringBoard += theBoard.charAt(3);
		stringBoard += " |";
		stringBoard += theBoard.charAt(4);
		stringBoard += " |";
		stringBoard += theBoard.charAt(5);
		stringBoard += "\n--------\n";
		stringBoard += theBoard.charAt(6);
		stringBoard += " |";
		stringBoard += theBoard.charAt(7);
		stringBoard += " |\n";
		stringBoard += theBoard.charAt(8);
		return stringBoard;
	}
	
	public void play(int input) {//- setter ruten på posisjon x, y på brettet til tegnet til spilleren som utfører trekket (angis av player-feltet) og oppdaterer hvilken spiller som skal utføre det neste trekket.
		if (input/10 > 2 || input%10 > 2) {
			throw new IllegalArgumentException("Illegal move");
		}
		else if (getCurrentPlayer() == 'x') {
				setCell('x', input/10, input%10);
				moves++;
		}
		else {
			setCell('o', input/10, input%10);
			moves++;
		}
	}
	
	public boolean isWinner(char c) {//- returnerer true om spiller med brikke c har vunnet, false ellers.
		//sjekker diagonalene:
		if (((theBoard.charAt(0) == theBoard.charAt(4) && theBoard.charAt(0) == theBoard.charAt(8)) && theBoard.charAt(0) != ' ') || (theBoard.charAt(2) == theBoard.charAt(4) && theBoard.charAt(2) == theBoard.charAt(6)) && theBoard.charAt(2) != ' ')  {
			return true;
		}
		//sjekker rekker:
		else if ((theBoard.charAt(0) == theBoard.charAt(1) && theBoard.charAt(0) == theBoard.charAt(2) && theBoard.charAt(0) != ' ') || (theBoard.charAt(3) == theBoard.charAt(4) && theBoard.charAt(3) == theBoard.charAt(5) && theBoard.charAt(3) != ' ') || (theBoard.charAt(6) == theBoard.charAt(7) && theBoard.charAt(6) == theBoard.charAt(8) && theBoard.charAt(6) != ' ')) {
			return true;
		}
		//sjekker rader:
		else if ((theBoard.charAt(0) == theBoard.charAt(3) && theBoard.charAt(0) == theBoard.charAt(6) && theBoard.charAt(0) != ' ') || (theBoard.charAt(1) == theBoard.charAt(4) && theBoard.charAt(1) == theBoard.charAt(7) && theBoard.charAt(1) != ' ') || (theBoard.charAt(2) == theBoard.charAt(5) && theBoard.charAt(2) == theBoard.charAt(8) && theBoard.charAt(2) != ' ')) {
			return true;
		}
		else {
			return false;
		}
	}
	
	public boolean hasWinner() {//- returnerer true om spiller har en vinner, false ellers.
		if (isWinner('o') == true) {
			return true;
		}
		else if (isWinner('x') == true) {
			return true;
		}
		else {
			return false;
		}
	}
	
	public boolean isFinished() {//- returnerer true om spillet har en vinner eller brettet er blitt fylt og false ellers. En spiller har vunnet når den har lagt tre brikker på rad, enten horisontalt, vertikalt eller diagonalt.
		if (hasWinner() == true) {
			return true;
		}
		else if (!theBoard.toString().contains(" ")) {
			return false;
		}
		else {
			return false;
		}
	}
	
	public boolean undo() {
		if (moves>1) {
			theBoard = oldBoard;
			return true;
		}
		else {
			return false;
		}
	}
	
	public void redo() {
		if (undo() == true) {
			theBoard = newestBoard;
		}
	}
	
	public static StringBuilder load(String adress) {
	Reader reader = null; //Leser chars
	StringBuilder buffer = null;
	try {
		reader = new FileReader(new File(adress));
		buffer = new StringBuilder("");
	} catch (FileNotFoundException e1) { //FNFE arver fra IO
		System.err.println("Fant ikke filen...");
	} finally {
		try {
			reader.close();
		} catch (IOException e3) {
			e3.printStackTrace();
		}
	}
	theBoard = buffer;
	return theBoard;
	}
	
	public static void save(String adress) {
		File file = new File(adress);
		try (BufferedWriter writer = new BufferedWriter(new FileWriter(file))) {
			writer.write(theBoard.toString());
			writer.flush(); //Forsikre oss om at all data i bufferer content (dvs.minnet) skrives til fil
			writer.close();
			System.out.println("Game saved");
		} catch (IOException e) {
			e.printStackTrace();
			System.out.println("Game not saved");
		}

	}
	
	public static void main(String[] args) {
		TicTacToe ttt = new TicTacToe();
		System.out.println(ttt.getCurrentPlayer());
		System.out.println(ttt.toString());
		ttt.play(00);
		System.out.println(ttt.toString());
		ttt.play(01);
		System.out.println(ttt.toString());
		ttt.undo();
		System.out.println(ttt.toString());
		System.out.println(ttt.isFinished());
		ttt.play(10);
		System.out.println(ttt.toString());
		ttt.play(11);
		System.out.println(ttt.toString());
		ttt.play(20);
		System.out.println(ttt.toString());
		System.out.println(ttt.hasWinner());
		
		
		
		
		//String poemPath = new File("").getAbsolutePath();
		//poemPath += "/src/objectstructures/TicTacToe.txt";
		//StringBuilder buffer = load(poemPath);
		//String content = String.valueOf(buffer);
		//System.out.println(content);
		
		//String newPoemPath = new File("").getAbsolutePath();
		//newPoemPath = newPoemPath + "/src/objectstructures/TicTacToe.txt";
		//save(newPoemPath);
	}
}