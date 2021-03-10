import 'package:flutter/material.dart';

class BodyBioText extends StatelessWidget {
  const BodyBioText({this.fontsize});
  final double fontsize;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 450,
      child: Text(
        "I'm a paragraph. Click here to add your own text and edit me. It’s easy. Just click “Edit Text” or double click me and you can start adding your own content and make changes to the font. Feel free to drag and drop me anywhere you like on your page. I’m a great place for you to write more. Tell a story and let your users get to know you.",
        style: TextStyle(letterSpacing: 1, fontSize: fontsize),
        maxLines: 10,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
