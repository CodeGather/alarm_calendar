/* 
 * @Author: 21克的爱情
 * @Date: 2020-05-08 10:01:09
 * @Email: raohong07@163.com
 * @LastEditors: 21克的爱情
 * @LastEditTime: 2021-02-04 17:08:18
 * @Description: 
 */

import 'dart:async';
import 'package:flutter/services.dart';
import 'calendars.dart';

class AlarmCalendar {
  static const MethodChannel _channel = const MethodChannel('alarm_calendar');

  //添加事件
  static Future<String?> createEvent(Calendars calendars) async {
    final String? eventId =
        await _channel.invokeMethod('createEvent', <String, dynamic>{
      'title': calendars.getTitle,
      'startTime': calendars.getStartTime.millisecondsSinceEpoch,
      'endTime': calendars.getEndTime.millisecondsSinceEpoch,
      'alert': calendars.getAlert,
      'note': calendars.getNote,
      'allDay': calendars.getAllDay,
    });
    return eventId;
  }

  //获取提醒事件
  static Future<dynamic> selectEvent(String eventId) async {
    final dynamic res = await _channel
        .invokeMethod('selectEvent', <String, dynamic>{'eventId': eventId});
    return res;
  }

  //删除提醒事件
  static Future<bool?> deleteEvent(String eventId) async {
    final bool? res = await _channel
        .invokeMethod('deleteEvent', <String, dynamic>{'eventId': eventId});
    return res;
  }

  //更新提醒事件
  static Future<String?> updateEvent(Calendars calendars) async {
    final String? resId =
        await _channel.invokeMethod('updateEvent', <String, dynamic>{
      'eventId': calendars.getEventId,
      'title': calendars.getTitle,
      'startTime': calendars.getStartTime.millisecondsSinceEpoch,
      'endTime': calendars.getEndTime.millisecondsSinceEpoch,
      'alert': calendars.getAlert,
      'note': calendars.getNote,
      'allDay': calendars.getAllDay,
    });
    return resId;
  }

  //查询是否有读权限
  //若无，自动请求权限
  // ignore: non_constant_identifier_names
  static Future<bool?> CheckReadPermission() async {
    final bool? res = await _channel.invokeMethod('CheckReadPermission');
    return res;
  }

  //查询写日历的权限
  //若无，自动请求权限
  // ignore: non_constant_identifier_names
  static Future<bool?> CheckWritePermission() async {
    final bool? res = await _channel.invokeMethod('CheckWritePermission');
    return res;
  }
}
