import 'package:flutter/material.dart';

class CircleButtonRow extends StatelessWidget {
  const CircleButtonRow();

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      children: [
        CircleWidgets(
          onpress: () {},
          colour: Color(0xffE83556),
          text: 'My Resume',
          radii: 70,
        ),
        CircleWidgets(
          onpress: () {},
          colour: Color(0xff61D0D4),
          radii: 70,
          text: 'My Work',
        ),
        CircleWidgets(
            onpress: () {},
            colour: Color(0xffED1C926),
            text: 'My Skills',
            radii: 70),
      ],
    );
  }
}

class CircleWidgets extends StatelessWidget {
  CircleWidgets({this.radii, this.colour, this.text, this.onpress});
  final String text;
  final Color colour;
  final Function onpress;
  final double radii;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: CircleAvatar(
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: colour,
        radius: radii,
      ),
    );
  }
}
