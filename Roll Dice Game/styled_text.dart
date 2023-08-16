import 'package:flutter/material.dart';

class styled_text extends StatelessWidget{

  const styled_text(String text, {super.key});

  @override
  Widget build(context){
    return const Text(
      'Hello World', 
      style: TextStyle(
      color: Color.fromARGB(255, 41, 12, 2) ,
      fontSize: 28,
      ),
    );
  }
}