import 'package:flutter/material.dart';
import 'package:portfolio_responsive/NavigationBar/NavBar.dart';
import 'package:portfolio_responsive/bottom/bottom.dart';
import 'package:portfolio_responsive/screens/resume_Screen/resume_ScreenLayout.dart';

class ResumeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEAE5E5),
      body: SafeArea(
        child: ListView(children: [
          Column(
            children: [
              NavigationBar(),
              ResumeBody(),
            ],
          ),
          Bottom(),
        ]),
      ),
    );
  }
}
