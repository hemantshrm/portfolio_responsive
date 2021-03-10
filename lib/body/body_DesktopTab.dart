import 'package:flutter/material.dart';
import 'package:portfolio_responsive/Widgets/CircleButtonRow.dart';
import 'package:portfolio_responsive/Widgets/PorfoI_image.dart';
import 'package:portfolio_responsive/Widgets/bioText.dart';
import 'package:portfolio_responsive/Widgets/centeredView.dart';
import 'package:portfolio_responsive/Widgets/ui_lements.dart';

class BodyDesktopTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CenteredView(
      child: FittedBox(
        child: Wrap(
          spacing: 50,
          children: [
            PortfolioImage(
              radii: 200,
              imageLocation: 'images/avatar.jpeg',
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RightSideRow(),
                SizedBox(
                  height: 30,
                ),
                CircleButtonRow(),
                SizedBox(
                  height: 30,
                ),
                BodyBioText(
                  fontsize: 24,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
