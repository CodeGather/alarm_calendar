//
//  Calendars.h
//  Pods
//
//  Created by yau on 2020/5/8.
//

#import <Foundation/Foundation.h>

@interface Calendars : NSObject

// @property 默认生成的成员变量为@private类型子类无法直接访问 可以通过get/set方法访问

//标题参数
@property NSString *title;

//备注
@property NSString *note;

//提前提醒时间
@property NSArray *alert;

//事件id
@property NSString *eventId;

//起始时间
@property long beginTime;

//结束事件
@property long endTime;

//是否是全天事件
@property int allDay;

// 自定义构造方法 在初始化的时候为属性"年龄"和"姓名"赋值
- (id)initWithAge:(int)allDay andName:(NSString *)title;

@end

////
////  Calendars.h
////  Pods
////
////  Created by yau on 2020/5/8.
////
//
//#import <Foundation/Foundation.h>
//
//@interface Calendars : NSObject
//
//// @property 默认生成的成员变量为@private类型子类无法直接访问 可以通过get/set方法访问
//
////标题参数
//@property NSString *title;
//
////备注
//@property NSString *note;
//
////提前提醒时间
//@property NSArray<NSInteger> alert ;
//
////事件id
//@property NSString *eventId;
//
////起始时间
//@property int beginTime ;
//
////结束事件
//@property int endTime ;
//
////是否是全天事件
//@property int allDay;
//
//// 自定义构造方法 在初始化的时候为属性"年龄"和"姓名"赋值
//- (id)initCalendars:(NSString *)title
//  note: (NSString *)note
//  alert: (NSArray *)alert
//  eventId: (NSString *)eventId
//  beginTime: (int)beginTime
//  endTime: (int)endTime
//  allDay: (int)allDay;
//
//@end
