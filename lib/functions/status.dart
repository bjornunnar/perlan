import 'score_function.dart';
import 'card_namer.dart';

/*
Create a function that prints the current "Status" of the match,
called ... uh... Status! Yes! That's it!

The function should take in two lists of integers, the playerHand and houseHand.

Using the score function and CardNamer, print info that informs the user
on what hand he has, his score and the hand of the house.

(Check out blackjack rules on what we actually get to know from the house
hand before showdown.)

 */
List CardNameList(List playerHand){
  List names = [];
  for(int idx = 0; idx < playerHand.length; idx++){
    names.add(CardNamer(playerHand[idx]));
  }
  return names;
}

void Status(List<int> playerHand, List<int> houseHand){
  print(CardNameList(playerHand));
  print('His score is ${CalculateScore(playerHand)}.');
  print('House\'s card is ${CardNamer(houseHand[0])}.');
}

