package interfaces;

import java.awt.List;
import java.util.ArrayList;


public class Card implements Comparable<Card> {
	
	List cardType = new List();

	// the suit (farge), one of the values 'S' (spades), 'H' (hearts), 'D' (diamonds) and 'C' (clubs) 
	private char suit;
	// the value, 1 for the ace, 2 - 10, 11 (knight), 12 (queen) and 13 (king). -1 is invalid
	private int face = -1;

	// the set of suits in decreasing order
	public final static String SUITS = "SHDC";
	
	public Card(char suit, int face) {
		if (SUITS.indexOf(suit) < 0) {
			throw new IllegalArgumentException("Illegal suit: " + suit);
		}
		if (face < 1 || face > 13) {
			throw new IllegalArgumentException("Illegal face: " + face);
		}
		this.suit = suit;
		this.face = face;
	}
	
	/*
	 * Returns suit and face as a string
	 * E.g. Ace of spades is S1 and king of clubs is C13
	 */
	public String toString() {
		return String.valueOf(suit) + face;
	}

	public char getSuit() {
		return this.suit;
	}
	
	public int getFace() {
		return this.face;
	}
	
	public int typeOfCard() {
		if (this.getSuit() == 'S') {
			return 4;
		}
		else if (this.getSuit() == 'H') {
			return 3;
		}
		else if (this.getSuit() == 'D') {
			return 2;
		}
		else {
			return 1;
		}
	}
	
	
	@Override
	public int compareTo(Card card) {
		// compareTo-metoden skal sammenligne et kort med et annet, 
		// slik at spar vurderes som høyere enn hjerter, hjerter høyere enn ruter og ruter høyere enn kløver. 
		// Ved lik kortfarge skal verdien brukes, altså 1 (ess) er mindre enn 2 er mindre enn 3 osv. til 
		// og med 11 (knekt), 12 (dame) og 13 (konge).
		if (this.typeOfCard() > card.typeOfCard()) {
			return 1;
		}
		else if (this.typeOfCard() < card.typeOfCard()) {
			return -1;
		}
		else {
			if (this.getFace() > card.getFace()) {
				return -1;
			}
			else if (this.getFace() < card.getFace()) {
				return 1;
			}
			else {
				return 0;
			}
		}
	}
	
	public static void main(String[] args) {
		System.out.println("-1 betyr at kortet er mindre enn det andre kortet. 1 betyr at kortet er større enn "
				+ "det andre kortet." 
				+ " 0 betyr at kortene er like.");
		
		Card c1 = new Card('S',2);
		Card c2 = new Card('D', 3);
		Card c3 = new Card('S', 7);
		Card c4 = new Card('D', 3);
		
		//System.out.println(c1.compareTo(c2));
		//System.out.println(c3.compareTo(c1));
		//System.out.println(c1.compareTo(c3));
		//System.out.println(c4.compareTo(c2));
		
		ArrayList<Card> cardList = new ArrayList<>();
		cardList.add(c1);
		cardList.add(c2);
		cardList.add(c3);
		cardList.add(c4);
		cardList.sort(null);
		System.out.println(cardList);
		
		
		ArrayList<Card> cardList2 = new ArrayList<>();
		cardList2.add(c1);
		cardList2.add(c2);
		cardList2.add(c3);
		cardList2.add(c4);
		for(int i = 0; i < cardList2.size(); i++) {
				for (int j = cardList2.size() - 1; j > i; j--) {
					Card s1 = cardList2.get(j - 1);
					Card s2 = cardList2.get(j);
					if (s2.compareTo(s1) == -1) {
						cardList2.set(j, s1);
						cardList2.set(j-1, s2);
					}
				}
			}
		System.out.println(cardList2);
	}

}