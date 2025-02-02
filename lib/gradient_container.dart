import 'package:flutter/material.dart';
import 'package:my_first_project/styled_text.dart'; 

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 26, 2, 80),
          Color.fromARGB(255, 25, 7, 98)
        ], begin: startAlignment, 
        end: endAlignment
        ),
      ),
      child: const Center(
        child: StyledText()
      ),
    );
  }
}