
import 'dart:async';

import 'package:flutter/services.dart';

class Countdown {
  static const MethodChannel _channel = MethodChannel('countdown');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
