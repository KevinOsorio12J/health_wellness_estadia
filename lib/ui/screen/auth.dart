import 'package:flutter/material.dart';
import 'package:paciente_medico_app/global/globals.dart';
import 'package:paciente_medico_app/ui/ui.dart';

class AuthLayout extends StatelessWidget {
  const AuthLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: ResponsiveLayout(
            phone: _MobileBody(child: LoginView()),
            tablet: _DesktopBody(child: LoginView()),
            desktop: _DesktopBody(child: LoginView())));
  }
}

class _MobileBody extends StatelessWidget {
  const _MobileBody({Key? key, required this.child}) : super(key: key);
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: const BoxDecoration(
            image:
                DecorationImage(image: Constants.bgImage, fit: BoxFit.cover)),
      ),
      Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //  const SizedBox(
              //  height: 85,
              // ),
              //const CustomTitle(),
              //const SizedBox(
              // height: 9,
              // ),
              SizedBox(
                width: double.infinity,
                height: 350,
                child: child,
              )
            ],
          ),
        ),
      ),
    ]);
  }
}

class _DesktopBody extends StatelessWidget {
  const _DesktopBody({Key? key, required this.child}) : super(key: key);
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          //background login
          const CustomBackgruond(),
          // View container
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 200),
            child: SizedBox(
              width: 500,
              child: child!,
            ),
          )
        ],
      ),
    );
  }
}
