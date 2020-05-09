//
//  Calendars.m
//  alarm_calendar
//
//  Created by yau on 2020/5/8.
//

#import "Calendars.h"
@implementation Calendars

// 重写父类的init方法 父类init方法返回的是id类型就是为了让任何子类的对象调用
- (id)init
{
    // 1.首先初始化父类NSObject中声明的一些成员变量和属性 然后将初始化的对象赋值给当前对象
    self = [super init];
    
    // 2.如果父类的初始化成功 再初始化子类对象
    if (self!= nil) { // self是个指针 如果为空意味着指向0 也可以这样写 self != 0
        _allDay = 10;
    }
    // 3.返回已经初始化完毕的对象
    return self;
}


// 实现自定义构造函数 在初始化的时候为属性赋值
- (id)initWithAge:(int)allDay andName:(NSString *)title
{
    if (self = [super init]) {
        _allDay = allDay;
        _title = title;
    }
    return self;
}
@end


//#import "Calendars.h"
//@implementation Calendars
//
//// 重写父类的init方法 父类init方法返回的是id类型就是为了让任何子类的对象调用
//- (id)init:(NSString *)title
//        note: (NSString *)note
//        alert: (NSArray *)alert
//        eventId: (NSString *)eventId
//        beginTime: (int)beginTime
//        endTime: (int)endTime
//        allDay: (int)allDay
//{
//    // 1.首先初始化父类NSObject中声明的一些成员变量和属性 然后将初始化的对象赋值给当前对象
//    self = [super init];
//    
//    // 2.如果父类的初始化成功 再初始化子类对象
//    if (self!= nil) { // self是个指针 如果为空意味着指向0 也可以这样写 self != 0
//         _title = title;
//         _note = note;
//         _alert = alert;
//         _eventId = eventId;
//         _beginTime = beginTime;
//         _endTime = endTime;
//         _allDay = allDay;
//    }
//    // 3.返回已经初始化完毕的对象
//    return self;
//}
//
//// 实现自定义构造函数 在初始化的时候为属性赋值
//- (id)initCalendars:(NSString *)title
//    note: (NSString *)note
//    alert: (NSArray *)alert
//    eventId: (NSString *)eventId
//    beginTime: (int)beginTime
//    endTime: (int)endTime
//    allDay: (int)allDay
//{
//    if (self = [super init]) {
//       _title = title;
//        _note = note;
//        _alert = alert;
//        _eventId = eventId;
//        _beginTime = beginTime;
//        _endTime = endTime;
//        _allDay = allDay;
//    }
//    return self;
//}
//
//@end
