import 'package:flutter/material.dart';

import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
      const MaterialApp(
      home: Scaffold(
        // backgroundColor: Color.fromARGB(255, 2, 84, 95),
        body: GradientContainer(
          Color.fromARGB(255, 26, 2, 80), 
          Color.fromARGB(26, 10, 146, 156),
        )  ,
      ),
    ),
  );
}

 