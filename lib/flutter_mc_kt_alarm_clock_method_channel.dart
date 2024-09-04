import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_mc_kt_alarm_clock_platform_interface.dart';

/// An implementation of [FlutterMcKtAlarmClockPlatform] that uses method channels.
class MethodChannelFlutterMcKtAlarmClock extends FlutterMcKtAlarmClockPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final MethodChannel methodChannel = const MethodChannel('flutter_mc_kt_alarm_clock');

  @override
  Future<String?> getPlatformVersion() async {
    final String? version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  /// Shows the alarms.
  ///
  /// Opens the default clock app showing alarms.
  @override
  void showAlarms() {
    try {
      if (Platform.isAndroid) {
        methodChannel.invokeMethod('showAlarms');
      } else {
        throw UnimplementedError();
      }
    } on PlatformException {
      debugPrint('Error showing alarms.');
    }
  }

  /// Shows the timers.
  ///
  /// Opens the default clock app showing timers.
  @override
  void showTimers() {
    try {
      if (Platform.isAndroid) {
        methodChannel.invokeMethod('showTimers');
      } else {
        throw UnimplementedError();
      }
    } on PlatformException {
      debugPrint('Error showing timers.');
    }
  }

  /// Creates an alarm at the specified [hour] and [minutes].
  ///
  /// Optionally alarm's [title] can also be specified and
  /// whether clock app should open or not
  /// using the [skipUi] flag.
  @override
  void createAlarm({
    required int hour,
    required int minutes,
    String title = '',
    bool skipUi = true,
  }) {
    try {
      if (Platform.isAndroid) {
        methodChannel.invokeMethod('createAlarm', <String, dynamic>{
          'hour': hour,
          'minutes': minutes,
          'title': title,
          'skipUi': skipUi,
        });
      } else {
        throw UnimplementedError();
      }
    } on PlatformException {
      debugPrint('Error creating an alarm.');
    }
  }

  /// Creates a timer with a specified [length] in seconds.
  ///
  /// Optionally timer's [title] can also be specified and
  /// whether clock app should open or not
  /// using the [skipUi] flag.
  @override
  void createTimer({
    required int length,
    String title = '',
    bool skipUi = true,
  }) {
    try {
      if (Platform.isAndroid) {
        methodChannel.invokeMethod('createTimer', <String, dynamic>{
          'length': length,
          'title': title,
          'skipUi': skipUi,
        });
      } else {
        throw UnimplementedError();
      }
    } on PlatformException {
      debugPrint('Error creating a timer.');
    }
  }
}
