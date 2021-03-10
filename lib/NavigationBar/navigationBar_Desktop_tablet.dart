import 'package:flutter/material.dart';
import 'package:portfolio_responsive/Widgets/Routes.dart';
import 'package:portfolio_responsive/Widgets/centeredView.dart';
import 'package:portfolio_responsive/Widgets/name.dart';
import 'package:portfolio_responsive/Widgets/ui_lements.dart';

class NavigationBarDesktopTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CenteredView(
      child: Container(
        child: Row(
          children: <Widget>[
            PortfolioName(
              name: 'Hemant Sharma',
              occupation: 'Hybrid developer/Designer',
              nameSize: 40,
              occupationSize: 15,
            ),
            Flexible(
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Wrap(
                  children: <Widget>[
                    UpperFlatButton(
                      title: 'HOME',
                      onpress: () {
                        Navigator.pushNamed(context, Routes.home);
                      },
                    ),
                    UpperFlatButton(
                      title: 'RESUME',
                      onpress: () {
                        Navigator.pushNamed(context, Routes.resume);
                      },
                    ),
                    UpperFlatButton(
                      title: 'PROJECTS',
                      onpress: () {},
                    ),
                    UpperFlatButton(
                      title: 'CONTACTS',
                      onpress: () {},
                    ),
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
