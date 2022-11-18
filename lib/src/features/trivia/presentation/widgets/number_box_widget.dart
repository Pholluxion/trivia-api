import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NumberBox extends StatelessWidget {
  const NumberBox({super.key, required this.number});

  final String number;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Center(
          child: Stack(
            children: [
              Text(
                number,
                style: GoogleFonts.singleDay(
                  fontSize: 250.0,
                ),
                textAlign: TextAlign.center,
              ),
              Transform.translate(
                offset: const Offset(20.0, 0),
                child: Text(
                  number,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.singleDay(
                    fontSize: 250.0,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
