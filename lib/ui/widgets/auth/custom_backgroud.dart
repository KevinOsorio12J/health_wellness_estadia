import 'package:flutter/material.dart';
import 'package:paciente_medico_app/global/globals.dart';

class CustomBackgruond extends StatelessWidget {
  const CustomBackgruond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      decoration: buildBackgroundImage(),
    ));
  }

  BoxDecoration buildBackgroundImage() => const BoxDecoration(
      image: DecorationImage(image: Constants.bgImage, fit: BoxFit.cover));
}
