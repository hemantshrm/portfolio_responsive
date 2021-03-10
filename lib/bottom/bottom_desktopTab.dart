import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_responsive/Widgets/ui_lements.dart';
import 'package:portfolio_responsive/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomDesktopTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _phone = '965400928';

    _launchURL() async {
      const url = 'https://flutter.dev';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    Future<void> _makePhoneCall(String url) async {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return Container(
      color: Constants.BottomBar_Color,
      padding: EdgeInsets.symmetric(horizontal: Get.width / 5),
      height: Get.height / 5,
      width: double.infinity,
      child: FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
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
                _makePhoneCall('tel:$_phone');
              },
            ),
            SizedBox(
              width: 100,
            ),
            CircleIcon(circleIcon: Icon(Icons.mail_outline_outlined)),
            SizedBox(
              width: 20,
            ),
            DropContText(
                mainText: 'Contact',
                subText: 'Flutter.dev',
                width: Get.width,
                onClick: () {
                  _launchURL();
                }),
            SizedBox(
              width: 100,
            ),
            CircleIcon(circleIcon: Icon(Icons.add)),
            SizedBox(
              width: 20,
            ),
            DropContText(
                mainText: 'Follow me',
                subText: '',
                width: Get.width,
                onClick: () {}),
            SizedBox(
              width: 100,
            ),
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
      ),
    );
  }
}