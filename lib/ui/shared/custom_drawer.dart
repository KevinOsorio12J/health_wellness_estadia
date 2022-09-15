import 'package:flutter/material.dart';
import 'package:paciente_medico_app/global/globals.dart';

class CustomDrawerMenu extends StatelessWidget {
  const CustomDrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      backgroundColor: Theme.of(context).colorScheme.tertiary.withOpacity(
            Constants.colorSecundaryOpacity,
          ),
      child: ListView(children: [
        ListTile(onTap: () {}, title: Text('Consulta'))
        // DrawerHeader(
        //   child: Container(
        //     height: 100,
        //     width: 100,
        //     color: Colors.red,
        //   ),
        // )
      ]),
    );
  }
}
