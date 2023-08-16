 import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';
// import 'package:basics/dice'
 
// const startAlignment = Alignment.topLeft;
// const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget//(inbuilt class)
{//to change the image of the dice we need to chnge stateless widget class to stateful widget cause we're changing the state of the widget
//but majority of content of the gradient container does not depend on the stateful widget i.e changing(variable) data so it would be inconvenient 
//to change the entire content of gradient container just to use stateful widget.
  const GradientContainer(this.color1, this.color2, {super.key});//this.color1,this.color2);//constructive function
  const GradientContainer.brown({super.key})
       : color1 = Colors.white70,
         color2 = Colors.brown;

  final Color color1;
  final Color color2;

  @override//to override build method from inbuilt class 
  Widget build(context){
      return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color1, color2],
                 //Color.fromARGB(255, 26, 2, 80),//[color1, color2]
                 //Color.fromARGB(26, 10, 146, 156),
              
              begin:Alignment.topLeft,
              end:Alignment.bottomRight,
            ),
          ),
          child: const Center(
          child:  DiceRoller(),
          ),
        );
  }
}