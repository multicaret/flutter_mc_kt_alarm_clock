import 'package:flutter/material.dart';
import 'package:flutter_mc_kt_alarm_clock/flutter_mc_kt_alarm_clock.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const String _title = 'Alarm Clock Example';
  final FlutterMcKtAlarmClock _flutterMcKtAlarmClockPlugin = FlutterMcKtAlarmClock();

  @override
  Widget build(BuildContext context) {
    DateTime dateTime = DateTime.now();
    int hours = dateTime.hour;
    int minutes = dateTime.minute;
    String hoursString = hours.toString().padLeft(minutes < 10 ? 1 : 2, '0');
    String minutesString = minutes.toString().padLeft(minutes < 10 ? 1 : 2, '0');
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(_title),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(25),
                child: TextButton(
                  child: Text(
                    'Create alarm at $hoursString:$minutesString',
                    style: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    _flutterMcKtAlarmClockPlugin.createAlarm(
                      hour: hours,
                      minutes: minutes,
                      skipUi: false,
                      title: _title,
                    );
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.all(25),
                child: TextButton(
                  onPressed: _flutterMcKtAlarmClockPlugin.showAlarms,
                  child: const Text(
                    'Show alarms',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(25),
                child: TextButton(
                  child: const Text(
                    'Create timer for 30 seconds',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    _flutterMcKtAlarmClockPlugin.createTimer(length: 30);
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.all(25),
                child: TextButton(
                  onPressed: _flutterMcKtAlarmClockPlugin.showTimers,
                  child: const Text(
                    'Show Timers',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
