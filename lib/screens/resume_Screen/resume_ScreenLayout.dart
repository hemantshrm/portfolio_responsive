import 'package:flutter/material.dart';
import 'package:portfolio_responsive/screens/resume_Screen/resume_DesktopTablet.dart';
import 'package:portfolio_responsive/screens/resume_Screen/resume_Mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResumeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: ResumeMobile(),
      tablet: ResumeDesktopTab(),
    );
  }
}
