import 'package:flutter/material.dart';
import 'package:flutter_lab4_app/styled_text.dart';

class GradientContainer
    extends StatelessWidget {
  const GradientContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white,
            Colors.blue,
            Colors.red,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(child: StyledText()),
    );
  }
}
