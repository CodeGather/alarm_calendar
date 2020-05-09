package com.jokui.rao.alarm_calendar;

import java.util.List;

public class Calendars {
    //标题参数
    String title;

    //备注
    String note;

    //提前提醒时间
    List<Integer> alert ;

    //事件id
    String eventId;

    //起始时间
    Long beginTime ;

    //结束事件
    Long endTime ;

    //是否是全天事件
    int allDay;

    Calendars(String title, String note, List<Integer> alert, String eventId, Long beginTime, Long endTime, int allDay){
        this.title = title;
        this.note = note;
        this.alert = alert;
        this.eventId = eventId;
        this.beginTime = beginTime;
        this.endTime = endTime;
        this.allDay = allDay;
    }
}
