import 'package:flutter/material.dart';
import 'package:portfolio_responsive/NavigationBar/navigationBar_Desktop_tablet.dart';
import 'package:portfolio_responsive/NavigationBar/navigationbar_Mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      tablet: NavigationBarDesktopTablet(),
      mobile: NavigationBarMobile(),
    );
  }
}
