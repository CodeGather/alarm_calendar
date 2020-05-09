#import "AlarmCalendarPlugin.h"
#import <EventKit/EventKit.h>
#import "CJXPermissionsManage.h"
#import <EventKitUI/EventKitUI.h>
#import "Calendars.h"
#import "EventManger.h"

bool bool_true = true;
bool bool_false = false;

@implementation AlarmCalendarPlugin

+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel methodChannelWithName:@"alarm_calendar"
            binaryMessenger:[registrar messenger]];
  AlarmCalendarPlugin* instance = [[AlarmCalendarPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  NSDictionary *dic = call.arguments;
  if ([@"createEvent" isEqualToString:call.method]) {
    [self createCalendars: call result: result];
    
  } else if ([@"deleteEvent" isEqualToString:call.method]) {
    
    NSString *arrayStr = [[NSUserDefaults standardUserDefaults]objectForKey:@"my_eventIdentifier"];
    NSLog(@"日历提醒ID：%@",arrayStr);
    if( ![arrayStr isEqual:(@1)]  && [arrayStr hasPrefix:@","] ){
      NSArray *array = [arrayStr componentsSeparatedByString:@","]; //字符串按照【分隔成数组
      NSLog(@"array=%@=",array); //结果是
    }

    // EKEventStore *myEventStore = [[EKEventStore alloc] init];
    // NSArray*tempA=[myEventStore calendarsForEntityType:EKEntityTypeEvent];
    // EKCalendar *events =tempA[0];
    // NSLog(@"查询到的数组 ：%@",events.calendarIdentifier);
    // dispatch_async(dispatch_get_main_queue(), ^{
    if( dic[@"eventId"] != Nil && ![dic[@"eventId"]  isEqual: @"1"] && ![dic[@"eventId"]  isEqual: @""] ){
      EKEvent *event = [[[EventManger shareInstance] store] eventWithIdentifier:dic[@"eventId"]];
      
      NSMutableArray *array = [[arrayStr componentsSeparatedByString:@","] mutableCopy];
      [array removeObject:dic[@"eventId"]];
      
      BOOL status = bool_false;
      if( !event ){
        NSLog(@"日历提醒ID：%@",event.eventIdentifier);
        
        NSString *string = [array componentsJoinedByString:@","];
        // 保存在沙盒，避免重复添加等其他判断
        [[NSUserDefaults standardUserDefaults] setObject:string forKey:@"my_eventIdentifier"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        
        status = [[EventManger shareInstance] deleteEvent: event] == YES ? bool_true : bool_false;
      }
      result(@(status));
    } else {
      // 保存在沙盒，避免重复添加等其他判断
      [[NSUserDefaults standardUserDefaults] setObject:nil forKey:@"my_eventIdentifier"];
      [[NSUserDefaults standardUserDefaults] synchronize];
      
      [self deleteInsertedEvent: @"hola" startTime: @"1588262400000"  endTime: @"1590768000000" result: result];
    }
  
    // });
    
  } else if ([@"updateEvent" isEqualToString:call.method]) {
    if( dic[@"eventId"] != Nil && ![dic[@"eventId"]  isEqual: @"1"] && ![dic[@"eventId"]  isEqual: @""] ){
      EKEvent *event = [[[EventManger shareInstance] store] eventWithIdentifier:dic[@"eventId"]];
      NSLog(@"获得日历提醒ID：%@",event.eventIdentifier);
      
      // 执行删除
      BOOL status = [[EventManger shareInstance] deleteEvent: event];
      NSLog(@"删除日历提醒--b-->%@",status?@"YES":@"NO");
      
      [self createCalendars: call result: result];
    }
  } else if ([@"CheckReadPermission" isEqualToString:call.method]) {
    // 日历提醒权限
    [[CJXPermissionsManage sharedInstance] getCalendarPermissions:^(BOOL authorized) {
      bool status = authorized == YES ? bool_true : bool_false;
      result(@(status));
    }];
    
  } else if ([@"CheckWritePermission" isEqualToString:call.method]) {
    // 提醒权限
    [[CJXPermissionsManage sharedInstance] getReminderPermissions:^(BOOL authorized) {
      bool status = authorized == YES ? bool_true : bool_false;
      result(@(status));
    }];
  } else {
    result(FlutterMethodNotImplemented);
  }
}

- (void)createCalendars:(FlutterMethodCall*)call result:(FlutterResult)result
{
  NSDictionary *dic = call.arguments;
  dispatch_async(dispatch_get_main_queue(), ^{

    EKEvent *event = [EKEvent eventWithEventStore:[[EventManger shareInstance] store]];
    
    event.title = dic[@"title"];
    event.location = dic[@"note"];
    
    // NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    // [formatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    // NSDate *date = [formatter dateFromString:@"2020-05-05 12:23:33"];
    
    NSDate *startDate = [NSDate dateWithTimeIntervalSince1970: [ dic[@"beginTime"] doubleValue] / 1000.0 ];
    // 提前一个小时开始
    // NSDate *startDate = [NSDate dateWithTimeInterval:-3600 sinceDate:date];
    // 提前一分钟结束
    // NSDate *endDate = [NSDate dateWithTimeInterval:60 sinceDate:date];
    NSDate *endDate = [NSDate dateWithTimeIntervalSince1970: [ dic[@"endTime"] doubleValue] / 1000.0 ];
    
    event.startDate = startDate;
    event.endDate = endDate;
    event.allDay = [dic[@"allDay"]  isEqual: @1];

    // 设定URL,点击可打开对应的app:AAA为某应用对外访问的入口
    // event.URL = [NSURL URLWithString:@"AAA://https://www.baidu.com"];
    
    // 添加闹钟结合（开始前多少秒）若为正则是开始后多少秒。
    EKAlarm *elarm2 = [EKAlarm alarmWithRelativeOffset:-20];
    [event addAlarm:elarm2];
    EKAlarm *elarm = [EKAlarm alarmWithRelativeOffset:-10];
    [event addAlarm:elarm];
    
    BOOL creatStatus = [[EventManger shareInstance] createEvent:event];
    
    if ( creatStatus ) {
        NSLog(@"添加时间成功 ID：%@", event.eventIdentifier);
        //添加成功后需要保存日历关键字

        NSString *array = [[NSUserDefaults standardUserDefaults]objectForKey:@"my_eventIdentifier"];
        NSLog(@"日历提醒ID：%@",array);
        
        NSString * data = event.eventIdentifier;
        if( ![array isEqual:(@1)]){
          data = [NSString stringWithFormat:@"%@,%@", array, event.eventIdentifier ];
        }
        // 保存在沙盒，避免重复添加等其他判断
        [[NSUserDefaults standardUserDefaults] setObject:data forKey:@"my_eventIdentifier"];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
    
    // 返回创建的ID
    result([NSString stringWithFormat:@"%@", event.eventIdentifier]);
       
  });
  
  Calendars *p1 = [[Calendars alloc] initWithAge:10 andName:@"Rose"];
  NSLog(@"log-------%@", p1.title);
}

// 删除之前插入的事件
- (void)deleteInsertedEvent: (NSString*)title startTime:(NSString*)startTime endTime:(NSString*)endTime result:(FlutterResult)result
{
    BOOL isClear = [[NSUserDefaults standardUserDefaults]boolForKey:@"my_eventIdentifier"];
    EKEventStore *store = [[EKEventStore alloc] init];
    BOOL status = bool_false;
    if(!isClear)
    {
        NSDate *startDate = [NSDate dateWithTimeIntervalSince1970: [ startTime doubleValue] / 1000.0 ];
        NSDate *endDate = [NSDate dateWithTimeIntervalSince1970: [ endTime doubleValue] / 1000.0 ];
        NSPredicate *predicate = [store predicateForEventsWithStartDate:startDate endDate:endDate calendars:nil];
        NSArray *eventsArray = [store eventsMatchingPredicate:predicate];
        
        if (eventsArray.count)
        {
            status = bool_true;
            for (EKEvent *item in eventsArray)
            {
                NSRange range = [item.title rangeOfString: title];
                if(range.location != NSNotFound)
                {
                    //删除老版本插入的提醒
                    [store removeEvent:item span:EKSpanThisEvent commit:YES error:nil];
                }
            }
            [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"my_eventIdentifier"];
        }
    }
    result(@(status));
}


@end
