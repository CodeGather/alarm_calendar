/* 
 * @Author: 21克的爱情
 * @Date: 2020-04-28 16:50:26
 * @Email: raohong07@163.com
 * @LastEditors: 21克的爱情
 * @LastEditTime: 2020-05-09 13:46:49
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
  Calendars calendars = new Calendars(DateTime(2020,5,1,11,23),DateTime(2020,5,1,12,00),'hola','note',[5],'1',1);

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
                child: new Text('创建日程'),
                onPressed: () {
                  createEvent(calendars);
                },
              ),

              MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: new Text('修改日程'),
                onPressed: () async {
                  calendarsInit();
                  final id = await AlarmCalendar.updateEvent(calendars);
                  calendars.setEventId = id;
                },
              ),

              MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: new Text('删除日程'),
                onPressed: () {
                  AlarmCalendar.deleteEvent(calendars.getEventId);
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
    calendars.setTitle = 'hola2修改值';
    calendars.setAlert = [3,15];
    calendars.setBeginTime = DateTime(2020,5,2,12,34);
    calendars.setEndTime = DateTime(2020,5,2,12,35);
    calendars.setAllDay = 0;
    calendars.setNote = '这里是备注内容';
  }

  Future<void> createEvent(Calendars calendars) async {
    //查询是否有读权限。
    await AlarmCalendar.CheckReadPermission().then((res) async {
      if(res){
        //查询是否有写权限
        await AlarmCalendar.CheckWritePermission().then((resWrite) async{
          if(resWrite){
            final id = await AlarmCalendar.createEvent(calendars);
            calendars.setEventId = id;
          }
        });
      }
    });
  }

}