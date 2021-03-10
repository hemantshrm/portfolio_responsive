import 'package:flutter/material.dart';

class PortfolioImage extends StatelessWidget {
  const PortfolioImage({this.radii, this.imageLocation});
  final String imageLocation;
  final double radii;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: AssetImage(imageLocation),
      radius: radii,
    );
  }
}
