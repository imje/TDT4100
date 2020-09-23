package interfaces;

import java.util.ArrayList;
import java.util.Comparator;

public class CardComparator implements Comparator<Card>{
	private char[] suits = {'S','H','D','C'};
	private boolean ess;
	private char trumf;

	public CardComparator(boolean ess, char trumf){
		this.trumf = trumf;
		this.ess = ess;
	}
	public int compare(Card card1, Card card2) {

		if (card1.getSuit() != card2.getSuit()) {
			if(card1.getSuit() == this.trumf){
				return 1;
			}else if (card2.getSuit() == this.trumf){
				return -1;
			}
			int verdiCard1 = 0;
			int verdiCard2 = 0;
			for (int i = 0; i < suits.length; i++) {
				if(card1.getSuit() == suits[i]){		
					verdiCard1 = i;
				}
				if (card2.getSuit()== suits[i]){
					verdiCard2 = i;
				}
			}
			if (verdiCard1>verdiCard2){
				return -1;
			}else{
				return 1;
			}
		}
		else if (ess){
			if(card1.getFace() == 1 && card2.getFace() != 1){
				return 1;
			}else if(card1.getFace() != 1 && card2.getFace() == 1){
				return -1;
			}else{
				if( card2.getFace() > card1.getFace()){
					return -1;
				}else if( card2.getFace() < card1.getFace()){
					return 1;
				}
				else{
					return 0;
				}
			}
		}else{

			if( card2.getFace() > card1.getFace()){
				return -1;
			}else if( card2.getFace() < card1.getFace()){
				return 1;
			}
			else{
				return 0;
			}		
		}
	}
	
	public static void main(String[] args) {
		Card c1 = new Card('S', 2);
		Card c2 = new Card('D',1);
		Card c3 = new Card('D', 1);
		Card c4 = new Card('H', 11);
		
		CardComparator cc = new CardComparator(false, ' ');
		CardComparator cc2 = new CardComparator(true, ' ');
		CardComparator cc3 = new CardComparator(true, 'D');
		CardComparator cc4 = new CardComparator(false, 'H');
		System.out.println(cc.compare(c1, c2));
		System.out.println(cc3.compare(c1, c2));
		
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
					if (cc.compare(s1, s2) == -1) {
						cardList2.set(j, s1);
						cardList2.set(j-1, s2);
					}
				}
			}
		System.out.println(cardList2);
	}
	
}
	
