import 'package:flutter/material.dart';
import 'package:paciente_medico_app/global/globals.dart';
import 'package:paciente_medico_app/services/services.dart';
import 'package:paciente_medico_app/ui/shared/custom_drawer.dart';
import 'package:paciente_medico_app/ui/ui.dart';

class HomeLayout extends StatelessWidget {
  final Widget child;
  const HomeLayout({Key? key, required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) => Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size(double.infinity, 50),
          child: (ResponsiveLayout.isTinyLimit(context) ||
                  ResponsiveLayout.isTinyHeightLimit(context))
              ? Container()
              : const CustomAppBar(),
        ),
        drawer: const CustomDrawerMenu(),
        body: ResponsiveLayout(
            phone: Card(
              color: Preferences.isDarkMode ? Colors.grey[700] : null,
              child: child,
            ),
            tablet: Card(
              color: Preferences.isDarkMode ? Colors.grey[700] : null,
              child: child,
            ),
            desktop: Row(
              children: [
                const CustomDrawerMenu(),
                //Expanded(
                //child:
                Card(
                  color: Preferences.isDarkMode ? Colors.grey[700] : null,
                  child: Padding(
                    padding: const EdgeInsets.all(100.0),
                    child: child,
                  ),
                ),
                //)
              ],
            )),
      ),
    );
  }
}
