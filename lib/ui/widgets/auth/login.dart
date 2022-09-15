import 'package:flutter/material.dart';
import 'package:paciente_medico_app/global/globals.dart';
import 'package:provider/provider.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // final authProvider = Provider.of<AuthProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Form(
        child: Column(
          children: [
            TextFormField(
              validator: (value) {
                if (value == null || value.length < 4 || value.isEmpty) {
                  return 'Igrese Usario o Correo Valido';
                }
                return null;
              },
              // keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              // cursorColor: Constants.primaryColor,
              style: const TextStyle(color: Colors.black),

              decoration: const InputDecoration(
                // label: Text('Usuario o Email'),
                hintText: "Usuario o Correo",
                hintStyle: TextStyle(color: Colors.black),

                prefixIcon: Padding(
                  padding: EdgeInsets.all(Constants.primaryPanding),
                  child: Icon(
                    Icons.person,
                    //color: Constants.primaryColor,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: Constants.primaryPanding),
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.length < 6 || value.isEmpty) {
                    return '   Igrese Contraseña Valida';
                  }
                  return null;
                },
                obscureText: true,
                obscuringCharacter: '*',

                textInputAction: TextInputAction.done,
                // cursorColor: Constants.primaryColor,
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                  hintStyle: TextStyle(color: Colors.black),
                  contentPadding: EdgeInsets.zero,
                  hintText: "Contraseña",
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(Constants.primaryPanding),
                    child: Icon(
                      Icons.lock,
                      // color: Constants.primaryColor,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: Constants.primaryPanding),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                maximumSize: const Size(double.infinity, 48),
                minimumSize: const Size(double.infinity, 48),
              ),
              onPressed: () {},
              child: Text(
                "Login".toUpperCase(),
                // style: const TextStyle(color: Constants.textColorSecundary),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
