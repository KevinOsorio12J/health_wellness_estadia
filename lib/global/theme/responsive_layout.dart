import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget phone;
  final Widget tablet;
  final Widget desktop;
  const ResponsiveLayout(
      {Key? key,
      required this.tablet,
      required this.phone,
      required this.desktop})
      : super(key: key);

  static int phoneLimit = 600;
  static int ipadLimit = 1200;
  static int tinyHeightLimit = 100;
  static int tinyLimit = 270;

  static bool isTinyHeightLimit(BuildContext context) =>
      MediaQuery.of(context).size.height < tinyHeightLimit;

  static bool isTinyLimit(BuildContext context) =>
      MediaQuery.of(context).size.width < tinyLimit;
  static bool isPhone(BuildContext context) =>
      MediaQuery.of(context).size.width < phoneLimit;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < ipadLimit &&
      MediaQuery.of(context).size.width >= phoneLimit;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= ipadLimit;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth < phoneLimit) {
        return phone;
      }
      if (constraints.maxWidth < ipadLimit) {
        return tablet;
      } else {
        return desktop;
      }
    });
  }
}
