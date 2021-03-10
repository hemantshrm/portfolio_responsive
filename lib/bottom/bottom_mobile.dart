import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_responsive/Widgets/ui_lements.dart';
import 'package:portfolio_responsive/constants.dart';

class BottomMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var phone = '965400928';

    // launchURL() async {
    //   const url = 'https://flutter.dev';
    //   if (await canLaunch(url)) {
    //     await launch(url);
    //   } else {
    //     throw 'Could not launch $url';
    //   }
    // }
    //
    // Future<void> makePhoneCall(String url) async {
    //   if (await canLaunch(url)) {
    //     await launch(url);
    //   } else {
    //     throw 'Could not launch $url';
    //   }

    return Container(
      color: Constants.BottomBar_Color,
      padding: EdgeInsets.only(left: 20, top: 40, bottom: 40),
      height: Get.height / 2,
      width: Get.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleIcon(circleIcon: Icon(Icons.call)),
              SizedBox(
                width: 20,
              ),
              DropContText(
                mainText: 'Call',
                subText: '99899899899',
                width: Get.width,
                onClick: () {
                  // makePhoneCall('tel:$phone');
                },
              ),
            ],
          ),
          Row(
            children: [
              CircleIcon(circleIcon: Icon(Icons.mail_outline_outlined)),
              SizedBox(
                width: 20,
              ),
              DropContText(
                  mainText: 'Contact',
                  subText: 'Flutter.dev',
                  width: Get.width,
                  onClick: () {
                    // launchURL();
                  }),
            ],
          ),
          Row(
            children: [
              CircleIcon(circleIcon: Icon(Icons.add)),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Text(
                    'Follow Me',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                    ),
                  ),
                  Wrap(
                    spacing: 20,
                    children: [
                      ImageIcon(
                        AssetImage('images/behance.png'),
                        color: Colors.white,
                        size: 35,
                      ),
                      ImageIcon(
                        AssetImage('images/github.png'),
                        color: Colors.white,
                        size: 35,
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          Row(
            children: [
              CircleIcon(circleIcon: Icon(Icons.copyright_outlined)),
              SizedBox(
                width: 20,
              ),
              DropContText(
                  mainText: '© 2021 by Hemant.',
                  subText: 'Proudly created with Flutter',
                  width: Get.width,
                  onClick: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
