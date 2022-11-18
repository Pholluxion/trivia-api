import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TriviaBox extends StatelessWidget {
  const TriviaBox({super.key, required this.trivia});

  final String trivia;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Center(
        child: Stack(
          children: [
            Text(
              trivia,
              style: GoogleFonts.singleDay(fontSize: 30.0),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
