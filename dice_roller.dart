import 'package:flutter/material.dart';
import 'dart:math';//to generaate random numbers
final randomizer = Random();

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});  //constructor
   //we dont create a build method to a stateful widget instead we create a createstate method to a stateful widget
   @override
   State<DiceRoller> createState(){
      return _DiceRollerState();
   }
}



//while using a stateful widget we always have to use 2 classes because they're managed in a special way internally by flutter

class _DiceRollerState extends State<DiceRoller>{//a class name with starting underscore has a special meaning in dart which is that this would be a private class
//and cant be used in any other file even after importing this file to any other file
    var currentDiceRoll = 2;
     

    void rollDice(){
      // var diceRoll = Random().nextInt(6)+1; //to give a value betwn 1 -6 bcoz we have images numbered from 1-6
      setState((){
        currentDiceRoll = randomizer.nextInt(6)+1;
        //Basically, its kind of a loop, it tells flutter to reexecute(build method) the code to display the changed UI snapshot
        // activeDiceImage = 'assets/images/dice--$diceRoll.png';
      });
       
    }
   
    @override
    Widget build(context){
       return Column(
              mainAxisSize: MainAxisSize.min,
              children: [  
                 Image.asset(
                  'assets/images/dice-$currentDiceRoll.png',
                 width: 200,
                 ),
                const SizedBox(height: 20),
                TextButton(
                onPressed: rollDice,
                style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(top: 20,), if not padding then we can create a sized box
                foregroundColor: Colors.black54,
                textStyle: const TextStyle(fontSize: 28),),
                child: const Text('Roll Dice'),
                )
              ],
            );
    }
}