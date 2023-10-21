import 'package:BlackJack/functions/functions.dart';

import 'functions/score_function.dart';
import 'functions/card_namer.dart';
import 'functions/deal_card.dart';

/*
Once the player is done with his turn (HitOrStay) the house will play.

Create a function called HousePlays which accepts two inputs,
both are list of integers. One is the current hand of the house,
and the other is the deck.

Implement the normal blackjack rules that a dealer in a real
casino would behave (It depends on the score what if he draws a card or not).

Print the cards and score of the house before he starts,
and inform what card (if any) he draws next, after each draw of card,
show the score of the house.
 */

void HousePlays(List<int> houseHand, List<int> deck){
  print('LOG: housePlays started');
  int sumOfHouseHand = houseHand[0];
  int drawnCard;

  do {
    print("Score of dealer: $sumOfHouseHand");
    drawnCard = DealCard(deck);
    houseHand.add(drawnCard);
    print("The dealer drew $drawnCard");
  } while (sumOfHouseHand < 17);

  print("LOG: housePlays ended");
}
