/* 
 * @Author: 21克的爱情
 * @Date: 2020-04-28 16:50:26
 * @Email: raohong07@163.com
 * @LastEditors: 21克的爱情
 * @LastEditTime: 2020-05-08 10:18:23
 * @Description: 
 */
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:alarm_calendar/alarm_calendar_plugin.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Calendars calendars = new Calendars(DateTime(2020,5,1,12,23),DateTime(2020,5,1,12,34),'hola','note',[5],'1',1);

  @override
  void initState() {
    super.initState();

  }

//  void calendarButtonClicked() {
//    AddCalendarPlugin.createCalendar();
//  }



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
                onPressed: () {
                  CalendarsInit();
                  AddCalendar.updateEvent(calendars);
                },
              ),

              MaterialButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: new Text('删除日程'),
                onPressed: () {
                  AddCalendar.deleteEvent(calendars.getEventId);
                },
              ),
            ],
          ),

        ),
      ),
    );
  }

  void CalendarsInit() {
    //更新参数
    calendars.setEventId = '111';
    calendars.setTitle = 'hola2';
    calendars.setAlert = [3,15];
    calendars.setBeginTime = DateTime(2020,5,2,12,34);
    calendars.setEndTime = DateTime(2020,5,2,12,35);
    calendars.setNote = '这里不是备注内容/🐶';
  }

  Future<void> createEvent(Calendars calendars) async {
    //查询是否有读权限。
    await AddCalendar.CheckReadPermission().then((res) async {
      if(res){
        //查询是否有写权限
        await AddCalendar.CheckWritePermission().then((resWrite){
          if(resWrite){
            AddCalendar.createEvent(calendars);
          }
        });
      }
    });
  }

}