import 'flutter_mc_kt_alarm_clock_platform_interface.dart';

class FlutterMcKtAlarmClock {
  // Todo(suheyl): [2024-09-04 - 1_18_p_m_] Remove this method
  Future<String?> getPlatformVersion() {
    return FlutterMcKtAlarmClockPlatform.instance.getPlatformVersion();
  }

  void showAlarms() {
    FlutterMcKtAlarmClockPlatform.instance.showAlarms();
  }

  void showTimers() {
    FlutterMcKtAlarmClockPlatform.instance.showTimers();
  }

  void createTimer({
    required int length,
    String title = '',
    bool skipUi = true,
  }) {
    FlutterMcKtAlarmClockPlatform.instance.createTimer(
      length: length,
      title: title,
      skipUi: skipUi,
    );
  }

  void createAlarm({
    required int hour,
    required int minutes,
    String title = '',
    bool skipUi = true,
  }) {
    FlutterMcKtAlarmClockPlatform.instance.createAlarm(
      hour: hour,
      minutes: minutes,
      title: title,
      skipUi: skipUi,
    );
  }
}
