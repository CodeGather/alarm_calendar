package com.jokui.rao.alarm_calendar;

import android.Manifest;
import android.app.Activity;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.graphics.Color;
import android.icu.util.TimeZone;
import android.net.Uri;
import android.os.Build;
import android.provider.CalendarContract;
import android.provider.Contacts;
import android.util.Log;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.List;

import androidx.annotation.RequiresApi;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;


@RequiresApi(api = Build.VERSION_CODES.KITKAT)
public class CalendarProviderUtil {


    static final private int REQUEST_CODE_ASK_PERMISSIONS = 123;
    // ContentProvider的uri
    private static Uri calendarUri = CalendarContract.Calendars.CONTENT_URI;
    private static Uri eventUri = CalendarContract.Events.CONTENT_URI;
    private static Uri reminderUri = CalendarContract.Reminders.CONTENT_URI;

    private static ContentResolver contentResolver;

    public static boolean CheckCalendarReadPermission(Context context) {
        //判断是否已经赋予权限
        //读日历权限
        if (ContextCompat.checkSelfPermission(context,
                Manifest.permission.READ_CALENDAR)
                != PackageManager.PERMISSION_GRANTED) {
            //如果应用之前请求过此权限但用户拒绝了请求，此方法将返回 true。
            if (ActivityCompat.shouldShowRequestPermissionRationale((Activity) context,
                    Manifest.permission.READ_CALENDAR)) {//这里可以写个对话框之类的项向用户解释为什么要申请权限，并在对话框的确认键后续再次申请权限.它在用户选择"不再询问"的情况下返回false
            } else {
                //申请权限，字符串数组内是一个或多个要申请的权限，1是申请权限结果的返回参数，在onRequestPermissionsResult可以得知申请结果
                ActivityCompat.requestPermissions((Activity) context,
                        new String[]{Manifest.permission.READ_CALENDAR,}, REQUEST_CODE_ASK_PERMISSIONS);
            }
            return false;
        }else {
            return true;
        }
    }

    public static boolean CheckCalendarWritePermission(Context context) {
        //判断是否已经赋予权限
        //写日历权限
        if (ContextCompat.checkSelfPermission(context,
                Manifest.permission.WRITE_CALENDAR)
                != PackageManager.PERMISSION_GRANTED) {
            //如果应用之前请求过此权限但用户拒绝了请求，此方法将返回 true。
            if (ActivityCompat.shouldShowRequestPermissionRationale((Activity) context,
                    Manifest.permission.WRITE_CALENDAR)) {//这里可以写个对话框之类的项向用户解释为什么要申请权限，并在对话框的确认键后续再次申请权限.它在用户选择"不再询问"的情况下返回false
            } else {
                //申请权限，字符串数组内是一个或多个要申请的权限，1是申请权限结果的返回参数，在onRequestPermissionsResult可以得知申请结果
                ActivityCompat.requestPermissions((Activity) context,
                        new String[]{Manifest.permission.WRITE_CALENDAR,}, REQUEST_CODE_ASK_PERMISSIONS);
            }
            return false;
        }else {
            return true;
        }
    }

    /**
     * 检查是否有日历表,有返回日历id，没有-1
     * */
    private static int isHaveCalender(Context context) {

        // 查询日历表的cursor
        Cursor cursor = contentResolver.query(calendarUri, null, null, null, null);
        if (cursor == null || cursor.getCount() == 0) {
            return -1;
        } else {
            // 如果有日历表
            try {
                cursor.moveToFirst();
                // 通过cursor返回日历表的第一行的属性值 第一个日历的id
                return cursor.getInt(cursor.getColumnIndex(CalendarContract.Calendars._ID));
            } finally {
                cursor.close();
            }
        }
    }

    /**
     * 添加日历表
     * */
    @RequiresApi(api = Build.VERSION_CODES.N)
    private static long addCalendar(Context context) {
        // 时区
        TimeZone timeZone = TimeZone.getDefault();
        // 配置Calendar
        ContentValues value = new ContentValues();
        value.put(CalendarContract.Calendars.NAME, "我的日历表");
        value.put(CalendarContract.Calendars.ACCOUNT_NAME, "myAccount");
        value.put(CalendarContract.Calendars.ACCOUNT_TYPE, "myType");
        value.put(CalendarContract.Calendars.CALENDAR_DISPLAY_NAME, "myDisplayName");
        value.put(CalendarContract.Calendars.VISIBLE, 1);
        value.put(CalendarContract.Calendars.CALENDAR_COLOR, Color.BLUE);
        value.put(CalendarContract.Calendars.CALENDAR_ACCESS_LEVEL, CalendarContract.Calendars.CAL_ACCESS_OWNER);
        value.put(CalendarContract.Calendars.SYNC_EVENTS, 1);
        value.put(CalendarContract.Calendars.CALENDAR_TIME_ZONE, timeZone.getID());
        value.put(CalendarContract.Calendars.OWNER_ACCOUNT, "myAccount");
        value.put(CalendarContract.Calendars.CAN_ORGANIZER_RESPOND, 0);
        value.put(CalendarContract.CALLER_IS_SYNCADAPTER, true);

        // 插入calendar

        Uri insertCalendarUri = contentResolver.insert(calendarUri, value);

        if (insertCalendarUri == null) {
            return -1;
        } else {
            // return Integer.parseInt(insertCalendarUri.toString());
            return ContentUris.parseId(insertCalendarUri);
        }

    }

    public static final String[] FIELDS = {
            CalendarContract.Calendars.NAME,
            CalendarContract.Calendars.CALENDAR_DISPLAY_NAME,
            CalendarContract.Calendars.CALENDAR_COLOR,
            CalendarContract.Calendars.VISIBLE
    };

    /**
     * 通过id 获取日历
     */
    public static CalendarEvent selectEvent(Context context, String eventId){
        contentResolver = context.getContentResolver();
        // 日历表id
        int calendarId = isHaveCalender(context);
        if (calendarId == -1) {
            calendarId = isHaveCalender(context);
        }

        long eventID = Long.parseLong(eventId);

        CalendarEvent data = queryAccountEvent(context, 1, eventID);
        return data;
    }

    // ------------------------------- 查询日历事件 -----------------------------------

    /**
     * 查询指定日历账户下的所有事件
     *
     * @return If failed return null else return List<CalendarEvent>
     */
    public static CalendarEvent queryAccountEvent(Context context, long calID, long eventId) {
        final String[] EVENT_PROJECTION = new String[]{
                CalendarContract.Events.CALENDAR_ID,             // 在表中的列索引0
                CalendarContract.Events.TITLE,                   // 在表中的列索引1
                CalendarContract.Events.DESCRIPTION,             // 在表中的列索引2
                CalendarContract.Events.EVENT_LOCATION,          // 在表中的列索引3
                CalendarContract.Events.DISPLAY_COLOR,           // 在表中的列索引4
                CalendarContract.Events.STATUS,                  // 在表中的列索引5
                CalendarContract.Events.DTSTART,                 // 在表中的列索引6
                CalendarContract.Events.DTEND,                   // 在表中的列索引7
                CalendarContract.Events.DURATION,                // 在表中的列索引8
                CalendarContract.Events.EVENT_TIMEZONE,          // 在表中的列索引9
                CalendarContract.Events.EVENT_END_TIMEZONE,      // 在表中的列索引10
                CalendarContract.Events.ALL_DAY,                 // 在表中的列索引11
                CalendarContract.Events.ACCESS_LEVEL,            // 在表中的列索引12
                CalendarContract.Events.AVAILABILITY,            // 在表中的列索引13
                CalendarContract.Events.HAS_ALARM,               // 在表中的列索引14
                CalendarContract.Events.RRULE,                   // 在表中的列索引15
                CalendarContract.Events.RDATE,                   // 在表中的列索引16
                CalendarContract.Events.HAS_ATTENDEE_DATA,       // 在表中的列索引17
                CalendarContract.Events.LAST_DATE,               // 在表中的列索引18
                CalendarContract.Events.ORGANIZER,               // 在表中的列索引19
                CalendarContract.Events.IS_ORGANIZER,            // 在表中的列索引20
                CalendarContract.Events._ID                      // 在表中的列索引21
        };

        // 事件匹配
        Uri uri = CalendarContract.Events.CONTENT_URI;
        Uri uri2 = CalendarContract.Reminders.CONTENT_URI;

        String selection = "(" + CalendarContract.Events.CALENDAR_ID + " = ?)";
        String[] selectionArgs = new String[]{String.valueOf(calID)};

        Cursor cursor;

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            if (PackageManager.PERMISSION_GRANTED == context.checkSelfPermission(
                    "android.permission.READ_CALENDAR")) {
                cursor = context.getContentResolver().query(uri, EVENT_PROJECTION, selection,
                        selectionArgs, null);
            } else {
                return null;
            }
        } else {
            cursor = context.getContentResolver().query(uri, EVENT_PROJECTION, selection,
                    selectionArgs, null);
        }

        if (null == cursor) {
            return null;
        }

        // 查询结果
//        List<CalendarEvent> result = new ArrayList<>();
        CalendarEvent calendarEvent = new CalendarEvent();

        // 开始查询数据
        if (cursor.moveToFirst()) {
            do {
                if (cursor.getLong(cursor.getColumnIndex(CalendarContract.Events._ID)) == eventId) {
//                    result.add(calendarEvent);
                    calendarEvent.setId(cursor.getLong(cursor.getColumnIndex(CalendarContract.Events._ID)));
                    calendarEvent.setCalID(cursor.getLong(cursor.getColumnIndex(CalendarContract.Events.CALENDAR_ID)));
                    calendarEvent.setTitle(cursor.getString(cursor.getColumnIndex(CalendarContract.Events.TITLE)));
                    calendarEvent.setDescription(cursor.getString(cursor.getColumnIndex(CalendarContract.Events.DESCRIPTION)));
                    calendarEvent.setEventLocation(cursor.getString(cursor.getColumnIndex(CalendarContract.Events.EVENT_LOCATION)));
                    calendarEvent.setDisplayColor(cursor.getInt(cursor.getColumnIndex(CalendarContract.Events.DISPLAY_COLOR)));
                    calendarEvent.setStatus(cursor.getInt(cursor.getColumnIndex(CalendarContract.Events.STATUS)));
                    calendarEvent.setStart(cursor.getLong(cursor.getColumnIndex(CalendarContract.Events.DTSTART)));
                    calendarEvent.setEnd(cursor.getLong(cursor.getColumnIndex(CalendarContract.Events.DTEND)));
                    calendarEvent.setDuration(cursor.getString(cursor.getColumnIndex(CalendarContract.Events.DURATION)));
                    calendarEvent.setEventTimeZone(cursor.getString(cursor.getColumnIndex(CalendarContract.Events.EVENT_TIMEZONE)));
                    calendarEvent.setEventEndTimeZone(cursor.getString(cursor.getColumnIndex(CalendarContract.Events.EVENT_END_TIMEZONE)));
                    calendarEvent.setAllDay(cursor.getInt(cursor.getColumnIndex(CalendarContract.Events.ALL_DAY)));
                    calendarEvent.setAccessLevel(cursor.getInt(cursor.getColumnIndex(CalendarContract.Events.ACCESS_LEVEL)));
                    calendarEvent.setAvailability(cursor.getInt(cursor.getColumnIndex(CalendarContract.Events.AVAILABILITY)));
                    calendarEvent.setHasAlarm(cursor.getInt(cursor.getColumnIndex(CalendarContract.Events.HAS_ALARM)));
                    calendarEvent.setRRule(cursor.getString(cursor.getColumnIndex(CalendarContract.Events.RRULE)));
                    calendarEvent.setRDate(cursor.getString(cursor.getColumnIndex(CalendarContract.Events.RDATE)));
                    calendarEvent.setHasAttendeeData(cursor.getInt(cursor.getColumnIndex(CalendarContract.Events.HAS_ATTENDEE_DATA)));
                    calendarEvent.setLastDate(cursor.getInt(cursor.getColumnIndex(CalendarContract.Events.LAST_DATE)));
                    calendarEvent.setOrganizer(cursor.getString(cursor.getColumnIndex(CalendarContract.Events.ORGANIZER)));
                    calendarEvent.setIsOrganizer(cursor.getString(cursor.getColumnIndex(CalendarContract.Events.IS_ORGANIZER)));


                    // ----------------------- 开始查询事件提醒 ------------------------------
                    String[] REMINDER_PROJECTION = new String[]{
                            CalendarContract.Reminders._ID,                     // 在表中的列索引0
                            CalendarContract.Reminders.EVENT_ID,                // 在表中的列索引1
                            CalendarContract.Reminders.MINUTES,                 // 在表中的列索引2
                            CalendarContract.Reminders.METHOD,                  // 在表中的列索引3
                    };
                    String selection2 = "(" + CalendarContract.Reminders.EVENT_ID + " = ?)";
                    String[] selectionArgs2 = new String[]{String.valueOf(calendarEvent.getId())};

                    try (Cursor reminderCursor = contentResolver.query(uri2, REMINDER_PROJECTION, selection2, selectionArgs2, null)) {
                        if (null != reminderCursor) {
                            if (reminderCursor.moveToFirst()) {
                                List<CalendarEvent.EventReminders> reminders = new ArrayList<>();
                                do {
                                    CalendarEvent.EventReminders reminders1 = new CalendarEvent.EventReminders();
                                    reminders.add(reminders1);
                                    reminders1.setReminderId(reminderCursor.getLong(reminderCursor.getColumnIndex(CalendarContract.Reminders._ID)));
                                    reminders1.setReminderEventID(reminderCursor.getLong(reminderCursor.getColumnIndex(CalendarContract.Reminders.EVENT_ID)));
                                    reminders1.setReminderMinute(reminderCursor.getInt(reminderCursor.getColumnIndex(CalendarContract.Reminders.MINUTES)));
                                    reminders1.setReminderMethod(reminderCursor.getInt(reminderCursor.getColumnIndex(CalendarContract.Reminders.METHOD)));
                                } while (reminderCursor.moveToNext());
                                calendarEvent.setReminders(reminders);
                            }
                        }
                    }
                }
            } while (cursor.moveToNext());
            cursor.close();
        }
        return calendarEvent;
    }

    /**
     *  添加日历事件
     *
     * @return*/
    @RequiresApi(api = Build.VERSION_CODES.N)
    public static String addEvent(Context context, Calendars calendars) {

        // 创建contentResolver
        contentResolver = context.getContentResolver();

        // 日历表id
        int calendarId = isHaveCalender(context);
        if (calendarId == -1) {
            addCalendar(context);
            calendarId = isHaveCalender(context);
        }

        Log.i("TAG","STStart "+calendars.startTime);
        // 准备event
        ContentValues valueEvent = new ContentValues();
        valueEvent.put(CalendarContract.Events.DTSTART, calendars.startTime);
        valueEvent.put(CalendarContract.Events.DTEND, calendars.endTime);
        valueEvent.put(CalendarContract.Events.TITLE, calendars.title);
        valueEvent.put(CalendarContract.Events.DESCRIPTION, calendars.note);
        valueEvent.put(CalendarContract.Events.CALENDAR_ID, calendarId);
        valueEvent.put(CalendarContract.Events.EVENT_TIMEZONE, "Asia/Shanghai");
        valueEvent.put(CalendarContract.Events.ALL_DAY,calendars.allDay);

        Uri insertEventUri = contentResolver.insert(eventUri, valueEvent);
        if (insertEventUri == null) {
            Toast.makeText(context, "添加event失败", Toast.LENGTH_SHORT).show();
        }

        // 添加提醒
        long eventId = ContentUris.parseId(insertEventUri);
        ContentValues valueReminder = new ContentValues();
        for(int i : calendars.alert){
            valueReminder.put(CalendarContract.Reminders.EVENT_ID, eventId);
            valueReminder.put(CalendarContract.Reminders.MINUTES, i);
            // valueReminder.put(CalendarContract.Reminders.METHOD, CalendarContract.Reminders.METHOD_ALARM);
            valueReminder.put(CalendarContract.Reminders.METHOD, CalendarContract.Reminders.METHOD_ALERT);
            Uri insertReminderUri = contentResolver.insert(reminderUri, valueReminder);
            if (insertReminderUri == null){
                Toast.makeText(context,"添加失败", Toast.LENGTH_SHORT).show();
            }
        }
        String StringEventId = String.valueOf(eventId);
        Log.i("TAG",StringEventId);
        return StringEventId;
    }

    //删除事件
    @RequiresApi(api = Build.VERSION_CODES.N)
    public static boolean deleteEvent(Context context, String eventId){
         contentResolver = context.getContentResolver();
        // 日历表id
        int calendarId = isHaveCalender(context);
        if (calendarId == -1) {
            addCalendar(context);
            calendarId = isHaveCalender(context);
        }

        long eventID = Long.parseLong(eventId);
        if(eventID<0){
            Toast.makeText(context,"请输入正确的eventId,ID:"+eventId,Toast.LENGTH_SHORT);
            return false;
        }else {
            ContentValues values = new ContentValues();
             Uri deleteUri = ContentUris.withAppendedId(eventUri, eventID);
            int res = contentResolver.delete(deleteUri,null,null);
            if(res == -1){
                Toast.makeText(context,"删除失败,可能是提醒事件id不存在",Toast.LENGTH_SHORT);
                return false;
            }
            else{
                return true;
            }
        }

    }

    @RequiresApi(api = Build.VERSION_CODES.N)
    public static String updateEvent(Context context, Calendars calendars) {
        // 创建contentResolver
        contentResolver = context.getContentResolver();

        long eventID  = Long.parseLong(calendars.eventId);
        // 日历表id
        int calendarId = isHaveCalender(context);
        if (calendarId == -1) {
            addCalendar(context);
            calendarId = isHaveCalender(context);
        }

        // 准备event
        ContentValues valueEvent = new ContentValues();
        valueEvent.put(CalendarContract.Events.DTSTART, calendars.startTime);
        valueEvent.put(CalendarContract.Events.DTEND, calendars.endTime);
        valueEvent.put(CalendarContract.Events.TITLE, calendars.title);
        valueEvent.put(CalendarContract.Events.DESCRIPTION, calendars.note);
        valueEvent.put(CalendarContract.Events.CALENDAR_ID, calendarId);
        valueEvent.put(CalendarContract.Events.EVENT_TIMEZONE, "Asia/Shanghai");

//        contentResolver.update(eventUri,valueEvent,eventID,null);
        Uri updateUri = ContentUris.withAppendedId(eventUri, eventID);
        contentResolver.update(updateUri,valueEvent,null,null);

        ContentValues valueReminder = new ContentValues();
        for(int i : calendars.alert){
            valueReminder.put(CalendarContract.Reminders.EVENT_ID, eventID);
            valueReminder.put(CalendarContract.Reminders.MINUTES, i);
            // valueReminder.put(CalendarContract.Reminders.METHOD, CalendarContract.Reminders.METHOD_ALARM);
            valueReminder.put(CalendarContract.Reminders.METHOD, CalendarContract.Reminders.METHOD_ALERT);
            Uri updateUri1 = ContentUris.withAppendedId(eventUri, eventID);
            int res = contentResolver.update(updateUri1,valueReminder,null,null);
            if(res == -1){
                Toast.makeText(context,"更新失败"+"ID："+calendars.eventId+"标题"+calendars.title,Toast.LENGTH_SHORT);
            }
        }


        return calendars.eventId;
    }

}