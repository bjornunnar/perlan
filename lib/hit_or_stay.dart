import 'dart:io';
import 'functions/status.dart';
import 'functions/card_namer.dart';
import 'functions/deal_card.dart';
import 'functions/option_select.dart';
import 'functions/check_if_busted.dart';

/*
This is a complicated function,which accepts three inputs,

the current player hand (list of integers),
house hand (list of integers)
the current deck (list of integers)

It should be a infinite loop that asks the user if he
wants to draw a card or stay. If he chooses to stay,
then the loop should stop.

If he wants to draw a card, add a card to his hand,
tell him what card he drew and print the current information of the game.

If he busts after drawing this card, break the loop as well.
 */


void HitOrStay(List<int> playerHand, List<int> houseHand, List<int> deck){
  print("LOG: HitOrStay started");
  List<String> options = ['Hit', 'Stay', 'Quit'];

  int? userRequest = null;
  int? drawnCard = null;

  while(userRequest != 2 || CheckIfBusted(playerHand) == false){
    userRequest = OptionSelect('Pick an option:', options);
    if(userRequest == 0){                   // Hit
      drawnCard = DealCard(deck);
      print("You have drawn: $drawnCard");
    } else if(userRequest == 1 ){  
      print("You have selected Stay");         // Stay
      return;
    } else if(userRequest == 2){            // Quit
      return;
    } else {
      print("Not a valid option.");
    }
  }
  print("LOG: HitOrStay completed");
}