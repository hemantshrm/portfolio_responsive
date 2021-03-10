import 'package:flutter/material.dart';
import 'package:portfolio_responsive/body/body_DesktopTab.dart';
import 'package:portfolio_responsive/body/body_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      tablet: BodyDesktopTab(),
      mobile: BodyMobile(),
    );
  }
}
