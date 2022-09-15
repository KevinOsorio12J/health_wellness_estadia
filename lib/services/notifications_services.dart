import 'package:flutter/material.dart';

class NotificationsServices {
  static GlobalKey<ScaffoldMessengerState> messegerkey =
      GlobalKey<ScaffoldMessengerState>();

  static showSnapbarError(String message) {
    final snackBar = SnackBar(
        backgroundColor: Colors.red.withOpacity(0.5),
        content: Text(
          message,
          style: const TextStyle(color: Colors.white),
        ));

    messegerkey.currentState!.showSnackBar(snackBar);
  }

  static showSnapbar(String message) {
    final snackBar = SnackBar(
        backgroundColor: Colors.green.withOpacity(0.5),
        content: Text(
          message,
          style: const TextStyle(color: Colors.white),
        ));

    messegerkey.currentState!.showSnackBar(snackBar);
  }
}
