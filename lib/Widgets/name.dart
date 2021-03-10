import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PortfolioName extends StatelessWidget {
  const PortfolioName(
      {this.name, this.occupation, this.nameSize, this.occupationSize});
  final String name, occupation;
  final double nameSize, occupationSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name,
            style: GoogleFonts.montserrat(
                color: Color(0xff4D4D4D),
                fontSize: nameSize,
                letterSpacing: 3,
                fontWeight: FontWeight.w500)),
        SizedBox(
          height: 5,
        ),
        Text(occupation,
            style: GoogleFonts.montserrat(
                color: Color(0xff4d4d4d),
                fontSize: occupationSize,
                letterSpacing: 3,
                fontWeight: FontWeight.w500)),
      ],
    );
  }
}
