/*
 * @Author: 21克的爱情
 * @Date: 2021-12-25 14:30:42
 * @Email: raohong07@163.com
 * @LastEditors: 21克的爱情
 * @LastEditTime: 2021-12-25 21:57:15
 * @Description: CalendarColumns字段
 */

enum Visible{
  Hide,
  Show,
}

enum AccessLevel {
    /** Cannot access the calendar */
    CAL_ACCESS_NONE,   
    /** Can only see free/busy information about the calendar */
    CAL_ACCESS_FREEBUSY,
    /** Can read all event details */
    CAL_ACCESS_READ,
    /** Can reply yes/no/maybe to an event */
    CAL_ACCESS_RESPOND,
    /** not used */
    CAL_ACCESS_OVERRIDE,
    /** Full access to modify the calendar, but not the access control*/
    CAL_ACCESS_CONTRIBUTOR,
    /** Full access to modify the calendar, but not the access control*/
    CAL_ACCESS_EDITOR,
    /** Full access to the calendar */
    CAL_ACCESS_OWNER,
    /** Domain admin */
    CAL_ACCESS_ROOT,
}

class CalendarColumns{
  ///日历名称
  final String id;
  ///日历名称
  final String name;
  ///账户名称
  final String accountName;
  ///账户类型 = 'LOCAL'
  final String accountType;
  final String dirty;
  /// 它是一个表示被选中日历是否要被展示的值
  final int visible;
  final String mutators;
  final String ownerAccount;
  final String maxReminders;
  final String allowedReminders;
  final String canModifyTimeZone;
  final int canOrganizerRespond;
  final String canPartiallyUpdate;
  ///展示给用户的日历名称
  final String calendarDisplayName;
  ///地图信息
  final String calendarLocation;
  final String calendarTimezone;
  /// 账户标记颜色 0xFF0000FF
  final String calendarColor;
  final int syncEvents;
  final int calendarAccessLevel;
  final String deleted;
  
  final String calSync1;
  final String calSync2;
  final String calSync3;
  final String calSync4;
  final String calSync5;
  final String calSync6;
  final String calSync7;
  final String calSync8;
  final String calSync9;
  final String calSync10;

  CalendarColumns(this.id, this.name,this.accountName, this.accountType, this.dirty, this.visible, this.mutators, this.ownerAccount, this.maxReminders, this.allowedReminders, this.canModifyTimeZone, this.canOrganizerRespond, this.canPartiallyUpdate, this.calendarDisplayName, this.calendarLocation, this.calendarTimezone, this.calendarColor, this.syncEvents, this.calendarAccessLevel, this.deleted, this.calSync1, this.calSync2, this.calSync3, this.calSync4, this.calSync5, this.calSync6, this.calSync7, this.calSync8, this.calSync9, this.calSync10);

  factory CalendarColumns.fromJson(Map<String, dynamic> srcJson){
    return CalendarColumns(
      srcJson['id'] ?? "",
      srcJson['name'],
      srcJson['accountName'],
      srcJson['accountType'],
      srcJson['dirty'],
      srcJson['visible'],
      srcJson['mutators'],
      srcJson['ownerAccount'],
      srcJson['maxReminders'],
      srcJson['allowedReminders'],
      srcJson['canModifyTimeZone'],
      srcJson['canOrganizerRespond'],
      srcJson['canPartiallyUpdate'],
      srcJson['calendarDisplayName'],
      srcJson['calendarLocation'],
      srcJson['calendarTimezone'],
      srcJson['calendarColor'],
      srcJson['syncEvents'],
      srcJson['calendarAccessLevel'] * 100,
      srcJson['deleted'],
      srcJson['calSync1'],
      srcJson['calSync2'],
      srcJson['calSync3'],
      srcJson['calSync4'],
      srcJson['calSync5'],
      srcJson['calSync6'],
      srcJson['calSync7'],
      srcJson['calSync8'],
      srcJson['calSync9'],
      srcJson['calSync10'],
    );
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
    'id': this.id,
    'name': this.name,
    'account_name': this.accountName,
    'account_type': this.accountType,
    'dirty': this.dirty,
    'visible': this.visible,
    'mutators': this.mutators,
    'ownerAccount': this.ownerAccount,
    'maxReminders': this.maxReminders,
    'allowedReminders': this.allowedReminders,
    'canModifyTimeZone': this.canModifyTimeZone,
    'canOrganizerRespond': this.canOrganizerRespond,
    'canPartiallyUpdate': this.canPartiallyUpdate,
    'calendar_displayName': this.calendarDisplayName,
    'calendar_location': this.calendarLocation,
    'calendar_timezone': this.calendarTimezone,
    'calendar_color': this.calendarColor,
    'sync_events': this.syncEvents,
    'calendar_access_level': this.calendarAccessLevel,
    'deleted': this.deleted,
    'cal_sync1': this.calSync1,
    'cal_sync2': this.calSync2,
    'cal_sync3': this.calSync3,
    'cal_sync4': this.calSync4,
    'cal_sync5': this.calSync5,
    'cal_sync6': this.calSync6,
    'cal_sync7': this.calSync7,
    'cal_sync8': this.calSync8,
    'cal_sync9': this.calSync9,
    'cal_sync10': this.calSync10,
  };
}