import 'dart:io';
import 'package:flutter/foundation.dart' show kIsWeb;

class Environments {
  static const String _androidApi = 'http://10.0.2.2:3000/api';
  static const String _otherPlataformApi = 'http://localhost:3000/api';
  // static const String _androidApi = 'https://app.sundaybi.com/api';
  // static const String _otherPlataformApi = 'https://app.sundaybi.com/api';

  static String apiUrl = kIsWeb
      ? _otherPlataformApi
      : Platform.isAndroid
          ? _androidApi
          : _otherPlataformApi;
  static String socketsUrl =
      Platform.isAndroid ? 'http://10.0.2.2:3000' : 'http://localhost:3000';
}
