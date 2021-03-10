import 'package:flutter/material.dart';
import 'package:portfolio_responsive/NavigationBar/NavBar.dart';
import 'package:portfolio_responsive/body/body.dart';
import 'package:portfolio_responsive/bottom/bottom.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEAE5E5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              NavigationBar(),
              Body(),
              SizedBox(
                height: 20,
              ),
              Bottom(),
            ],
          ),
        ),
      ),
    );
  }
}
