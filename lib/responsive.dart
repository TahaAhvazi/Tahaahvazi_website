import 'package:TahaAhvazi/home_tablet.dart';
import 'package:TahaAhvazi/responsive_Layouts/home_desktop.dart';
import 'package:TahaAhvazi/responsive_Layouts/home_large_tablet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Responsive extends StatelessWidget {
  const Responsive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Widget screen;
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 1628) {
            return HomeScreenDesktop();
          }
          if (constraints.maxWidth > 1343 && constraints.maxWidth <= 1628) {
            return HomeScreenLargeTablet();
          }
          if (constraints.maxWidth > 900 && constraints.maxWidth <= 1343) {
            return HomeScreenTablet();
          }
          return Container(
            color: Colors.white,
            height: 200,
            width: 500,
          );
        },
      ),
    );
  }
}
