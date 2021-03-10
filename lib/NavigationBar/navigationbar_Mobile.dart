import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_responsive/Widgets/name.dart';

class NavigationBarMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PortfolioName(
            name: 'Hemant Sharma',
            occupation: 'Hybrid developer/Designer',
            nameSize: 25,
            occupationSize: 15,
          ),
          IconButton(
              icon: Icon(
                Icons.menu_rounded,
                size: 40,
                color: Colors.black,
              ),
              onPressed: () {
                Get.bottomSheet(Container(
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: [
                      MenuTextButtons(name: 'Home'),
                      LineSeprator(),
                      MenuTextButtons(name: 'Resume'),
                      LineSeprator(),
                      MenuTextButtons(name: 'Project'),
                      LineSeprator(),
                      MenuTextButtons(name: 'Contact'),
                    ],
                  ),
                ));
              })
        ],
      ),
    );
  }
}

class LineSeprator extends StatelessWidget {
  const LineSeprator({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 1,
      color: Colors.white,
      indent: 70,
      endIndent: 70,
    );
  }
}

class MenuTextButtons extends StatelessWidget {
  MenuTextButtons({this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(
          fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
    );
  }
}
