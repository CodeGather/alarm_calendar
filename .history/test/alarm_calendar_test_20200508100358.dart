/* 
 * @Author: 21克的爱情
 * @Date: 2020-05-08 10:01:09
 * @Email: raohong07@163.com
 * @LastEditors: 21克的爱情
 * @LastEditTime: 2020-05-08 10:03:58
 * @Description: 
 */
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:alarm_calendar/alarm_calendar.dart';

void main() {
  const MethodChannel channel = MethodChannel('alarm_calendar');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await AlarmCalendar.CheckReadPermission(), '42');
  });
}
