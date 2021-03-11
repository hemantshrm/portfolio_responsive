import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_responsive/Widgets/ui_lements.dart';
import 'package:portfolio_responsive/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomTablet extends StatelessWidget {
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
        fit: BoxFit.none,
        child: Wrap(
          spacing: 15,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BottomItems(
              circleIcon: Icon(Icons.call),
              mainText: 'Call',
              subText: '99899899899',
              width: Get.width,
              onClick: () {
                _makePhoneCall('tel:$_phone');
              },
            ),
            BottomItems(
                circleIcon: Icon(Icons.mail_outline_outlined),
                mainText: 'Contact',
                subText: 'Flutter.dev',
                width: Get.width,
                onClick: () {
                  _launchURL();
                }),
            BottomItems(
                circleIcon: Icon(Icons.add),
                mainText: 'Follow me',
                subText: '',
                width: Get.width,
                onClick: () {}),
            BottomItems(
                circleIcon: Icon(Icons.copyright_outlined),
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
