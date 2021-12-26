/*
 * @Author: 21克的爱情
 * @Date: 2020-05-08 10:05:23
 * @Email: raohong07@163.com
 * @LastEditors: 21克的爱情
 * @LastEditTime: 2020-05-08 11:07:42
 * @Description: 
 */
package com.jokui.rao.alarm_calendar;

public class CalendarModel {
    Long id;
    String displayName;
    String accountName;
    String ownerName;

    CalendarModel(Long id, String displayName, String accountName, String ownerName){
        this.id = id;
        this.displayName = displayName;
        this.accountName = accountName;
        this.ownerName = ownerName;
    }
}
