import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_responsive/Widgets/CircleButtonRow.dart';
import 'package:portfolio_responsive/Widgets/centeredView.dart';
import 'package:portfolio_responsive/Widgets/ui_lements.dart';
import 'package:portfolio_responsive/constants.dart';

class ResumeDesktopTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CenteredView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "RESUME",
              textAlign: TextAlign.start,
              style: GoogleFonts.noticiaText(
                color: Constants.desktopTextcolor,
                fontSize: 70,
                letterSpacing: 3,
              ),
            ),
            Divider(
              // endIndent: 500,
              thickness: 0.3,
              color: Colors.black,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(top: 30, bottom: 30),
              child: FittedBox(
                fit: BoxFit.fitHeight,
                child: Row(
                  children: [
                    ResumeCircle(
                      circleTitle: "Professional\ninfo",
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    FittedBox(
                        fit: BoxFit.fitWidth,
                        child: ResumeContent(
                            heading: "",
                            duration: "",
                            description:
                                "I'm a paragraph. Click here to add your own text and edit me. It’s easy. Just click “Edit Text” or double click me and you can start adding your own content and make changes to the font. Feel free to drag and drop me anywhere you like on your page. I’m a great place for you to write more. Tell a story about yourself.")),
                    SizedBox(
                      width: 90,
                    ),
                    Activities(
                      title: "Skills",
                      icon: Icon(Icons.person),
                      details: "PHTOSHOP\nFLUTTER\nDART",
                    )
                  ],
                ),
              ),
            ),
            Divider(
              endIndent: 500,
              thickness: 0.3,
              color: Colors.black,
            ),
            Container(
              padding: EdgeInsets.only(top: 30, bottom: 30),
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Row(
                  children: [
                    ResumeCircle(
                      circleTitle: "Work\nExperience",
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Column(
                        children: [
                          ResumeContent(
                            heading: "Job Position",
                            duration: "2019-Present",
                            description:
                                "I'm a paragraph. Click here to add your own text and edit me. It’s easy. Just click “Edit Text” or double click me and you can start adding your own content and make changes to the font. Feel free to drag and drop me anywhere you like on your page. I’m a great place for you to write more. Tell a story about yourself.",
                          ),
                          ResumeContent(
                            heading: "Job Position",
                            duration: "2019-Present",
                            description:
                                "I'm a paragraph. Click here to add your own text and edit me. It’s easy. Just click “Edit Text” or double click me and you can start adding your own content and make changes to the font. Feel free to drag and drop me anywhere you like on your page. I’m a great place for you to write more. Tell a story about yourself.",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Activities(
                      title: "languages",
                      icon: Icon(Icons.language),
                      details: "English\nHindi",
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ResumeContent extends StatelessWidget {
  ResumeContent({this.duration, this.heading, this.description});
  final String duration, heading, description;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30, bottom: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading,
            style: buttonTextStyle.copyWith(
                fontSize: 20, fontWeight: FontWeight.w700),
          ),
          Text(
            duration,
            style: buttonTextStyle.copyWith(
                fontSize: 15, fontWeight: FontWeight.w700),
          ),
          Container(
            width: 450,
            child: Text(
              description,
              style: TextStyle(fontSize: 18),
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}

class Activities extends StatelessWidget {
  Activities({this.title, this.icon, this.details});
  final String title, details;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(backgroundColor: Colors.white, radius: 20, child: icon),
        SizedBox(
          height: 15,
        ),
        Text(
          title,
          style: buttonTextStyle.copyWith(fontSize: 18),
        ),
        SizedBox(
          height: 15,
        ),
        Container(
          color: Colors.black,
          height: 0.3,
          width: Get.width / 8,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          details,
          style: buttonTextStyle,
        )
      ],
    );
  }
}

class ResumeCircle extends StatelessWidget {
  ResumeCircle({this.circleTitle});
  final String circleTitle;
  @override
  Widget build(BuildContext context) {
    return CircleWidgets(
        onpress: () {
          null;
        },
        colour: Constants.BottomBar_Color,
        text: circleTitle,
        radii: 70);
  }
}
