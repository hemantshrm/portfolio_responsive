import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_responsive/Widgets/CircleButtonRow.dart';
import 'package:portfolio_responsive/Widgets/PorfoI_image.dart';
import 'package:portfolio_responsive/Widgets/bioText.dart';

class BodyMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      child: FittedBox(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello,",
                style: GoogleFonts.noticiaText(
                    color: Colors.black,
                    fontSize: 90,
                    letterSpacing: 3,
                    fontWeight: FontWeight.w900)),
            SizedBox(
              height: 2,
            ),
            Text("a bit about me:",
                style: GoogleFonts.noticiaText(
                    color: Colors.black,
                    fontSize: 40,
                    letterSpacing: 3,
                    fontWeight: FontWeight.w700)),
            SizedBox(
              height: 30,
            ),
            CircleButtonRow(),
            SizedBox(
              height: 30,
            ),
            PortfolioImage(
              radii: 220,
              imageLocation: 'images/avatar.jpeg',
            ),
            SizedBox(
              height: 30,
            ),
            BodyBioText(
              fontsize: 20,
            )
          ],
        ),
      ),
    );
  }
}
