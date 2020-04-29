import 'dart:async';

import 'package:flutter/services.dart';

class Login {
  static const MethodChannel _channel =
      const MethodChannel('login');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
