import 'package:flutter/material.dart';
import 'package:my_first_project/styled_text.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  void rollDice() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Himmel.jpg', width: 300),
            SizedBox(height: 20),
            Text(
              'KARENA PAHLAWAN HIMMEL TIDAK AKAN MEMBAYAR PAJAK 12%',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(foregroundColor: Colors.white, textStyle: TextStyle(fontSize: 20),),
              child: const Text('-HIMMEL THE HERO-'),
            )
          ],
        ),
      ),
    );
  }
}

// class GradientContainer extends StatelessWidget {
//   const GradientContainer({super.key, required this.colors});

//   final List<Color> colors;

//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors, 
//         begin: startAlignment, 
//         end: endAlignment
//         ),
//       ),
//       child: const Center(
//         child: StyledText('ESOK KOLOH TAK CIKGU')
//       ),
//     );
//   }
// }