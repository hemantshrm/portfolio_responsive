import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_responsive/constants.dart';

class DropContText extends StatelessWidget {
  final String mainText, subText;
  final Function onClick;
  double width;
  DropContText({this.subText, this.mainText, this.width, this.onClick});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          mainText,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w900,
            fontSize: 19,
          ),
        ),
        GestureDetector(
          onTap: onClick,
          child: Text(
            subText,
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
        ),
      ],
    );
  }
}

class CircleIcon extends StatelessWidget {
  CircleIcon({this.circleIcon});
  final Icon circleIcon;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        backgroundColor: Colors.white, radius: 20, child: circleIcon);
  }
}

// -------------------------------UpperBUTTONS------------------------------------//

class UpperFlatButton extends StatelessWidget {
  UpperFlatButton({this.title, @required this.onpress});
  final String title;
  final Function onpress;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onpress,
      child: Text(
        title,
        style: buttonTextStyle,
      ),
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
    );
  }
}

class RightSideRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Hello,",
            style: GoogleFonts.noticiaText(
                color: Color(0xff4d4d4d),
                fontSize: 100,
                letterSpacing: 3,
                fontWeight: FontWeight.w800)),
        SizedBox(
          height: 5,
        ),
        Text("a bit about me:",
            style: GoogleFonts.noticiaText(
                color: Color(0xff4d4d4d),
                fontSize: 50,
                letterSpacing: 3,
                fontWeight: FontWeight.w400)),
      ],
    );
  }
}
