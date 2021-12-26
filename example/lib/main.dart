/* 
 * @Author: 21克的爱情
 * @Date: 2020-04-28 16:50:26
 * @Email: raohong07@163.com
 * @LastEditors: 21克的爱情
 * @LastEditTime: 2021-12-26 10:04:37
 * @Description: 
 */

import 'package:alarm_calendar/alarm_calendar_plugin.dart';
import 'package:flutter/material.dart';
import 'dart:async';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Calendars calendars = new Calendars(
      new DateTime.now(),
      new DateTime.now().add(new Duration(days: 1)),
      '测试通知',
      '测试通知描述',
      [5],
      '1',
      1);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: new Text('创建日历账户'),
                onPressed: ()async {
                  final result = await AlarmCalendar.addAccount(
                      CalendarColumns.fromJson({
                        'name': '测试日历',
                        'accountName': 'raohong@163.com',
                        'accountType': 'LOCAL',
                        'dirty': '',
                        'visible': Visible.Show.index,
                        'mutators': '',
                        'ownerAccount': 'raohong07@163.com',
                        'maxReminders': '',
                        'allowedReminders': '',
                        'canModifyTimeZone': '',
                        'canOrganizerRespond': 0,
                        'canPartiallyUpdate': '',
                        'calendarDisplayName': '添加测试账户',
                        'calendarLocation': '',
                        'calendarTimezone': TimeZone().Shanghai,
                        'calendarColor': '#00ff00',
                        'syncEvents': 1,
                        'calendarAccessLevel': AccessLevel.CAL_ACCESS_OWNER.index,
                        'deleted': '',
                        'calSync1': '',
                        'calSync2': '',
                        'calSync3': '',
                        'calSync4': '',
                        'calSync5': '',
                        'calSync6': '',
                        'calSync7': '',
                        'calSync8': '',
                        'calSync9': '',
                        'calSync10': '',
                      })
                  );
                  print("创建手机日历中的账户");
                  print(result);
                },
              ),
              MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: new Text('获取日历账户'),
                onPressed: ()async {
                  final result = await AlarmCalendar.getAccount();
                  print("获得手机日历中的账户");
                  print(result);
                },
              ),
              MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: new Text('更新日历账户'),
                onPressed: ()async {
                  final result = await AlarmCalendar.updateAccount(
                      CalendarColumns.fromJson({
                        'id': '9',
                        'name': '测试日历',
                        'accountName': 'raohong@163.com',
                        'accountType': 'LOCAL',
                        'dirty': '',
                        'visible': Visible.Show.index,
                        'mutators': '',
                        'ownerAccount': 'raohong07@163.com',
                        'maxReminders': '',
                        'allowedReminders': '',
                        'canModifyTimeZone': '',
                        'canOrganizerRespond': 0,
                        'canPartiallyUpdate': '',
                        'calendarDisplayName': '添加测试账户更新',
                        'calendarLocation': '',
                        'calendarTimezone': TimeZone().Shanghai,
                        'calendarColor': '#00ff00',
                        'syncEvents': 1,
                        'calendarAccessLevel': AccessLevel.CAL_ACCESS_OWNER.index,
                        'deleted': '',
                        'calSync1': '',
                        'calSync2': '',
                        'calSync3': '',
                        'calSync4': '',
                        'calSync5': '',
                        'calSync6': '',
                        'calSync7': '',
                        'calSync8': '',
                        'calSync9': '',
                        'calSync10': '',
                      })
                  );
                  print("更新手机日历中的账户");
                  print(result);
                },
              ),
              MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: new Text('删除日历账户'),
                onPressed: ()async {
                  final result = await AlarmCalendar.delAccount(9);
                  print("删除手机日历中的账户");
                  print(result);
                },
              ),
              MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: new Text('创建日程'),
                onPressed: () {
                  createEvent(calendars);
                },
              ),
              MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: new Text('获取日程'),
                onPressed: () {
                  selectEvent(calendars.getEventId);
                },
              ),
              MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: new Text('修改日程'),
                onPressed: () async {
                  calendarsInit();
                  final id = await AlarmCalendar.updateEvent(calendars);
                  print("修改日程ID为：$id");
                  calendars.setEventId = id!;
                },
              ),
              MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: new Text('删除日程'),
                onPressed: () async {
                  final status =
                      await AlarmCalendar.deleteEvent(calendars.getEventId);
                  print("删除状态：$status");
                  calendars.setEventId = '';
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void calendarsInit() {
    //更新参数
    calendars.setTitle = '测试通知修改版';
    calendars.setAlert = [3, 15];
    calendars.setStartTime = new DateTime.now();
    calendars.setEndTime = new DateTime.now().add(new Duration(days: 2));
    calendars.setAllDay = 0;
    calendars.setNote = '这里是备注内容';
  }

  Future<void> createEvent(Calendars calendars) async {
    //查询是否有读权限。
    await AlarmCalendar.CheckReadPermission().then((res) async {
      if (res != null) {
        //查询是否有写权限
        await AlarmCalendar.CheckWritePermission().then((resWrite) async {
          if (resWrite != null) {
            final id = await AlarmCalendar.createEvent(calendars);
            calendars.setEventId = id!;
            print('获得ID为：' + id);
          }
        });
      }
    });
  }

  Future<void> selectEvent(String id) async {
    //查询是否有读权限。
    await AlarmCalendar.CheckReadPermission().then((res) async {
      if (res != null) {
        //查询是否有写权限
        await AlarmCalendar.CheckWritePermission().then((resWrite) async {
          if (resWrite != null) {
            final result = await AlarmCalendar.selectEvent(id);
            print('获取返回数据：$result');
          }
        });
      }
    });
  }
}
