import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_mc_kt_alarm_clock_method_channel.dart';

abstract class FlutterMcKtAlarmClockPlatform extends PlatformInterface {
  /// Constructs a FlutterMcKtAlarmClockPlatform.
  FlutterMcKtAlarmClockPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterMcKtAlarmClockPlatform _instance = MethodChannelFlutterMcKtAlarmClock();

  /// The default instance of [FlutterMcKtAlarmClockPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterMcKtAlarmClock].
  static FlutterMcKtAlarmClockPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterMcKtAlarmClockPlatform] when
  /// they register themselves.
  static set instance(FlutterMcKtAlarmClockPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  void showAlarms() {
    throw UnimplementedError('showAlarms() has not been implemented.');
  }

  void showTimers() {
    throw UnimplementedError('showTimers() has not been implemented.');
  }

  void createAlarm({
    required int hour,
    required int minutes,
    String title = '',
    bool skipUi = true,
  }) {
    throw UnimplementedError('createAlarm() has not been implemented.');
  }

  void createTimer({
    required int length,
    String title = '',
    bool skipUi = true,
  }) {
    throw UnimplementedError('createTimer() has not been implemented.');
  }
}
