import 'package:flutter/material.dart';
import 'package:portfolio_responsive/Widgets/centeredView.dart';
import 'package:portfolio_responsive/Widgets/name.dart';
import 'package:portfolio_responsive/Widgets/ui_lements.dart';

class NavigationBarDesktopTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CenteredView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 30),
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
                          onpress: () {},
                        ),
                        UpperFlatButton(
                          title: 'RESUME',
                          onpress: () {},
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
          Container(
              height: 1,
              margin: EdgeInsets.only(bottom: 30),
              color: Color(0xFFEEEEEE)),
        ],
      ),
    );
  }
}
