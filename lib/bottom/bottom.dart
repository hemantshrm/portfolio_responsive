import 'package:flutter/material.dart';
import 'package:portfolio_responsive/bottom/bottomTablet.dart';
import 'package:portfolio_responsive/bottom/bottom_desktopTab.dart';
import 'package:portfolio_responsive/bottom/bottom_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: BottomMobile(),
      tablet: BottomTablet(),
      desktop: BottomDesktopTab(),
    );
  }
}
