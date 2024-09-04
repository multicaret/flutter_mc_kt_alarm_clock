// import 'package:flutter_test/flutter_test.dart';
// import 'package:flutter_mc_kt_alarm_clock/flutter_mc_kt_alarm_clock.dart';
// import 'package:flutter_mc_kt_alarm_clock/flutter_mc_kt_alarm_clock_platform_interface.dart';
// import 'package:flutter_mc_kt_alarm_clock/flutter_mc_kt_alarm_clock_method_channel.dart';
// import 'package:plugin_platform_interface/plugin_platform_interface.dart';
//
// class MockFlutterMcKtAlarmClockPlatform
//     with MockPlatformInterfaceMixin
//     implements FlutterMcKtAlarmClockPlatform {
//
//   @override
//   Future<String?> getPlatformVersion() => Future.value('42');
// }
//
// void main() {
//   final FlutterMcKtAlarmClockPlatform initialPlatform = FlutterMcKtAlarmClockPlatform.instance;
//
//   test('$MethodChannelFlutterMcKtAlarmClock is the default instance', () {
//     expect(initialPlatform, isInstanceOf<MethodChannelFlutterMcKtAlarmClock>());
//   });
//
//   test('getPlatformVersion', () async {
//     FlutterMcKtAlarmClock flutterMcKtAlarmClockPlugin = FlutterMcKtAlarmClock();
//     MockFlutterMcKtAlarmClockPlatform fakePlatform = MockFlutterMcKtAlarmClockPlatform();
//     FlutterMcKtAlarmClockPlatform.instance = fakePlatform;
//
//     expect(await flutterMcKtAlarmClockPlugin.getPlatformVersion(), '42');
//   });
// }
