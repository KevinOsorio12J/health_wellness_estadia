import 'package:flutter/material.dart';
import 'package:paciente_medico_app/global/globals.dart';
import 'package:paciente_medico_app/services/services.dart';
import 'package:paciente_medico_app/provider/providers.dart';
import 'package:paciente_medico_app/ui/ui.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Preferences.configurePrefs();
  
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => MenuProvider(),
    ),
    ChangeNotifierProvider(
      create: (_) => ThemeChangerProvider(isDarkmode: Preferences.isDarkMode),
    )
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appTheme = Provider.of<ThemeChangerProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme.currentTheme,
      title: 'Paciente Clinico',
      navigatorKey: NavigationServices.navigatorKey,
      scaffoldMessengerKey: NotificationsServices.messegerkey,
      home: HomeLayout(
          child: Container(
        color: Colors.red,
        height: 100,
        width: 100,
        child: Column(children: [
          Text("HOME"),
          Text("HOME"),
        ]),
      )),
    );
  }
}
